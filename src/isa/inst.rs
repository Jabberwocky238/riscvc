//! RV32IMF + Zicsr 的指令表：一行一条（名字、格式、固定位），宏展开出 `Op` 与它的编码 / 译码 / 打印。
use super::{Csr, F, Opcode, Rm, X};
use core::fmt;
use core::str::FromStr;

/// 格式 = 操作数怎么写 + 哪几位是操作数。固定位由 [`Table::bits`] 给，掩码由格式定。
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
    /// `rs1, rs2`（`sfence.vma`）
    Sfence,
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
            Self::Sfence => 0xfe00_7fff,
        }
    }

    /// 带舍入模式的格式（funct3 是 rm）。
    #[must_use]
    pub const fn has_rm(self) -> bool {
        matches!(self, Self::FRrm | Self::FR1rm | Self::FCvtXF | Self::FCvtFX | Self::R4)
    }
}

/// 扩展（`-march` 里的一项）；除了 I 都是同名的 cargo feature（`m` 蕴含 `zmmul`，`f` 蕴含 `zicsr`），
/// 指令表在 `src/feature/<名>/`。
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum Ext {
    /// 基础整数 + 特权指令（总在）。
    I,
    /// 只有乘法（`mul` / `mulh*`）。
    Zmmul,
    /// 除法、取余（M 的其余部分）。
    M,
    F,
    Zicsr,
}

impl Ext {
    /// 这次编译开了没有（feature）。
    #[must_use]
    pub const fn enabled(self) -> bool {
        match self {
            Self::I => true,
            Self::Zmmul => cfg!(feature = "zmmul"),
            Self::M => cfg!(feature = "m"),
            Self::F => cfg!(feature = "f"),
            Self::Zicsr => cfg!(feature = "zicsr"),
        }
    }

    /// `-march` 串（同 clang 的规范写法，只列开了的）：`rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0`。
    #[must_use]
    pub fn march() -> String {
        let mut s = String::from("rv32i2p1");
        for (ext, part) in [(Self::M, "_m2p0"), (Self::F, "_f2p2"), (Self::Zicsr, "_zicsr2p0"), (Self::Zmmul, "_zmmul1p0")] {
            if ext.enabled() {
                s.push_str(part);
            }
        }
        s
    }

    /// llc / llvm-mc 的 `-mattr`（对照用）：`+m,+f,+zicsr` 这样，关了的写 `-x`。
    #[must_use]
    pub fn mattr() -> String {
        [(Self::M, "m"), (Self::Zmmul, "zmmul"), (Self::F, "f"), (Self::Zicsr, "zicsr")].iter().map(|(e, n)| format!("{}{n}", if e.enabled() { '+' } else { '-' })).collect::<Vec<_>>().join(",")
    }

    /// 浮点调用约定：开了 F 用 ilp32f，否则 ilp32（软浮点）。
    #[must_use]
    pub const fn abi() -> &'static str {
        if Self::F.enabled() { "ilp32f" } else { "ilp32" }
    }
}

/// ⭐ 一张指令表（`#[derive(Isa)]` 生成）：助记符、格式、固定位、属于哪个扩展、这次编译开没开、打印别名。
pub trait Table: Copy + PartialEq + 'static + fmt::Debug + fmt::Display + FromStr {
    /// 全部指令。
    const ALL: &'static [Self];
    /// 扩展名（`-mattr` 的写法：`i`、`m`、`zmmul`、`f`、`zicsr`、`x<厂商>`）。
    fn ext(&self) -> &str;
    fn name(&self) -> &str;
    fn form(&self) -> Form;
    fn bits(&self) -> u32;
    /// 这次编译认不认（扩展的 cargo feature 开了没有）。
    fn enabled(&self) -> bool;
    /// LLVM 的打印别名（`InstAlias` 里 EmitPriority ≠ 0 的）：（助记符, 操作数）；没有 ⇒ `None`。
    fn alias(i: &Inst<Self>, pc: u64, style: Style) -> Option<(String, String)> {
        let _ = (i, pc, style);
        None
    }
}

