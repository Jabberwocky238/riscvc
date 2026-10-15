//! Zmmul：只有乘法。⭐ 扩展的最小样板：一张表，每行「助记符, 格式, 固定位, exec = 语义」。
use crate::macros::Isa;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "zmmul", feature = "zmmul")]
pub enum Zmmul {
    #[isa("mul", R, 0x0200_0033, exec = |c, i| c.set(i.rd, c.x(i.rs1).wrapping_mul(c.x(i.rs2))))]
    Mul,
    #[isa("mulh", R, 0x0200_1033, exec = |c, i| c.set(i.rd, ((i64::from(c.x(i.rs1).cast_signed()) * i64::from(c.x(i.rs2).cast_signed())) >> 32) as u32))]
    Mulh,
    #[isa("mulhsu", R, 0x0200_2033, exec = |c, i| c.set(i.rd, ((i64::from(c.x(i.rs1).cast_signed()) * i64::from(c.x(i.rs2))) >> 32) as u32))]
    Mulhsu,
    #[isa("mulhu", R, 0x0200_3033, exec = |c, i| c.set(i.rd, ((u64::from(c.x(i.rs1)) * u64::from(c.x(i.rs2))) >> 32) as u32))]
    Mulhu,
}
