//! 分支松弛（同 LLVM 的 BranchRelaxation）：按真实字节数算各块的位置，够不着 ±4 KiB 的条件跳转改长形式
//! （「反向分支跳过 + `j`」，`j` 够 ±1 MiB）。改长会推远后面的块 ⇒ 重算到不再变（只会变长，必收敛）。
use super::{PFunc, Term};

/// B 型偏移的范围。
const REACH: core::ops::Range<i64> = -4096..4096;

impl PFunc {
    pub(super) fn relax(&mut self) {
        loop {
            // 布局里各块的起点
            let mut start = vec![0i64; self.blocks.len()];
            let mut at = 0i64;
            for (k, &b) in self.layout.iter().enumerate() {
                start[b] = at;
                at += i64::from(self.blocks[b].insts.iter().map(super::PInst::size).sum::<u32>() + self.tail(k).size());
            }
            let mut far = Vec::new();
            for (k, &b) in self.layout.iter().enumerate() {
                let tail = self.tail(k);
                let Some((.., target)) = tail.branch else { continue };
                let pc = start[b] + i64::from(self.blocks[b].insts.iter().map(super::PInst::size).sum::<u32>());
                if !tail.long && !REACH.contains(&(start[target] - pc)) {
                    far.push(b);
                }
            }
            if far.is_empty() {
                return;
            }
            for b in far {
                if let Term::Branch { long, .. } = &mut self.blocks[b].term {
                    *long = true;
                }
            }
        }
    }
}
