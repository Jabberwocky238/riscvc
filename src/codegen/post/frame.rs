//! 栈帧布局（寄存器分配之后才定得下：溢出槽个数、用到了哪些被调方保存寄存器）。
//!
//! 地址从低到高，`sp` 在最低处，总大小 16 对齐：
//! ```text
//! sp →  出参区 | 溢出槽（4 字节一个）| 栈帧对象 | 被调方保存的寄存器（ra、s*、fs*）| 可变参数存放区 | ← 进入时的 sp：入参区
//! ```
//! 动态改过 `sp`（动态 alloca、stackrestore）的函数用 `s0` 当帧指针：帧里的东西都相对 `s0` 寻址。
use super::super::abi::Abi;
use super::Selected;
use crate::codegen::mir::Base;
use crate::isa::X;
use crate::regalloc::{Allocation, Edit, Output, PReg, RegClass};

pub struct Frame {
    /// 帧总大小。
    pub size: i32,
    spill_base: i32,
    objects: Vec<i32>,
    /// 保存的寄存器与它们的偏移（相对 sp）。
    pub saves: Vec<(PReg, i32)>,
    /// 用 `s0` 当帧指针。
    pub fp: bool,
    /// 可变参数存放区的起点（相对 sp）：第一个没被具名参数占的 a 寄存器起，到 a7。
    pub varargs: Option<(u8, i32)>,
}

impl Frame {
    /// 向上取到 `a` 的倍数。
    pub const fn up(x: i32, a: i32) -> i32 {
        (x + a - 1) / a * a
    }

    #[must_use]
    pub fn new(sel: &Selected, out: &Output) -> Self {
        let fp = sel.dynamic_sp;
        // 用到的被调方保存寄存器
        let mut used: Vec<PReg> = Vec::new();
        let mut note = |a: Allocation| {
            if let Some(p) = a.as_reg() {
                let n = u8::try_from(p.hw_enc()).unwrap_or(0);
                let saved = if p.class() == RegClass::Int { Abi::callee_saved_x(n) } else { Abi::callee_saved_f(n) };
                if saved && !used.contains(&p) {
                    used.push(p);
                }
            }
        };
        out.allocs.iter().copied().for_each(&mut note);
        for (_, Edit::Move { from, to }) in &out.edits {
            note(*from);
            note(*to);
        }
        let mut save_regs: Vec<PReg> = Vec::new();
        if sel.calls {
            save_regs.push(X::RA.preg());
        }
        // 帧指针 s0 不参与分配（`Abi::machine_env`），⛔ 在 used 里
        if fp {
            save_regs.push(X::S0.preg());
        }
        used.sort_by_key(|p| (p.class() as u8, p.hw_enc()));
        save_regs.extend(used);
        let spill_base = Self::up(sel.out_args, 4);
        let mut at = spill_base + 4 * i32::try_from(out.num_spillslots).unwrap_or(0);
        let mut objects = Vec::new();
        for o in &sel.frame {
            at = Self::up(at, i32::try_from(o.align.min(4096)).unwrap_or(16).max(1));
            objects.push(at);
            at += i32::try_from(o.size).unwrap_or(0);
        }
        let varargs = sel.varargs.map_or(0, |first| 4 * (18 - i32::from(first)).max(0));
        let size = Self::up(at + 4 * i32::try_from(save_regs.len()).unwrap_or(0) + varargs, 16);
        let saves = save_regs.into_iter().enumerate().map(|(i, p)| (p, size - varargs - 4 * (i32::try_from(i).unwrap_or(0) + 1))).collect();
        Self { size, spill_base, objects, saves, fp, varargs: sel.varargs.map(|first| (first, size - varargs)) }
    }

    /// 帧里某偏移（相对 sp 的布局偏移）⇒（基址寄存器, 偏移）：有帧指针时相对 s0。
    #[must_use]
    pub const fn at(&self, off: i32) -> (u8, i32) {
        if self.fp { (X::S0.0, off - self.size) } else { (X::SP.0, off) }
    }

    /// 第 `slot` 个溢出槽。
    #[must_use]
    pub fn spill(&self, slot: usize) -> (u8, i32) {
        self.at(self.spill_base + 4 * i32::try_from(slot).unwrap_or(0))
    }

    /// 非寄存器的地址基 ⇒（基址寄存器, 偏移修正）。
    #[must_use]
    pub fn base(&self, b: Base) -> Option<(u8, i32)> {
        match b {
            Base::Reg(_) => None,
            Base::Frame(o) => Some(self.at(self.objects[o as usize])),
            Base::Incoming => Some(self.at(self.size)),
            Base::Outgoing => Some((X::SP.0, 0)),
        }
    }
}
