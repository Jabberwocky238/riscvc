//! 分配之后：要两条才能装的常量（`lui` + `addi`），若块里另有一个整数寄存器此刻正好装着相差 ±2047 以内的常量，
//! 改成一条 `addi rd, rs, 差`。
//!
//! ⭐ 为什么在这一层：常量不占寄存器（每个用处各自重建），加速器的发射字一类程序一个函数要上千个不同的常量，
//! 留在寄存器里放不下；这里只借「此刻恰好还在」的那个寄存器，不延长任何活跃区间、不增加溢出。
//!
//! 块内、顺序走，记着每个整数寄存器此刻装的常量：
//! * `li rd, k` ⇒ 先试换成 `addi`，再记下 `rd = k`；
//! * 写了别的寄存器的指令 ⇒ 忘掉被写的（调用忘掉调用方保存集与 `ra`）；
//! * 认不出的（[`super::copy::eff`] 给 `None`）、写寄存器的扩展包指令 ⇒ 全忘；不写寄存器的扩展包指令（只读）⇒ 跨过去。
//! 块的入口什么都不知道（⛔ 块间传递）。
use super::copy::{eff, Set};
use super::{PFunc, PInst};
use crate::isa::{Inst, Rv32i as IOp};

/// 一条 `li` 要几条机器指令：12 位有符号放得下的一条，低 12 位是 0 的一条（`lui`），其余两条。
const fn words(k: i32) -> u32 {
    if k >= -2048 && k < 2048 || k & 0xfff == 0 { 1 } else { 2 }
}

impl PFunc {
    /// ⭐ 走一遍；返回改成一条的个数。
    pub(super) fn near_constants(&mut self) -> usize {
        let clob = Self::clobbered();
        let mut changed = 0;
        for b in &mut self.blocks {
            let mut known: [Option<i32>; 32] = [None; 32];
            for i in &mut b.insts {
                if let PInst::Li(rd, k) = *i {
                    if rd == 0 {
                        continue;
                    }
                    let near = |r: u8| known[usize::from(r)].filter(|&x| (-2048..2048).contains(&k.wrapping_sub(x))).map(|x| (r, x));
                    if words(k) == 2
                        && let Some((rs, x)) = (1..32u8).filter(|&r| r != rd).find_map(near)
                    {
                        *i = PInst::I(Inst::new(IOp::Addi).x(rd, rs, 0).with_imm(k.wrapping_sub(x)));
                        changed += 1;
                    }
                    known[usize::from(rd)] = Some(k);
                    continue;
                }
                if let PInst::Ext(_, _, false) = i {
                    continue;
                }
                match eff(i, clob) {
                    Some((_, writes)) => Self::forget(&mut known, writes),
                    None => known = [None; 32],
                }
            }
        }
        changed
    }

    /// 写集里的整数寄存器忘掉（位 0 … 31 是 x0 … x31）。
    fn forget(known: &mut [Option<i32>; 32], writes: Set) {
        for (r, k) in known.iter_mut().enumerate() {
            if writes >> r & 1 == 1 {
                *k = None;
            }
        }
    }
}
