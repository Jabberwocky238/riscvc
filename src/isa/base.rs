//! RV32I（与特权指令）：基础格式 [`Base`] 与基础指令表（`#[derive(Isa)]` 生成）；语义在解释器核心（`src/sim.rs`）。
use super::inst::{Fields, Layout, field, sext};
use super::{Inst, Style};
use crate::asm::Expr;
use crate::ext::{Args, Field, Fixup, Operand};
use crate::macros::Isa;
use core::fmt::Write;

/// RV32I 的格式。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Base {
    /// `rd, imm20`
    U,
    /// `rd, 目标`
    J,
    /// `rd, imm(rs1)`
    Jalr,
    /// `rs1, rs2, 目标`
    Branch,
    /// `rd, imm(rs1)`
    Load,
    /// `rs2, imm(rs1)`
    Store,
    /// `rd, rs1, imm12`
    Imm,
    /// `rd, rs1, shamt`
    Shift,
    /// `rd, rs1, rs2`
    R,
    /// `pred, succ`
    Fence,
    /// 没有操作数
    Fixed,
    /// `rs1, rs2`（`sfence.vma`）
    Sfence,
}

impl Base {
    /// 立即数编进字里的那几位（I / S / B / U / J 各自的散布）。
    #[must_use]
    pub const fn scatter(self, imm: i32) -> u32 {
        let v = imm as u32;
        match self {
            Self::U => (v & 0xf_ffff) << 12,
            Self::J => (field(v, 20, 1) << 31) | (field(v, 1, 10) << 21) | (field(v, 11, 1) << 20) | (field(v, 12, 8) << 12),
            Self::Branch => (field(v, 12, 1) << 31) | (field(v, 5, 6) << 25) | (field(v, 1, 4) << 8) | (field(v, 11, 1) << 7),
            Self::Store => (field(v, 5, 7) << 25) | (field(v, 0, 5) << 7),
            Self::Imm | Self::Load | Self::Jalr => (v & 0xfff) << 20,
            Self::Shift => (v & 0x1f) << 20,
            Self::Fence => (v & 0xff) << 20,
            _ => 0,
        }
    }

    /// 立即数的范围检查（编码前）：放不进就报，⛔ 不静默截位。
    #[must_use]
    pub const fn fits(self, imm: i64) -> bool {
        match self {
            Self::U => imm >= 0 && imm < (1 << 20),
            Self::J => imm >= -(1 << 20) && imm < (1 << 20) && imm % 2 == 0,
            Self::Branch => imm >= -(1 << 12) && imm < (1 << 12) && imm % 2 == 0,
            Self::Imm | Self::Load | Self::Jalr | Self::Store => imm >= -2048 && imm < 2048,
            Self::Shift => imm >= 0 && imm < 32,
            _ => true,
        }
    }

    /// 立即数位段：常数就地填（放不进报错），否则一个修补点。
    fn imm_or_fix(self, f: Fields, e: &Expr, field: Field) -> Result<(Fields, Vec<Fixup>), String> {
        match e {
            Expr::Num(k) if self.fits(*k) => Ok((f.with_imm(i32::try_from(*k).unwrap_or_default()), Vec::new())),
            Expr::Num(k) => Err(format!("立即数 {k} 超出 {self:?} 的范围")),
            e => Ok((f, vec![Fixup { offset: 0, field, expr: e.clone() }])),
        }
    }
}

impl Layout for Base {
    fn mask(self) -> u32 {
        match self {
            Self::U | Self::J => 0x7f,
            Self::Jalr | Self::Branch | Self::Load | Self::Store | Self::Imm => 0x707f,
            Self::Shift | Self::R => 0xfe00_707f,
            Self::Fence => 0xf00f_ffff,
            Self::Fixed => 0xffff_ffff,
            Self::Sfence => 0xfe00_7fff,
        }
    }

