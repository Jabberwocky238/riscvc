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

/// 代码生成的旁路观察者：每个函数分配完寄存器之后收到一次分配器的回执。
///
/// ⛔ 诊断一律走注入，不用环境变量、也不用 feature —— 要看就传一个进来，
/// 不传就什么都不发生（[`Module::compile`] 就是传了 `&mut ()`）。
pub trait Observer {
    /// `name` 是函数名，`out` 是 [`crate::regalloc`] 的回执（含 `stats`；
    /// 函数规模看 `out.inst_alloc_offsets.len()`）。
    fn allocated(&mut self, name: &str, out: &crate::regalloc::Output);
}

/// 什么都不看。
impl Observer for () {
    fn allocated(&mut self, _: &str, _: &crate::regalloc::Output) {}
}

impl Module {
    /// ⭐ 整个模块 ⇒ 汇编文本（与 clang -S 同样带上架构属性）。
    pub fn compile(&self) -> Result<String, Error> {
        self.compile_observed(&mut ())
    }

    /// 同 [`Self::compile`]，另外把每个函数的分配回执交给 `obs`（诊断用）。
    pub fn compile_observed(&self, obs: &mut impl Observer) -> Result<String, Error> {
        let mut text = format!("\t.attribute\t4, 16\n\t.attribute\t5, \"{}\"\n", crate::feature::Target::march());
        for (id, f) in self.functions.iter().enumerate() {
            if f.blocks.is_empty() {
                continue;
            }
            let mut sel = isel::Isel::select(self, f)?;
            sel.optimize();
            let mf = mir::MFunc::new(sel.blocks.clone(), sel.vregs);
            if !mf.well_formed() {
                return Err(Error::Select(format!("{}：机器块没有以终结指令收尾", f.name)));
            }
            let opts = crate::regalloc::RegallocOptions { verbose_log: false, validate_ssa: cfg!(debug_assertions), ..Default::default() };
            let out = crate::regalloc::run(&mf, &abi::Abi::machine_env(sel.dynamic_sp), &opts).map_err(|e| Error::Regalloc(format!("{}：{e:?}", f.name)))?;
            obs.allocated(&f.name, &out);
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
