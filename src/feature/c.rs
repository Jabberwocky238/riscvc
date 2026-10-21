//! C：16 位压缩指令（RV32C + 单精度的 c.flw / c.fsw / c.flwsp / c.fswsp）；另有 [`CompressedD`]（Zcd：C 与 D 都挂上时的
//! c.fld / c.fsd / c.fldsp / c.fsdsp，单独一个模块 ⇒ 没有 D 的目标照样认不出它们，同 llvm-objdump）。一张「压缩 ⇔ 32 位」的对照表（同 LLVM 的
//! CompressPat），四处共用：
//!
//! ```text
//! 译码      16 位 ⇒ 表里第一条匹配、约束成立的行 ⇒ 字段（寄存器、立即数按行的散布拼回来）
//! 打印      no-aliases：`c.*`；别名风格：还原成 32 位再按它的别名印（同 RISCVInstPrinter）；hint 两种风格都印 `c.*`
//! 执行      还原成 32 位，按长度 2 交给 [`crate::sim::Cpu::exec`]
//! 汇编      `c.*` 助记符按行的格式编（立即数放不进 ⇒ 报错）
//! ```
//!
//! 保留编码（`c.addi4spn` 立即数 0、`c.lwsp` rd = 0、RV32 上移位量第 5 位为 1 …）不成行 ⇒ `<unknown>`、执行陷入。
use crate::ext::{Args, Assemble, Disassemble, Emit, Exec, Module, Operand};
use crate::feature::{Double, Float};
use crate::isa::{Inst, Opcode, Rv32i as IOp, Style};
use crate::sim::Stop;

/// 寄存器位段。
#[derive(Clone, Copy, PartialEq, Eq)]
enum Reg {
    /// `[11:7]`，5 位
    Hi,
    /// `[6:2]`，5 位
    Lo,
    /// `[9:7]`，x8..x15
    P7,
    /// `[4:2]`，x8..x15
    P2,
}

impl Reg {
    fn get(self, h: u16) -> u8 {
        let f = |lo: u32, n: u32| ((u32::from(h) >> lo) & ((1 << n) - 1)) as u8;
        match self {
            Self::Hi => f(7, 5),
            Self::Lo => f(2, 5),
            Self::P7 => 8 + f(7, 3),
            Self::P2 => 8 + f(2, 3),
        }
    }

    /// 寄存器号放进位段；压缩的只收 x8..x15。
    fn put(self, r: u8) -> Option<u16> {
        match self {
            Self::Hi if r < 32 => Some(u16::from(r) << 7),
            Self::Lo if r < 32 => Some(u16::from(r) << 2),
            Self::P7 if (8..16).contains(&r) => Some(u16::from(r - 8) << 7),
            Self::P2 if (8..16).contains(&r) => Some(u16::from(r - 8) << 2),
            _ => None,
        }
    }
}

/// 立即数的散布：（指令位, 立即数位）。有符号的以最高的立即数位为符号位。
struct Imm {
    bits: &'static [(u8, u8)],
    signed: bool,
}

impl Imm {
    fn get(&self, h: u16) -> i32 {
        let v = self.bits.iter().fold(0u32, |v, &(ib, mb)| v | (u32::from(h >> ib) & 1) << mb);
        let top = u32::from(self.bits.iter().map(|&(_, mb)| mb).max().unwrap_or(0));
        if self.signed { ((v << (31 - top)).cast_signed()) >> (31 - top) } else { v.cast_signed() }
    }

    /// 立即数放进位段；放不进（多出来的位、对不上的低位）⇒ `None`。
    fn put(&self, v: i32) -> Option<u16> {
        let h = self.bits.iter().fold(0u16, |h, &(ib, mb)| h | u16::from((v.cast_unsigned() >> mb) & 1 == 1) << ib);
        (self.get(h) == v).then_some(h)
    }
}

