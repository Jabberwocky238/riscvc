//! 沿支配树走一遍（同 LLVM 的 EarlyCSE）：每条指令先换上顶替者、再化简，纯的再查「支配它的地方算过没有」。
//!
//! ⚠ `li` / `lla` / 取栈地址只在本块里复用（同 MachineCSE 对「和 mv 一样便宜」的指令的处理）：跨块复用只会拉长
//! 活跃区间，而 regalloc2 不会把它们重新物化，挤出来的就是溢出。
//! ⛔ 不复用的：读 CSR（`rdcycle` 一类每次不同）、相对当前 `sp` 的出参区地址（动态 alloca 会挪 `sp`）。
use super::fold::Fold;
use super::{DomTree, MInst, MOp, Pipeline, R};
use crate::codegen::mir::Rule;
use crate::isa::Opcode;
use std::collections::HashMap;

/// 一条纯指令的身份：操作 + 操作数。
type Key = (MOp, Vec<R>);

/// 复用的范围。
enum Scope {
    /// 支配树下的全部块。
    Dominated,
    /// 只在本块。
    Block,
}

impl MInst {
    /// 能不能复用、在什么范围里。
    fn scope(&self) -> Option<Scope> {
        if !self.pure() || self.def().is_none() {
            return None;
        }
        match &self.op {
            MOp::Reg(Opcode::Zicsr(_), _) | MOp::Addr(super::Base::Outgoing, _) => None,
            MOp::Li(_) | MOp::La(..) | MOp::Addr(..) => Some(Scope::Block),
            _ => Some(Scope::Dominated),
        }
    }
}

impl Pipeline<'_> {
    /// 一条指令：换顶替者、化简到不再变、记下它定义了什么。回：化简过。
    fn simplify(&mut self, i: &mut MInst) -> bool {
        self.rename.apply(i);
        let mut changed = false;
        while let Some(d) = i.def()
            && !self.rename.contains(d)
            && let Some(f) = self.known.fold(i)
        {
            changed = true;
            match f {
                Fold::Same(r) => self.rename.insert(d, r),
                Fold::Into(op, uses) => {
                    i.use_rules = vec![Rule::Any; uses.len()];
                    i.op = op;
                    i.uses = uses;
                }
            }
        }
        // 条件跳转 / select 的条件
        while let MOp::Branch(op, ..) | MOp::Select(op) = &mut i.op
            && let Some((new, a, b)) = self.known.branch(*op, i.uses[0], i.uses[1])
        {
            *op = new;
            i.uses[0] = a;
            i.uses[1] = b;
            changed = true;
        }
        self.known.learn(i);
        changed
    }

    /// ⭐ 走一遍。回：有没有变。
    pub(super) fn cse(&mut self, dom: &DomTree) -> bool {
        let mut changed = false;
        let mut table: HashMap<Key, R> = HashMap::new();
        // 显式栈：（块, 进还是出）；出的时候撤掉本块加进表里的
        let mut stack = vec![(0usize, true)];
        let mut added: Vec<Vec<Key>> = vec![Vec::new(); self.blocks.len()];
        while let Some((b, enter)) = stack.pop() {
            if !enter {
                for k in core::mem::take(&mut added[b]) {
                    table.remove(&k);
                }
                continue;
            }
            stack.push((b, false));
            stack.extend(dom.children(b).iter().rev().map(|&c| (c, true)));
            let mut local: HashMap<Key, R> = HashMap::new();
            let mut insts = core::mem::take(&mut self.blocks[b].insts);
            for i in &mut insts {
                changed |= self.simplify(i);
                let (Some(scope), Some(d)) = (i.scope(), i.def()) else { continue };
                if self.rename.contains(d) {
                    continue;
                }
                let key = (i.op.clone(), i.uses.clone());
                let seen = match scope {
                    Scope::Dominated => &mut table,
                    Scope::Block => &mut local,
                };
                match seen.get(&key) {
                    Some(&r) => {
                        self.rename.insert(d, r);
                        changed = true;
                    }
                    None => {
                        seen.insert(key.clone(), R::V(d));
                        if matches!(scope, Scope::Dominated) {
                            added[b].push(key);
                        }
                    }
                }
            }
            self.blocks[b].insts = insts;
            self.rename.apply_args(&mut self.blocks[b]);
        }
        changed
    }
}
