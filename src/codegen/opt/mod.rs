//! 机器 IR 上的 pass（寄存器分配之前，SSA：每个虚拟寄存器只定义一次，定义支配全部使用）。
//!
//! ```text
//! dom       支配树（分析）
//! fold      化简：已知常数下一条指令等于什么（常量折叠、恒等式、换立即数形式、乘 2 的幂 ⇒ 移位、addi 链）
//! cse       沿支配树走一遍：先化简、再找同样的纯指令（同 LLVM 的 EarlyCSE）
//! dce       删没人用的纯指令
//! tail      尾调用：`call f; ret` ⇒ `tail f`
//! ```
//!
//! ⭐ 被化简掉 / 被顶替的指令 ⛔ 不当场删：它定义的寄存器记进改名表（[`Rename`]），使用处换成顶替者，
//! 定义没人用了再由 dce 收掉。⚠ 顶替者是物理寄存器（`zero`）时，带固定约束的使用（调用实参、返回值）与
//! 块实参换不了（它们要虚拟寄存器），那几处留着原来的定义。
mod cse;
mod dce;
mod dom;
mod fold;
mod tail;

use super::isel::Selected;
use super::mir::{Base, MBlock, MInst, MOp, R};
use dom::DomTree;
use fold::Known;
use crate::regalloc::VReg;
use std::collections::HashMap;

/// 化简到不再变，最多走这么多遍（一遍通常就够：定义先于使用）。
const ROUNDS: usize = 4;

/// 改名表：被顶替的定义 ⇒ 顶替它的寄存器。
#[derive(Default)]
struct Rename(HashMap<VReg, R>);

impl Rename {
    fn insert(&mut self, from: VReg, to: R) {
        self.0.insert(from, to);
    }

    fn contains(&self, v: VReg) -> bool {
        self.0.contains_key(&v)
    }

    /// 顺着改名链走到底；`virtual_only` ⇒ 停在最后一个虚拟寄存器上（固定约束与块实参只收虚拟的）。
    fn resolve(&self, r: R, virtual_only: bool) -> R {
        let mut r = r;
        while let R::V(v) = r
            && let Some(&next) = self.0.get(&v)
            && (!virtual_only || matches!(next, R::V(_)))
        {
            r = next;
        }
        r
    }

    /// 一条指令的使用处换成顶替者（寄存器基址跟着最后一个使用走）。
    fn apply(&self, i: &mut MInst) {
        for j in 0..i.uses.len() {
            i.uses[j] = self.resolve(i.uses[j], i.pinned(j));
        }
        if let MOp::Load(_, Base::Reg(r), _) | MOp::Store(_, Base::Reg(r), _) = &mut i.op
            && let Some(&last) = i.uses.last()
        {
            *r = last;
        }
    }

    /// 块的跳转实参换成顶替者。
    fn apply_args(&self, b: &mut MBlock) {
        for v in b.args.iter_mut().flatten() {
            if let R::V(n) = self.resolve(R::V(*v), true) {
                *v = n;
            }
        }
    }
}

/// 一个函数的 pass 流水线。
struct Pipeline<'s> {
    blocks: &'s mut [MBlock],
    vregs: usize,
    rename: Rename,
    known: Known,
}

impl Selected {
    /// ⭐ 指令选择之后、寄存器分配之前的全部 pass。
    pub fn optimize(&mut self) {
        let mut p = Pipeline { blocks: &mut self.blocks, vregs: self.vregs, rename: Rename::default(), known: Known::default() };
        for _ in 0..ROUNDS {
            if !p.cse(&DomTree::from(&*p.blocks)) {
                break;
            }
        }
        p.dce();
        self.tail_calls();
    }
}
