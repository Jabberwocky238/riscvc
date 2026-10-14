//! XTheadCondMov：条件搬运（rd 也是输入）。
use super::XtForm;
use crate::macros::Isa;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "xtheadcondmov", feature = "xtheadcondmov", form = XtForm)]
pub enum XTheadCondMov {
    /// rs2 == 0 ⇒ rd = rs1
    #[isa("th.mveqz", R, 0x4000_100b, exec = |c, i| if c.x(i.rs2) == 0 { c.set(i.rd, c.x(i.rs1)) })]
    Mveqz,
    /// rs2 != 0 ⇒ rd = rs1
    #[isa("th.mvnez", R, 0x4200_100b, exec = |c, i| if c.x(i.rs2) != 0 { c.set(i.rd, c.x(i.rs1)) })]
    Mvnez,
}