    fn encode(self, f: &Fields) -> u32 {
        let (rd, rs1, rs2) = (u32::from(f.rd), u32::from(f.rs1), u32::from(f.rs2));
        let regs = match self {
            Self::U | Self::J => rd << 7,
            Self::Branch | Self::Store | Self::Sfence => rs1 << 15 | rs2 << 20,
            Self::Jalr | Self::Load | Self::Imm | Self::Shift => rd << 7 | rs1 << 15,
            Self::R => rd << 7 | rs1 << 15 | rs2 << 20,
            Self::Fence | Self::Fixed => 0,
        };
        regs | self.scatter(f.imm)
    }

    fn decode(self, w: u32) -> Option<Fields> {
        let imm = match self {
            Self::U => field(w, 12, 20) as i32,
            Self::J => sext(field(w, 31, 1) << 20 | field(w, 12, 8) << 12 | field(w, 20, 1) << 11 | field(w, 21, 10) << 1, 21),
            Self::Branch => sext(field(w, 31, 1) << 12 | field(w, 7, 1) << 11 | field(w, 25, 6) << 5 | field(w, 8, 4) << 1, 13),
            Self::Store => sext(field(w, 25, 7) << 5 | field(w, 7, 5), 12),
            Self::Imm | Self::Load | Self::Jalr => sext(field(w, 20, 12), 12),
            Self::Shift => field(w, 20, 5) as i32,
            Self::Fence => field(w, 20, 8) as i32,
            _ => 0,
        };
        Some(Fields::regs_of(w).with_imm(imm))
    }

    fn print(self, f: &Fields, pc: u64, s: Style) -> String {
        let x = |r| s.x(r);
        let (rd, rs1, rs2) = (f.rd, f.rs1, f.rs2);
        match self {
            Self::U => format!("{}, {:#x}", x(rd), f.imm),
            Self::J => format!("{}, {}", x(rd), s.target(pc, f.imm)),
            Self::Jalr | Self::Load => format!("{}, {}({})", x(rd), s.imm(f.imm), x(rs1)),
            Self::Store => format!("{}, {}({})", x(rs2), s.imm(f.imm), x(rs1)),
            Self::Branch => format!("{}, {}, {}", x(rs1), x(rs2), s.target(pc, f.imm)),
            Self::Imm | Self::Shift => format!("{}, {}, {}", x(rd), x(rs1), s.imm(f.imm)),
            Self::R => format!("{}, {}, {}", x(rd), x(rs1), x(rs2)),
            Self::Fence => format!("{}, {}", Style::fence(f.imm >> 4), Style::fence(f.imm & 0xf)),
            Self::Fixed => String::new(),
            Self::Sfence => format!("{}, {}", x(rs1), x(rs2)),
        }
    }

