//! 代码生成：内部 IR ⇒ RV32IMF 汇编文本（再交给 `asm` 汇编）。
//!
//! ```text
//! isel     指令选择 ⇒ 机器 IR（虚拟寄存器）
//! opt      机器 IR 上的 pass（SSA）：化简、公共子表达式、死代码
//! regalloc regalloc2（Ion）
//! post     分配之后：物理寄存器的机器函数（栈帧、序言 / 尾声、分支折叠、分支松弛）⇒ 汇编
//! data     全局变量、别名
//! ```
mod abi;
mod data;
mod isel;
pub use abi::Allocatable;
pub use isel::Sel;
mod mir;
mod opt;
mod post;

#[derive(Debug, thiserror::Error)]
pub enum Error {
    #[error("指令选择：{0}")]
    Select(String),
    #[error("寄存器分配：{0}")]
    Regalloc(String),
}

use crate::ir::{Const, Module};
use core::fmt::Write;

/// 分配前机器 IR 的概况（诊断用）。⛔ 不把 `mir` 本身摊到公开 API 上。
pub struct Shape<'a> {
    pub insts: usize,
    /// 「多固定寄存器」赔掉的搬运，按 `MOp` 种类名归类，分两种来由
    /// （见 `mir::MInst::multi_fixed`）：`.1` 是同一个值传了两次，
    /// `.2` 是实参在调用之后还活着。
    pub multi_fixed: &'a [(&'static str, usize, usize)],
}

/// ⭐ 代码生成的选项 —— **结构体注入**，⛔ 不走 feature、不走环境变量。
#[derive(Default)]
pub struct Options<'a> {
    /// 挂上的扩展包：`ir::Op::Custom` 由它们选成机器指令（见 [`crate::ext::Module::select`]）。
    pub modules: &'a [&'a dyn crate::ext::Module],
    /// ⭐ 目标：挂哪些内置扩展（缺省 `rv32imf_zicsr_zmmul`）。没有 M / Zmmul 的乘除调 compiler-rt，没有 F 走 ilp32 软浮点。
    pub target: crate::feature::Target<'a>,
    /// 可分配的寄存器。宿主要独占某几个（比如扩展包把常量钉在 `x5…x10`）就写
    /// `Allocatable::default().without_int(&[5, 6, 7, 8, 9, 10])`。
    pub registers: Allocatable,
}

/// 代码生成的旁路观察者：每个函数分配完寄存器之后收到一次分配器的回执。
///
/// ⛔ 诊断一律走注入，不用环境变量、也不用 feature —— 要看就传一个进来，
/// 不传就什么都不发生（[`Module::compile`] 就是传了 `&mut ()`）。
pub trait Observer {
    /// 要不要算 `Shape::multi_fixed`（要扫全函数，缺省不算）。
    fn wants_shape(&self) -> bool {
        false
    }

    /// `name` 是函数名，`shape` 是分配前的概况，`out` 是 [`crate::regalloc`] 的回执（含 `stats`）。
    fn allocated(&mut self, name: &str, shape: Shape<'_>, out: &crate::regalloc::Output);
}

/// 什么都不看。
impl Observer for () {
    fn allocated(&mut self, _: &str, _: Shape<'_>, _: &crate::regalloc::Output) {}
}

impl Module {
    /// ⭐ 整个模块 ⇒ 汇编文本（与 clang -S 同样带上架构属性）。
    pub fn compile(&self) -> Result<String, Error> {
        self.compile_observed(&mut ())
    }

    /// 同 [`Self::compile`]，另外给一套选项（扩展包、可分配寄存器）。
    pub fn compile_with(&self, opts: &Options<'_>) -> Result<String, Error> {
        self.compile_all(&mut (), opts)
    }

    /// 同 [`Self::compile`]，另外把每个函数的分配回执交给 `obs`（诊断用）。
    pub fn compile_observed(&self, obs: &mut impl Observer) -> Result<String, Error> {
        self.compile_all(obs, &Options::default())
    }