// 各格式的散布（RISC-V 规范第 26 章）
const NZUIMM4SPN: Imm = Imm { bits: &[(12, 5), (11, 4), (10, 9), (9, 8), (8, 7), (7, 6), (6, 2), (5, 3)], signed: false };
const UIMM_LS: Imm = Imm { bits: &[(12, 5), (11, 4), (10, 3), (6, 2), (5, 6)], signed: false };
const IMM6: Imm = Imm { bits: &[(12, 5), (6, 4), (5, 3), (4, 2), (3, 1), (2, 0)], signed: true };
const SHAMT: Imm = Imm { bits: &[(12, 5), (6, 4), (5, 3), (4, 2), (3, 1), (2, 0)], signed: false };
const SP16: Imm = Imm { bits: &[(12, 9), (6, 4), (5, 6), (4, 8), (3, 7), (2, 5)], signed: true };
const JUMP: Imm = Imm { bits: &[(12, 11), (11, 4), (10, 9), (9, 8), (8, 10), (7, 6), (6, 7), (5, 3), (4, 2), (3, 1), (2, 5)], signed: true };
const BRANCH: Imm = Imm { bits: &[(12, 8), (11, 4), (10, 3), (6, 7), (5, 6), (4, 2), (3, 1), (2, 5)], signed: true };
const LWSP: Imm = Imm { bits: &[(12, 5), (6, 4), (5, 3), (4, 2), (3, 7), (2, 6)], signed: false };
const SWSP: Imm = Imm { bits: &[(12, 5), (11, 4), (10, 3), (9, 2), (8, 7), (7, 6)], signed: false };
// Zcd：8 字节对齐的偏移
const UIMM_LD: Imm = Imm { bits: &[(12, 5), (11, 4), (10, 3), (6, 7), (5, 6)], signed: false };
const LDSP: Imm = Imm { bits: &[(12, 5), (6, 4), (5, 3), (4, 8), (3, 7), (2, 6)], signed: false };
const SDSP: Imm = Imm { bits: &[(12, 5), (11, 4), (10, 3), (9, 8), (8, 7), (7, 6)], signed: false };

/// 一行的约束（不成立 ⇒ 这一行不是它，接着找下一行）。
#[derive(Clone, Copy, PartialEq, Eq)]
enum Need {
    RdZero,
    RdNz,
    /// rd ∉ {0, 2}
    RdNz2,
    Rs1Nz,
    Rs2Nz,
    ImmZero,
    ImmNz,
    /// 移位量第 5 位是 0（RV32）
    Sh5,
}

/// 还原成 32 位时，rd / rs1 / rs2 各取什么。
#[derive(Clone, Copy)]
enum Src {
    Rd,
    Rs1,
    Rs2,
    X(u8),
}

/// no-aliases 的打印（与 `c.*` 的汇编操作数）形式。
#[derive(Clone, Copy, PartialEq, Eq)]
enum Form {
    /// 没有操作数
    None,
    /// `imm`
    Imm,
    /// `rd, imm`
    RdImm,
    /// `sp, imm`（c.addi16sp）
    SpImm,
    /// `rd, sp, imm`（c.addi4spn）
    RdSpImm,
    /// `rd, imm(rs1)`（`sp` 形式的 rs1 固定是 sp）
    RdMem,
    /// `rs2, imm(rs1)`
    Rs2Mem,
    /// `rd, rs2`
    RdRs2,
    /// `rd`（c.slli64 一类）
    Rd,
    /// `rs1`
    Rs1,
    /// `目标`
    Target,
    /// `rs1, 目标`
    Rs1Target,
}

/// 表里的一行。
struct Row {
    name: &'static str,
    bits: u16,
    mask: u16,
    rd: Option<Reg>,
    rs1: Option<Reg>,
    rs2: Option<Reg>,
    imm: Option<&'static Imm>,
    /// rd / rs2 是浮点寄存器
    fp: bool,
    need: &'static [Need],
    form: Form,
    /// 还原成的 32 位（hint、c.unimp ⇒ `None`）
    wide: Option<(Opcode, Src, Src, Src)>,
}

/// 一行（`row!(名字, 匹配位, 掩码, rd, rs1, rs2, 立即数, 浮点, [约束], 形式, 还原)`）。
macro_rules! row {
    ($name:literal, $bits:literal, $mask:literal, $rd:expr, $rs1:expr, $rs2:expr, $imm:expr, $fp:literal, [$($need:ident),*], $form:ident, $wide:expr) => {
        Row { name: $name, bits: $bits, mask: $mask, rd: $rd, rs1: $rs1, rs2: $rs2, imm: $imm, fp: $fp, need: &[$(Need::$need),*], form: Form::$form, wide: $wide }
    };
}

use Reg::{Hi, Lo, P2, P7};
use Src::{Rd, Rs1, Rs2, X};

