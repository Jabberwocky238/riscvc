//! RV32IMF + Zicsr 的指令表：一行一条（名字、格式、固定位），宏展开出 `Op` 与它的编码 / 译码 / 打印。
use super::{Csr, F, Rm, X};
use core::fmt::{self, Write};
use core::str::FromStr;

/// 格式 = 操作数怎么写 + 哪几位是操作数。固定位由 [`Op::bits`] 给，掩码由格式定。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Form {
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
    /// `fd, imm(rs1)`
    FLoad,
    /// `rs2, imm(rs1)`
    Store,
    /// `fs2, imm(rs1)`
    FStore,
    /// `rd, rs1, imm12`
    Imm,
    /// `rd, rs1, shamt`
    Shift,
    /// `rd, rs1, rs2`
    R,
    /// `rd, csr, rs1`
    Csr,
    /// `rd, csr, uimm5`
    CsrI,
    /// `pred, succ`
    Fence,
    /// 没有操作数
    Fixed,
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
}

impl Form {
    /// 固定位的掩码。
    #[must_use]
    pub const fn mask(self) -> u32 {
        match self {
            Self::U | Self::J => 0x7f,
            Self::Jalr | Self::Branch | Self::Load | Self::FLoad | Self::Store | Self::FStore | Self::Imm | Self::Csr | Self::CsrI => 0x707f,
            Self::Shift | Self::R | Self::FR | Self::FCmp => 0xfe00_707f,
            Self::FRrm => 0xfe00_007f,
            Self::FR1rm | Self::FCvtXF | Self::FCvtFX => 0xfff0_007f,
            Self::FToX | Self::XToF => 0xfff0_707f,
            Self::R4 => 0x0600_007f,
            Self::Fence => 0xf00f_ffff,
            Self::Fixed => 0xffff_ffff,
        }
    }

    /// 带舍入模式的格式（funct3 是 rm）。
    #[must_use]
    pub const fn has_rm(self) -> bool {
        matches!(self, Self::FRrm | Self::FR1rm | Self::FCvtXF | Self::FCvtFX | Self::R4)
    }
}

macro_rules! ops {
    ($($v:ident $name:literal $form:ident $bits:literal,)*) => {
        /// 一条指令的助记符（⛔ 不含伪指令：伪指令在汇编器里展开、在打印时按别名还原）。
        #[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
        pub enum Op { $($v),* }
        impl Op {
            pub const ALL: &[Op] = &[$(Op::$v),*];
            #[must_use]
            pub const fn form(self) -> Form { match self { $(Op::$v => Form::$form),* } }
            #[must_use]
            pub const fn bits(self) -> u32 { match self { $(Op::$v => $bits),* } }
        }
        impl fmt::Display for Op {
            fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
                f.write_str(match self { $(Op::$v => $name),* })
            }
        }
        impl FromStr for Op {
            type Err = ();
            fn from_str(s: &str) -> Result<Self, ()> {
                match s { $($name => Ok(Op::$v),)* _ => Err(()) }
            }
        }
    };
}

