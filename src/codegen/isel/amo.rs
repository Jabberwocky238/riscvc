//! A 扩展的原子操作（同 LLVM 22 的 RISCV 后端，`-mattr=+a`）：≤ 32 位的不走 `__atomic_*` 库函数。
//!
//! ```text
//! 整字 atomicrmw   一条 amo*.w（sub = 取负再 amoadd；nand 是 LR/SC 循环）
//! 子字 atomicrmw   地址对齐到字、字段掩码移到位：and / or / xor 一条 amo（不动的位填 1 / 0）；其余是带掩码的 LR/SC 循环
//! cmpxchg          LR/SC 循环（子字带掩码）
//! 原子 load        seq_cst：fence rw,rw；load；acquire 起：再 fence r,rw
//! 原子 store       release 起：fence rw,w；store；seq_cst：再 fence rw,rw
//! ```
//! 64 位（RV32 没有 `.d`）仍走库函数。序位见 [`Order`]；LR/SC 的选法同 LLVM 的 getLRForRMW32 / getSCForRMW32。
//! ⚠ 窄整数在寄存器里恒零扩展：子字的结果右移回来之后还要掩掉高位（LLVM 不掩，它的高位是「不在乎」）。
use super::{Error, Isel, R};
use crate::codegen::mir::{Base, Loop, MInst, MOp, Rule};
use crate::feature::{Atomic, Order};
use crate::ir::{Kind, RmwOp, Ty, ValId};
use crate::isa::Rv32i as IOp;

