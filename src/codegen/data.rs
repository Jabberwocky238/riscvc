//! 全局变量与别名 ⇒ 汇编（`.data` / `.rodata` / `.bss` / `.comm`）。
use crate::ir::{Const, Global, Kind, Linkage, Module, Ty};
use core::fmt::Write;

impl Module {
    /// 符号的可见性伪操作（`.globl` / `.weak` / `.hidden`）。
    pub(super) fn binding(text: &mut String, name: &str, linkage: Linkage, hidden: bool) {
        if linkage.weak() {
            let _ = writeln!(text, "\t.weak\t{name}");
        } else if !linkage.local() {
            let _ = writeln!(text, "\t.globl\t{name}");
        }
        if hidden {
            let _ = writeln!(text, "\t.hidden\t{name}");
        }
    }

    pub(super) fn global_asm(&self, g: &Global, text: &mut String) {
        let Some(init) = &g.init else { return };
        let size = self.types.size(g.ty);
        let align = g.align.unwrap_or_else(|| self.types.align(g.ty)).max(1);
        if g.linkage == Linkage::Common {
            let _ = writeln!(text, "\t.comm\t{}, {size}, {align}", g.name);
            return;
        }
        let zero = Self::is_zero(init);
        let section = match &g.section {
            Some(s) => format!("\t.section\t{s},\"aw\",@progbits"),
            None if g.constant => String::from("\t.section\t.rodata,\"a\",@progbits"),
            None if zero => String::from("\t.bss"),
            None => String::from("\t.data"),
        };
        let _ = writeln!(text, "{section}");
        Self::binding(text, &g.name, g.linkage, g.hidden);
        let _ = writeln!(text, "\t.type\t{},@object", g.name);
        let _ = writeln!(text, "\t.p2align\t{}", align.trailing_zeros());
        let _ = writeln!(text, "{}:", g.name);
        if zero && g.section.is_none() && !g.constant {
            let _ = writeln!(text, "\t.zero\t{}", size.max(1));
        } else {
            self.data(init, g.ty, text);
        }
        let _ = writeln!(text, "\t.size\t{}, {size}\n", g.name);
    }

    fn is_zero(c: &Const) -> bool {
        match c {
            Const::Zero | Const::Undef => true,
            Const::Int(v) => *v == 0,
            Const::Float(v) => *v == 0,
            Const::Agg(items) => items.iter().all(Self::is_zero),
            Const::Bytes(b) => b.iter().all(|x| *x == 0),
            Const::Global(..) => false,
        }
    }

    /// 一个常量按类型的布局写成数据（结构体字段间补零）。
    fn data(&self, c: &Const, t: Ty, text: &mut String) {
        let size = self.types.size(t);
        let w = |text: &mut String, n: u64, v: u128| {
            let d = match n {
                1 => ".byte",
                2 => ".half",
                4 => ".word",
                _ => ".quad",
            };
            let _ = writeln!(text, "\t{d}\t{}", v & if n >= 16 { u128::MAX } else { (1u128 << (8 * n)) - 1 });
        };
        match (c, self.types.kind(t)) {
            (Const::Zero | Const::Undef, _) => {
                let _ = writeln!(text, "\t.zero\t{size}");
            }
            (Const::Int(v), _) if size <= 8 => w(text, size, *v),
            (Const::Float(v), _) => w(text, size, u128::from(*v)),
            (Const::Global(name, off), _) => {
                let _ = writeln!(text, "\t.word\t{name}{}", if *off == 0 { String::new() } else { format!("{off:+}") });
            }
            (Const::Bytes(b), _) => {
                let s: String = b.iter().map(|&x| if x.is_ascii_graphic() && x != b'"' && x != b'\\' || x == b' ' { char::from(x).to_string() } else { format!("\\{x:03o}") }).collect();
                let _ = writeln!(text, "\t.ascii\t\"{s}\"");
            }
            (Const::Agg(items), Kind::Struct(fields, _)) => {
                let (offs, total) = self.types.struct_layout(t);
                let mut at = 0;
                for ((item, f), off) in items.iter().zip(fields).zip(offs) {
                    if off > at {
                        let _ = writeln!(text, "\t.zero\t{}", off - at);
                    }
                    self.data(item, *f, text);
                    at = off + self.types.size(*f);
                }
                if total > at {
                    let _ = writeln!(text, "\t.zero\t{}", total - at);
                }
            }
            (Const::Agg(items), Kind::Array(_, e) | Kind::Vector(_, e)) => {
                for item in items {
                    self.data(item, *e, text);
                }
            }
            (c, k) => {
                let _ = writeln!(text, "\t# 写不出的常量 {c:?} : {k:?}\n\t.zero\t{size}");
            }
        }
    }
}