ops! {
    Lui "lui" U 0x37,
    Auipc "auipc" U 0x17,
    Jal "jal" J 0x6f,
    Jalr "jalr" Jalr 0x67,
    Beq "beq" Branch 0x63,
    Bne "bne" Branch 0x1063,
    Blt "blt" Branch 0x4063,
    Bge "bge" Branch 0x5063,
    Bltu "bltu" Branch 0x6063,
    Bgeu "bgeu" Branch 0x7063,
    Lb "lb" Load 0x03,
    Lh "lh" Load 0x1003,
    Lw "lw" Load 0x2003,
    Lbu "lbu" Load 0x4003,
    Lhu "lhu" Load 0x5003,
    Sb "sb" Store 0x23,
    Sh "sh" Store 0x1023,
    Sw "sw" Store 0x2023,
    Addi "addi" Imm 0x13,
    Slti "slti" Imm 0x2013,
    Sltiu "sltiu" Imm 0x3013,
    Xori "xori" Imm 0x4013,
    Ori "ori" Imm 0x6013,
    Andi "andi" Imm 0x7013,
    Slli "slli" Shift 0x1013,
    Srli "srli" Shift 0x5013,
    Srai "srai" Shift 0x4000_5013,
    Add "add" R 0x33,
    Sub "sub" R 0x4000_0033,
    Sll "sll" R 0x1033,
    Slt "slt" R 0x2033,
    Sltu "sltu" R 0x3033,
    Xor "xor" R 0x4033,
    Srl "srl" R 0x5033,
    Sra "sra" R 0x4000_5033,
    Or "or" R 0x6033,
    And "and" R 0x7033,
    Fence "fence" Fence 0x0f,
    FenceTso "fence.tso" Fixed 0x8330_000f,
    FenceI "fence.i" Fixed 0x100f,
    Ecall "ecall" Fixed 0x73,
    Ebreak "ebreak" Fixed 0x0010_0073,
    Mret "mret" Fixed 0x3020_0073,
    Sret "sret" Fixed 0x1020_0073,
    Wfi "wfi" Fixed 0x1050_0073,
    Csrrw "csrrw" Csr 0x1073,
    Csrrs "csrrs" Csr 0x2073,
    Csrrc "csrrc" Csr 0x3073,
    Csrrwi "csrrwi" CsrI 0x5073,
    Csrrsi "csrrsi" CsrI 0x6073,
    Csrrci "csrrci" CsrI 0x7073,
    Mul "mul" R 0x0200_0033,
    Mulh "mulh" R 0x0200_1033,
    Mulhsu "mulhsu" R 0x0200_2033,
    Mulhu "mulhu" R 0x0200_3033,
    Div "div" R 0x0200_4033,
    Divu "divu" R 0x0200_5033,
    Rem "rem" R 0x0200_6033,
    Remu "remu" R 0x0200_7033,
    Flw "flw" FLoad 0x2007,
    Fsw "fsw" FStore 0x2027,
    FmaddS "fmadd.s" R4 0x43,
    FmsubS "fmsub.s" R4 0x47,
    FnmsubS "fnmsub.s" R4 0x4b,
    FnmaddS "fnmadd.s" R4 0x4f,
    FaddS "fadd.s" FRrm 0x53,
    FsubS "fsub.s" FRrm 0x0800_0053,
    FmulS "fmul.s" FRrm 0x1000_0053,
    FdivS "fdiv.s" FRrm 0x1800_0053,
    FsqrtS "fsqrt.s" FR1rm 0x5800_0053,
    FsgnjS "fsgnj.s" FR 0x2000_0053,
    FsgnjnS "fsgnjn.s" FR 0x2000_1053,
    FsgnjxS "fsgnjx.s" FR 0x2000_2053,
    FminS "fmin.s" FR 0x2800_0053,
    FmaxS "fmax.s" FR 0x2800_1053,
    FcvtWS "fcvt.w.s" FCvtXF 0xc000_0053,
    FcvtWuS "fcvt.wu.s" FCvtXF 0xc010_0053,
    FmvXW "fmv.x.w" FToX 0xe000_0053,
    FeqS "feq.s" FCmp 0xa000_2053,
    FltS "flt.s" FCmp 0xa000_1053,
    FleS "fle.s" FCmp 0xa000_0053,
    FclassS "fclass.s" FToX 0xe000_1053,
    FcvtSW "fcvt.s.w" FCvtFX 0xd000_0053,
    FcvtSWu "fcvt.s.wu" FCvtFX 0xd010_0053,
    FmvWX "fmv.w.x" XToF 0xf000_0053,
}

/// 一条译好 / 待编的指令。寄存器按编号存（哪一类由格式定）。
///
/// `imm` 的单位随格式：U 是高 20 位的值；J / Branch 是字节偏移；Fence 是 `pred << 4 | succ`；
/// Csr / CsrI 的 CSR 编号在 `csr`，CsrI 的 5 位立即数在 `rs1`。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Inst {
    pub op: Op,
    pub rd: u8,
    pub rs1: u8,
    pub rs2: u8,
    pub rs3: u8,
    pub imm: i32,
    pub csr: u16,
    pub rm: u8,
}

/// 位段 `[lo, lo + n)`。
const fn field(word: u32, lo: u32, n: u32) -> u32 {
    (word >> lo) & ((1 << n) - 1)
}

/// 符号扩展低 `n` 位。
const fn sext(v: u32, n: u32) -> i32 {
    ((v << (32 - n)) as i32) >> (32 - n)
}

impl Inst {
    /// 只有助记符、操作数全 0 的一条（其余字段由调用方填）。
    #[must_use]
    pub const fn new(op: Op) -> Self {
        Self { op, rd: 0, rs1: 0, rs2: 0, rs3: 0, imm: 0, csr: 0, rm: Rm::Dyn as u8 }
    }

