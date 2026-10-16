//! 尾调用：`call f` 紧跟 `ret`、返回的正是调用的结果（或本函数不返回值）⇒ `tail f`（同 LLVM 的尾调用降级）。
//! 不再有调用的函数（叶函数）因此不存 `ra`，帧常常整个消失。
//!
//! ⚠ 内部 IR 不带 `tail` 标记，⇒ 只在本函数的帧里什么都没有时做：没有栈帧对象（⇒ 不会有指向本帧的地址交给被调方）、
//! 没有栈上实参、不是可变参数函数、不动 `sp`。⛔ 间接调用不做（目标寄存器可能被尾声恢复的 `s*` 盖掉）。
use super::{MInst, MOp, Selected};
use crate::codegen::mir::Base;
use regalloc2::PRegSet;

impl Selected {
    /// 帧里什么都没有（尾调用安全）。
    fn frameless(&self) -> bool {
        self.frame.is_empty()
            && self.varargs.is_none()
            && !self.dynamic_sp
            && !self.blocks.iter().flat_map(|b| &b.insts).any(|i| matches!(i.op, MOp::Store(_, Base::Outgoing, _)))
    }

    pub(super) fn tail_calls(&mut self) {
        if !self.frameless() {
            return;
        }
        for b in &mut self.blocks {
            let [.., call, ret] = b.insts.as_slice() else { continue };
            if !(matches!(call.op, MOp::Call(Some(_))) && ret.op == MOp::Ret && (ret.uses.is_empty() || ret.uses == call.defs)) {
                continue;
            }
            b.insts.pop();
            let call = b.insts.pop().expect("上面看过有两条");
            let MOp::Call(Some(sym)) = call.op else { unreachable!() };
            let mut tail = MInst::new(MOp::Tail(sym), &[], &[]);
            for (u, rule) in call.uses.into_iter().zip(call.use_rules) {
                tail.use_on(u, rule);
            }
            tail.clobbers = PRegSet::empty();
            b.insts.push(tail);
        }
        self.calls = self.blocks.iter().flat_map(|b| &b.insts).any(|i| matches!(i.op, MOp::Call(_)));
    }
}
