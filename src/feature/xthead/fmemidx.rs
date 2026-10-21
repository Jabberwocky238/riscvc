//! XTheadFMemIdx：寄存器索引的浮点读写（要 F；地址 = rs1 + (rs2 << uimm2)）。
use super::XtForm;
use crate::macros::Isa;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "xtheadfmemidx", form = XtForm)]
pub enum XTheadFMemIdx {
    #[isa("th.flrw", FRImm2, 0x4000_600b, exec = |c, i| {
        let v = c.load(c.x(i.rs1).wrapping_add(c.x(i.rs2) << i.imm), 4);
        c.fset_bits(i.rd, v);
    })]
    Flrw,
    #[isa("th.fsrw", FRImm2, 0x4000_700b, exec = |c, i| {
        let v = c.f(i.rd);
        c.store(c.x(i.rs1).wrapping_add(c.x(i.rs2) << i.imm), &v.to_le_bytes());
    })]
    Fsrw,
}