    #[must_use]
    pub const fn x(self, rd: u8, rs1: u8, rs2: u8) -> Self {
        Self { rd, rs1, rs2, ..self }
    }

    #[must_use]
    pub const fn with_imm(self, imm: i32) -> Self {
        Self { imm, ..self }
    }

    /// 立即数编进字里的那几位（I / S / B / U / J 各自的散布）。
    #[must_use]
    pub const fn scatter(form: Form, imm: i32) -> u32 {
        let v = imm as u32;
        match form {
            Form::U => (v & 0xf_ffff) << 12,
            Form::J => (field(v, 20, 1) << 31) | (field(v, 1, 10) << 21) | (field(v, 11, 1) << 20) | (field(v, 12, 8) << 12),
            Form::Branch => (field(v, 12, 1) << 31) | (field(v, 5, 6) << 25) | (field(v, 1, 4) << 8) | (field(v, 11, 1) << 7),
            Form::Store | Form::FStore => (field(v, 5, 7) << 25) | (field(v, 0, 5) << 7),
            Form::Imm | Form::Load | Form::FLoad | Form::Jalr => (v & 0xfff) << 20,
            Form::Shift => (v & 0x1f) << 20,
            Form::Fence => (v & 0xff) << 20,
            _ => 0,
        }
    }

    /// 立即数的范围检查（编码前）：放不进就报，⛔ 不静默截位。
    #[must_use]
    pub const fn fits(form: Form, imm: i64) -> bool {
        match form {
            Form::U => imm >= 0 && imm < (1 << 20),
            Form::J => imm >= -(1 << 20) && imm < (1 << 20) && imm % 2 == 0,
            Form::Branch => imm >= -(1 << 12) && imm < (1 << 12) && imm % 2 == 0,
            Form::Imm | Form::Load | Form::FLoad | Form::Jalr | Form::Store | Form::FStore => imm >= -2048 && imm < 2048,
            Form::Shift => imm >= 0 && imm < 32,
            _ => true,
        }
    }
}

impl From<Inst> for u32 {
    fn from(i: Inst) -> u32 {
        let form = i.op.form();
        let (rd, rs1, rs2, rs3) = (u32::from(i.rd), u32::from(i.rs1), u32::from(i.rs2), u32::from(i.rs3));
        let regs = match form {
            Form::U | Form::J => rd << 7,
            Form::Branch | Form::Store | Form::FStore => rs1 << 15 | rs2 << 20,
            Form::Jalr | Form::Load | Form::FLoad | Form::Imm | Form::Shift | Form::FToX | Form::XToF => rd << 7 | rs1 << 15,
            Form::R | Form::FR | Form::FCmp | Form::FRrm => rd << 7 | rs1 << 15 | rs2 << 20,
            Form::FR1rm | Form::FCvtXF | Form::FCvtFX => rd << 7 | rs1 << 15,
            Form::R4 => rd << 7 | rs1 << 15 | rs2 << 20 | rs3 << 27,
            Form::Csr | Form::CsrI => rd << 7 | rs1 << 15 | u32::from(i.csr) << 20,
            Form::Fence | Form::Fixed => 0,
        };
        let rm = if form.has_rm() { u32::from(i.rm) << 12 } else { 0 };
        i.op.bits() | regs | rm | Inst::scatter(form, i.imm)
    }
}

impl TryFrom<u32> for Inst {
    type Error = ();
    /// 译一个字：命中多条时取掩码位最多的（`fence.tso` 胜过 `fence`）。
    fn try_from(w: u32) -> Result<Self, ()> {
        let op = Op::ALL.iter().copied().filter(|op| w & op.form().mask() == op.bits()).max_by_key(|op| op.form().mask().count_ones()).ok_or(())?;
        let form = op.form();
        let (rd, rs1, rs2, rs3) = (field(w, 7, 5) as u8, field(w, 15, 5) as u8, field(w, 20, 5) as u8, field(w, 27, 5) as u8);
        let imm = match form {
            Form::U => field(w, 12, 20) as i32,
            Form::J => sext(field(w, 31, 1) << 20 | field(w, 12, 8) << 12 | field(w, 20, 1) << 11 | field(w, 21, 10) << 1, 21),
            Form::Branch => sext(field(w, 31, 1) << 12 | field(w, 7, 1) << 11 | field(w, 25, 6) << 5 | field(w, 8, 4) << 1, 13),
            Form::Store | Form::FStore => sext(field(w, 25, 7) << 5 | field(w, 7, 5), 12),
            Form::Imm | Form::Load | Form::FLoad | Form::Jalr => sext(field(w, 20, 12), 12),
            Form::Shift => field(w, 20, 5) as i32,
            Form::Fence => field(w, 20, 8) as i32,
            _ => 0,
        };
        // 带 rm 的格式：rm 只认合法值（5 / 6 保留）
        let rm = field(w, 12, 3);
        if form.has_rm() && Rm::try_from(rm).is_err() {
            return Err(());
        }
        Ok(Self { op, rd, rs1, rs2, rs3, imm, csr: field(w, 20, 12) as u16, rm: rm as u8 })
    }
}