    /// 扩展里用到 RV32I 格式的指令（`mul` 一类）怎么汇编；RV32I 自己的由汇编器核心做（伪指令、长跳转 …）。
    fn assemble(self, args: &Args<'_>) -> Result<(Fields, Vec<Fixup>), String> {
        use Operand::{Expr as E, Imm, Mem, X as Xr};
        let f = Fields::ZERO;
        let num = |o: &Operand| match o {
            Imm(k) => Some(Expr::Num(*k)),
            E(e) => Some(e.clone()),
            Operand::Sym(n) => Some(Expr::Sym(n.clone())),
            _ => None,
        };
        let bad = || format!("{self:?} 格式的操作数不对：{:?}", args.ops);
        match (self, args.ops) {
            (Self::R, [Xr(rd), Xr(a), Xr(b)]) => Ok((f.x(*rd, *a, *b), Vec::new())),
            (Self::Imm | Self::Shift, [Xr(rd), Xr(a), e]) => self.imm_or_fix(f.x(*rd, *a, 0), &num(e).ok_or_else(bad)?, Field::I),
            (Self::Load | Self::Jalr, [Xr(rd), Mem(e, rs)]) => self.imm_or_fix(f.x(*rd, *rs, 0), e, Field::I),
            (Self::Store, [Xr(rs2), Mem(e, rs)]) => self.imm_or_fix(f.x(0, *rs, *rs2), e, Field::S),
            (Self::U, [Xr(rd), e]) => self.imm_or_fix(f.x(*rd, 0, 0), &num(e).ok_or_else(bad)?, Field::U),
            (Self::Branch, [Xr(a), Xr(b), e]) => Ok((f.x(0, *a, *b), vec![Fixup { offset: 0, field: Field::B, expr: num(e).ok_or_else(bad)? }])),
            (Self::J, [Xr(rd), e]) => Ok((f.x(*rd, 0, 0), vec![Fixup { offset: 0, field: Field::J, expr: num(e).ok_or_else(bad)? }])),
            (Self::Fixed, []) => Ok((f, Vec::new())),
            (Self::Sfence, [Xr(a), Xr(b)]) => Ok((f.x(0, *a, *b), Vec::new())),
            (Self::Sfence, [Xr(a)]) => Ok((f.x(0, *a, 0), Vec::new())),
            _ => Err(bad()),
        }
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Isa)]
#[isa(name = "i", form = Base, alias = alias)]
pub enum Rv32i {
    #[isa("lui", U, 0x37)]
    Lui,
    #[isa("auipc", U, 0x17)]
    Auipc,
    #[isa("jal", J, 0x6f)]
    Jal,
    #[isa("jalr", Jalr, 0x67)]
    Jalr,
    #[isa("beq", Branch, 0x63)]
    Beq,
    #[isa("bne", Branch, 0x1063)]
    Bne,
    #[isa("blt", Branch, 0x4063)]
    Blt,
    #[isa("bge", Branch, 0x5063)]
    Bge,
    #[isa("bltu", Branch, 0x6063)]
    Bltu,
    #[isa("bgeu", Branch, 0x7063)]
    Bgeu,
    #[isa("lb", Load, 0x03)]
    Lb,
    #[isa("lh", Load, 0x1003)]
    Lh,
    #[isa("lw", Load, 0x2003)]
    Lw,
    #[isa("lbu", Load, 0x4003)]
    Lbu,
    #[isa("lhu", Load, 0x5003)]
    Lhu,
    #[isa("sb", Store, 0x23)]
    Sb,
    #[isa("sh", Store, 0x1023)]
    Sh,
    #[isa("sw", Store, 0x2023)]
    Sw,
    #[isa("addi", Imm, 0x13)]
    Addi,
    #[isa("slti", Imm, 0x2013)]
    Slti,
    #[isa("sltiu", Imm, 0x3013)]
    Sltiu,
    #[isa("xori", Imm, 0x4013)]
    Xori,
    #[isa("ori", Imm, 0x6013)]
    Ori,
    #[isa("andi", Imm, 0x7013)]
    Andi,
    #[isa("slli", Shift, 0x1013)]
    Slli,
    #[isa("srli", Shift, 0x5013)]
    Srli,
    #[isa("srai", Shift, 0x4000_5013)]
    Srai,
    #[isa("add", R, 0x33)]
    Add,
    #[isa("sub", R, 0x4000_0033)]
    Sub,
    #[isa("sll", R, 0x1033)]
    Sll,
    #[isa("slt", R, 0x2033)]
    Slt,
    #[isa("sltu", R, 0x3033)]
    Sltu,
    #[isa("xor", R, 0x4033)]
    Xor,
    #[isa("srl", R, 0x5033)]
    Srl,
    #[isa("sra", R, 0x4000_5033)]
    Sra,
    #[isa("or", R, 0x6033)]
    Or,
    #[isa("and", R, 0x7033)]
    And,
    #[isa("fence", Fence, 0x0f)]
    Fence,
    #[isa("fence.tso", Fixed, 0x8330_000f)]
    FenceTso,
    #[isa("fence.i", Fixed, 0x100f)]
    FenceI,
    #[isa("ecall", Fixed, 0x73)]
    Ecall,
    #[isa("ebreak", Fixed, 0x0010_0073)]
    Ebreak,
    #[isa("mret", Fixed, 0x3020_0073)]
    Mret,
    #[isa("sret", Fixed, 0x1020_0073)]
    Sret,
    #[isa("wfi", Fixed, 0x1050_0073)]
    Wfi,
    #[isa("dret", Fixed, 0x7b20_0073)]
    Dret,
    #[isa("sfence.vma", Sfence, 0x1200_0073)]
    SfenceVma,
}

