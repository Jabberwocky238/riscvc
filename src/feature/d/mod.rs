//! D：双精度浮点（蕴含 F）。格式与 F 共用（[`FForm`]：fmt 字段 bits 26:25 = 01 写在固定位里）。
//! 舍入同 F（只做 RNE；`fcvt` 的 rtz 等单独处理）；NaN 结果规范化。单精度的值在 64 位寄存器里 NaN-box（见 [`Exec::f`]）。
//! RV32 上没有 `fmv.x.d` / `fmv.d.x`：64 位位型与整数寄存器之间经栈（同 LLVM）。
use super::f::FForm;
use crate::ext::Exec;
use crate::isa::{Inst, Rm, Style};
use crate::macros::Isa;
use core::fmt::Write;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "d", form = FForm, alias = alias)]
#[pseudo("fmv.d $rd:f, $rs:f" => "fsgnj.d $rd, $rs, $rs")]
#[pseudo("fabs.d $rd:f, $rs:f" => "fsgnjx.d $rd, $rs, $rs")]
#[pseudo("fneg.d $rd:f, $rs:f" => "fsgnjn.d $rd, $rs, $rs")]
#[pseudo("fgt.d $rd:x, $a:f, $b:f" => "flt.d $rd, $b, $a")]
#[pseudo("fge.d $rd:x, $a:f, $b:f" => "fle.d $rd, $b, $a")]
#[pseudo("fld $rd:f, $sym, $t:x" => "$L: auipc $t, %pcrel_hi($sym)\nfld $rd, %pcrel_lo($L)($t)")]
#[pseudo("fsd $rs:f, $sym, $t:x" => "$L: auipc $t, %pcrel_hi($sym)\nfsd $rs, %pcrel_lo($L)($t)")]
pub enum Double {
    #[isa("fld", FLoad, 0x3007, exec = |c, i| {
        let a = c.x(i.rs1).wrapping_add(i.imm.cast_unsigned());
        let v = u64::from(c.load(a, 4)) | u64::from(c.load(a.wrapping_add(4), 4)) << 32;
        c.dset_bits(i.rd, v);
    })]
    Fld,
    #[isa("fsd", FStore, 0x3027, exec = |c, i| {
        let v = c.d(i.rs2);
        c.store(c.x(i.rs1).wrapping_add(i.imm.cast_unsigned()), &v.to_le_bytes());
    })]
    Fsd,
    #[isa("fmadd.d", R4, 0x0200_0043, exec = |c, i| c.dset(i.rd, c.dv(i.rs1).mul_add(c.dv(i.rs2), c.dv(i.rs3))))]
    FmaddD,
    #[isa("fmsub.d", R4, 0x0200_0047, exec = |c, i| c.dset(i.rd, c.dv(i.rs1).mul_add(c.dv(i.rs2), -c.dv(i.rs3))))]
    FmsubD,
    #[isa("fnmsub.d", R4, 0x0200_004b, exec = |c, i| c.dset(i.rd, (-c.dv(i.rs1)).mul_add(c.dv(i.rs2), c.dv(i.rs3))))]
    FnmsubD,
    #[isa("fnmadd.d", R4, 0x0200_004f, exec = |c, i| c.dset(i.rd, (-c.dv(i.rs1)).mul_add(c.dv(i.rs2), -c.dv(i.rs3))))]
    FnmaddD,
    #[isa("fadd.d", FRrm, 0x0200_0053, exec = |c, i| c.dset(i.rd, c.dv(i.rs1) + c.dv(i.rs2)))]
    FaddD,
    #[isa("fsub.d", FRrm, 0x0a00_0053, exec = |c, i| c.dset(i.rd, c.dv(i.rs1) - c.dv(i.rs2)))]
    FsubD,
    #[isa("fmul.d", FRrm, 0x1200_0053, exec = |c, i| c.dset(i.rd, c.dv(i.rs1) * c.dv(i.rs2)))]
    FmulD,
    #[isa("fdiv.d", FRrm, 0x1a00_0053, exec = |c, i| c.dset(i.rd, c.dv(i.rs1) / c.dv(i.rs2)))]
    FdivD,
    #[isa("fsqrt.d", FR1rm, 0x5a00_0053, exec = |c, i| c.dset(i.rd, c.dv(i.rs1).sqrt()))]
    FsqrtD,
    #[isa("fsgnj.d", FR, 0x2200_0053, exec = |c, i| Double::sgnj(c, i, c.d(i.rs2) & SIGN))]
    FsgnjD,
    #[isa("fsgnjn.d", FR, 0x2200_1053, exec = |c, i| Double::sgnj(c, i, !c.d(i.rs2) & SIGN))]
    FsgnjnD,
    #[isa("fsgnjx.d", FR, 0x2200_2053, exec = |c, i| Double::sgnj(c, i, (c.d(i.rs1) ^ c.d(i.rs2)) & SIGN))]
    FsgnjxD,
    #[isa("fmin.d", FR, 0x2a00_0053, exec = |c, i| c.dset(i.rd, Double::minmax(c.dv(i.rs1), c.dv(i.rs2), false)))]
    FminD,
    #[isa("fmax.d", FR, 0x2a00_1053, exec = |c, i| c.dset(i.rd, Double::minmax(c.dv(i.rs1), c.dv(i.rs2), true)))]
    FmaxD,
    #[isa("fcvt.s.d", FR1rm, 0x4010_0053, exec = |c, i| c.fset(i.rd, c.dv(i.rs1) as f32))]
    FcvtSD,
    #[isa("fcvt.d.s", FR1Exact, 0x4200_0053, exec = |c, i| c.dset(i.rd, f64::from(c.fv(i.rs1))))]
    FcvtDS,
    #[isa("feq.d", FCmp, 0xa200_2053, exec = |c, i| c.set(i.rd, u32::from(c.dv(i.rs1) == c.dv(i.rs2))))]
    FeqD,
    #[isa("flt.d", FCmp, 0xa200_1053, exec = |c, i| c.set(i.rd, u32::from(c.dv(i.rs1) < c.dv(i.rs2))))]
    FltD,
    #[isa("fle.d", FCmp, 0xa200_0053, exec = |c, i| c.set(i.rd, u32::from(c.dv(i.rs1) <= c.dv(i.rs2))))]
    FleD,
    #[isa("fclass.d", FToX, 0xe200_1053, exec = |c, i| c.set(i.rd, Double::class(c.dv(i.rs1))))]
    FclassD,
    #[isa("fcvt.w.d", FCvtXF, 0xc200_0053, exec = |c, i| c.set(i.rd, Double::cvt(c.dv(i.rs1), true, i.rm)))]
    FcvtWD,
    #[isa("fcvt.wu.d", FCvtXF, 0xc210_0053, exec = |c, i| c.set(i.rd, Double::cvt(c.dv(i.rs1), false, i.rm)))]
    FcvtWuD,
    #[isa("fcvt.d.w", FCvtFXExact, 0xd200_0053, exec = |c, i| c.dset(i.rd, f64::from(c.x(i.rs1).cast_signed())))]
    FcvtDW,
    #[isa("fcvt.d.wu", FCvtFXExact, 0xd210_0053, exec = |c, i| c.dset(i.rd, f64::from(c.x(i.rs1))))]
    FcvtDWu,
}