/// 打印风格（同 llvm-objdump 的 `-M`）。
#[derive(Clone, Copy, Debug, Default)]
pub struct Style {
    /// `no-aliases`：⛔ 还原伪指令。
    pub no_aliases: bool,
    /// `numeric`：寄存器印 `x5` / `f3`。
    pub numeric: bool,
    /// 立即数十六进制（docc 的 shim：`setPrintImmHex(true)`）。
    pub hex: bool,
    /// 跳转目标印成地址（`pc + 偏移`）而不是偏移。
    pub address: bool,
}

impl Style {
    fn x(self, r: u8) -> String {
        if self.numeric { format!("x{r}") } else { X(r).to_string() }
    }

    fn f(self, r: u8) -> String {
        if self.numeric { format!("f{r}") } else { F(r).to_string() }
    }

    fn imm(self, v: i32) -> String {
        match (self.hex, v < 0) {
            (false, _) => v.to_string(),
            (true, false) => format!("{v:#x}"),
            (true, true) => format!("-{:#x}", v.unsigned_abs()),
        }
    }

    fn target(self, pc: u64, off: i32) -> String {
        if self.address { format!("{:#x}", pc.wrapping_add_signed(i64::from(off)) & 0xffff_ffff) } else { self.imm(off) }
    }

    fn fence(bits: i32) -> String {
        let s: String = [(8, 'i'), (4, 'o'), (2, 'r'), (1, 'w')].iter().filter(|(b, _)| bits & b != 0).map(|(_, c)| *c).collect();
        if s.is_empty() { String::from("0") } else { s }
    }
}

impl Inst {
    /// ⭐ 一行文本：助记符 + 制表符 + 操作数（同 LLVM 的 RISCVInstPrinter）。`pc` 只用来印跳转目标。
    #[must_use]
    pub fn print(&self, pc: u64, style: Style) -> String {
        let (name, ops) = if style.no_aliases { None } else { self.alias(pc, style) }.unwrap_or_else(|| (self.op.to_string(), self.operands(pc, style)));
        if ops.is_empty() { name } else { format!("{name}\t{ops}") }
    }

    /// `, rm`：别名风格省掉 `dyn`，no-aliases 照印。
    fn rm_suffix(&self, s: Style) -> String {
        match Rm::try_from(u32::from(self.rm)) {
            Ok(Rm::Dyn) if !s.no_aliases => String::new(),
            Err(()) => String::new(),
            Ok(rm) => format!(", {rm}"),
        }
    }

