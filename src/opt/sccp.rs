//! `sccp`：稀疏条件常量传播。
//!
//! 格是「未定 → 常量 → 多值」，只沿**可达**的边传播——这正是它比普通常量折叠强的地方：
//! `if (0) { x = 1 }` 那一支根本不进表，于是汇合点上 `x` 仍是常量。
//!
//! ⭐ 这个 IR 没有 phi，**块参数就是汇合点**：一个块参数的格值，是它所有**可达**前驱在
//! 对应 `Target::args` 位置上给出的值的交。这是和教科书写法唯一的差别。
//!
//! 传播完还做两件事：条件已知的分支收成无条件跳，走不到的块整个换成 `unreachable`。
//! 收益全在这儿——纯折常量那点事，`gvn` 和上游的优化早做掉了。
//!
//! ⛔ 删边是把整个 [`Target`](crate::ir::Target) 连同它的实参一起删，**不是**从后继的
//! 参数表里抠掉一位：后继的参数个数不变，其余前驱照旧供参，`tests/mem2reg.rs` 守的
//! 那条「块参数数 = 每个前驱给的实参数」因此仍然成立。
use super::{AnalysisManager, FunctionPass, PerFunction, Preserved};
use crate::ir::{BinOp, Const, Error, Function, IPred, Inst, Kind, Op, Types, ValId};
use alloc::vec;
use alloc::vec::Vec;

/// `sccp`：按可达性传播常量，再把算得出的指令换成常量。
pub struct SccpImpl;

/// `sccp` 作为模块级 pass。
pub type Sccp = PerFunction<SccpImpl>;

/// 内置 `sccp` 的那一份。
pub const SCCP: Sccp = PerFunction(SccpImpl);

/// 格上的一点。
#[derive(Clone, Debug, PartialEq)]
enum Val {
    /// 还没看到任何定值。
    Top,
    Known(Const),
    /// 多个不同的值，或者算不出来。
    Bottom,
}

impl Val {
    /// 交：两头都是同一个常量才还是常量。
    fn meet(&self, other: &Self) -> Self {
        match (self, other) {
            (Self::Top, x) | (x, Self::Top) => x.clone(),
            (Self::Known(a), Self::Known(b)) if a == b => Self::Known(a.clone()),
            _ => Self::Bottom,
        }
    }

    /// 整数位型（只认 `Const::Int` 与 `Const::Zero`）。
    fn int(&self) -> Option<u128> {
        match self {
            Self::Known(Const::Int(v)) => Some(*v),
            Self::Known(Const::Zero) => Some(0),
            _ => None,
        }
    }
}

/// `w` 位的位型（`Const::Int` 存的就是截断后的）。
fn trunc(v: u128, w: u32) -> u128 {
    match w {
        0 => 0,
        w if w >= 128 => v,
        w => v & ((1u128 << w) - 1),
    }
}

/// `w` 位位型按有符号看。
fn signed(v: u128, w: u32) -> i128 {
    match w {
        0 | 128.. => v.cast_signed(),
        w => (v.cast_signed() << (128 - w)) >> (128 - w),
    }
}

/// 两个常量做一次整数运算 —— 浮点与除零一概不折。
fn fold(op: BinOp, a: u128, b: u128, w: u32) -> Option<u128> {
    let (sa, sb) = (signed(a, w), signed(b, w));
    let v = match op {
        BinOp::Add => a.wrapping_add(b),
        BinOp::Sub => a.wrapping_sub(b),
        BinOp::Mul => a.wrapping_mul(b),
        BinOp::And => a & b,
        BinOp::Or => a | b,
        BinOp::Xor => a ^ b,
        BinOp::UDiv => a.checked_div(b)?,
        BinOp::URem => a.checked_rem(b)?,
        BinOp::SDiv => sa.checked_div(sb)?.cast_unsigned(),
        BinOp::SRem => sa.checked_rem(sb)?.cast_unsigned(),
        // 移位量 ≥ 位宽是 poison，⛔ 不折。
        BinOp::Shl if b < u128::from(w) => a.wrapping_shl(u32::try_from(b).ok()?),
        BinOp::LShr if b < u128::from(w) => trunc(a, w) >> b,
        BinOp::AShr if b < u128::from(w) => (sa >> b).cast_unsigned(),
        _ => return None,
    };
    Some(trunc(v, w))
}

