//! F 扩展的格式：浮点寄存器、舍入模式（funct3）、`flw` / `fsw` 的 `imm(rs1)`。
use crate::asm::Expr;
use crate::ext::{Args, Field, Fixup, Operand};
use crate::isa::{Base, Fields, Layout, Rm, Style, field, sext};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum FForm {
    /// `fd, imm(rs1)`
    FLoad,
    /// `fs2, imm(rs1)`
    FStore,
    /// `fd, fs1, fs2`
    FR,
    /// `fd, fs1, fs2[, rm]`
    FRrm,
    /// `fd, fs1[, rm]`
    FR1rm,
    /// `rd, fs1, fs2`
    FCmp,
    /// `rd, fs1`
    FToX,
    /// `fd, rs1`
    XToF,
    /// `rd, fs1[, rm]`
    FCvtXF,
    /// `fd, rs1[, rm]`
    FCvtFX,
    /// `fd, fs1, fs2, fs3[, rm]`
    R4,
    /// `fd, fs1[, rm]`，精确的转换（`fcvt.d.s`）：舍入模式缺省 `rne`、是 `rne` 就不印（同 LLVM 的 frmarglegacy）
    FR1Exact,
    /// `fd, rs1[, rm]`，精确的转换（`fcvt.d.w` / `fcvt.d.wu`），舍入模式同 [`Self::FR1Exact`]
    FCvtFXExact,
}

impl FForm {
    /// 末尾可选的舍入模式（缺省 `dyn`）。
    fn rm(rest: &[Operand]) -> Result<u8, String> {
        Self::rm_or(rest, Rm::Dyn)
    }

    /// 末尾可选的舍入模式（缺省 `default`）。
    fn rm_or(rest: &[Operand], default: Rm) -> Result<u8, String> {
        match rest {
            [] => Ok(default as u8),
            [Operand::Sym(s)] => s.parse::<Rm>().map(|r| r as u8).map_err(|()| format!("不认识的舍入模式 `{s}`")),
            _ => Err(format!("舍入模式写错：{rest:?}")),
        }
    }
}

impl FForm {
    /// 精确转换的舍入模式后缀：`rne` 不印，别的（含 `dyn`）都印（同 LLVM 的 printFRMArgLegacy，两种风格一样）。
    fn exact_rm(rm: u8) -> String {
        match Rm::try_from(u32::from(rm)) {
            Ok(Rm::Rne) | Err(()) => String::new(),
            Ok(r) => format!(", {r}"),
        }
    }
}

impl Layout for FForm {
    fn mask(self) -> u32 {
        match self {
            Self::FLoad | Self::FStore => 0x707f,
            Self::FR | Self::FCmp => 0xfe00_707f,
            Self::FRrm => 0xfe00_007f,
            Self::FR1rm | Self::FCvtXF | Self::FCvtFX | Self::FR1Exact | Self::FCvtFXExact => 0xfff0_007f,
            Self::FToX | Self::XToF => 0xfff0_707f,
            Self::R4 => 0x0600_007f,
        }
    }

    fn encode(self, f: &Fields) -> u32 {
        let (rd, rs1, rs2, rs3) = (u32::from(f.rd), u32::from(f.rs1), u32::from(f.rs2), u32::from(f.rs3));
        let rm = u32::from(f.rm) << 12;
        match self {
            Self::FLoad => rd << 7 | rs1 << 15 | Base::Load.scatter(f.imm),
            Self::FStore => rs1 << 15 | rs2 << 20 | Base::Store.scatter(f.imm),
            Self::FR | Self::FCmp => rd << 7 | rs1 << 15 | rs2 << 20,
            Self::FRrm => rd << 7 | rs1 << 15 | rs2 << 20 | rm,
            Self::FR1rm | Self::FCvtXF | Self::FCvtFX | Self::FR1Exact | Self::FCvtFXExact => rd << 7 | rs1 << 15 | rm,
            Self::FToX | Self::XToF => rd << 7 | rs1 << 15,
            Self::R4 => rd << 7 | rs1 << 15 | rs2 << 20 | rs3 << 27 | rm,
        }
    }

    fn decode(self, w: u32) -> Option<Fields> {
        let mut f = Fields::regs_of(w);
        f.imm = match self {
            Self::FLoad => sext(field(w, 20, 12), 12),
            Self::FStore => sext(field(w, 25, 7) << 5 | field(w, 7, 5), 12),
            _ => 0,
        };
        // 带 rm 的：只认合法值（5 / 6 保留）
        let rm = field(w, 12, 3);
        if self.has_rm() {
            Rm::try_from(rm).ok()?;
            f.rm = rm as u8;
        }
        Some(f)
    }

