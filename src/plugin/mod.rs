//! 插件接口（照 MLIR 的 Dialect / DialectRegistry / Pass / PassManager）：⛔ 静态注册，编进二进制（不加载 `.so`）。
//!
//! ```text
//! Registry::default()                 内置：llvm 方言、dce（见 passes.rs）
//!   .dialect(&MyDialect)              方言：注册语法（mlirformat）+ 把本方言的 op 下降成内部 IR
//!   .pass(&MyPass)                    pass：在内部 IR 上做变换
//! reg.parse(text)?                    MLIR 文本 ⇒ ir::Module（函数体里的 op 按命名空间交给方言）；
//!                                     有 llvm / builtin / 插件方言以外的 op ⇒ 先经 mlirpass 按 [`LOWERING`] 下降
//!   .lowering("builtin.module(…)")    换掉那条下降流水线（mlir-opt 的 `--pass-pipeline` 写法）
//! reg.run(&mut module, &["dce", …])?   按名字跑一串 pass
//! ```
//!
//! 下降：[`Dialect::lower`] 拿到 [`Lowering`]，读操作数 / 结果 / 属性，`emit` 出内部指令（可以多条、可以开临时值）。

pub use crate::ir::Lowering;
use crate::ir::{Error, Module};
use mlirformat::MlirOpt;
pub use crate::opt::{DCE, Dce, GVN, Gvn, LICM, Licm, MEM2REG, Mem2Reg, Pass, SCCP, SIMPLIFY, Sccp, Simplify};

/// ⭐ 方言插件。
pub trait Dialect {
    /// 命名空间：`llvm.add` 的 `llvm`。
    fn namespace(&self) -> &str;

    /// 向 mlirformat 注册本方言的自定义形式、类型与属性的参数钩子。缺省不注册（只认通用形式）。
    fn register(&self, opt: &mut MlirOpt) {
        let _ = opt;
    }

    /// 函数体里的一条本方言 op ⇒ 内部指令。
    fn lower(&self, cx: &mut Lowering<'_, '_>) -> Result<(), Error>;
}

/// 内置的 `llvm` 方言：语法由 mlirformat（`MlirOpt::upstream`）注册，下降走 `ir::convert`。
pub struct Llvm;

impl Dialect for Llvm {
    fn namespace(&self) -> &str {
        "llvm"
    }

    fn lower(&self, cx: &mut Lowering<'_, '_>) -> Result<(), Error> {
        cx.llvm()
    }
}

/// ⭐ 缺省的下降流水线（mlirpass，与 mlir-opt 22.1.8 同名同义）：高层方言 ⇒ llvm 方言，index 按 RV32 取 32 位。
/// 只在模块里有 llvm / builtin / 插件方言以外的 op 时才跑，纯 llvm 方言的输入原样走。
pub const LOWERING: &str = "builtin.module(lower-affine, convert-scf-to-cf, convert-math-to-llvm, convert-math-to-libm, \
    expand-strided-metadata, finalize-memref-to-llvm{index-bitwidth=32}, convert-arith-to-llvm{index-bitwidth=32}, \
    convert-index-to-llvm{index-bitwidth=32}, convert-cf-to-llvm{index-bitwidth=32}, convert-func-to-llvm{index-bitwidth=32}, \
    convert-ub-to-llvm{index-bitwidth=32}, reconcile-unrealized-casts)";

/// ⭐ 方言与 pass 的注册表（借用插件，不持有）。
pub struct Registry<'p> {
    dialects: Vec<&'p dyn Dialect>,
    passes: Vec<&'p dyn Pass>,
    /// 高层方言的下降流水线（mlirpass 的 `--pass-pipeline` 文本）。
    lowering: &'p str,
    /// 下降之后、转内部 IR 之前，对整个模块跑的 mlirpass 优化流水线（缺省不跑）。
    optimizing: Option<&'p str>,
}

impl Default for Registry<'_> {
    /// 内置的 `llvm` 方言与 pass。
    fn default() -> Self {
        Self { dialects: vec![&Llvm], passes: vec![&MEM2REG, &GVN, &SCCP, &SIMPLIFY, &LICM, &DCE], lowering: LOWERING, optimizing: None }
    }
}

impl<'p> Registry<'p> {
    /// 什么都没注册。
    #[must_use]
    pub const fn empty() -> Self {
        Self { dialects: Vec::new(), passes: Vec::new(), lowering: LOWERING, optimizing: None }
    }

