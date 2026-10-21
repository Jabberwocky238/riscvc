//! 指令表的通用部分：格式（[`Layout`]：操作数在哪几位、怎么编 / 译 / 印 / 汇编）、表（[`Table`]，`#[derive(Isa)]`
//! 生成）、一条指令（[`Inst`]）。⛔ 这里不认任何具体格式：RV32I 的在 [`super::Base`]，扩展的在 `src/feature/`。
use super::{F, Opcode, Rm, X};
use crate::ext::{Args, Fixup};
use core::fmt;
use core::str::FromStr;

/// 一条指令的操作数字段（没有助记符）：格式在它上面编码、译码、打印。
pub type Fields = Inst<()>;

/// ⭐ 一种格式：操作数怎么写、在哪几位。固定位由 [`Table::bits`] 给。
pub trait Layout: Copy + PartialEq + fmt::Debug + 'static {
    /// 固定位的掩码。
    fn mask(self) -> u32;
    /// 操作数字段 ⇒ 字里的位（不含固定位）。
    fn encode(self, f: &Fields) -> u32;
    /// 字 ⇒ 操作数字段；这个格式下不合法（保留的舍入模式、越界的位段 …）⇒ `None`。
    fn decode(self, w: u32) -> Option<Fields>;
    /// 不用别名时的操作数文本。
    fn print(self, f: &Fields, pc: u64, style: Style) -> String;
    /// 汇编：操作数 ⇒ 字段 + 修补点（扩展指令用；RV32I 的由汇编器核心自己做）。
    fn assemble(self, args: &Args<'_>) -> Result<(Fields, Vec<Fixup>), String>;
    /// funct3 是舍入模式（打印时省掉 `dyn`）。
    fn has_rm(self) -> bool {
        false
    }
}

/// ⭐ 一张指令表（`#[derive(Isa)]` 生成）：助记符、固定位、属于哪个扩展、开没开、打印别名；
/// 编码 / 译码 / 打印 / 汇编委托给每条的格式（[`Layout`]）。
pub trait Table: Copy + PartialEq + fmt::Debug + fmt::Display + FromStr + 'static {
    /// 全部指令。
    const ALL: &'static [Self];
    /// 扩展名（`-mattr` 的写法：`i`、`m`、`zmmul`、`f`、`zicsr`、`xtheadba` …）。
    fn ext(&self) -> &str;
    fn name(&self) -> &str;
    fn bits(&self) -> u32;
    /// 低 7 位（主操作码）是 `op` 的那些（译码只在这里找；缺省全表）。
    fn by_opcode(op: u32) -> &'static [Self] {
        let _ = op;
        Self::ALL
    }
    fn mask(&self) -> u32;
    fn encode(&self, f: &Fields) -> u32;
    fn decode(&self, w: u32) -> Option<Fields>;
    fn operands(&self, f: &Fields, pc: u64, style: Style) -> String;
    fn assemble(&self, args: &Args<'_>) -> Result<(Fields, Vec<Fixup>), String>;
    fn has_rm(&self) -> bool;
    /// LLVM 的打印别名（`InstAlias` 里 EmitPriority ≠ 0 的）：（助记符, 操作数）；没有 ⇒ `None`。
    fn alias(i: &Inst<Self>, pc: u64, style: Style) -> Option<(String, String)> {
        let _ = (i, pc, style);
        None
    }
}

/// 一条译好 / 待编的指令。寄存器按编号存（哪一类由格式定）；`imm` 的单位、`rs3` 与 `csr` 的用法也由格式定。
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
#[must_use]
pub const fn field(word: u32, lo: u32, n: u32) -> u32 {
    (word >> lo) & ((1 << n) - 1)
}

/// 符号扩展低 `n` 位。
#[must_use]
pub const fn sext(v: u32, n: u32) -> i32 {
    ((v << (32 - n)) as i32) >> (32 - n)
}

impl Inst {
    /// 只有助记符、操作数全 0 的一条（其余字段由调用方填）。
    #[must_use]
    pub fn new(op: impl Into<Opcode>) -> Self {
        Self::of(op.into())
    }
}