    fn print(self, i: &Fields, _pc: u64, s: Style) -> String {
        let (x, f) = (|r| s.x(r), |r| s.f(r));
        let (rd, rs1, rs2) = (i.rd, i.rs1, i.rs2);
        match self {
            Self::FLoad => format!("{}, {}({})", f(rd), s.imm(i.imm), x(rs1)),
            Self::FStore => format!("{}, {}({})", f(rs2), s.imm(i.imm), x(rs1)),
            Self::FR => format!("{}, {}, {}", f(rd), f(rs1), f(rs2)),
            Self::FRrm => format!("{}, {}, {}{}", f(rd), f(rs1), f(rs2), i.rm_suffix(s)),
            Self::FR1rm => format!("{}, {}{}", f(rd), f(rs1), i.rm_suffix(s)),
            Self::FCmp => format!("{}, {}, {}", x(rd), f(rs1), f(rs2)),
            Self::FToX => format!("{}, {}", x(rd), f(rs1)),
            Self::XToF => format!("{}, {}", f(rd), x(rs1)),
            Self::FCvtXF => format!("{}, {}{}", x(rd), f(rs1), i.rm_suffix(s)),
            Self::FCvtFX => format!("{}, {}{}", f(rd), x(rs1), i.rm_suffix(s)),
            Self::R4 => format!("{}, {}, {}, {}{}", f(rd), f(rs1), f(rs2), f(i.rs3), i.rm_suffix(s)),
            Self::FR1Exact => format!("{}, {}{}", f(rd), f(rs1), Self::exact_rm(i.rm)),
            Self::FCvtFXExact => format!("{}, {}{}", f(rd), x(rs1), Self::exact_rm(i.rm)),
        }
    }

    fn assemble(self, args: &Args<'_>) -> Result<(Fields, Vec<Fixup>), String> {
        use Operand::{F as Fr, Mem, X as Xr};
        let z = Fields::ZERO;
        let bad = || format!("{self:?} 格式的操作数不对：{:?}", args.ops);
        // `imm(rs1)`：常数就地填，否则修补点（`%lo` / `%pcrel_lo` 由汇编器解析）
        let mem = |f: Fields, e: &Expr, fld: Field, base: Base| -> Result<(Fields, Vec<Fixup>), String> {
            match e {
                Expr::Num(k) if base.fits(*k) => Ok((f.with_imm(i32::try_from(*k).unwrap_or_default()), Vec::new())),
                Expr::Num(k) => Err(format!("立即数 {k} 超出范围")),
                e => Ok((f, vec![Fixup { offset: 0, field: fld, expr: e.clone() }])),
            }
        };
        let plain = |f: Fields| Ok((f, Vec::new()));
        match (self, args.ops) {
            (Self::FLoad, [Fr(rd), Mem(e, rs)]) => mem(z.x(*rd, *rs, 0), e, Field::I, Base::Load),
            (Self::FStore, [Fr(rs2), Mem(e, rs)]) => mem(z.x(0, *rs, *rs2), e, Field::S, Base::Store),
            (Self::FR, [Fr(d), Fr(a), Fr(b)]) => plain(z.x(*d, *a, *b)),
            (Self::FCmp, [Xr(d), Fr(a), Fr(b)]) => plain(z.x(*d, *a, *b)),
            (Self::FRrm, [Fr(d), Fr(a), Fr(b), rest @ ..]) => plain(Fields { rm: Self::rm(rest)?, ..z.x(*d, *a, *b) }),
            (Self::FR1rm, [Fr(d), Fr(a), rest @ ..]) | (Self::FCvtXF, [Xr(d), Fr(a), rest @ ..]) | (Self::FCvtFX, [Fr(d), Xr(a), rest @ ..]) => plain(Fields { rm: Self::rm(rest)?, ..z.x(*d, *a, 0) }),
            (Self::FToX, [Xr(d), Fr(a)]) | (Self::XToF, [Fr(d), Xr(a)]) => plain(z.x(*d, *a, 0)),
            (Self::R4, [Fr(d), Fr(a), Fr(b), Fr(c), rest @ ..]) => plain(Fields { rs3: *c, rm: Self::rm(rest)?, ..z.x(*d, *a, *b) }),
            (Self::FR1Exact, [Fr(d), Fr(a), rest @ ..]) | (Self::FCvtFXExact, [Fr(d), Xr(a), rest @ ..]) => plain(Fields { rm: Self::rm_or(rest, Rm::Rne)?, ..z.x(*d, *a, 0) }),
            _ => Err(bad()),
        }
    }

    fn has_rm(self) -> bool {
        matches!(self, Self::FRrm | Self::FR1rm | Self::FCvtXF | Self::FCvtFX | Self::R4 | Self::FR1Exact | Self::FCvtFXExact)
    }
}