/// ⭐ 对照表。⚠ 次序有意义：同一编码先认特例（c.nop 先于 c.addi、c.addi16sp 先于 c.lui、c.ebreak 先于 c.jalr …）。
/// 还原为 `None` 的是 hint（执行起来什么都不做）与 c.unimp（陷入）。
/// 末尾几行只在汇编方向用：同样的编码前面已有行认（译码走不到），是 llvm-mc 收的另一种写法（hint）。
const ROWS: [Row; 45] = [
        // ---- 象限 0 ----
        row!("c.unimp", 0x0000, 0xffff, None, None, None, None, false, [], None, None),
        row!("c.addi4spn", 0x0000, 0xe003, Some(P2), None, None, Some(&NZUIMM4SPN), false, [ImmNz], RdSpImm, Some((Opcode::I(IOp::Addi), Rd, X(2), X(0)))),
        row!("c.lw", 0x4000, 0xe003, Some(P2), Some(P7), None, Some(&UIMM_LS), false, [], RdMem, Some((Opcode::I(IOp::Lw), Rd, Rs1, X(0)))),
        row!("c.flw", 0x6000, 0xe003, Some(P2), Some(P7), None, Some(&UIMM_LS), true, [], RdMem, Some((Opcode::F(Float::Flw), Rd, Rs1, X(0)))),
        row!("c.sw", 0xc000, 0xe003, None, Some(P7), Some(P2), Some(&UIMM_LS), false, [], Rs2Mem, Some((Opcode::I(IOp::Sw), X(0), Rs1, Rs2))),
        row!("c.fsw", 0xe000, 0xe003, None, Some(P7), Some(P2), Some(&UIMM_LS), true, [], Rs2Mem, Some((Opcode::F(Float::Fsw), X(0), Rs1, Rs2))),
        // ---- 象限 1 ----
        row!("c.nop", 0x0001, 0xef83, None, None, None, Some(&IMM6), false, [ImmZero], None, Some((Opcode::I(IOp::Addi), X(0), X(0), X(0)))),
        row!("c.nop", 0x0001, 0xef83, None, None, None, Some(&IMM6), false, [ImmNz], Imm, None),
        row!("c.addi", 0x0001, 0xe003, Some(Hi), None, None, Some(&IMM6), false, [RdNz, ImmNz], RdImm, Some((Opcode::I(IOp::Addi), Rd, Rd, X(0)))),
        row!("c.addi", 0x0001, 0xe003, Some(Hi), None, None, Some(&IMM6), false, [RdNz, ImmZero], RdImm, None),
        row!("c.jal", 0x2001, 0xe003, None, None, None, Some(&JUMP), false, [], Target, Some((Opcode::I(IOp::Jal), X(1), X(0), X(0)))),
        row!("c.li", 0x4001, 0xe003, Some(Hi), None, None, Some(&IMM6), false, [RdNz], RdImm, Some((Opcode::I(IOp::Addi), Rd, X(0), X(0)))),
        row!("c.li", 0x4001, 0xe003, Some(Hi), None, None, Some(&IMM6), false, [RdZero], RdImm, None),
        row!("c.addi16sp", 0x6101, 0xef83, None, None, None, Some(&SP16), false, [ImmNz], SpImm, Some((Opcode::I(IOp::Addi), X(2), X(2), X(0)))),
        row!("c.lui", 0x6001, 0xe003, Some(Hi), None, None, Some(&IMM6), false, [RdNz2, ImmNz], RdImm, Some((Opcode::I(IOp::Lui), Rd, X(0), X(0)))),
        row!("c.lui", 0x6001, 0xe003, Some(Hi), None, None, Some(&IMM6), false, [RdZero, ImmNz], RdImm, None),
        row!("c.srli", 0x8001, 0xec03, Some(P7), None, None, Some(&SHAMT), false, [Sh5, ImmNz], RdImm, Some((Opcode::I(IOp::Srli), Rd, Rd, X(0)))),
        row!("c.srli", 0x8001, 0xec03, Some(P7), None, None, Some(&SHAMT), false, [ImmZero], RdImm, None),
        row!("c.srai", 0x8401, 0xec03, Some(P7), None, None, Some(&SHAMT), false, [Sh5, ImmNz], RdImm, Some((Opcode::I(IOp::Srai), Rd, Rd, X(0)))),
        row!("c.srai", 0x8401, 0xec03, Some(P7), None, None, Some(&SHAMT), false, [ImmZero], RdImm, None),
        row!("c.andi", 0x8801, 0xec03, Some(P7), None, None, Some(&IMM6), false, [], RdImm, Some((Opcode::I(IOp::Andi), Rd, Rd, X(0)))),
        row!("c.sub", 0x8c01, 0xfc63, Some(P7), None, Some(P2), None, false, [], RdRs2, Some((Opcode::I(IOp::Sub), Rd, Rd, Rs2))),
        row!("c.xor", 0x8c21, 0xfc63, Some(P7), None, Some(P2), None, false, [], RdRs2, Some((Opcode::I(IOp::Xor), Rd, Rd, Rs2))),
        row!("c.or", 0x8c41, 0xfc63, Some(P7), None, Some(P2), None, false, [], RdRs2, Some((Opcode::I(IOp::Or), Rd, Rd, Rs2))),
        row!("c.and", 0x8c61, 0xfc63, Some(P7), None, Some(P2), None, false, [], RdRs2, Some((Opcode::I(IOp::And), Rd, Rd, Rs2))),
        row!("c.j", 0xa001, 0xe003, None, None, None, Some(&JUMP), false, [], Target, Some((Opcode::I(IOp::Jal), X(0), X(0), X(0)))),
        row!("c.beqz", 0xc001, 0xe003, None, Some(P7), None, Some(&BRANCH), false, [], Rs1Target, Some((Opcode::I(IOp::Beq), X(0), Rs1, X(0)))),
        row!("c.bnez", 0xe001, 0xe003, None, Some(P7), None, Some(&BRANCH), false, [], Rs1Target, Some((Opcode::I(IOp::Bne), X(0), Rs1, X(0)))),
        // ---- 象限 2 ----
        row!("c.slli", 0x0002, 0xe003, Some(Hi), None, None, Some(&SHAMT), false, [RdNz, Sh5, ImmNz], RdImm, Some((Opcode::I(IOp::Slli), Rd, Rd, X(0)))),
        row!("c.slli", 0x0002, 0xe003, Some(Hi), None, None, Some(&SHAMT), false, [Sh5], RdImm, None),
        row!("c.lwsp", 0x4002, 0xe003, Some(Hi), None, None, Some(&LWSP), false, [RdNz], RdMem, Some((Opcode::I(IOp::Lw), Rd, X(2), X(0)))),
        row!("c.flwsp", 0x6002, 0xe003, Some(Hi), None, None, Some(&LWSP), true, [], RdMem, Some((Opcode::F(Float::Flw), Rd, X(2), X(0)))),
        row!("c.jr", 0x8002, 0xf07f, None, Some(Hi), None, None, false, [Rs1Nz], Rs1, Some((Opcode::I(IOp::Jalr), X(0), Rs1, X(0)))),
        row!("c.mv", 0x8002, 0xf003, Some(Hi), None, Some(Lo), None, false, [RdNz, Rs2Nz], RdRs2, Some((Opcode::I(IOp::Addi), Rd, Rs2, X(0)))),
        row!("c.mv", 0x8002, 0xf003, Some(Hi), None, Some(Lo), None, false, [RdZero, Rs2Nz], RdRs2, None),
        row!("c.ebreak", 0x9002, 0xffff, None, None, None, None, false, [], None, Some((Opcode::I(IOp::Ebreak), X(0), X(0), X(0)))),
        row!("c.jalr", 0x9002, 0xf07f, None, Some(Hi), None, None, false, [Rs1Nz], Rs1, Some((Opcode::I(IOp::Jalr), X(1), Rs1, X(0)))),
        row!("c.add", 0x9002, 0xf003, Some(Hi), None, Some(Lo), None, false, [RdNz, Rs2Nz], RdRs2, Some((Opcode::I(IOp::Add), Rd, Rd, Rs2))),
        row!("c.add", 0x9002, 0xf003, Some(Hi), None, Some(Lo), None, false, [RdZero, Rs2Nz], RdRs2, None),
        row!("c.swsp", 0xc002, 0xe003, None, None, Some(Lo), Some(&SWSP), false, [], Rs2Mem, Some((Opcode::I(IOp::Sw), X(0), X(2), Rs2))),
        row!("c.fswsp", 0xe002, 0xe003, None, None, Some(Lo), Some(&SWSP), true, [], Rs2Mem, Some((Opcode::F(Float::Fsw), X(0), X(2), Rs2))),
        // ---- 只在汇编方向：hint 的另一种写法 ----
        row!("c.addi", 0x0001, 0xe003, Some(Hi), None, None, Some(&IMM6), false, [RdZero], RdImm, None),
        row!("c.slli64", 0x0002, 0xf07f, Some(Hi), None, None, None, false, [], Rd, None),
        row!("c.srli64", 0x8001, 0xfc7f, Some(P7), None, None, None, false, [], Rd, None),
        row!("c.srai64", 0x8401, 0xfc7f, Some(P7), None, None, None, false, [], Rd, None),
];

