//! 玄铁（T-Head）扩展：`XTHead*`，全在 custom-0（`0x0b`）上。一个扩展一个子文件夹、一个 cargo feature（`xtheadba` …），
//! 默认不开。这里是它们共用的格式 [`XtForm`]（只描述位段；语义在各扩展里）。编码同 LLVM 的 `RISCVInstrInfoXTHead.td`。
//!
//! | 文件夹 | 内容 |
//! | --- | --- |
//! | `ba/` | `th.addsl` |
//! | `bb/` | `th.srri`、`th.ext(u)`、`th.ff0` / `th.ff1`、`th.rev`、`th.tstnbz` |
//! | `bs/` | `th.tst` |
//! | `cmo/` | `th.dcache.*` / `th.icache.*` / `th.l2cache.*` |
//! | `condmov/` | `th.mveqz` / `th.mvnez` |
//! | `fmemidx/` | `th.flrw` / `th.fsrw`（要 F） |
//! | `mac/` | `th.mula` / `th.muls` / `th.mulah` / `th.mulsh` |
//! | `memidx/` | 寄存器索引的读写、读写后 / 前改基址 |
//! | `mempair/` | `th.lwd` / `th.lwud` / `th.swd` |
//! | `sync/` | `th.sync*`、`th.sfence.vmas` |
pub mod ba;
pub mod bb;
pub mod bs;
pub mod cmo;
pub mod condmov;
pub mod fmemidx;
pub mod mac;
pub mod memidx;
pub mod mempair;
pub mod sync;

use crate::asm::Expr;
use crate::ext::{Args, Fixup, Operand};
use crate::isa::{Base, Fields, Layout, Style, field, sext};

/// 玄铁扩展的格式。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum XtForm {
    /// `rd, rs1, rs2`（同 RV32I）
    R,
    /// `rd, rs1, uimm5`（同 RV32I 的移位）
    Shift,
    /// 没有操作数
    Fixed,
    /// `rs1, rs2`
    Sfence,
    /// `rd, rs1, rs2, uimm2`（uimm2 在 26:25，存 `imm`）
    RImm2,
    /// `fd, rs1, rs2, uimm2`（同上，rd 是浮点寄存器）
    FRImm2,
    /// `rd, rs1, msb, lsb`（msb 在 31:26 存 `imm`，lsb 在 25:20 存 `rs3`；RV32 下都 < 32）
    Bitfield,
    /// `rd, rs1`（31:20 固定）
    R1,
    /// `rs1`
    Rs1,
    /// `rd, rs2, (rs1), uimm2, 3`（uimm2 在 26:25 存 `imm`；常数 3 不编码）
    Pair,
    /// `rd, (rs1), simm5, uimm2`（simm5 在 24:20 存 `imm`，uimm2 在 26:25 存 `rs3`）
    MemUpd,
}

impl XtForm {
    /// 同 RV32I 的那几种。
    const fn base(self) -> Option<Base> {
        match self {
            Self::R => Some(Base::R),
            Self::Shift => Some(Base::Shift),
            Self::Fixed => Some(Base::Fixed),
            Self::Sfence => Some(Base::Sfence),
            _ => None,
        }
    }

    /// `bits` 位的无符号数。
    fn uimm(k: i64, bits: u32) -> Result<i32, String> {
        i32::try_from(k).ok().filter(|&u| u >= 0 && u < 1 << bits).ok_or_else(|| format!("{k} 不是 {bits} 位无符号数"))
    }
}

impl Layout for XtForm {
    fn mask(self) -> u32 {
        match self {
            Self::RImm2 | Self::FRImm2 | Self::Pair | Self::MemUpd => 0xf800_707f,
            Self::Bitfield => 0x707f,
            Self::R1 => 0xfff0_707f,
            Self::Rs1 => 0xfff0_7fff,
            _ => self.base().map_or(0, Layout::mask),
        }
    }

    fn encode(self, f: &Fields) -> u32 {
        let (rd, rs1, rs2, rs3, imm) = (u32::from(f.rd), u32::from(f.rs1), u32::from(f.rs2), u32::from(f.rs3), f.imm.cast_unsigned());
        match self {
            Self::RImm2 | Self::FRImm2 | Self::Pair => rd << 7 | rs1 << 15 | rs2 << 20 | (imm & 3) << 25,
            Self::Bitfield => rd << 7 | rs1 << 15 | (rs3 & 0x3f) << 20 | (imm & 0x3f) << 26,
            Self::R1 => rd << 7 | rs1 << 15,
            Self::Rs1 => rs1 << 15,
            Self::MemUpd => rd << 7 | rs1 << 15 | (imm & 0x1f) << 20 | (rs3 & 3) << 25,
            _ => self.base().map_or(0, |b| b.encode(f)),
        }
    }