    fn operands(&self, pc: u64, s: Style) -> String {
        let (x, f) = (|r| s.x(r), |r| s.f(r));
        let (rd, rs1, rs2) = (self.rd, self.rs1, self.rs2);
        match self.op.form() {
            Form::U => format!("{}, {:#x}", x(rd), self.imm),
            Form::J => format!("{}, {}", x(rd), s.target(pc, self.imm)),
            Form::Jalr | Form::Load => format!("{}, {}({})", x(rd), s.imm(self.imm), x(rs1)),
            Form::FLoad => format!("{}, {}({})", f(rd), s.imm(self.imm), x(rs1)),
            Form::Store => format!("{}, {}({})", x(rs2), s.imm(self.imm), x(rs1)),
            Form::FStore => format!("{}, {}({})", f(rs2), s.imm(self.imm), x(rs1)),
            Form::Branch => format!("{}, {}, {}", x(rs1), x(rs2), s.target(pc, self.imm)),
            Form::Imm | Form::Shift => format!("{}, {}, {}", x(rd), x(rs1), s.imm(self.imm)),
            Form::R => format!("{}, {}, {}", x(rd), x(rs1), x(rs2)),
            Form::Csr => format!("{}, {}, {}", x(rd), Csr(self.csr), x(rs1)),
            Form::CsrI => format!("{}, {}, {}", x(rd), Csr(self.csr), s.imm(i32::from(rs1))),
            Form::Fence => format!("{}, {}", Style::fence(self.imm >> 4), Style::fence(self.imm & 0xf)),
            Form::Fixed => String::new(),
            Form::FR => format!("{}, {}, {}", f(rd), f(rs1), f(rs2)),
            Form::FRrm => format!("{}, {}, {}{}", f(rd), f(rs1), f(rs2), self.rm_suffix(s)),
            Form::FR1rm => format!("{}, {}{}", f(rd), f(rs1), self.rm_suffix(s)),
            Form::FCmp => format!("{}, {}, {}", x(rd), f(rs1), f(rs2)),
            Form::FToX => format!("{}, {}", x(rd), f(rs1)),
            Form::XToF => format!("{}, {}", f(rd), x(rs1)),
            Form::FCvtXF => format!("{}, {}{}", x(rd), f(rs1), self.rm_suffix(s)),
            Form::FCvtFX => format!("{}, {}{}", f(rd), x(rs1), self.rm_suffix(s)),
            Form::R4 => format!("{}, {}, {}, {}{}", f(rd), f(rs1), f(rs2), f(self.rs3), self.rm_suffix(s)),
        }
    }

    /// LLVM 的打印别名（`InstAlias` 里 EmitPriority ≠ 0 的那些）。
    fn alias(&self, pc: u64, s: Style) -> Option<(String, String)> {
        let (x, f) = (|r| s.x(r), |r| s.f(r));
        let (rd, rs1, rs2, imm) = (self.rd, self.rs1, self.rs2, self.imm);
        let mut out = String::new();
        let name = match (self.op, rd, rs1, rs2, imm) {
            (Op::Addi, 0, 0, _, 0) => "nop",
            (Op::Addi, _, 0, _, _) => {
                let _ = write!(out, "{}, {}", x(rd), s.imm(imm));
                "li"
            }
            (Op::Addi, _, _, _, 0) => {
                let _ = write!(out, "{}, {}", x(rd), x(rs1));
                "mv"
            }
            (Op::Xori, _, _, _, -1) => {
                let _ = write!(out, "{}, {}", x(rd), x(rs1));
                "not"
            }
            (Op::Sub, _, 0, _, _) => {
                let _ = write!(out, "{}, {}", x(rd), x(rs2));
                "neg"
            }
            (Op::Sltiu, _, _, _, 1) => {
                let _ = write!(out, "{}, {}", x(rd), x(rs1));
                "seqz"
            }
            (Op::Sltu, _, 0, _, _) => {
                let _ = write!(out, "{}, {}", x(rd), x(rs2));
                "snez"
            }
            (Op::Slt, _, _, 0, _) => {
                let _ = write!(out, "{}, {}", x(rd), x(rs1));
                "sltz"
            }
            (Op::Slt, _, 0, _, _) => {
                let _ = write!(out, "{}, {}", x(rd), x(rs2));
                "sgtz"
            }
            // ⚠ 两个源都是 zero 时 LLVM 的取舍：`bge` 印 `blez`，`blt` 印 `bltz`
            (Op::Bge, _, 0, _, _) => {
                let _ = write!(out, "{}, {}", x(rs2), s.target(pc, imm));
                "blez"
            }
            (Op::Beq | Op::Bne | Op::Bge | Op::Blt, _, _, 0, _) => {
                let _ = write!(out, "{}, {}", x(rs1), s.target(pc, imm));
                match self.op {
                    Op::Beq => "beqz",
                    Op::Bne => "bnez",
                    Op::Bge => "bgez",
                    _ => "bltz",
                }
            }
            (Op::Blt, _, 0, _, _) => {
                let _ = write!(out, "{}, {}", x(rs2), s.target(pc, imm));
                "bgtz"
            }
            (Op::Jal, 0, ..) => {
                out = s.target(pc, imm);
                "j"
            }
            (Op::Jal, 1, ..) => {
                out = s.target(pc, imm);
                "jal"
            }
            (Op::Jalr, 0, 1, _, 0) => "ret",
            (Op::Jalr, 0 | 1, ..) => {
                out = if imm == 0 { x(rs1) } else { format!("{}({})", s.imm(imm), x(rs1)) };
                if rd == 0 { "jr" } else { "jalr" }
            }
            (Op::Jalr, _, _, _, 0) => {
                let _ = write!(out, "{}, {}", x(rd), x(rs1));
                "jalr"
            }
            (Op::Andi, _, _, _, 0xff) => {
                let _ = write!(out, "{}, {}", x(rd), x(rs1));
                "zext.b"
            }
            (Op::Fence, _, _, _, 0xff) => "fence",
            (Op::FsgnjS | Op::FsgnjnS | Op::FsgnjxS, ..) if rs1 == rs2 => {
                let _ = write!(out, "{}, {}", f(rd), f(rs1));
                match self.op {
                    Op::FsgnjS => "fmv.s",
                    Op::FsgnjnS => "fneg.s",
                    _ => "fabs.s",
                }
            }
            (Op::Csrrs, _, 0, ..) => return Some(self.csr_read(s)),
            (Op::Csrrw | Op::Csrrs | Op::Csrrc, 0, ..) => return Some(self.csr_write(s)),
            (Op::Csrrwi | Op::Csrrsi | Op::Csrrci, 0, ..) => {
                let _ = write!(out, "{}, {}", Csr(self.csr), s.imm(i32::from(rs1)));
                match self.op {
                    Op::Csrrwi => "csrwi",
                    Op::Csrrsi => "csrsi",
                    _ => "csrci",
                }
            }
            (Op::Csrrw, _, _, _, _) if self.csr == Csr::FCSR.0 => {
                let _ = write!(out, "{}, {}", x(rd), x(rs1));
                "fscsr"
            }
            (Op::Csrrw, _, _, _, _) if self.csr == Csr::FRM.0 => {
                let _ = write!(out, "{}, {}", x(rd), x(rs1));
                "fsrm"
            }
            (Op::Csrrw, _, _, _, _) if self.csr == Csr::FFLAGS.0 => {
                let _ = write!(out, "{}, {}", x(rd), x(rs1));
                "fsflags"
            }
            (Op::Csrrwi, _, _, _, _) if self.csr == Csr::FRM.0 => {
                let _ = write!(out, "{}, {}", x(rd), s.imm(i32::from(rs1)));
                "fsrmi"
            }
            (Op::Csrrwi, _, _, _, _) if self.csr == Csr::FFLAGS.0 => {
                let _ = write!(out, "{}, {}", x(rd), s.imm(i32::from(rs1)));
                "fsflagsi"
            }
            _ => return None,
        };
        Some((String::from(name), out))
    }