/// 压缩方向的一个 32 位操作数对到哪：压缩指令的字段（rd / rs1 / rs2 槽，0 / 1 / 2）、必须是某个固定寄存器，
/// 或这个 32 位格式里没有它（译码时那几位是立即数，⛔ 当寄存器比）。
#[derive(Clone, Copy)]
enum Bind {
    F(u8),
    X(u8),
    None,
}

/// 压缩方向的一条（同 LLVM 的 CompressPat）：32 位的操作码，rd / rs1 / rs2 各对到哪；`zero_imm` ⇒ 立即数必须是 0。
struct Pat {
    c: &'static str,
    op: Opcode,
    rd: Bind,
    rs1: Bind,
    rs2: Bind,
    zero_imm: bool,
}

/// `pat!(压缩指令, 32 位操作码, rd, rs1, rs2[, 立即数为 0])`：寄存器写槽位 `rd` / `rs1` / `rs2`、固定寄存器号，
/// 或 `_`（这个格式没有这个寄存器）。
macro_rules! pat {
    (@b rd) => { Bind::F(0) };
    (@b rs1) => { Bind::F(1) };
    (@b rs2) => { Bind::F(2) };
    (@b $n:literal) => { Bind::X($n) };
    (@b _) => { Bind::None };
    ($c:literal, $op:expr, $rd:tt, $rs1:tt, $rs2:tt) => {
        Pat { c: $c, op: $op, rd: pat!(@b $rd), rs1: pat!(@b $rs1), rs2: pat!(@b $rs2), zero_imm: false }
    };
    ($c:literal, $op:expr, $rd:tt, $rs1:tt, $rs2:tt, zero) => {
        Pat { c: $c, op: $op, rd: pat!(@b $rd), rs1: pat!(@b $rs1), rs2: pat!(@b $rs2), zero_imm: true }
    };
}