    fn decode(self, w: u32) -> Option<Fields> {
        let f = Fields::regs_of(w);
        match self {
            Self::RImm2 | Self::FRImm2 | Self::Pair => Some(f.with_imm(field(w, 25, 2) as i32)),
            // RV32：msb / lsb 都要 < 32（同 LLVM 的 uimmlog2xlen）
            Self::Bitfield => {
                let (msb, lsb) = (field(w, 26, 6), field(w, 20, 6));
                (msb < 32 && lsb < 32).then(|| Fields { rs3: lsb as u8, ..f.with_imm(msb as i32) })
            }
            Self::R1 | Self::Rs1 => Some(f),
            Self::MemUpd => Some(Fields { rs3: field(w, 25, 2) as u8, ..f.with_imm(sext(field(w, 20, 5), 5)) }),
            _ => self.base()?.decode(w),
        }
    }

    fn print(self, i: &Fields, pc: u64, s: Style) -> String {
        let x = |r| s.x(r);
        match self {
            Self::RImm2 => format!("{}, {}, {}, {}", x(i.rd), x(i.rs1), x(i.rs2), s.imm(i.imm)),
            Self::FRImm2 => format!("{}, {}, {}, {}", s.f(i.rd), x(i.rs1), x(i.rs2), s.imm(i.imm)),
            Self::Bitfield => format!("{}, {}, {}, {}", x(i.rd), x(i.rs1), s.imm(i.imm), s.imm(i32::from(i.rs3))),
            Self::R1 => format!("{}, {}", x(i.rd), x(i.rs1)),
            Self::Rs1 => x(i.rs1),
            Self::Pair => format!("{}, {}, ({}), {}, {}", x(i.rd), x(i.rs2), x(i.rs1), s.imm(i.imm), s.imm(3)),
            Self::MemUpd => format!("{}, ({}), {}, {}", x(i.rd), x(i.rs1), s.imm(i.imm), s.imm(i32::from(i.rs3))),
            _ => self.base().map_or_else(String::new, |b| b.print(i, pc, s)),
        }
    }

    fn assemble(self, args: &Args<'_>) -> Result<(Fields, Vec<Fixup>), String> {
        use Operand::{F as Fr, Imm, Mem, X as Xr};
        let z = Fields::ZERO;
        let bad = || format!("{self:?} 格式的操作数不对：{:?}", args.ops);
        let f = match (self, args.ops) {
            (Self::RImm2, [Xr(d), Xr(a), Xr(b), Imm(k)]) | (Self::FRImm2, [Fr(d), Xr(a), Xr(b), Imm(k)]) => z.x(*d, *a, *b).with_imm(Self::uimm(*k, 2)?),
            (Self::Bitfield, [Xr(d), Xr(a), Imm(msb), Imm(lsb)]) => Fields { rs3: u8::try_from(Self::uimm(*lsb, 5)?).unwrap_or_default(), ..z.x(*d, *a, 0).with_imm(Self::uimm(*msb, 5)?) },
            (Self::R1, [Xr(d), Xr(a)]) => z.x(*d, *a, 0),
            (Self::Rs1, [Xr(a)]) => z.x(0, *a, 0),
            (Self::Pair, [Xr(d), Xr(rs2), Mem(Expr::Num(0), rs1), Imm(k), Imm(3)]) => z.x(*d, *rs1, *rs2).with_imm(Self::uimm(*k, 2)?),
            (Self::MemUpd, [Xr(d), Mem(Expr::Num(0), rs1), Imm(off), Imm(sh)]) => {
                let off = i32::try_from(*off).ok().filter(|o| (-16..16).contains(o)).ok_or_else(|| format!("{off} 不是 5 位有符号数"))?;
                Fields { rs3: u8::try_from(Self::uimm(*sh, 2)?).unwrap_or_default(), ..z.x(*d, *rs1, 0).with_imm(off) }
            }
            (Self::Shift, [Xr(d), Xr(a), Imm(k)]) => z.x(*d, *a, 0).with_imm(Self::uimm(*k, 5)?),
            _ => return self.base().ok_or_else(bad)?.assemble(args),
        };
        Ok((f, Vec::new()))
    }
}
