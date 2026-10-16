//! 分支折叠（同 LLVM BranchFolding 里不挪块的那几条）：
//!
//! * 空块（没有指令、只有 `j`）穿过去：跳到它的直接跳到它的目标；
//! * 两边同一个目标的条件跳转 ⇒ 无条件跳转；
//! * 从入口走不到的块删出布局。
//!
//! 寄存器分配要求没有关键边，切出来的中转块分配之后大多是空的：这一步把它们收掉。
use super::{PFunc, Term};

impl PFunc {
    /// 顺着空块一路走到第一个非空的（成环的空块停在原地）。
    fn through(&self, b: usize) -> usize {
        let mut at = b;
        for _ in 0..self.blocks.len() {
            let blk = &self.blocks[at];
            if blk.insts.is_empty()
                && let Term::Jump(n) = blk.term
            {
                at = n;
            } else {
                return at;
            }
        }
        b
    }

    pub(super) fn fold_branches(&mut self) {
        let to: Vec<usize> = (0..self.blocks.len()).map(|b| self.through(b)).collect();
        for blk in &mut self.blocks {
            blk.term.retarget(|b| to[b]);
            if let Term::Branch { t, f, .. } = blk.term
                && t == f
            {
                blk.term = Term::Jump(t);
            }
        }
        // 入口出发走得到的
        let mut live = vec![false; self.blocks.len()];
        let mut stack = vec![self.layout[0]];
        while let Some(b) = stack.pop() {
            if !std::mem::replace(&mut live[b], true) {
                stack.extend(self.blocks[b].term.targets());
            }
        }
        self.layout.retain(|&b| live[b]);
    }
}
