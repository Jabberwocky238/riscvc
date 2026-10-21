//! A 扩展的格式：`lr.w rd, (rs1)`、`sc.w` / `amo*.w rd, rs2, (rs1)`（地址只认 `(rs1)` / `0(rs1)`，同 llvm-mc）。
use crate::asm::Expr;
use crate::ext::{Args, Fixup, Operand};
use crate::isa::{Fields, Layout, Style};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum AForm {
    /// `rd, (rs1)`（rs2 恒 0）
    Lr,
    /// `rd, rs2, (rs1)`
    Amo,
}

impl Layout for AForm {
    fn mask(self) -> u32 {
        match self {
            Self::Lr => 0xfff0_707f,
            Self::Amo => 0xfe00_707f,
        }
    }

    fn encode(self, f: &Fields) -> u32 {
        let (rd, rs1, rs2) = (u32::from(f.rd), u32::from(f.rs1), u32::from(f.rs2));
        match self {
            Self::Lr => rd << 7 | rs1 << 15,
            Self::Amo => rd << 7 | rs1 << 15 | rs2 << 20,
        }
    }

    fn decode(self, w: u32) -> Option<Fields> {
        Some(Fields::regs_of(w))
    }

    fn print(self, i: &Fields, _pc: u64, s: Style) -> String {
        match self {
            Self::Lr => format!("{}, ({})", s.x(i.rd), s.x(i.rs1)),
            Self::Amo => format!("{}, {}, ({})", s.x(i.rd), s.x(i.rs2), s.x(i.rs1)),
        }
    }

    fn assemble(self, args: &Args<'_>) -> Result<(Fields, Vec<Fixup>), String> {
        use Operand::{Mem, X};
        let z = Fields::ZERO;
        match (self, args.ops) {
            (Self::Lr, [X(d), Mem(Expr::Num(0), a)]) => Ok((z.x(*d, *a, 0), Vec::new())),
            (Self::Amo, [X(d), X(v), Mem(Expr::Num(0), a)]) => Ok((z.x(*d, *a, *v), Vec::new())),
            (_, [.., Mem(e, _)]) if !matches!(e, Expr::Num(0)) => Err(String::from("原子指令的地址只能是 `(rs1)`，偏移必须为 0")),
            _ => Err(format!("{self:?} 格式的操作数不对：{:?}", args.ops)),
        }
    }
}