/// Zcd（RV32：C 与 D 都挂上时）的四行。
const ROWS_D: [Row; 4] = [
    row!("c.fld", 0x2000, 0xe003, Some(P2), Some(P7), None, Some(&UIMM_LD), true, [], RdMem, Some((Opcode::D(Double::Fld), Rd, Rs1, X(0)))),
    row!("c.fsd", 0xa000, 0xe003, None, Some(P7), Some(P2), Some(&UIMM_LD), true, [], Rs2Mem, Some((Opcode::D(Double::Fsd), X(0), Rs1, Rs2))),
    row!("c.fldsp", 0x2002, 0xe003, Some(Hi), None, None, Some(&LDSP), true, [], RdMem, Some((Opcode::D(Double::Fld), Rd, X(2), X(0)))),
    row!("c.fsdsp", 0xa002, 0xe003, None, None, Some(Lo), Some(&SDSP), true, [], Rs2Mem, Some((Opcode::D(Double::Fsd), X(0), X(2), Rs2))),
];

/// ⭐ 压缩方向（同 LLVM RISCVInstrInfoC.td 的 CompressPat，⚠ 次序即优先级：c.lw 先于 c.lwsp、c.addi 先于 c.addi16sp …）。
/// 一个 32 位形式有几种写法的（`add rd, x0, rs` / `add rd, rs, x0` / `addi rd, rs, 0` 都是 c.mv；可交换的两种次序）各占一行。
const PATS: [Pat; 39] = [
    pat!("c.addi4spn", Opcode::I(IOp::Addi), rd, 2, _),
    pat!("c.lw", Opcode::I(IOp::Lw), rd, rs1, _),
    pat!("c.flw", Opcode::F(Float::Flw), rd, rs1, _),
    pat!("c.sw", Opcode::I(IOp::Sw), _, rs1, rs2),
    pat!("c.fsw", Opcode::F(Float::Fsw), _, rs1, rs2),
    pat!("c.nop", Opcode::I(IOp::Addi), 0, 0, _),
    pat!("c.addi", Opcode::I(IOp::Addi), rd, rd, _),
    pat!("c.jal", Opcode::I(IOp::Jal), 1, _, _),
    pat!("c.li", Opcode::I(IOp::Addi), rd, 0, _),
    pat!("c.addi16sp", Opcode::I(IOp::Addi), 2, 2, _),
    pat!("c.lui", Opcode::I(IOp::Lui), rd, _, _),
    pat!("c.srli", Opcode::I(IOp::Srli), rd, rd, _),
    pat!("c.srai", Opcode::I(IOp::Srai), rd, rd, _),
    pat!("c.andi", Opcode::I(IOp::Andi), rd, rd, _),
    pat!("c.sub", Opcode::I(IOp::Sub), rd, rd, rs2),
    pat!("c.xor", Opcode::I(IOp::Xor), rd, rd, rs2),
    pat!("c.xor", Opcode::I(IOp::Xor), rd, rs2, rd),
    pat!("c.or", Opcode::I(IOp::Or), rd, rd, rs2),
    pat!("c.or", Opcode::I(IOp::Or), rd, rs2, rd),
    pat!("c.and", Opcode::I(IOp::And), rd, rd, rs2),
    pat!("c.and", Opcode::I(IOp::And), rd, rs2, rd),
    pat!("c.j", Opcode::I(IOp::Jal), 0, _, _),
    pat!("c.beqz", Opcode::I(IOp::Beq), _, rs1, 0),
    pat!("c.bnez", Opcode::I(IOp::Bne), _, rs1, 0),
    pat!("c.slli", Opcode::I(IOp::Slli), rd, rd, _),
    pat!("c.lwsp", Opcode::I(IOp::Lw), rd, 2, _),
    pat!("c.flwsp", Opcode::F(Float::Flw), rd, 2, _),
    pat!("c.jr", Opcode::I(IOp::Jalr), 0, rs1, _, zero),
    pat!("c.mv", Opcode::I(IOp::Add), rd, 0, rs2),
    pat!("c.mv", Opcode::I(IOp::Add), rd, rs2, 0),
    pat!("c.mv", Opcode::I(IOp::Addi), rd, rs2, _, zero),
    pat!("c.ebreak", Opcode::I(IOp::Ebreak), _, _, _),
    pat!("c.jalr", Opcode::I(IOp::Jalr), 1, rs1, _, zero),
    pat!("c.add", Opcode::I(IOp::Add), rd, rd, rs2),
    pat!("c.add", Opcode::I(IOp::Add), rd, rs2, rd),
    pat!("c.swsp", Opcode::I(IOp::Sw), _, 2, rs2),
    pat!("c.fswsp", Opcode::F(Float::Fsw), _, 2, rs2),
    pat!("c.beqz", Opcode::I(IOp::Beq), _, 0, rs1),
    pat!("c.bnez", Opcode::I(IOp::Bne), _, 0, rs1),
];