    fn compile_all(&self, obs: &mut impl Observer, opts: &Options<'_>) -> Result<String, Error> {
        let mut text = format!("\t.attribute\t4, 16\n\t.attribute\t5, \"{}\"\n", opts.target.march());
        for (id, f) in self.functions.iter().enumerate() {
            if f.blocks.is_empty() {
                continue;
            }
            let mut sel = isel::Isel::select(self, f, opts.modules, &opts.target)?;
            sel.optimize();
            let mf = mir::MFunc::new(sel.blocks.clone(), sel.vregs);
            if !mf.well_formed() {
                return Err(Error::Select(format!("{}：机器块没有以终结指令收尾", f.name)));
            }
            let ra = crate::regalloc::RegallocOptions { verbose_log: false, validate_ssa: cfg!(debug_assertions), ..Default::default() };
            let out = crate::regalloc::run(&mf, &abi::Abi::machine_env(sel.dynamic_sp, &opts.registers), &ra).map_err(|e| Error::Regalloc(format!("{}：{e:?}", f.name)))?;
            let mut multi: Vec<(&'static str, usize, usize)> = Vec::new();
            if obs.wants_shape() {
                // 一个 vreg 在第 `i` 条之后还活着：之后还有指令读它，或它被跳转当实参传出去。
                let last: std::collections::HashMap<_, _> =
                    mf.insts.iter().enumerate().flat_map(|(n, x)| x.uses.iter().filter_map(move |r| match r {
                        mir::R::V(v) => Some(((v.class() as u8, v.vreg()), n)),
                        mir::R::P(_) => None,
                    })).collect();
                let out: std::collections::HashSet<_> =
                    mf.blocks.iter().flat_map(|b| b.args.iter().flatten()).map(|v| (v.class() as u8, v.vreg())).collect();
                for (n, i) in mf.insts.iter().enumerate() {
                    let live = |v: crate::regalloc::VReg| {
                        let k = (v.class() as u8, v.vreg());
                        out.contains(&k) || last.get(&k).is_some_and(|&l| l > n)
                    };
                    let (dup, clob) = i.multi_fixed(&live);
                    if dup + clob > 0 {
                        let k = mir::MInst::kind(&i.op);
                        match multi.iter_mut().find(|(s, ..)| *s == k) {
                            Some((_, a, b)) => (*a, *b) = (*a + dup, *b + clob),
                            None => multi.push((k, dup, clob)),
                        }
                    }
                }
            }
            obs.allocated(&f.name, Shape { insts: mf.insts.len(), multi_fixed: &multi }, &out);
            let body = post::PFunc::new(&sel, &mf, &out, id).to_string();
            let section = f.section.as_deref().map_or_else(|| String::from("\t.text"), |s| format!("\t.section\t{s},\"ax\",@progbits"));
            let _ = writeln!(text, "{section}");
            Self::binding(&mut text, &f.name, f.linkage, f.hidden);
            let _ = writeln!(text, "\t.p2align\t{}", f.align.map_or(2, u64::trailing_zeros));
            let _ = writeln!(text, "\t.type\t{},@function\n{}:", f.name, f.name);
            text.push_str(&body);
            let _ = writeln!(text, ".Lfunc_end{id}:\n\t.size\t{}, .Lfunc_end{id}-{}\n", f.name, f.name);
        }
        for g in &self.globals {
            self.global_asm(g, &mut text);
        }
        for a in &self.aliases {
            let target = match &a.target {
                Const::Global(name, 0) => name.clone(),
                Const::Global(name, off) => format!("{name}{off:+}"),
                c => return Err(Error::Select(format!("别名 {} 的目标 {c:?} 不是符号", a.name))),
            };
            Self::binding(&mut text, &a.name, a.linkage, a.hidden);
            let _ = writeln!(text, "\t.set\t{}, {target}", a.name);
        }
        Ok(text)
    }
}
