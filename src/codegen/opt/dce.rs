//! 删死代码：纯的、定义的虚拟寄存器没人用的指令（反复做到不再变）。
use super::{Pipeline, R};

impl Pipeline<'_> {
    pub(super) fn dce(&mut self) {
        loop {
            let mut used = vec![false; self.vregs];
            for b in self.blocks.iter() {
                for r in b.insts.iter().flat_map(|i| &i.uses) {
                    if let R::V(v) = r {
                        used[v.vreg()] = true;
                    }
                }
                for v in b.args.iter().flatten() {
                    used[v.vreg()] = true;
                }
            }
            let mut changed = false;
            for b in self.blocks.iter_mut() {
                let before = b.insts.len();
                b.insts.retain(|i| !i.pure() || i.defs.iter().any(|r| matches!(r, R::V(v) if used[v.vreg()]) || matches!(r, R::P(_))));
                changed |= b.insts.len() != before;
            }
            if !changed {
                break;
            }
        }
    }
}
