//! XTheadMemIdx：寄存器索引的读写（`th.lr*` / `th.sr*`：地址 = rs1 + (rs2 << uimm2)；`u` 版的 rs2 零扩展，RV32 下相同），
//! 读写后（`ia`）/ 前（`ib`）改基址（rs1 += simm5 << uimm2）。
use super::XtForm;
use crate::ext::Exec;
use crate::isa::Inst;
use crate::macros::Isa;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "xtheadmemidx", form = XtForm)]
pub enum XTheadMemIdx {
    #[isa("th.lbia", MemUpd, 0x1800400b, exec = |c, i| XTheadMemIdx::load_upd(c, i, 1, true, false))]
    Lbia,
    #[isa("th.lbib", MemUpd, 0x0800400b, exec = |c, i| XTheadMemIdx::load_upd(c, i, 1, true, true))]
    Lbib,
    #[isa("th.lbuia", MemUpd, 0x9800400b, exec = |c, i| XTheadMemIdx::load_upd(c, i, 1, false, false))]
    Lbuia,
    #[isa("th.lbuib", MemUpd, 0x8800400b, exec = |c, i| XTheadMemIdx::load_upd(c, i, 1, false, true))]
    Lbuib,
    #[isa("th.lhia", MemUpd, 0x3800400b, exec = |c, i| XTheadMemIdx::load_upd(c, i, 2, true, false))]
    Lhia,
    #[isa("th.lhib", MemUpd, 0x2800400b, exec = |c, i| XTheadMemIdx::load_upd(c, i, 2, true, true))]
    Lhib,
    #[isa("th.lhuia", MemUpd, 0xb800400b, exec = |c, i| XTheadMemIdx::load_upd(c, i, 2, false, false))]
    Lhuia,
    #[isa("th.lhuib", MemUpd, 0xa800400b, exec = |c, i| XTheadMemIdx::load_upd(c, i, 2, false, true))]
    Lhuib,
    #[isa("th.lwia", MemUpd, 0x5800400b, exec = |c, i| XTheadMemIdx::load_upd(c, i, 4, true, false))]
    Lwia,
    #[isa("th.lwib", MemUpd, 0x4800400b, exec = |c, i| XTheadMemIdx::load_upd(c, i, 4, true, true))]
    Lwib,
    #[isa("th.sbia", MemUpd, 0x1800500b, exec = |c, i| XTheadMemIdx::store_upd(c, i, 1, false))]
    Sbia,
    #[isa("th.sbib", MemUpd, 0x0800500b, exec = |c, i| XTheadMemIdx::store_upd(c, i, 1, true))]
    Sbib,
    #[isa("th.shia", MemUpd, 0x3800500b, exec = |c, i| XTheadMemIdx::store_upd(c, i, 2, false))]
    Shia,
    #[isa("th.shib", MemUpd, 0x2800500b, exec = |c, i| XTheadMemIdx::store_upd(c, i, 2, true))]
    Shib,
    #[isa("th.swia", MemUpd, 0x5800500b, exec = |c, i| XTheadMemIdx::store_upd(c, i, 4, false))]
    Swia,
    #[isa("th.swib", MemUpd, 0x4800500b, exec = |c, i| XTheadMemIdx::store_upd(c, i, 4, true))]
    Swib,
    #[isa("th.lrb", RImm2, 0x0000400b, exec = |c, i| XTheadMemIdx::load_idx(c, i, 1, true))]
    Lrb,
    #[isa("th.lrbu", RImm2, 0x8000400b, exec = |c, i| XTheadMemIdx::load_idx(c, i, 1, false))]
    Lrbu,
    #[isa("th.lurb", RImm2, 0x1000400b, exec = |c, i| XTheadMemIdx::load_idx(c, i, 1, true))]
    Lurb,
    #[isa("th.lurbu", RImm2, 0x9000400b, exec = |c, i| XTheadMemIdx::load_idx(c, i, 1, false))]
    Lurbu,
    #[isa("th.lrh", RImm2, 0x2000400b, exec = |c, i| XTheadMemIdx::load_idx(c, i, 2, true))]
    Lrh,
    #[isa("th.lrhu", RImm2, 0xa000400b, exec = |c, i| XTheadMemIdx::load_idx(c, i, 2, false))]
    Lrhu,
    #[isa("th.lurh", RImm2, 0x3000400b, exec = |c, i| XTheadMemIdx::load_idx(c, i, 2, true))]
    Lurh,
    #[isa("th.lurhu", RImm2, 0xb000400b, exec = |c, i| XTheadMemIdx::load_idx(c, i, 2, false))]
    Lurhu,
    #[isa("th.lrw", RImm2, 0x4000400b, exec = |c, i| XTheadMemIdx::load_idx(c, i, 4, true))]
    Lrw,
    #[isa("th.lurw", RImm2, 0x5000400b, exec = |c, i| XTheadMemIdx::load_idx(c, i, 4, true))]
    Lurw,
    #[isa("th.srb", RImm2, 0x0000500b, exec = |c, i| XTheadMemIdx::store_idx(c, i, 1))]
    Srb,
    #[isa("th.surb", RImm2, 0x1000500b, exec = |c, i| XTheadMemIdx::store_idx(c, i, 1))]
    Surb,
    #[isa("th.srh", RImm2, 0x2000500b, exec = |c, i| XTheadMemIdx::store_idx(c, i, 2))]
    Srh,
    #[isa("th.surh", RImm2, 0x3000500b, exec = |c, i| XTheadMemIdx::store_idx(c, i, 2))]
    Surh,
    #[isa("th.srw", RImm2, 0x4000500b, exec = |c, i| XTheadMemIdx::store_idx(c, i, 4))]
    Srw,
    #[isa("th.surw", RImm2, 0x5000500b, exec = |c, i| XTheadMemIdx::store_idx(c, i, 4))]
    Surw,
}

