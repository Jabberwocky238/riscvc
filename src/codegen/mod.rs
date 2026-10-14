//! 代码生成：内部 IR ⇒ RV32IMF 汇编文本（再交给 `asm` 汇编）。
//!
//! ```text
//! isel     指令选择 ⇒ 机器 IR（虚拟寄存器）
//! regalloc regalloc2（Ion）
//! emit     栈帧布局、序言 / 尾声、分配结果 ⇒ 汇编
//! data     全局变量、别名
//! ```
mod abi;
mod data;
mod emit;
mod isel;
mod mir;

#[derive(Debug, thiserror::Error)]
pub enum Error {
    #[error("指令选择：{0}")]
    Select(String),
    #[error("寄存器分配：{0}")]
    Regalloc(String),
}

use crate::ir::{Const, Module};
use core::fmt::Write;

impl Module {
    /// ⭐ 整个模块 ⇒ 汇编文本（与 clang -S 同样带上架构属性）。
    pub fn compile(&self) -> Result<String, Error> {
        let mut text = String::from("\t.attribute\t4, 16\n\t.attribute\t5, \"rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0\"\n");
        for (id, f) in self.functions.iter().enumerate() {
            if f.blocks.is_empty() {
                continue;
            }
            let sel = isel::Isel::select(self, f)?;
            let mf = mir::MFunc::new(sel.blocks.clone(), sel.vregs);
            if !mf.well_formed() {
                return Err(Error::Select(format!("{}：机器块没有以终结指令收尾", f.name)));
            }
            let opts = regalloc2::RegallocOptions { verbose_log: false, validate_ssa: cfg!(debug_assertions), ..Default::default() };
            let out = regalloc2::run(&mf, &abi::Abi::machine_env(), &opts).map_err(|e| Error::Regalloc(format!("{}：{e:?}", f.name)))?;
            let body = emit::Emitter::new(&sel, &mf, &out, id).body();
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
