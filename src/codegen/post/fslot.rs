//! 整数溢出槽放进本函数没用到的浮点寄存器（[`crate::codegen::Options::fpr_spill`]）：
//! 存 `sw x, 槽` ⇒ `fmv.w.x f, x`，取 `lw x, 槽` ⇒ `fmv.x.w x, f`，条数不变、⛔ 访存。
//!
//! ⭐ 为什么：发射字一类程序整数寄存器紧、浮点寄存器几乎不用；溢出槽在栈上，每次存取都是一次访存。
//!
//! 选哪些浮点寄存器：
//! * 分配结果与搬运里出现过的浮点寄存器 ⇒ ⛔（有 D 时 `ft11` 也留着，成环的浮点搬运借它）；
//! * 不调别人的函数（叶子）：先用调用方保存的（不用存），再用被调方保存的；
//! * 调别人的：只用被调方保存的（调用方保存的会被调用破坏）。
//!
//! 被调方保存的要在序言 / 尾声各存取一次 ⇒ 只给静态存取 ≥ 3 次的槽。槽按存取次数从多到少分。
//! 只放整数类的槽（浮点类的槽、类别看不出的槽留在栈上）。
use super::super::abi::Abi;
use super::Selected;
use crate::regalloc::{Allocation, Edit, Output, PReg, RegClass};

/// 第 n 个溢出槽 ⇒ 放进的浮点寄存器号。
#[derive(Default)]
pub struct FSlots(Vec<Option<u8>>);

impl FSlots {
    #[must_use]
    pub fn new(sel: &Selected, out: &Output, on: bool) -> Self {
        let n = out.num_spillslots;
        if !on || n == 0 {
            return Self::default();
        }
        let mut used = [false; 32];
        if sel.double {
            used[31] = true;
        }
        // 每个槽：存取次数、类别（None ⇒ 还不知道，Some(false) ⇒ 整数）
        let mut count = vec![0usize; n];
        let mut float: Vec<Option<bool>> = vec![None; n];
        let mut note = |a: Allocation| {
            if let Some(p) = a.as_reg().filter(|p| p.class() == RegClass::Float) {
                used[p.hw_enc() % 32] = true;
            }
        };
        out.allocs.iter().copied().for_each(&mut note);
        for (_, Edit::Move { from, to }) in &out.edits {
            note(*from);
            note(*to);
            let class = from.as_reg().or(to.as_reg()).map(|p| p.class() == RegClass::Float);
            for s in [from.as_stack(), to.as_stack()].into_iter().flatten() {
                count[s.index()] += 1;
                if class.is_some() {
                    float[s.index()] = float[s.index()].or(class);
                }
            }
        }
        let callee = (0u8..32).filter(|&r| Abi::callee_saved_f(r));
        let caller = (0u8..32).filter(|&r| !Abi::callee_saved_f(r));
        // （寄存器, 要不要存）
        let free: Vec<(u8, bool)> = if sel.calls { Vec::new() } else { caller.map(|r| (r, false)).collect() }
            .into_iter()
            .chain(callee.map(|r| (r, true)))
            .filter(|&(r, _)| !used[usize::from(r)])
            .collect();
        let mut order: Vec<usize> = (0..n).filter(|&s| float[s] == Some(false) && count[s] > 0).collect();
        order.sort_by_key(|&s| (core::cmp::Reverse(count[s]), s));
        let mut map = vec![None; n];
        let mut free = free.into_iter().peekable();
        for s in order {
            let Some(&(r, saved)) = free.peek() else { break };
            if saved && count[s] < 3 {
                continue;
            }
            map[s] = Some(r);
            free.next();
        }
        Self(map)
    }

    /// 第 `slot` 个溢出槽放在哪个浮点寄存器。
    #[must_use]
    pub fn get(&self, slot: usize) -> Option<u8> {
        self.0.get(slot).copied().flatten()
    }

    /// 用到的被调方保存的浮点寄存器（序言 / 尾声要存取）。
    pub fn saved(&self) -> impl Iterator<Item = PReg> + '_ {
        self.0.iter().flatten().filter(|&&r| Abi::callee_saved_f(r)).map(|&r| PReg::new(usize::from(r), RegClass::Float))
    }
}
