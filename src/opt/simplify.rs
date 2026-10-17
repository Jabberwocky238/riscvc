//! `simplify`：按代数恒等式就地化简（同 LLVM 的 instsimplify，⛔ 不是 instcombine——
//! 这里只做「换成一个已有的值或常量」，不新造指令）。
//!
//! 跑在 `mem2reg` / `gvn` 之后最划算：那两遍把访存换成 SSA 值、把重复计算并掉，
//! `x + 0`、`x - x`、`select c, y, y` 这类才显出来。
use super::{AnalysisManager, FunctionPass, PerFunction, Preserved};
use crate::ir::{BinOp, Const, Error, Function, IPred, Kind, Op, Types, ValId};
use alloc::vec;
use alloc::vec::Vec;

/// `simplify`：代数恒等式化简。
pub struct SimplifyImpl;

/// `simplify` 作为模块级 pass。
pub type Simplify = PerFunction<SimplifyImpl>;

/// 内置 `simplify` 的那一份。
pub const SIMPLIFY: Simplify = PerFunction(SimplifyImpl);

/// 化简的结果。
enum Into {
    /// 换成另一个已有的值。
    Same(ValId),
    /// 换成一个常量。
    Fixed(u128),
}

/// 一个值被换成了谁（顺着链走到底）。
fn resolve(repl: &[Option<ValId>], mut v: ValId) -> ValId {
    while let Some(n) = repl[v.0 as usize] {
        v = n;
    }
    v
}

impl SimplifyImpl {
    /// `w` 位全 1。
    fn ones(w: u32) -> u128 {
        match w {
            0 => 0,
            w if w >= 128 => u128::MAX,
            w => (1u128 << w) - 1,
        }
    }

    /// 这条指令能不能换成别的东西。`k` 给出每个值的常量（没有就是 `None`）。
    fn of(op: &Op, k: &[Option<u128>], w: u32) -> Option<Into> {
        let c = |v: ValId| k[v.0 as usize];
        Some(match op {
            Op::Bin(b, x, y) => match (b, c(*x), c(*y), *x == *y) {
                // 单位元
                (BinOp::Add | BinOp::Sub | BinOp::Or | BinOp::Xor | BinOp::Shl | BinOp::LShr | BinOp::AShr, _, Some(0), _) => Into::Same(*x),
                (BinOp::Add | BinOp::Or, Some(0), _, _) => Into::Same(*y),
                (BinOp::Mul | BinOp::UDiv | BinOp::SDiv, _, Some(1), _) => Into::Same(*x),
                (BinOp::Mul, Some(1), _, _) => Into::Same(*y),
                (BinOp::And, _, Some(m), _) if m == Self::ones(w) => Into::Same(*x),
                (BinOp::And, Some(m), _, _) if m == Self::ones(w) => Into::Same(*y),
                // 零元
                (BinOp::Mul | BinOp::And, _, Some(0), _) | (BinOp::Mul | BinOp::And, Some(0), _, _) => Into::Fixed(0),
                // 两边同一个值
                (BinOp::Sub | BinOp::Xor, .., true) => Into::Fixed(0),
                (BinOp::And | BinOp::Or, .., true) => Into::Same(*x),
                _ => return None,
            },
            // ⛔ 只认两边字面上是同一个值：`x == x` 在整数上恒真（浮点另说，这里不碰）。
            Op::ICmp(p, x, y) if *x == *y => match p {
                IPred::Eq | IPred::Sle | IPred::Sge | IPred::Ule | IPred::Uge => Into::Fixed(1),
                _ => Into::Fixed(0),
            },
            Op::Select(_, x, y) if *x == *y => Into::Same(*x),
            Op::Select(c, x, y) => match k[c.0 as usize] {
                Some(0) => Into::Same(*y),
                Some(_) => Into::Same(*x),
                None => return None,
            },
            _ => return None,
        })
    }
}

impl FunctionPass for SimplifyImpl {
    fn name(&self) -> &str {
        "simplify"
    }

    fn summary(&self) -> &str {
        "按代数恒等式换成已有的值或常量（x + 0、x - x、select c, y, y …）"
    }

    fn run(&self, f: &mut Function, tys: &Types, _am: &mut AnalysisManager) -> Result<Preserved, Error> {
        let width = |v: ValId| match tys.kind(f.vals[v.0 as usize]) {
            Kind::Int(w) => Some(*w),
            _ => None,
        };
        // 直接的常量（⛔ 不做传播，那是 sccp 的事）。
        let mut k: Vec<Option<u128>> = vec![None; f.vals.len()];
        for i in f.blocks.iter().flat_map(|b| &b.insts) {
            if let (Some(r), Op::Const(c)) = (i.result, &i.op) {
                k[r.0 as usize] = match c {
                    Const::Int(v) => Some(*v),
                    Const::Zero => Some(0),
                    _ => None,
                };
            }
        }
        let mut repl: Vec<Option<ValId>> = vec![None; f.vals.len()];
        let mut dead: Vec<Vec<bool>> = f.blocks.iter().map(|b| vec![false; b.insts.len()]).collect();
        let mut done = 0usize;
        for b in 0..f.blocks.len() {
            for n in 0..f.blocks[b].insts.len() {
                let i = &f.blocks[b].insts[n];
                let (Some(r), true) = (i.result, i.op.pure()) else { continue };
                let Some(w) = width(r) else { continue };
                match Self::of(&i.op, &k, w) {
                    Some(Into::Same(v)) => {
                        repl[r.0 as usize] = Some(resolve(&repl, v));
                        dead[b][n] = true;
                    }
                    Some(Into::Fixed(c)) => {
                        f.blocks[b].insts[n].op = Op::Const(Const::Int(c));
                        k[r.0 as usize] = Some(c);
                    }
                    None => continue,
                }
                done += 1;
            }
        }
        if done == 0 {
            return Ok(Preserved::All);
        }
        for b in &mut f.blocks {
            for i in &mut b.insts {
                i.op.rename(&|v| resolve(&repl, v));
            }
        }
        for (b, block) in f.blocks.iter_mut().enumerate() {
            let mut n = 0;
            block.insts.retain(|_| {
                n += 1;
                !dead[b][n - 1]
            });
        }
        // ⛔ 只删指令、换操作数，块与边没动。
        Ok(Preserved::Cfg)
    }
}
