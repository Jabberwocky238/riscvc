//! F：单精度浮点（`f` feature 蕴含 `zicsr`）。舍入只做 RNE（`frm` 恒 0，`fcvt` 的 rtz 单独处理）；NaN 结果规范化。
//! 伪指令（`fmv.s`、`fgt.s`、`frcsr`、取存全局的 `flw rd, sym, tmp` …）全是模板。
mod layout;

pub use layout::FForm;
use crate::ext::Exec;
use crate::isa::{Inst, Rm, Style};
use crate::macros::Isa;
use core::fmt::Write;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "f", form = FForm, alias = alias)]
#[pseudo("fmv.s $rd:f, $rs:f" => "fsgnj.s $rd, $rs, $rs")]
#[pseudo("fabs.s $rd:f, $rs:f" => "fsgnjx.s $rd, $rs, $rs")]
#[pseudo("fneg.s $rd:f, $rs:f" => "fsgnjn.s $rd, $rs, $rs")]
#[pseudo("fgt.s $rd:x, $a:f, $b:f" => "flt.s $rd, $b, $a")]
#[pseudo("fge.s $rd:x, $a:f, $b:f" => "fle.s $rd, $b, $a")]
#[pseudo("fmv.x.s $rd:x, $rs:f" => "fmv.x.w $rd, $rs")]
#[pseudo("fmv.s.x $rd:f, $rs:x" => "fmv.w.x $rd, $rs")]
#[pseudo("flw $rd:f, $sym, $t:x" => "$L: auipc $t, %pcrel_hi($sym)\nflw $rd, %pcrel_lo($L)($t)")]
#[pseudo("fsw $rs:f, $sym, $t:x" => "$L: auipc $t, %pcrel_hi($sym)\nfsw $rs, %pcrel_lo($L)($t)")]
#[pseudo("frcsr $rd:x" => "csrrs $rd, fcsr, zero")]
#[pseudo("frsr $rd:x" => "csrrs $rd, fcsr, zero")]
#[pseudo("frrm $rd:x" => "csrrs $rd, frm, zero")]
#[pseudo("frflags $rd:x" => "csrrs $rd, fflags, zero")]
#[pseudo("fscsr $rs:x" => "csrrw zero, fcsr, $rs")]
#[pseudo("fssr $rs:x" => "csrrw zero, fcsr, $rs")]
#[pseudo("fsrm $rs:x" => "csrrw zero, frm, $rs")]
#[pseudo("fsflags $rs:x" => "csrrw zero, fflags, $rs")]
#[pseudo("fscsr $rd:x, $rs:x" => "csrrw $rd, fcsr, $rs")]
#[pseudo("fssr $rd:x, $rs:x" => "csrrw $rd, fcsr, $rs")]
#[pseudo("fsrm $rd:x, $rs:x" => "csrrw $rd, frm, $rs")]
#[pseudo("fsflags $rd:x, $rs:x" => "csrrw $rd, fflags, $rs")]
#[pseudo("fsrmi $k:i" => "csrrwi zero, frm, $k")]
#[pseudo("fsflagsi $k:i" => "csrrwi zero, fflags, $k")]
#[pseudo("fsrmi $rd:x, $k:i" => "csrrwi $rd, frm, $k")]
#[pseudo("fsflagsi $rd:x, $k:i" => "csrrwi $rd, fflags, $k")]
pub enum Float {
    #[isa("flw", FLoad, 0x2007, exec = |c, i| {
        let v = c.load(c.x(i.rs1).wrapping_add(i.imm.cast_unsigned()), 4);
        c.fset_bits(i.rd, v);
    })]
    Flw,
    #[isa("fsw", FStore, 0x2027, exec = |c, i| {
        let v = c.f(i.rs2);
        c.store(c.x(i.rs1).wrapping_add(i.imm.cast_unsigned()), &v.to_le_bytes());
    })]
    Fsw,
    #[isa("fmadd.s", R4, 0x43, exec = |c, i| c.fset(i.rd, c.fv(i.rs1).mul_add(c.fv(i.rs2), c.fv(i.rs3))))]
    FmaddS,
    #[isa("fmsub.s", R4, 0x47, exec = |c, i| c.fset(i.rd, c.fv(i.rs1).mul_add(c.fv(i.rs2), -c.fv(i.rs3))))]
    FmsubS,
    #[isa("fnmsub.s", R4, 0x4b, exec = |c, i| c.fset(i.rd, (-c.fv(i.rs1)).mul_add(c.fv(i.rs2), c.fv(i.rs3))))]
    FnmsubS,
    #[isa("fnmadd.s", R4, 0x4f, exec = |c, i| c.fset(i.rd, (-c.fv(i.rs1)).mul_add(c.fv(i.rs2), -c.fv(i.rs3))))]
    FnmaddS,
    #[isa("fadd.s", FRrm, 0x53, exec = |c, i| c.fset(i.rd, c.fv(i.rs1) + c.fv(i.rs2)))]
    FaddS,
    #[isa("fsub.s", FRrm, 0x0800_0053, exec = |c, i| c.fset(i.rd, c.fv(i.rs1) - c.fv(i.rs2)))]
    FsubS,
    #[isa("fmul.s", FRrm, 0x1000_0053, exec = |c, i| c.fset(i.rd, c.fv(i.rs1) * c.fv(i.rs2)))]
    FmulS,
    #[isa("fdiv.s", FRrm, 0x1800_0053, exec = |c, i| c.fset(i.rd, c.fv(i.rs1) / c.fv(i.rs2)))]
    FdivS,
    #[isa("fsqrt.s", FR1rm, 0x5800_0053, exec = |c, i| c.fset(i.rd, c.fv(i.rs1).sqrt()))]
    FsqrtS,
    #[isa("fsgnj.s", FR, 0x2000_0053, exec = |c, i| Float::sgnj(c, i, c.f(i.rs2) & 0x8000_0000))]
    FsgnjS,
    #[isa("fsgnjn.s", FR, 0x2000_1053, exec = |c, i| Float::sgnj(c, i, !c.f(i.rs2) & 0x8000_0000))]
    FsgnjnS,
    #[isa("fsgnjx.s", FR, 0x2000_2053, exec = |c, i| Float::sgnj(c, i, (c.f(i.rs1) ^ c.f(i.rs2)) & 0x8000_0000))]
    FsgnjxS,
    #[isa("fmin.s", FR, 0x2800_0053, exec = |c, i| c.fset(i.rd, Float::minmax(c.fv(i.rs1), c.fv(i.rs2), false)))]
    FminS,
    #[isa("fmax.s", FR, 0x2800_1053, exec = |c, i| c.fset(i.rd, Float::minmax(c.fv(i.rs1), c.fv(i.rs2), true)))]
    FmaxS,
    #[isa("fcvt.w.s", FCvtXF, 0xc000_0053, exec = |c, i| c.set(i.rd, Float::cvt(c.fv(i.rs1), true, i.rm)))]
    FcvtWS,
    #[isa("fcvt.wu.s", FCvtXF, 0xc010_0053, exec = |c, i| c.set(i.rd, Float::cvt(c.fv(i.rs1), false, i.rm)))]
    FcvtWuS,
    #[isa("fmv.x.w", FToX, 0xe000_0053, exec = |c, i| c.set(i.rd, c.f(i.rs1)))]
    FmvXW,
    #[isa("feq.s", FCmp, 0xa000_2053, exec = |c, i| c.set(i.rd, u32::from(c.fv(i.rs1) == c.fv(i.rs2))))]
    FeqS,
    #[isa("flt.s", FCmp, 0xa000_1053, exec = |c, i| c.set(i.rd, u32::from(c.fv(i.rs1) < c.fv(i.rs2))))]
    FltS,
    #[isa("fle.s", FCmp, 0xa000_0053, exec = |c, i| c.set(i.rd, u32::from(c.fv(i.rs1) <= c.fv(i.rs2))))]
    FleS,
    #[isa("fclass.s", FToX, 0xe000_1053, exec = |c, i| c.set(i.rd, Float::class(c.fv(i.rs1))))]
    FclassS,
    #[isa("fcvt.s.w", FCvtFX, 0xd000_0053, exec = |c, i| c.fset(i.rd, c.x(i.rs1).cast_signed() as f32))]
    FcvtSW,
    #[isa("fcvt.s.wu", FCvtFX, 0xd010_0053, exec = |c, i| c.fset(i.rd, c.x(i.rs1) as f32))]
    FcvtSWu,
    #[isa("fmv.w.x", XToF, 0xf000_0053, exec = |c, i| c.fset_bits(i.rd, c.x(i.rs1)))]
    FmvWX,
}