/// 一条译好 / 待编的指令。寄存器按编号存（哪一类由格式定）。
///
/// `imm` 的单位随格式：U 是高 20 位的值；J / Branch 是字节偏移；Fence 是 `pred << 4 | succ`；
/// Csr / CsrI 的 CSR 编号在 `csr`，CsrI 的 5 位立即数在 `rs1`。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Inst<O = Opcode> {
    pub op: O,
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
    pub fn new(op: impl Into<Opcode>) -> Self {
        Self::of(op.into())
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

impl<O: Table> Inst<O> {
    /// 某张表里的一条，操作数全 0。
    #[must_use]
    pub const fn of(op: O) -> Self {
        Self { op, rd: 0, rs1: 0, rs2: 0, rs3: 0, imm: 0, csr: 0, rm: Rm::Dyn as u8 }
    }

    /// 换一张表的助记符（字段照搬）：`Opcode` 与各表之间来回。
    #[must_use]
    pub fn with_op<P>(&self, op: P) -> Inst<P> {
        Inst { op, rd: self.rd, rs1: self.rs1, rs2: self.rs2, rs3: self.rs3, imm: self.imm, csr: self.csr, rm: self.rm }
    }

    #[must_use]
    pub const fn x(self, rd: u8, rs1: u8, rs2: u8) -> Self {
        Self { rd, rs1, rs2, ..self }
    }

    #[must_use]
    pub const fn with_imm(self, imm: i32) -> Self {
        Self { imm, ..self }
    }

}

impl<O: Table> From<Inst<O>> for u32 {
    fn from(i: Inst<O>) -> u32 {
        let form = i.op.form();
        let (rd, rs1, rs2, rs3) = (u32::from(i.rd), u32::from(i.rs1), u32::from(i.rs2), u32::from(i.rs3));
        let regs = match form {
            Form::U | Form::J => rd << 7,
            Form::Branch | Form::Store | Form::FStore | Form::Sfence => rs1 << 15 | rs2 << 20,
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

impl<O: Table> TryFrom<u32> for Inst<O> {
    type Error = ();
    /// 按这张表译一个字（只认开了的）：命中多条时取掩码位最多的（`fence.tso` 胜过 `fence`）。
    fn try_from(w: u32) -> Result<Self, ()> {
        let op = O::ALL.iter().copied().filter(|op| op.enabled() && w & op.form().mask() == op.bits()).max_by_key(|op| op.form().mask().count_ones()).ok_or(())?;
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
    #[must_use]
    pub fn x(self, r: u8) -> String {
        if self.numeric { format!("x{r}") } else { X(r).to_string() }
    }

    #[must_use]
    pub fn f(self, r: u8) -> String {
        if self.numeric { format!("f{r}") } else { F(r).to_string() }
    }

    #[must_use]
    pub fn imm(self, v: i32) -> String {
        match (self.hex, v < 0) {
            (false, _) => v.to_string(),
            (true, false) => format!("{v:#x}"),
            (true, true) => format!("-{:#x}", v.unsigned_abs()),
        }
    }

    #[must_use]
    pub fn target(self, pc: u64, off: i32) -> String {
        if self.address { format!("{:#x}", pc.wrapping_add_signed(i64::from(off)) & 0xffff_ffff) } else { self.imm(off) }
    }

    #[must_use]
    pub fn fence(bits: i32) -> String {
        let s: String = [(8, 'i'), (4, 'o'), (2, 'r'), (1, 'w')].iter().filter(|(b, _)| bits & b != 0).map(|(_, c)| *c).collect();
        if s.is_empty() { String::from("0") } else { s }
    }
}

impl<O: Table> Inst<O> {
    /// ⭐ 一行文本：助记符 + 制表符 + 操作数（同 LLVM 的 RISCVInstPrinter；别名由各表的 [`Table::alias`] 给）。
    #[must_use]
    pub fn print(&self, pc: u64, style: Style) -> String {
        let (name, ops) = if style.no_aliases { None } else { O::alias(self, pc, style) }.unwrap_or_else(|| (self.op.to_string(), self.operands(pc, style)));
        if ops.is_empty() { name } else { format!("{name}\t{ops}") }
    }

    /// `, rm`：别名风格省掉 `dyn`，no-aliases 照印。
    #[must_use]
    pub fn rm_suffix(&self, s: Style) -> String {
        match Rm::try_from(u32::from(self.rm)) {
            Ok(Rm::Dyn) if !s.no_aliases => String::new(),
            Err(()) => String::new(),
            Ok(rm) => format!(", {rm}"),
        }
    }

    /// 不用别名时的操作数（按格式）。
    #[must_use]
    pub fn operands(&self, pc: u64, s: Style) -> String {
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
            Form::Sfence => format!("{}, {}", x(rs1), x(rs2)),
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
}
