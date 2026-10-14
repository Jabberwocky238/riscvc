//! XTheadBa：地址计算。
use super::XtForm;
use crate::macros::Isa;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "xtheadba", feature = "xtheadba", form = XtForm)]
pub enum XTheadBa {
    /// rd = rs1 + (rs2 << uimm2)
    #[isa("th.addsl", RImm2, 0x0000_100b, exec = |c, i| c.set(i.rd, c.x(i.rs1).wrapping_add(c.x(i.rs2) << i.imm)))]
    Addsl,
}
