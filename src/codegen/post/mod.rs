//! 寄存器分配之后：物理寄存器的机器函数（[`PFunc`]）与它上面的 pass，最后落成汇编文本。
//!
//! ```text
//! frame    栈帧布局（溢出槽、被调方保存寄存器、帧指针）
//! lower    机器 IR + 分配结果 ⇒ PFunc（序言 / 尾声、regalloc2 的搬运、select 切成块）
//! branch   分支折叠：穿过空块、两边同目标的条件跳转变无条件、删走不到的块
//! relax    分支松弛：按真实字节数算距离，够不着 ±4 KiB 的条件跳转改长形式（同 LLVM 的 BranchRelaxation）
//! print    ⇒ 汇编文本（落到布局里下一块的跳转不出；真分支落在下一块就反过来跳）
//! ```
mod branch;
mod frame;
mod lower;
mod print;
mod relax;

use super::isel::Selected;
use super::mir::MFunc;
use crate::isa::{Inst, Rv32i as IOp};
use regalloc2::Output;

/// 一条指令（物理寄存器，立即数已定）。
#[derive(Clone, Debug)]
pub enum PInst {
    /// 真指令：按 isa 的格式打印（别名同 llvm-objdump：`mv`、`li`、`neg` …）。
    I(Inst),
    /// `li rd, k`（汇编器展开成一到两条）
    Li(u8, i32),
    /// `lla rd, 符号 + 偏移`（两条）
    La(u8, String, i64),
    /// `call 符号`（两条）
    Call(String),
    /// `unimp`
    Trap,
}

/// 块的结尾。
#[derive(Clone, Debug)]
pub enum Term {
    Jump(usize),
    /// `op a, b` 成立去 `t`，否则去 `f`。`long` ⇒ 够不着，出「反向分支跳过 + `j`」（relax 定）。
    Branch { op: IOp, a: u8, b: u8, t: usize, f: usize, long: bool },
    /// 尾声已在块里，只差 `ret`。
    Ret,
    /// 尾声已在块里，`tail 符号`。
    Tail(String),
    /// 不出代码。
    Unreachable,
    /// 跳转表：`jr` 已经是块里的最后一条普通指令，这里只声明后继，⛔ 不出代码。
    Indirect(Vec<usize>),
}

impl Term {
    /// 跳去的块（条件跳转先真后假）。
    fn targets(&self) -> Vec<usize> {
        match *self {
            Self::Jump(b) => vec![b],
            Self::Branch { t, f, .. } => vec![t, f],
            Self::Indirect(ref t) => t.clone(),
            Self::Ret | Self::Tail(_) | Self::Unreachable => Vec::new(),
        }
    }

    /// 跳去的块换成 `to(块)`。
    fn retarget(&mut self, to: impl Fn(usize) -> usize) {
        match self {
            Self::Jump(b) => *b = to(*b),
            Self::Branch { t, f, .. } => (*t, *f) = (to(*t), to(*f)),
            Self::Indirect(ts) => ts.iter_mut().for_each(|b| *b = to(*b)),
            Self::Ret | Self::Tail(_) | Self::Unreachable => {}
        }
    }
}

#[derive(Clone, Debug)]
pub struct PBlock {
    pub insts: Vec<PInst>,
    pub term: Term,
}

/// 一个函数。块号 0..n 是机器 IR 的块，之后是 lower 新切的（select）。
pub struct PFunc {
    /// 函数在模块里的序号（块标号用）。
    pub id: usize,
    pub blocks: Vec<PBlock>,
    /// 出代码的次序（第一个是入口）。
    pub layout: Vec<usize>,
    /// 跳转表：第 n 张表是 `.LJTI{id}_{n}`，逐项一个块号（印在函数体之后的 `.rodata`）。
    pub tables: Vec<Vec<usize>>,
}

impl PFunc {
    /// ⭐ 一个函数：分配结果 ⇒ PFunc ⇒ 分支折叠 ⇒ 分支松弛（之后用 `to_string` 出汇编）。
    #[must_use]
    pub fn new(sel: &Selected, mf: &MFunc, out: &Output, id: usize) -> Self {
        let mut f = lower::Lower::new(sel, mf, out, id).run();
        f.fold_branches();
        f.relax();
        f
    }

    /// 布局里 `k` 之后的块。
    fn next(&self, k: usize) -> Option<usize> {
        self.layout.get(k + 1).copied()
    }
}