/// Zcd 的压缩方向（同 LLVM：c.fld 先于 c.fldsp）。
const PATS_D: [Pat; 4] = [
    pat!("c.fld", Opcode::D(Double::Fld), rd, rs1, _),
    pat!("c.fsd", Opcode::D(Double::Fsd), _, rs1, rs2),
    pat!("c.fldsp", Opcode::D(Double::Fld), rd, 2, _),
    pat!("c.fsdsp", Opcode::D(Double::Fsd), _, 2, rs2),
];

/// 一条译好的压缩指令。
struct CInst {
    row: usize,
    rd: u8,
    rs1: u8,
    rs2: u8,
    imm: i32,
}

impl CInst {
    /// 约束成立。
    fn ok(&self, need: &[Need]) -> bool {
        need.iter().all(|n| match n {
            Need::RdZero => self.rd == 0,
            Need::RdNz => self.rd != 0,
            Need::RdNz2 => self.rd != 0 && self.rd != 2,
            Need::Rs1Nz => self.rs1 != 0,
            Need::Rs2Nz => self.rs2 != 0,
            Need::ImmZero => self.imm == 0,
            Need::ImmNz => self.imm != 0,
            Need::Sh5 => self.imm & 32 == 0,
        })
    }

    /// 还原成 32 位（hint、c.unimp ⇒ `None`）。
    fn wide(&self, rows: &[Row]) -> Option<Inst> {
        let (op, rd, rs1, rs2) = rows[self.row].wide?;
        let pick = |s: Src| match s {
            Src::Rd => self.rd,
            Src::Rs1 => self.rs1,
            Src::Rs2 => self.rs2,
            Src::X(r) => r,
        };
        // `lui` 的立即数是 20 位的值
        let imm = if op == Opcode::I(IOp::Lui) { self.imm & 0xf_ffff } else { self.imm };
        Some(Inst::new(op).x(pick(rd), pick(rs1), pick(rs2)).with_imm(imm))
    }
}

/// ⭐ C 扩展（模块常量 [`crate::feature::builtin::C`]；挂不挂看 [`crate::feature::Target`]）。
#[derive(Clone, Copy, Debug, Default)]
pub struct Compressed;

impl Compressed {
    fn half(bytes: &[u8]) -> u16 {
        u16::from_le_bytes([bytes[0], bytes.get(1).copied().unwrap_or(0)])
    }

    /// 16 位 ⇒ 表里的一行与字段。
    fn decode16(rows: &[Row], h: u16) -> Option<CInst> {
        if h & 3 == 3 {
            return None;
        }
        rows.iter().enumerate().find_map(|(k, r)| {
            if h & r.mask != r.bits {
                return None;
            }
            let c = CInst { row: k, rd: r.rd.map_or(0, |f| f.get(h)), rs1: r.rs1.map_or(0, |f| f.get(h)), rs2: r.rs2.map_or(0, |f| f.get(h)), imm: r.imm.map_or(0, |i| i.get(h)) };
            c.ok(r.need).then_some(c)
        })
    }

    /// 打印 no-aliases 形式（`c.*`）。
    fn print_c(rows: &[Row], c: &CInst, pc: u64, s: Style) -> String {
        let r = &rows[c.row];
        let reg = |n: u8, fp: bool| if fp { s.f(n) } else { s.x(n) };
        let sp = s.x(2);
        // `c.lui` 的立即数印成 20 位的值
        let imm = if r.name == "c.lui" { s.imm(c.imm & 0xf_ffff) } else { s.imm(c.imm) };
        let ops = match r.form {
            Form::None => String::new(),
            Form::Imm => imm,
            Form::RdImm => format!("{}, {imm}", reg(c.rd, false)),
            Form::SpImm => format!("{sp}, {imm}"),
            Form::RdSpImm => format!("{}, {sp}, {imm}", reg(c.rd, false)),
            Form::RdMem => format!("{}, {imm}({})", reg(c.rd, r.fp), if r.rs1.is_some() { reg(c.rs1, false) } else { sp }),
            Form::Rs2Mem => format!("{}, {imm}({})", reg(c.rs2, r.fp), if r.rs1.is_some() { reg(c.rs1, false) } else { sp }),
            Form::RdRs2 => format!("{}, {}", reg(c.rd, false), reg(c.rs2, false)),
            Form::Rs1 => reg(c.rs1, false),
            Form::Rd => reg(c.rd, false),
            Form::Target => s.target(pc, c.imm),
            Form::Rs1Target => format!("{}, {}", reg(c.rs1, false), s.target(pc, c.imm)),
        };
        if ops.is_empty() { String::from(r.name) } else { format!("{}\t{ops}", r.name) }
    }