/// 两个常量比一次。
fn compare(p: IPred, a: u128, b: u128, w: u32) -> bool {
    let (sa, sb) = (signed(a, w), signed(b, w));
    let (ua, ub) = (trunc(a, w), trunc(b, w));
    match p {
        IPred::Eq => ua == ub,
        IPred::Ne => ua != ub,
        IPred::Slt => sa < sb,
        IPred::Sle => sa <= sb,
        IPred::Sgt => sa > sb,
        IPred::Sge => sa >= sb,
        IPred::Ult => ua < ub,
        IPred::Ule => ua <= ub,
        IPred::Ugt => ua > ub,
        IPred::Uge => ua >= ub,
    }
}

/// 一遍传播用得到的、只读的那些事实。
struct Facts<'a> {
    f: &'a Function,
    tys: &'a Types,
    /// 每个块的后继（按终结指令里出口的次序）。
    succs: Vec<Vec<usize>>,
}

impl Facts<'_> {
    /// 一个值的整数位宽。
    fn width(&self, v: ValId) -> Option<u32> {
        match self.tys.kind(self.f.vals[v.0 as usize]) {
            Kind::Int(w) => Some(*w),
            _ => None,
        }
    }

    /// 一条指令算出什么。
    fn eval(&self, op: &Op, r: ValId, lat: &[Val]) -> Val {
        let at = |v: ValId| lat[v.0 as usize].clone();
        match op {
            Op::Const(c) => Val::Known(c.clone()),
            Op::Bin(b, x, y) => match (at(*x).int(), at(*y).int(), self.width(r)) {
                (Some(a), Some(c), Some(w)) => fold(*b, a, c, w).map_or(Val::Bottom, |v| Val::Known(Const::Int(v))),
                // 有一头还没定值就先不下结论，别过早掉到底。
                _ if at(*x) == Val::Top || at(*y) == Val::Top => Val::Top,
                _ => Val::Bottom,
            },
            Op::ICmp(p, x, y) => match (at(*x).int(), at(*y).int(), self.width(*x)) {
                (Some(a), Some(c), Some(w)) => Val::Known(Const::Int(u128::from(compare(*p, a, c, w)))),
                _ if at(*x) == Val::Top || at(*y) == Val::Top => Val::Top,
                _ => Val::Bottom,
            },
            Op::Select(c, x, y) => match at(*c).int() {
                Some(0) => at(*y),
                Some(_) => at(*x),
                None if at(*c) == Val::Top => Val::Top,
                None => at(*x).meet(&at(*y)),
            },
            _ => Val::Bottom,
        }
    }

    /// 从 `b` 出去的第 `i` 条边走不走得通。
    fn taken(&self, b: usize, i: usize, lat: &[Val]) -> bool {
        let Some(op) = self.f.blocks[b].insts.last().map(|x| &x.op) else { return false };
        match op {
            Op::CondBr(c, ..) => match lat[c.0 as usize].int() {
                Some(0) => i == 1,
                Some(_) => i == 0,
                None => true,
            },
            Op::Switch(c, _, cases) => match lat[c.0 as usize].int() {
                // 出口次序是「默认，各 case」。
                Some(v) => cases.iter().position(|(k, _)| *k == v).map_or(i == 0, |k| i == k + 1),
                None => true,
            },
            _ => true,
        }
    }
}

impl FunctionPass for SccpImpl {
    fn name(&self) -> &str {
        "sccp"
    }

    fn summary(&self) -> &str {
        "按可达性传播常量，收掉已知条件的分支与走不到的块"
    }