    /// 注册方言（同命名空间的换掉）。
    pub fn dialect(&mut self, d: &'p dyn Dialect) -> &mut Self {
        self.dialects.retain(|x| x.namespace() != d.namespace());
        self.dialects.push(d);
        self
    }

    /// 注册 pass（同名的换掉）。
    pub fn pass(&mut self, p: &'p dyn Pass) -> &mut Self {
        self.passes.retain(|x| x.name() != p.name());
        self.passes.push(p);
        self
    }

    /// 换掉高层方言的下降流水线（`builtin.module(…)`）。
    pub fn lowering(&mut self, pipeline: &'p str) -> &mut Self {
        self.lowering = pipeline;
        self
    }

    /// 转内部 IR 之前在 MLIR 层跑的 mlirpass 优化流水线（`builtin.module(…)`）。
    pub fn optimizing(&mut self, pipeline: &'p str) -> &mut Self {
        self.optimizing = Some(pipeline);
        self
    }

    /// 有没有 MLIR 层的优化流水线。
    #[must_use]
    pub const fn optimizes(&self) -> bool {
        self.optimizing.is_some()
    }

    /// 按命名空间找方言。
    #[must_use]
    pub fn find_dialect(&self, ns: &str) -> Option<&'p dyn Dialect> {
        self.dialects.iter().copied().find(|d| d.namespace() == ns)
    }

    /// 按名字找 pass。
    #[must_use]
    pub fn find_pass(&self, name: &str) -> Option<&'p dyn Pass> {
        self.passes.iter().copied().find(|p| p.name() == name)
    }

    pub fn dialects(&self) -> impl Iterator<Item = &'p dyn Dialect> + '_ {
        self.dialects.iter().copied()
    }

    pub fn passes(&self) -> impl Iterator<Item = &'p dyn Pass> + '_ {
        self.passes.iter().copied()
    }

    /// mlirformat 的解析器：上游方言 + 各插件注册的语法。
    #[must_use]
    pub fn opt(&self) -> MlirOpt {
        let mut opt = MlirOpt::upstream();
        for d in &self.dialects {
            d.register(&mut opt);
        }
        opt
    }

    /// 要不要先经 mlirpass 下降：有 `llvm` / `builtin` / 注册的插件方言之外的 op。
    #[must_use]
    pub fn needs_lowering(&self, op: &mlirformat::Operation<'_>) -> bool {
        let ns = op.name.split_once('.').map_or(&*op.name, |(ns, _)| ns);
        (ns != "builtin" && self.find_dialect(ns).is_none()) || op.regions.iter().flat_map(|r| &r.blocks).flat_map(|b| &b.ops).any(|o| self.needs_lowering(o))
    }

    /// ⭐ `m` 交给 mlirpass：要下降就先跑 [`Registry::lowering`]，再跑 [`Registry::optimizing`]（有的话）；
    /// 嵌套在 `llvm.func(…)` 里的按函数在线程池上并行。
    pub fn mlirpass<'a>(&self, ctx: mlirpass::Ctx<'a>, m: &mlirformat::Module<'a>, lower: bool) -> Result<mlirformat::Module<'a>, Error> {
        let fail = |e: mlirpass::mlirformat::Error| Error::Parse(format!("mlirpass：{e}"));
        let passes = mlirpass::Passes::upstream();
        let mut body = mlirpass::Body::import(ctx, m).map_err(fail)?;
        let root = body.root;
        for p in lower.then_some(self.lowering).into_iter().chain(self.optimizing) {
            mlirpass::PassManager::parse(&passes, p).map_err(fail)?.run_on(&mut body, root, &mlirpass::ThreadPool::default()).map_err(fail)?;
        }
        Ok(mlirformat::Module::from(&body))
    }

    /// ⭐ MLIR 文本 ⇒ 内部 IR。
    pub fn parse(&self, text: &str) -> Result<Module, Error> {
        Module::parse_with(text, self)
    }

    /// ⭐ 按名字依次跑 pass（同 `mlir-opt --pass-pipeline`）。
    pub fn run(&self, m: &mut Module, pipeline: &[&str]) -> Result<(), Error> {
        for name in pipeline {
            let p = self.find_pass(name).ok_or_else(|| Error::Parse(format!("没有注册 pass `{name}`")))?;
            p.run(m).map_err(|e| Error::Op { op: format!("pass {name}"), why: e.to_string() })?;
        }
        Ok(())
    }
}
