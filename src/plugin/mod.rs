//! 插件接口（照 MLIR 的 Dialect / DialectRegistry / Pass / PassManager）：⛔ 静态注册，编进二进制（不加载 `.so`）。
//!
//! ```text
//! Registry::default()                 内置：llvm 方言、dce（见 passes.rs）
//!   .dialect(&MyDialect)              方言：注册语法（mlirformat）+ 把本方言的 op 下降成内部 IR
//!   .pass(&MyPass)                    pass：在内部 IR 上做变换
//! reg.parse(text)?                    MLIR 文本 ⇒ ir::Module（函数体里的 op 按命名空间交给方言）；
//!                                     有 llvm / builtin / 插件方言以外的 op ⇒ 先经 mlirpass 按 [`LOWERING`] 下降
//! reg.import(&mut body)?              mlirpass 的 IR ⇒ ir::Module（⛔ 经文本）：上游自己的 pass 跑完，接着在同一个 body 上下降
//!   .lowering("builtin.module(…)")    换掉那条下降流水线（mlir-opt 的 `--pass-pipeline` 写法）
//! reg.run(&mut module, &["dce", …])?   按名字跑一串 pass
//! ```
//!
//! 下降：[`Dialect::lower`] 拿到 [`Lowering`]，读操作数 / 结果 / 属性，`emit` 出内部指令（可以多条、可以开临时值）。

pub use crate::ir::Lowering;
use crate::ir::{Error, Module};
use mlirformat::MlirOpt;
use moremath::{Executor, ThreadSingle};
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

/// ⭐ 内置扩展的官方插件方言：命名空间 = 扩展名（`xtheadsync`、`xtheadcmo`、`m` …），op = `<扩展名>.<助记符>`
/// （`xtheadsync.th.sync.i`、`xtheadcmo.th.dcache.ipa %line`），⛔ 表里没有的助记符；下降成 [`Op::Custom`](crate::ir::Op::Custom)，
/// 选指令走同一个模块（[`crate::ext::Module::select`]）。用法：`reg.dialect(&builtin::XTHEADSYNC)`，并把模块挂进目标。
impl<T: crate::ext::Semantics> Dialect for crate::ext::Std<T> {
    fn namespace(&self) -> &str {
        crate::ext::Module::name(self)
    }

    fn lower(&self, cx: &mut Lowering<'_, '_>) -> Result<(), Error> {
        let name = &*cx.op().name;
        let known = name.strip_prefix(self.namespace()).and_then(|m| m.strip_prefix('.')).is_some_and(|m| m.parse::<T>().is_ok());
        if !known {
            return Err(Error::Op { op: String::from(name), why: format!("`{}` 扩展里没有这条指令", self.namespace()) });
        }
        cx.custom()
    }
}

/// ⭐ 缺省的下降流水线（mlirpass，与 mlir-opt 22.1.8 同名同义）：高层方言 ⇒ llvm 方言，index 按 RV32 取 32 位。
/// 只在模块里有 llvm / builtin / 插件方言以外的 op 时才跑，纯 llvm 方言的输入原样走。
pub const LOWERING: &str = "builtin.module(lower-affine, convert-scf-to-cf, convert-math-to-llvm, convert-math-to-libm, \
    expand-strided-metadata, finalize-memref-to-llvm{index-bitwidth=32}, convert-arith-to-llvm{index-bitwidth=32}, \
    convert-index-to-llvm{index-bitwidth=32}, convert-cf-to-llvm{index-bitwidth=32}, convert-func-to-llvm{index-bitwidth=32}, \
    convert-ub-to-llvm{index-bitwidth=32}, reconcile-unrealized-casts)";

/// moremath 的执行器借给 mlirpass 当它的执行器：pass 按函数拆出的任务与解析的任务进同一个池。
struct Lent<'x, X>(&'x X);

