//! `gvn`：同一个纯计算，支配者里已经算过就不再算第二遍。
//!
//! 沿支配树前序走，带一张作用域内的「算式 ⇒ 值」表：进块时记下表长，出块时截回去。
//! 这样表里留下的必定支配当前块，不用再单独判一次支配关系。
//!
//! ⛔ 只碰 [`Op::pure`] 的指令：有副作用的（load / store / call / 原子操作）一概不动，
//! 所以这一遍不需要别名分析，也不会把两次 load 合成一次。
use super::{AnalysisManager, Dom, FunctionPass, PerFunction, Preserved};
use crate::ir::{Error, Function, Op, ValId};
use alloc::format;
use alloc::string::String;
use alloc::vec;
use alloc::vec::Vec;

/// `gvn`：删掉支配者里已经算过的纯计算。
pub struct GvnImpl;

/// `gvn` 作为模块级 pass。
pub type Gvn = PerFunction<GvnImpl>;

/// 内置 `gvn` 的那一份。
pub const GVN: Gvn = PerFunction(GvnImpl);

/// 一个值被换成了谁（顺着链走到底）。
fn resolve(repl: &[Option<ValId>], mut v: ValId) -> ValId {
    while let Some(n) = repl[v.0 as usize] {
        v = n;
    }
    v
}

impl FunctionPass for GvnImpl {
    fn name(&self) -> &str {
        "gvn"
    }

    fn summary(&self) -> &str {
        "同一个纯计算在支配者里算过就不再算"
    }

    fn run(&self, f: &mut Function, am: &mut AnalysisManager) -> Result<Preserved, Error> {
        let idom: Vec<Option<usize>> = {
            let dom = am.get::<Dom>(f);
            (0..f.blocks.len()).map(|b| dom.idom(b)).collect()
        };
        let mut kids: Vec<Vec<usize>> = vec![Vec::new(); f.blocks.len()];
        for b in 0..f.blocks.len() {
            if let Some(p) = idom[b] {
                kids[p].push(b);
            }
        }
        let mut repl: Vec<Option<ValId>> = vec![None; f.vals.len()];
        let mut dead: Vec<Vec<bool>> = f.blocks.iter().map(|b| vec![false; b.insts.len()]).collect();
        // 算式按 `Op` 的调试写法加结果类型作键：操作数先顺着 repl 归一，`x + y` 才认得出第二遍。
        // ⚠ 拼字符串不便宜，所以只对纯指令做——它们是少数。
        let mut seen: Vec<(String, ValId)> = Vec::new();
        // (块, 进块时的表长)；`None` 表示还没进去过。
        let mut stack: Vec<(usize, Option<usize>)> = vec![(0, None)];
        while let Some((b, mark)) = stack.pop() {
            if let Some(mark) = mark {
                seen.truncate(mark);
                continue;
            }
            stack.push((b, Some(seen.len())));
            for n in 0..f.blocks[b].insts.len() {
                let i = &f.blocks[b].insts[n];
                let (Some(r), true) = (i.result, i.op.pure()) else { continue };
                let mut key = i.op.clone();
                key.rename(&|v| resolve(&repl, v));
                // ⚠ 结果类型要进键：常量的类型不在 `Op` 里而在 `f.vals[result]`，
                // `undef : i32` 和 `undef : i64` 的调试写法一模一样，合成一个就串了类型。
                let key = format!("{key:?}|{:?}", f.vals[r.0 as usize]);
                match seen.iter().find(|(k, _)| *k == key) {
                    Some(&(_, v)) => {
                        repl[r.0 as usize] = Some(v);
                        dead[b][n] = true;
                    }
                    None => seen.push((key, r)),
                }
            }
            stack.extend(kids[b].iter().map(|&c| (c, None)));
        }
        if dead.iter().flatten().all(|d| !d) {
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
        // ⛔ 只删指令，块与边没动 ⇒ 支配类分析仍然有效。
        Ok(Preserved::Cfg)
    }
}
