//! XTheadBs：单个位测试。
use super::XtForm;
use crate::macros::Isa;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "xtheadbs", feature = "xtheadbs", form = XtForm)]
pub enum XTheadBs {
    /// rd = rs1 的第 imm 位
    #[isa("th.tst", Shift, 0x8800_100b, exec = |c, i| c.set(i.rd, (c.x(i.rs1) >> i.imm) & 1))]
    Tst,
}