impl<X: Executor + Sync> mlirpass::Executor for Lent<'_, X> {
    fn execute<'s>(&self, tasks: Vec<mlirpass::Task<'s>>) {
        self.0.execute(tasks);
    }

    fn width(&self) -> usize {
        self.0.threads()
    }
}

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

    /// 这个名字的 op 要不要先经 mlirpass 下降：`llvm` / `builtin` / 注册的插件方言之外的。
    fn foreign(&self, name: &str) -> bool {
        let ns = name.split_once('.').map_or(name, |(ns, _)| ns);
        ns != "builtin" && self.find_dialect(ns).is_none()
    }

    /// 要不要先经 mlirpass 下降：有 `llvm` / `builtin` / 注册的插件方言之外的 op。
    #[must_use]
    pub fn needs_lowering(&self, op: &mlirformat::Operation<'_>) -> bool {
        self.foreign(&op.name) || op.regions.iter().flat_map(|r| &r.blocks).flat_map(|b| &b.ops).any(|o| self.needs_lowering(o))
    }

    /// ⭐ `m` 交给 mlirpass：要下降就先跑 [`Registry::lowering`]，再跑 [`Registry::optimizing`]（有的话）；
    /// 导入与嵌套在 `llvm.func(…)` 里的 pass 按函数在 `x` 上并行。
    pub fn mlirpass<'a, X: Executor + Sync>(&self, ctx: mlirpass::Ctx<'a>, m: mlirformat::Module<'a>, lower: bool, x: &X) -> Result<mlirformat::Module<'a>, Error> {
        let mut body = mlirpass::Body::import_in(ctx, m, x).map_err(Error::from)?;
        self.passes_on(&mut body, lower, x)?;
        Ok(mlirformat::Module::from(&body))
    }

    /// 在 `body` 上原地跑 [`Registry::lowering`]（`lower` 时）与 [`Registry::optimizing`]（有的话），任务交给 `x`。
    fn passes_on<X: Executor + Sync>(&self, body: &mut mlirpass::Body<'_>, lower: bool, x: &X) -> Result<(), Error> {
        let passes = mlirpass::Passes::upstream();
        let root = body.root;
        for p in lower.then_some(self.lowering).into_iter().chain(self.optimizing) {
            mlirpass::PassManager::parse(&passes, p).and_then(|pm| pm.run_on(body, root, &Lent(x))).map_err(Error::from)?;
        }
        Ok(())
    }

    /// ⭐ MLIR 文本 ⇒ 内部 IR，单线程（[`ThreadSingle`]）；要并行用 [`Registry::parse_in`]。
    pub fn parse(&self, text: &str) -> Result<Module, Error> {
        self.parse_in(text, &ThreadSingle)
    }

    /// ⭐ MLIR 文本 ⇒ 内部 IR：解析、导入 mlirpass、pass 都在 `x`（通常是一个 `ThreadMulti`）上并行，结果与单线程的相同。
    pub fn parse_in<X: Executor + Sync>(&self, text: &str, x: &X) -> Result<Module, Error> {
        Module::parse_with(text, self, x)
    }

    /// ⭐ mlirpass 的 IR ⇒ 内部 IR，⛔ 经文本：上游在 `body` 上跑完自己的 pass，这里接着原地跑
    /// [`Registry::lowering`]（有 `llvm` / `builtin` / 插件方言之外的 op 时）与 [`Registry::optimizing`]，再转内部 IR。
    /// 插件方言的 op 不用在 `body.ctx` 里注册语法：这里不解析文本。
    pub fn import(&self, body: &mut mlirpass::Body<'_>) -> Result<Module, Error> {
        self.import_in(body, &ThreadSingle)
    }

    /// [`Registry::import`]，pass 在 `x` 上并行。
    pub fn import_in<X: Executor + Sync>(&self, body: &mut mlirpass::Body<'_>, x: &X) -> Result<Module, Error> {
        let lower = body.ops_in(body.root).into_iter().any(|o| self.foreign(&body[o].name));
        self.passes_on(body, lower, x)?;
        Module::convert(&mlirformat::Module::from(&*body), self)
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