/// 符号位。
const SIGN: u64 = 1 << 63;

impl Double {
    /// `fsgnj*`：rs1 的绝对值配上给定的符号位。
    fn sgnj(c: &mut Exec<'_, '_>, i: &Inst<Self>, sign: u64) {
        let a = c.d(i.rs1);
        c.dset_bits(i.rd, (a & !SIGN) | sign);
    }

    /// double ⇒ 有符号 / 无符号 32 位整数（饱和；NaN 同 RISC-V：有符号 2³¹−1，无符号 2³²−1）。
    fn cvt(v: f64, signed: bool, rm: u8) -> u32 {
        let r = match Rm::try_from(u32::from(rm)).unwrap_or(Rm::Rne) {
            Rm::Rtz => v.trunc(),
            Rm::Rdn => v.floor(),
            Rm::Rup => v.ceil(),
            Rm::Rmm => v.round(),
            _ => v.round_ties_even(),
        };
        if signed {
            if v.is_nan() || r >= 2_147_483_648.0 {
                0x7fff_ffff
            } else if r < -2_147_483_648.0 {
                0x8000_0000
            } else {
                (r as i32).cast_unsigned()
            }
        } else if v.is_nan() || r >= 4_294_967_296.0 {
            0xffff_ffff
        } else if r <= 0.0 {
            0
        } else {
            r as u32
        }
    }

    /// `fclass.d` 的一位。
    fn class(v: f64) -> u32 {
        let b = v.to_bits();
        let neg = b >> 63 == 1;
        1 << match v.classify() {
            core::num::FpCategory::Infinite => if neg { 0 } else { 7 },
            core::num::FpCategory::Normal => if neg { 1 } else { 6 },
            core::num::FpCategory::Subnormal => if neg { 2 } else { 5 },
            core::num::FpCategory::Zero => if neg { 3 } else { 4 },
            core::num::FpCategory::Nan => if b & (1 << 51) == 0 { 8 } else { 9 },
        }
    }

    /// `fmin.d` / `fmax.d`：一边 NaN 取另一边；±0 时 min 取负、max 取正。
    fn minmax(a: f64, b: f64, max: bool) -> f64 {
        match (a.is_nan(), b.is_nan()) {
            (true, true) => f64::NAN,
            (true, false) => b,
            (false, true) => a,
            _ if a == b => {
                if (a.to_bits() >> 63 == 1) != max { a } else { b }
            }
            _ => if (a < b) != max { a } else { b },
        }
    }
}

/// 单精度指令 ⇒ 同一操作的双精度那条（`fadd.s` ⇒ `fadd.d`、`flw` ⇒ `fld`、`fcvt.s.w` ⇒ `fcvt.d.w`）。
/// 没有双精度对应的（`fmv.x.w` / `fmv.w.x`：RV32 没有 `fmv.x.d`）⇒ 原样交回。
impl TryFrom<super::Float> for Double {
    type Error = super::Float;

    fn try_from(op: super::Float) -> Result<Self, super::Float> {
        use crate::isa::Table;
        let name = match op.name() {
            "flw" => String::from("fld"),
            "fsw" => String::from("fsd"),
            n => n.split('.').map(|p| if p == "s" { "d" } else { p }).collect::<Vec<_>>().join("."),
        };
        name.parse().map_err(|_| op)
    }
}

/// `fsgnj* rd, rs, rs` ⇒ `fmv.d` / `fneg.d` / `fabs.d`。
fn alias(i: &Inst<Double>, _pc: u64, s: Style) -> Option<(String, String)> {
    let name = match i.op {
        Double::FsgnjD if i.rs1 == i.rs2 => "fmv.d",
        Double::FsgnjnD if i.rs1 == i.rs2 => "fneg.d",
        Double::FsgnjxD if i.rs1 == i.rs2 => "fabs.d",
        _ => return None,
    };
    let mut ops = String::new();
    let _ = write!(ops, "{}, {}", s.f(i.rd), s.f(i.rs1));
    Some((String::from(name), ops))
}