impl XTheadMemIdx {
    /// `n` 字节的读值按有 / 无符号扩到 32 位。
    fn extend(v: u32, n: usize, signed: bool) -> u32 {
        match (n, signed) {
            (1, true) => (v as u8 as i8 as i32).cast_unsigned(),
            (2, true) => (v as u16 as i16 as i32).cast_unsigned(),
            _ => v,
        }
    }

    /// 基址的增量：simm5 << uimm2。
    fn step(i: &Inst<Self>) -> u32 {
        (i.imm << i.rs3).cast_unsigned()
    }

    fn load_upd(c: &mut Exec<'_, '_>, i: &Inst<Self>, n: usize, signed: bool, before: bool) {
        let base = c.x(i.rs1);
        let next = base.wrapping_add(Self::step(i));
        let v = c.load(if before { next } else { base }, n);
        c.set(i.rs1, next);
        c.set(i.rd, Self::extend(v, n, signed));
    }

    fn store_upd(c: &mut Exec<'_, '_>, i: &Inst<Self>, n: usize, before: bool) {
        let base = c.x(i.rs1);
        let next = base.wrapping_add(Self::step(i));
        let v = c.x(i.rd);
        c.store(if before { next } else { base }, &v.to_le_bytes()[..n]);
        c.set(i.rs1, next);
    }

    fn load_idx(c: &mut Exec<'_, '_>, i: &Inst<Self>, n: usize, signed: bool) {
        let v = c.load(c.x(i.rs1).wrapping_add(c.x(i.rs2) << i.imm), n);
        c.set(i.rd, Self::extend(v, n, signed));
    }

    fn store_idx(c: &mut Exec<'_, '_>, i: &Inst<Self>, n: usize) {
        let v = c.x(i.rd);
        c.store(c.x(i.rs1).wrapping_add(c.x(i.rs2) << i.imm), &v.to_le_bytes()[..n]);
    }
}