/// RV32I 的打印别名（LLVM `InstAlias` 里 EmitPriority ≠ 0 的那些）。
fn alias(i: &Inst<Rv32i>, pc: u64, s: Style) -> Option<(String, String)> {
    let x = |r| s.x(r);
    let (rd, rs1, rs2, imm) = (i.rd, i.rs1, i.rs2, i.imm);
    let mut out = String::new();
    let name = match (i.op, rd, rs1, rs2, imm) {
        (Rv32i::Addi, 0, 0, _, 0) => "nop",
        (Rv32i::Addi, _, 0, _, _) => {
            let _ = write!(out, "{}, {}", x(rd), s.imm(imm));
            "li"
        }
        (Rv32i::Addi, _, _, _, 0) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs1));
            "mv"
        }
        (Rv32i::Xori, _, _, _, -1) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs1));
            "not"
        }
        (Rv32i::Sub, _, 0, _, _) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs2));
            "neg"
        }
        (Rv32i::Sltiu, _, _, _, 1) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs1));
            "seqz"
        }
        (Rv32i::Sltu, _, 0, _, _) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs2));
            "snez"
        }
        (Rv32i::Slt, _, _, 0, _) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs1));
            "sltz"
        }
        (Rv32i::Slt, _, 0, _, _) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs2));
            "sgtz"
        }
        // ⚠ 两个源都是 zero 时 LLVM 的取舍：`bge` 印 `blez`，`blt` 印 `bltz`
        (Rv32i::Bge, _, 0, _, _) => {
            let _ = write!(out, "{}, {}", x(rs2), s.target(pc, imm));
            "blez"
        }
        (Rv32i::Beq | Rv32i::Bne | Rv32i::Bge | Rv32i::Blt, _, _, 0, _) => {
            let _ = write!(out, "{}, {}", x(rs1), s.target(pc, imm));
            match i.op {
                Rv32i::Beq => "beqz",
                Rv32i::Bne => "bnez",
                Rv32i::Bge => "bgez",
                _ => "bltz",
            }
        }
        (Rv32i::Blt, _, 0, _, _) => {
            let _ = write!(out, "{}, {}", x(rs2), s.target(pc, imm));
            "bgtz"
        }
        (Rv32i::Jal, 0, ..) => {
            out = s.target(pc, imm);
            "j"
        }
        (Rv32i::Jal, 1, ..) => {
            out = s.target(pc, imm);
            "jal"
        }
        (Rv32i::Jalr, 0, 1, _, 0) => "ret",
        (Rv32i::Jalr, 0 | 1, ..) => {
            out = if imm == 0 { x(rs1) } else { format!("{}({})", s.imm(imm), x(rs1)) };
            if rd == 0 { "jr" } else { "jalr" }
        }
        (Rv32i::Jalr, _, _, _, 0) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs1));
            "jalr"
        }
        (Rv32i::Andi, _, _, _, 0xff) => {
            let _ = write!(out, "{}, {}", x(rd), x(rs1));
            "zext.b"
        }
        (Rv32i::Fence, _, _, _, 0xff) => "fence",
        (Rv32i::SfenceVma, _, 0, 0, _) => "sfence.vma",
        (Rv32i::SfenceVma, _, _, 0, _) => {
            out = x(rs1);
            "sfence.vma"
        }
        _ => return None,
    };
    Some((String::from(name), out))
}

