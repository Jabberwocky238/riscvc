//! XTheadBb：位操作。
use super::XtForm;
use crate::macros::Isa;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "xtheadbb", feature = "xtheadbb", form = XtForm)]
pub enum XTheadBb {
    /// 循环右移
    #[isa("th.srri", Shift, 0x1000_100b, exec = |c, i| c.set(i.rd, c.x(i.rs1).rotate_right(i.imm.cast_unsigned())))]
    Srri,
    /// rs1[msb:lsb] 符号扩展
    #[isa("th.ext", Bitfield, 0x0000_200b, exec = |c, i| c.set(i.rd, XTheadBb::bits(c.x(i.rs1), i.imm, i.rs3, true)))]
    Ext,
    /// rs1[msb:lsb] 零扩展
    #[isa("th.extu", Bitfield, 0x0000_300b, exec = |c, i| c.set(i.rd, XTheadBb::bits(c.x(i.rs1), i.imm, i.rs3, false)))]
    Extu,
    /// 从高位起第一个 0 的位置（= 前导 1 个数）
    #[isa("th.ff0", R1, 0x8400_100b, exec = |c, i| c.set(i.rd, c.x(i.rs1).leading_ones()))]
    Ff0,
    /// 从高位起第一个 1 的位置（= 前导 0 个数）
    #[isa("th.ff1", R1, 0x8600_100b, exec = |c, i| c.set(i.rd, c.x(i.rs1).leading_zeros()))]
    Ff1,
    /// 字节反序
    #[isa("th.rev", R1, 0x8200_100b, exec = |c, i| c.set(i.rd, c.x(i.rs1).swap_bytes()))]
    Rev,
    /// 每个字节：为 0 ⇒ 0xff，否则 0
    #[isa("th.tstnbz", R1, 0x8000_100b, exec = |c, i| c.set(i.rd, u32::from_le_bytes(c.x(i.rs1).to_le_bytes().map(|b| if b == 0 { 0xff } else { 0 }))))]
    Tstnbz,
}

impl XTheadBb {
    /// `v[msb:lsb]`，有 / 无符号扩展（msb < lsb ⇒ 只取 lsb 一位，同硬件的截断）。
    fn bits(v: u32, msb: i32, lsb: u8, signed: bool) -> u32 {
        let (msb, lsb) = (msb.cast_unsigned().max(u32::from(lsb)), u32::from(lsb));
        let width = msb - lsb + 1;
        let t = v << (31 - msb);
        if signed { (t.cast_signed() >> (32 - width)).cast_unsigned() } else { t >> (32 - width) }
    }
}