    fn run(&self, f: &mut Function, tys: &Types, _am: &mut AnalysisManager) -> Result<Preserved, Error> {
        let n = f.blocks.len();
        if n == 0 {
            return Ok(Preserved::All);
        }
        let facts = Facts {
            succs: f.blocks.iter().map(|b| b.insts.last().map(|i| i.op.targets().map(|t| t.block.0 as usize).collect()).unwrap_or_default()).collect(),
            f,
            tys,
        };
        let mut lat = vec![Val::Top; f.vals.len()];
        // 函数参数就是入口块的参数，外面传进来什么不知道。
        for &p in &f.blocks[0].params {
            lat[p.0 as usize] = Val::Bottom;
        }
        let mut reach = vec![false; n];
        reach[0] = true;
        let mut exec: Vec<Vec<bool>> = facts.succs.iter().map(|s| vec![false; s.len()]).collect();
        let mut again = true;
        while again {
            again = false;
            let lower = |lat: &mut Vec<Val>, v: ValId, to: &Val| {
                let next = lat[v.0 as usize].meet(to);
                if next != lat[v.0 as usize] {
                    lat[v.0 as usize] = next;
                    return true;
                }
                false
            };
            for b in 0..n {
                if !reach[b] {
                    continue;
                }
                // 块参数：各可达前驱在对应位置给的值的交。入口块的不算（上面已置底）。
                if b != 0 {
                    for (k, &p) in f.blocks[b].params.iter().enumerate() {
                        let mut m = Val::Top;
                        for (q, outs) in facts.succs.iter().enumerate() {
                            for (i, &s) in outs.iter().enumerate() {
                                if s != b || !exec[q][i] {
                                    continue;
                                }
                                let args = f.blocks[q].insts.last().map(|x| x.op.targets().nth(i).map_or(&[][..], |t| &t.args)).unwrap_or_default();
                                m = m.meet(args.get(k).map_or(&Val::Bottom, |a| &lat[a.0 as usize]));
                            }
                        }
                        again |= lower(&mut lat, p, &m);
                    }
                }
                for inst in &f.blocks[b].insts {
                    if let Some(r) = inst.result {
                        let v = facts.eval(&inst.op, r, &lat);
                        again |= lower(&mut lat, r, &v);
                    }
                }
                for i in 0..facts.succs[b].len() {
                    if facts.taken(b, i, &lat) && !core::mem::replace(&mut exec[b][i], true) {
                        again = true;
                        let s = facts.succs[b][i];
                        reach[s] = true;
                    }
                }
            }
        }
        // ⛔ `facts` 借着函数，改之前先把决定算完：哪些块只剩一个出口、哪些块走不到。
        let keep: Vec<(usize, usize)> = (0..n)
            .filter(|&b| reach[b] && facts.succs[b].len() > 1)
            .filter_map(|b| {
                let mut live = (0..facts.succs[b].len()).filter(|&i| facts.taken(b, i, &lat));
                match (live.next(), live.next()) {
                    (Some(i), None) => Some((b, i)),
                    _ => None,
                }
            })
            .collect();
        let dead: Vec<usize> = (0..n).filter(|&b| !reach[b]).collect();
        drop(facts);

        // 条件已知的分支收成无条件跳：留下走得通的那个出口，其余的边连同实参一起没了。
        let mut folded = 0usize;
        for (b, i) in keep {
            let Some(last) = f.blocks[b].insts.last_mut() else { continue };
            let Some(t) = last.op.targets().nth(i).cloned() else { continue };
            last.op = Op::Br(t);
            folded += 1;
        }
        // 走不到的块：整个换成 unreachable。它的前驱必然也走不到，不会有谁还指着它。
        let mut killed = 0usize;
        for b in dead {
            if f.blocks[b].insts.last().is_some_and(|i| i.op == Op::Unreachable) {
                continue;
            }
            f.blocks[b].insts = alloc::vec![Inst { result: None, op: Op::Unreachable }];
            killed += 1;
        }
        // 算得出常量的指令换成常量；剩下的交给 dce。⛔ 不动块参数。
        let mut done = 0usize;
        for b in &mut f.blocks {
            for inst in &mut b.insts {
                let (Some(r), true) = (inst.result, inst.op.pure()) else { continue };
                if let Val::Known(c) = &lat[r.0 as usize]
                    && inst.op != Op::Const(c.clone())
                {
                    inst.op = Op::Const(c.clone());
                    done += 1;
                }
            }
        }
        Ok(match (folded + killed, done) {
            // 边变了，支配类分析一概作废。
            (0, 0) => Preserved::All,
            (0, _) => Preserved::Cfg,
            _ => Preserved::None,
        })
    }
}
