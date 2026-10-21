//! M：除法、取余（乘法在 Zmmul；`m` feature 蕴含 `zmmul`）。除以零与溢出同规范：不陷入，给定值。
use crate::macros::Isa;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "m")]
pub enum M {
    #[isa("div", R, 0x0200_4033, exec = |c, i| {
        let (a, b) = (c.x(i.rs1).cast_signed(), c.x(i.rs2).cast_signed());
        c.set(i.rd, match (a, b) {
            (_, 0) => u32::MAX,
            (i32::MIN, -1) => a.cast_unsigned(),
            _ => (a / b).cast_unsigned(),
        });
    })]
    Div,
    #[isa("divu", R, 0x0200_5033, exec = |c, i| c.set(i.rd, c.x(i.rs1).checked_div(c.x(i.rs2)).unwrap_or(u32::MAX)))]
    Divu,
    #[isa("rem", R, 0x0200_6033, exec = |c, i| {
        let (a, b) = (c.x(i.rs1).cast_signed(), c.x(i.rs2).cast_signed());
        c.set(i.rd, match (a, b) {
            (_, 0) => a.cast_unsigned(),
            (i32::MIN, -1) => 0,
            _ => (a % b).cast_unsigned(),
        });
    })]
    Rem,
    #[isa("remu", R, 0x0200_7033, exec = |c, i| c.set(i.rd, c.x(i.rs1).checked_rem(c.x(i.rs2)).unwrap_or(c.x(i.rs1))))]
    Remu,
}