    /// 字段按第 `k` 行编成 16 位：约束不成立、寄存器 / 立即数放不进 ⇒ `None`。
    fn pack(rows: &[Row], k: usize, c: &CInst) -> Option<u16> {
        let r = &rows[k];
        if !c.ok(r.need) {
            return None;
        }
        let put = |f: Option<Reg>, v: u8| f.map_or(Some(0), |f| f.put(v));
        // `c.lui` 的立即数写的是 20 位的值
        let imm = if r.name == "c.lui" && c.imm >= 0x8_0000 { c.imm - 0x10_0000 } else { c.imm };
        Some(r.bits | put(r.rd, c.rd)? | put(r.rs1, c.rs1)? | put(r.rs2, c.rs2)? | r.imm.map_or(Some(0), |i| i.put(imm))?)
    }

    /// `c.*` 的操作数 ⇒ 16 位：按名字找所有同名的行，第一条编得下、约束成立的。
    fn encode(rows: &[Row], mnemonic: &str, ops: &[Operand]) -> Result<u16, String> {
        let mut seen = false;
        for (k, r) in rows.iter().enumerate().filter(|(_, r)| r.name == mnemonic) {
            seen = true;
            if let Some(h) = Self::fields(r, ops).and_then(|c| Self::pack(rows, k, &c)) {
                return Ok(h);
            }
        }
        Err(if seen { format!("`{mnemonic}` 的操作数放不进压缩格式") } else { format!("不认识的指令 `{mnemonic}`") })
    }

    /// `c.beqz` / `c.bnez` 的偏移散布成的位（放不进 ±256 B 的 9 位偶数 ⇒ `None`）：汇编器修补点用。
    #[must_use]
    pub fn branch_bits(off: i64) -> Option<u16> {
        BRANCH.put(i32::try_from(off).ok()?)
    }

    /// `c.j` / `c.jal` 的偏移散布成的位（放不进 ±2 KiB 的 12 位偶数 ⇒ `None`）。
    #[must_use]
    pub fn jump_bits(off: i64) -> Option<u16> {
        JUMP.put(i32::try_from(off).ok()?)
    }

    /// ⭐ 一条 32 位指令能不能压成 16 位（同 LLVM 的 `compressInst`，按 [`PATS`] 的次序）：能 ⇒ 16 位。
    #[must_use]
    pub fn compress(w: u32) -> Option<u16> {
        // `unimp`（csrrw zero, cycle, zero）⇒ c.unimp
        if w == 0xc000_1073 {
            return Some(0);
        }
        // 压缩表只涉及 RV32I、F 与 D（`fld` / `fsd` 只在挂了 D 时汇编得出来 ⇒ 这里不必再问目标）：分表译，⛔ 走整个操作码并集
        let i = Inst::<IOp>::try_from(w)
            .map(|i| i.with_op(Opcode::I(i.op)))
            .or_else(|()| Inst::<Float>::try_from(w).map(|i| i.with_op(Opcode::F(i.op))))
            .or_else(|()| Inst::<Double>::try_from(w).map(|i| i.with_op(Opcode::D(i.op))))
            .ok()?;
        let (pats, rows): (&[Pat], &[Row]) = if matches!(i.op, Opcode::D(_)) { (&PATS_D, &ROWS_D) } else { (&PATS, &ROWS) };
        pats.iter().filter(|p| p.op == i.op).find_map(|p| {
            let mut c = CInst { row: 0, rd: 0, rs1: 0, rs2: 0, imm: i.imm };
            let mut set = [None::<u8>; 3];
            for (b, v) in [(p.rd, i.rd), (p.rs1, i.rs1), (p.rs2, i.rs2)] {
                match b {
                    Bind::X(r) if r != v => return None,
                    Bind::X(_) | Bind::None => {}
                    Bind::F(slot) => match set[slot as usize] {
                        Some(old) if old != v => return None,
                        _ => set[slot as usize] = Some(v),
                    },
                }
            }
            if p.zero_imm && i.imm != 0 {
                return None;
            }
            (c.rd, c.rs1, c.rs2) = (set[0].unwrap_or(0), set[1].unwrap_or(0), set[2].unwrap_or(0));
            if i.op == Opcode::I(IOp::Lui) {
                c.imm = i.imm & 0xf_ffff;
            }
            let k = rows.iter().position(|r| r.name == p.c && r.wide.is_some())?;
            Self::pack(rows, k, &c)
        })
    }

