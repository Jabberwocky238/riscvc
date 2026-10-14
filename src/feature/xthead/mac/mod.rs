//! XTheadMac：乘加 / 乘减（rd 也是输入）；`*h` 是 16 位有符号乘。
use super::XtForm;
use crate::macros::Isa;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "xtheadmac", feature = "xtheadmac", form = XtForm)]
pub enum XTheadMac {
    #[isa("th.mula", R, 0x2000_100b, exec = |c, i| c.set(i.rd, c.x(i.rd).wrapping_add(c.x(i.rs1).wrapping_mul(c.x(i.rs2)))))]
    Mula,
    #[isa("th.muls", R, 0x2200_100b, exec = |c, i| c.set(i.rd, c.x(i.rd).wrapping_sub(c.x(i.rs1).wrapping_mul(c.x(i.rs2)))))]
    Muls,
    #[isa("th.mulah", R, 0x2800_100b, exec = |c, i| c.set(i.rd, c.x(i.rd).wrapping_add(XTheadMac::h(c.x(i.rs1), c.x(i.rs2)))))]
    Mulah,
    #[isa("th.mulsh", R, 0x2a00_100b, exec = |c, i| c.set(i.rd, c.x(i.rd).wrapping_sub(XTheadMac::h(c.x(i.rs1), c.x(i.rs2)))))]
    Mulsh,
}

impl XTheadMac {
    /// 低 16 位当有符号数相乘。
    fn h(a: u32, b: u32) -> u32 {
        (i32::from(a as u16 as i16) * i32::from(b as u16 as i16)).cast_unsigned()
    }
}