impl Isel<'_> {
    /// 目标有 A。
    pub(super) fn atomics(&self) -> bool {
        self.target.has("a")
    }

    /// C 内存序 ⇒ `fence` 的 imm（同 LLVM：acquire `fence r, rw`、release `fence rw, w`、acq_rel `fence.tso`、seq_cst `fence rw, rw`）。
    pub(super) const fn fence_bits(order: u8) -> i32 {
        match order {
            2 => 0x23,
            3 => 0x31,
            4 => 0x833,
            _ => 0x33,
        }
    }

    /// 这个类型的原子操作能不能用 A 做：≤ 4 字节（整数、指针、float）。
    pub(super) fn amo_fits(&self, t: Ty) -> bool {
        self.atomics() && self.types().size(t) <= 4 && matches!(self.kind(t), Kind::Int(_) | Kind::Ptr | Kind::Float | Kind::Half | Kind::BFloat)
    }

    /// LR / SC 按内存序（getLRForRMW32 / getSCForRMW32）：`lr` 有 aq ⇐ acquire 起（seq_cst 再加 rl），`sc` 有 rl ⇐ release 起。
    fn lr_sc(order: u8) -> (Atomic, Atomic) {
        let lr = Order { aq: matches!(order, 2 | 4 | 5), rl: order == 5 };
        let sc = Order { aq: false, rl: matches!(order, 3..=5) };
        (Atomic::LrW.ordered(lr), Atomic::ScW.ordered(sc))
    }

    /// 一个 LR/SC 循环：`defs` 个早定义的整数寄存器（第一个是 `lr` 读到的整字）。
    fn lrsc(&mut self, l: Loop, order: u8, defs: usize, uses: &[R]) -> Vec<R> {
        let (lr, sc) = Self::lr_sc(order);
        let ds: Vec<R> = (0..defs).map(|_| self.xr()).collect();
        let mut inst = MInst::new(MOp::LrSc(l, lr, sc), &[], uses);
        for &d in &ds {
            inst.def_on(d, Rule::Early);
        }
        self.push(inst);
        ds
    }

    /// 一条 `amo* rd, v, (p)`。
    fn amo(&mut self, op: Atomic, order: u8, p: R, v: R) -> R {
        let d = self.xr();
        self.emit(MOp::Reg(op.ordered(Order::from(order)).into(), 0), &[d], &[p, v]);
        d
    }

    /// 子字落在字里的位置：（对齐的字地址, 移位 = 字节偏移 · 8（只看低 5 位）, 字段掩码 << 移位）。
    fn field(&mut self, p: R, w: u32) -> (R, R, R) {
        let aligned = self.ri(IOp::Andi, p, -4);
        let shift = self.ri(IOp::Slli, p, 3);
        let ones = self.li(if w == 8 { 0xff } else { 0xffff });
        let mask = self.rr(IOp::Sll, ones, shift);
        (aligned, shift, mask)
    }

    /// 读回的整字 ⇒ 字段（右移回来、掩成零扩展的 `w` 位）。
    fn unfield(&mut self, old: R, shift: R, w: u32) -> R {
        let v = self.rr(IOp::Srl, old, shift);
        self.mask(v, w)
    }

    /// 原子读改写的位型（float 换成同宽整数）。
    fn rmw_bits(&mut self, v: ValId) -> Result<R, Error> {
        let parts = self.get(v)?;
        Ok(self.atomic_bits(self.ty(v), &parts)?[0])
    }

    /// ⭐ `atomicrmw`（≤ 32 位的整数 / float 的 xchg、整数运算）；浮点运算回 `None`（由调用方的 CAS 循环做）。
    pub(super) fn amo_rmw(&mut self, op: RmwOp, p: ValId, v: ValId, order: u8) -> Result<Option<Vec<R>>, Error> {
        if matches!(op, RmwOp::FAdd | RmwOp::FSub | RmwOp::FMax | RmwOp::FMin) {
            return Ok(None);
        }
        let t = self.ty(v);
        let w = self.types().bits(t).unwrap_or(32);
        let ptr = self.get1(p)?;
        let val = self.rmw_bits(v)?;
        let old = if self.types().size(t) == 4 {
            match op {
                RmwOp::Nand => self.lrsc(Loop::Word(op), order, 2, &[ptr, val])[0],
                RmwOp::Sub => {
                    let neg = self.rr(IOp::Sub, R::ZERO, val);
                    self.amo(Atomic::AmoaddW, order, ptr, neg)
                }
                _ => {
                    let a = match op {
                        RmwOp::Xchg => Atomic::AmoswapW,
                        RmwOp::Add => Atomic::AmoaddW,
                        RmwOp::And => Atomic::AmoandW,
                        RmwOp::Or => Atomic::AmoorW,
                        RmwOp::Xor => Atomic::AmoxorW,
                        RmwOp::Max => Atomic::AmomaxW,
                        RmwOp::Min => Atomic::AmominW,
                        RmwOp::UMax => Atomic::AmomaxuW,
                        _ => Atomic::AmominuW,
                    };
                    self.amo(a, order, ptr, val)
                }
            }
        } else {
            let (aligned, shift, mask) = self.field(ptr, w);
            let signed = matches!(op, RmwOp::Max | RmwOp::Min);
            let x = if signed { self.sext(val, w) } else { val };
            let at = self.rr(IOp::Sll, x, shift);
            let word = match op {
                // 不动的位：and 填 1，or / xor 填 0（at 本来就是 0）
                RmwOp::And => {
                    let keep = self.ri(IOp::Xori, mask, -1);
                    let v = self.rr(IOp::Or, at, keep);
                    self.amo(Atomic::AmoandW, order, aligned, v)
                }
                RmwOp::Or => self.amo(Atomic::AmoorW, order, aligned, at),
                RmwOp::Xor => self.amo(Atomic::AmoxorW, order, aligned, at),
                RmwOp::Max | RmwOp::Min | RmwOp::UMax | RmwOp::UMin => {
                    let mut uses = vec![aligned, at, mask];
                    if signed {
                        // shamt = (32 − w) − 字节偏移 · 8
                        let off = self.ri(IOp::Andi, shift, 24);
                        let top = self.li(i32::try_from(32 - w).unwrap_or(0));
                        uses.push(self.rr(IOp::Sub, top, off));
                    }
                    self.lrsc(Loop::Masked(op), order, 3, &uses)[0]
                }
                _ => self.lrsc(Loop::Masked(op), order, 2, &[aligned, at, mask])[0],
            };
            self.unfield(word, shift, w)
        };
        Ok(Some(self.atomic_unbits(t, vec![old])?))
    }

    /// ⭐ ≤ 32 位的比较并交换（位型）：⇒（读到的值, 成功 0 / 1）。
    pub(super) fn amo_cas(&mut self, t: Ty, ptr: R, cmp: R, new: R, order: u8) -> (R, R) {
        let w = self.types().bits(t).unwrap_or(32);
        if self.types().size(t) == 4 {
            let old = self.lrsc(Loop::Cas, order, 2, &[ptr, cmp, new])[0];
            let diff = self.rr(IOp::Xor, old, cmp);
            return (old, self.ri(IOp::Sltiu, diff, 1));
        }
        let (aligned, shift, mask) = self.field(ptr, w);
        let (c, v) = (self.rr(IOp::Sll, cmp, shift), self.rr(IOp::Sll, new, shift));
        let word = self.lrsc(Loop::MaskedCas, order, 2, &[aligned, c, v, mask])[0];
        let got = self.rr(IOp::And, word, mask);
        let diff = self.rr(IOp::Xor, got, c);
        let ok = self.ri(IOp::Sltiu, diff, 1);
        (self.unfield(word, shift, w), ok)
    }

    /// `cmpxchg`（≤ 32 位）：（读到的值的部件, 成功 0 / 1）。内存序取成功、失败里强的那个（同 LLVM 合并）。
    pub(super) fn amo_cmpxchg(&mut self, p: ValId, c: ValId, v: ValId, order: (u8, u8)) -> Result<Vec<R>, Error> {
        let t = self.ty(c);
        let ptr = self.get1(p)?;
        let (cmp, new) = (self.rmw_bits(c)?, self.rmw_bits(v)?);
        let merged = match order {
            (s, f) if s == 5 || f == 5 => 5,
            (3, 2) | (2, 3) => 4,
            (s, f) => s.max(f),
        };
        let (old, ok) = self.amo_cas(t, ptr, cmp, new, merged);
        let mut out = self.atomic_unbits(t, vec![old])?;
        out.push(ok);
        Ok(out)
    }

    /// 原子 load（≤ 32 位）：普通 load 前后按序加 fence。
    pub(super) fn amo_load(&mut self, t: Ty, p: ValId, order: u8) -> Result<Vec<R>, Error> {
        let ptr = self.get1(p)?;
        if order == 5 {
            self.emit(MOp::Fence(0x33), &[], &[]);
        }
        let n = self.types().size(t);
        let parts = self.load_leaf(t, Base::Reg(ptr), 0, n)?;
        if order >= 2 {
            self.emit(MOp::Fence(0x23), &[], &[]);
        }
        Ok(parts)
    }

    /// 原子 store（≤ 32 位）：release 起前面 `fence rw, w`，seq_cst 后面再 `fence rw, rw`。
    pub(super) fn amo_store(&mut self, v: ValId, p: ValId, order: u8) -> Result<(), Error> {
        let t = self.ty(v);
        let (ptr, val) = (self.get1(p)?, self.get(v)?);
        if order >= 3 {
            self.emit(MOp::Fence(0x31), &[], &[]);
        }
        let n = self.types().size(t);
        self.store_leaf(t, &val, Base::Reg(ptr), 0, n)?;
        if order == 5 {
            self.emit(MOp::Fence(0x33), &[], &[]);
        }
        Ok(())
    }
}