    /// 汇编操作数 ⇒ 字段（形式对不上 ⇒ `None`）。
    fn fields(r: &Row, ops: &[Operand]) -> Option<CInst> {
        let x = |o: &Operand| if let Operand::X(n) = o { Some(*n) } else { None };
        let g = |o: &Operand, fp: bool| match o {
            Operand::X(n) if !fp => Some(*n),
            Operand::F(n) if fp => Some(*n),
            _ => None,
        };
        // 32 位无符号写法当有符号（`c.addi a1, 0xffffffff` = −1，同 llvm-mc）
        let k = |o: &Operand| if let Operand::Imm(v) = o { i32::try_from(if (0x8000_0000..=0xffff_ffff).contains(v) { v - (1 << 32) } else { *v }).ok() } else { None };
        let mem = |o: &Operand| if let Operand::Mem(crate::asm::Expr::Num(v), b) = o { Some((i32::try_from(*v).ok()?, *b)) } else { None };
        let z = CInst { row: 0, rd: 0, rs1: 0, rs2: 0, imm: 0 };
        Some(match (r.form, ops) {
            (Form::None, []) => z,
            (Form::Imm, [i]) => CInst { imm: k(i)?, ..z },
            (Form::RdImm, [d, i]) => CInst { rd: x(d)?, imm: k(i)?, ..z },
            (Form::SpImm, [s, i]) if x(s)? == 2 => CInst { imm: k(i)?, ..z },
            (Form::RdSpImm, [d, s, i]) if x(s)? == 2 => CInst { rd: x(d)?, imm: k(i)?, ..z },
            (Form::RdMem, [d, m]) => {
                let (imm, b) = mem(m)?;
                if r.rs1.is_none() && b != 2 {
                    return None;
                }
                CInst { rd: g(d, r.fp)?, rs1: b, imm, ..z }
            }
            (Form::Rs2Mem, [v, m]) => {
                let (imm, b) = mem(m)?;
                if r.rs1.is_none() && b != 2 {
                    return None;
                }
                CInst { rs2: g(v, r.fp)?, rs1: b, imm, ..z }
            }
            (Form::RdRs2, [d, v]) => CInst { rd: x(d)?, rs2: x(v)?, ..z },
            (Form::Rs1, [a]) => CInst { rs1: x(a)?, ..z },
            (Form::Rd, [d]) => CInst { rd: x(d)?, ..z },
            (Form::Target, [t]) => CInst { imm: k(t)?, ..z },
            (Form::Rs1Target, [a, t]) => CInst { rs1: x(a)?, imm: k(t)?, ..z },
            _ => return None,
        })
    }
}

/// ⭐ Zcd（模块常量 [`crate::feature::builtin::ZCD`]）：C 与 D 都挂上时由 [`crate::feature::Target::with`] 带上。
#[derive(Clone, Copy, Debug, Default)]
pub struct CompressedD;

/// 一个压缩模块的三面（反汇编、汇编、执行）：`模块, 名字, 表`。
macro_rules! compressed {
    ($($ty:ident $name:literal $rows:ident),*) => {$(
        impl Disassemble for $ty {
            fn decode(&self, bytes: &[u8; 8]) -> Option<usize> {
                Compressed::decode16(&$rows, Compressed::half(bytes)).map(|_| 2)
            }

            fn print(&self, bytes: &[u8], pc: u64, style: Style) -> String {
                let Some(c) = Compressed::decode16(&$rows, Compressed::half(bytes)) else { return String::from("<unknown>") };
                if !style.no_aliases {
                    if $rows[c.row].name == "c.unimp" {
                        return String::from("unimp");
                    }
                    if let Some(i) = c.wide(&$rows) {
                        return i.print(pc, style);
                    }
                }
                Compressed::print_c(&$rows, &c, pc, style)
            }
        }

        impl Assemble for $ty {
            fn assemble(&self, mnemonic: &str, args: &Args<'_>) -> Option<Result<Emit, String>> {
                if !mnemonic.starts_with("c.") {
                    return None;
                }
                $rows.iter().any(|r| r.name == mnemonic).then(|| Compressed::encode(&$rows, mnemonic, args.ops).map(|h| Emit::Bytes(h.to_le_bytes().to_vec())))
            }
        }

        impl Module for $ty {
            fn name(&self) -> &str {
                $name
            }

            fn execute(&mut self, cx: &mut Exec<'_, '_>, bytes: &[u8]) -> Result<(), Stop> {
                let h = Compressed::half(bytes);
                let c = Compressed::decode16(&$rows, h).ok_or(Stop::Trap(u32::from(h)))?;
                match (c.wide(&$rows), $rows[c.row].name) {
                    (Some(i), _) => cx.word(u32::from(i), 2),
                    (None, "c.unimp") => Err(Stop::Trap(u32::from(h))),
                    // hint：什么都不做
                    (None, _) => Ok(()),
                }
            }
        }
    )*};
}

compressed!(Compressed "c" ROWS, CompressedD "zcd" ROWS_D);
