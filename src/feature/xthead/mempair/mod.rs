//! XTheadMemPair：成对读写两个字，地址 = rs1 + (uimm2 << 3)。
use super::XtForm;
use crate::ext::Exec;
use crate::isa::Inst;
use crate::macros::Isa;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "xtheadmempair", feature = "xtheadmempair", form = XtForm)]
pub enum XTheadMemPair {
    #[isa("th.lwd", Pair, 0xe000_400b, exec = |c, i| XTheadMemPair::load(c, i))]
    Lwd,
    #[isa("th.lwud", Pair, 0xf000_400b, exec = |c, i| XTheadMemPair::load(c, i))]
    Lwud,
    #[isa("th.swd", Pair, 0xe000_500b, exec = |c, i| {
        let at = c.x(i.rs1).wrapping_add(i.imm.cast_unsigned() << 3);
        let (a, b) = (c.x(i.rd), c.x(i.rs2));
        c.store(at, &a.to_le_bytes());
        c.store(at.wrapping_add(4), &b.to_le_bytes());
    })]
    Swd,
}

impl XTheadMemPair {
    /// 读两个字进 rd、rs2（RV32 下有 / 无符号相同）。
    fn load(c: &mut Exec<'_, '_>, i: &Inst<Self>) {
        let at = c.x(i.rs1).wrapping_add(i.imm.cast_unsigned() << 3);
        let (a, b) = (c.load(at, 4), c.load(at.wrapping_add(4), 4));
        c.set(i.rd, a);
        c.set(i.rs2, b);
    }
}