    /// `csrrs rd, csr, zero` ⇒ `csrr` / `frcsr` / `frrm` / `frflags` / `rdcycle` …
    fn csr_read(&self, s: Style) -> (String, String) {
        let rd = s.x(self.rd);
        let special = match self.csr {
            0x3 => Some("frcsr"),
            0x2 => Some("frrm"),
            0x1 => Some("frflags"),
            0xc00 => Some("rdcycle"),
            0xc01 => Some("rdtime"),
            0xc02 => Some("rdinstret"),
            0xc80 => Some("rdcycleh"),
            0xc81 => Some("rdtimeh"),
            0xc82 => Some("rdinstreth"),
            _ => None,
        };
        match special {
            Some(name) => (String::from(name), rd),
            None => (String::from("csrr"), format!("{rd}, {}", Csr(self.csr))),
        }
    }

    /// `csrrw / csrrs / csrrc zero, csr, rs` ⇒ `csrw` / `csrs` / `csrc`（浮点 CSR 用 `fscsr` 等）。
    fn csr_write(&self, s: Style) -> (String, String) {
        let rs = s.x(self.rs1);
        let special = match (self.op, self.csr) {
            (Op::Csrrw, 0x3) => Some("fscsr"),
            (Op::Csrrw, 0x2) => Some("fsrm"),
            (Op::Csrrw, 0x1) => Some("fsflags"),
            _ => None,
        };
        match special {
            Some(name) => (String::from(name), rs),
            None => {
                let name = match self.op {
                    Op::Csrrw => "csrw",
                    Op::Csrrs => "csrs",
                    _ => "csrc",
                };
                (String::from(name), format!("{}, {rs}", Csr(self.csr)))
            }
        }
    }
}