impl Float {
    /// `fsgnj*`：rs1 的绝对值配上给定的符号位。
    fn sgnj(c: &mut Exec<'_, '_>, i: &Inst<Self>, sign: u32) {
        let a = c.f(i.rs1);
        c.fset_bits(i.rd, (a & 0x7fff_ffff) | sign);
    }

    /// float ⇒ 有符号 / 无符号 32 位整数（饱和；NaN 同 RISC-V：有符号 2³¹−1，无符号 2³²−1）。
    fn cvt(v: f32, signed: bool, rm: u8) -> u32 {
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

    /// `fclass.s` 的一位。
    fn class(v: f32) -> u32 {
        let b = v.to_bits();
        let neg = b >> 31 == 1;
        1 << match v.classify() {
            core::num::FpCategory::Infinite => if neg { 0 } else { 7 },
            core::num::FpCategory::Normal => if neg { 1 } else { 6 },
            core::num::FpCategory::Subnormal => if neg { 2 } else { 5 },
            core::num::FpCategory::Zero => if neg { 3 } else { 4 },
            core::num::FpCategory::Nan => if b & 0x0040_0000 == 0 { 8 } else { 9 },
        }
    }

    /// `fmin.s` / `fmax.s`：一边 NaN 取另一边；±0 时 min 取负、max 取正。
    fn minmax(a: f32, b: f32, max: bool) -> f32 {
        match (a.is_nan(), b.is_nan()) {
            (true, true) => f32::NAN,
            (true, false) => b,
            (false, true) => a,
            _ if a == b => {
                if (a.to_bits() >> 31 == 1) != max { a } else { b }
            }
            _ => if (a < b) != max { a } else { b },
        }
    }
}

/// `fsgnj* rd, rs, rs` ⇒ `fmv.s` / `fneg.s` / `fabs.s`。
fn alias(i: &Inst<Float>, _pc: u64, s: Style) -> Option<(String, String)> {
    let name = match i.op {
        Float::FsgnjS if i.rs1 == i.rs2 => "fmv.s",
        Float::FsgnjnS if i.rs1 == i.rs2 => "fneg.s",
        Float::FsgnjxS if i.rs1 == i.rs2 => "fabs.s",
        _ => return None,
    };
    let mut ops = String::new();
    let _ = write!(ops, "{}, {}", s.f(i.rd), s.f(i.rs1));
    Some((String::from(name), ops))
}