impl Fields {
    /// 操作数全 0（rm = dyn）。
    pub const ZERO: Self = Self { op: (), rd: 0, rs1: 0, rs2: 0, rs3: 0, imm: 0, csr: 0, rm: Rm::Dyn as u8 };

    /// 字里的寄存器位段（rd 11:7、rs1 19:15、rs2 24:20、rs3 31:27），其余为 0。
    #[must_use]
    pub const fn regs_of(w: u32) -> Self {
        Self { rd: field(w, 7, 5) as u8, rs1: field(w, 15, 5) as u8, rs2: field(w, 20, 5) as u8, rs3: field(w, 27, 5) as u8, ..Self::ZERO }
    }
}

impl<O> Inst<O> {
    /// 某张表里的一条，操作数全 0。
    #[must_use]
    pub const fn of(op: O) -> Self {
        Self { op, rd: 0, rs1: 0, rs2: 0, rs3: 0, imm: 0, csr: 0, rm: Rm::Dyn as u8 }
    }

    /// 换助记符（字段照搬）：`Opcode` 与各表之间、表与 [`Fields`] 之间来回。
    #[must_use]
    pub fn with_op<P>(&self, op: P) -> Inst<P> {
        Inst { op, rd: self.rd, rs1: self.rs1, rs2: self.rs2, rs3: self.rs3, imm: self.imm, csr: self.csr, rm: self.rm }
    }

    /// 只要字段。
    #[must_use]
    pub fn fields(&self) -> Fields {
        self.with_op(())
    }

    #[must_use]
    pub fn x(self, rd: u8, rs1: u8, rs2: u8) -> Self {
        Self { rd, rs1, rs2, ..self }
    }

    #[must_use]
    pub fn with_imm(self, imm: i32) -> Self {
        Self { imm, ..self }
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
}

impl<O: Table> From<Inst<O>> for u32 {
    fn from(i: Inst<O>) -> u32 {
        i.op.bits() | i.op.encode(&i.fields())
    }
}

impl<O: Table> TryFrom<u32> for Inst<O> {
    type Error = ();
    /// 按这张表译一个字（开不开是调用方的事：模块列表里有这张表才会问到它）：命中多条时取掩码位最多的（`fence.tso` 胜过 `fence`）。
    fn try_from(w: u32) -> Result<Self, ()> {
        let op = O::by_opcode(w & 0x7f).iter().copied().filter(|op| w & op.mask() == op.bits()).max_by_key(|op| op.mask().count_ones()).ok_or(())?;
        Ok(op.decode(w).ok_or(())?.with_op(op))
    }
}

impl<O: Table> Inst<O> {
    /// ⭐ 一行文本：助记符 + 制表符 + 操作数（同 LLVM 的 RISCVInstPrinter；别名由各表的 [`Table::alias`] 给）。
    #[must_use]
    pub fn print(&self, pc: u64, style: Style) -> String {
        let (name, ops) = if style.no_aliases { None } else { O::alias(self, pc, style) }.unwrap_or_else(|| (self.op.to_string(), self.op.operands(&self.fields(), pc, style)));
        if ops.is_empty() { name } else { format!("{name}\t{ops}") }
    }
}

/// 打印风格（同 llvm-objdump 的 `-M`）。
#[derive(Clone, Copy, Debug, Default)]
pub struct Style {
    /// `no-aliases`：⛔ 还原伪指令。
    pub no_aliases: bool,
    /// `numeric`：寄存器印 `x5` / `f3`。
    pub numeric: bool,
    /// 立即数十六进制（同 LLVM 的 `setPrintImmHex(true)`）。
    pub hex: bool,
    /// 跳转目标印成地址（`pc + 偏移`）而不是偏移。
    pub address: bool,
    /// 目标没有 F：浮点 CSR（`fcsr` / `frm` / `fflags`）⛔ 印成 `frcsr` 一类别名（同 llvm-objdump 不带 `+f`）。
    pub no_float_csr: bool,
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
