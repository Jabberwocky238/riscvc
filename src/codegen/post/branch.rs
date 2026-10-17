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
        // 表项和后继一起穿过去，⛔ 留下指向已删块的 `.word`
        for t in &mut self.tables {
            for b in t.iter_mut() {
                *b = to[*b];
            }
        }
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

    /// 块布局：贪心串链，让尽量多的跳转落成「下一块」从而不出代码（同 LLVM MachineBlockPlacement
    /// 里不含分支概率的那一半）。
    ///
    /// ⭐ 布局**只是发射顺序**：终结符在 [`Term`] 里是显式的，`print` 会把跳到下一块的 `j` 省掉、
    /// 真分支落在下一块时把条件反过来。所以重排顺序不改变语义，⛔ 但必须保证每个活块恰好出现一次。
    ///
    /// 走法：从入口起跟着后继往下串；条件跳转优先跟**假边**（省掉反转），跟不动就换一个还没放的块起新链。
    pub(super) fn place(&mut self) {
        let n = self.blocks.len();
        let mut placed = vec![true; n];
        for &b in &self.layout {
            placed[b] = false;
        }
        let order = core::mem::take(&mut self.layout);
        let mut out = Vec::with_capacity(order.len());
        for &seed in &order {
            if placed[seed] {
                continue;
            }
            let mut at = seed;
            loop {
                placed[at] = true;
                out.push(at);
                // 下一块：条件跳转先试假边再试真边；无条件跳转就试目标
                let next = match self.blocks[at].term {
                    Term::Branch { t, f, .. } => [f, t].into_iter().find(|&b| !placed[b]),
                    Term::Jump(t) => (!placed[t]).then_some(t),
                    _ => None,
                };
                match next {
                    Some(b) => at = b,
                    None => break,
                }
            }
        }
        debug_assert_eq!(out.len(), order.len(), "布局丢了块");
        self.layout = out;
    }
}
