//! `gvn`：同一个纯计算，支配者里已经算过就不再算第二遍。
//!
//! 沿支配树前序走，带一张作用域内的「算式 ⇒ 值」表：进块时记下表长，出块时截回去。
//! 这样表里留下的必定支配当前块，不用再单独判一次支配关系。
//!
//! ⛔ 只碰 [`Op::pure`] 的指令：有副作用的（load / store / call / 原子操作）一概不动，
//! 所以这一遍不需要别名分析，也不会把两次 load 合成一次。
use super::{AnalysisManager, Dom, FunctionPass, PerFunction, Preserved};
use crate::ir::{Error, Function, Op, Ty, ValId};
use alloc::vec;
use alloc::vec::Vec;
use std::collections::HashMap;

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
        // 算式直接拿 `Op` 当键（操作数先顺着 repl 归一，`x + y` 才认得出第二遍），再带上
        // 结果类型 —— ⚠ 常量的类型不在 `Op` 里而在 `f.vals[result]`，`undef : i32` 和
        // `undef : i64` 本身完全相等，合成一个就串了类型。
        let mut table: HashMap<(Op, Ty), ValId> = HashMap::new();
        // 记下进表的顺序，出作用域时按这个往回撤——同一个键同时只会在表里有一份，
        // 因为撞上了就直接复用、不会再插。
        let mut undo: Vec<(Op, Ty)> = Vec::new();
        // (块, 进块时的撤销位)；`None` 表示还没进去过。
        let mut stack: Vec<(usize, Option<usize>)> = vec![(0, None)];
        while let Some((b, mark)) = stack.pop() {
            if let Some(mark) = mark {
                for k in undo.drain(mark..) {
                    table.remove(&k);
                }
                continue;
            }
            stack.push((b, Some(undo.len())));
            for n in 0..f.blocks[b].insts.len() {
                let i = &f.blocks[b].insts[n];
                let (Some(r), true) = (i.result, i.op.pure()) else { continue };
                let mut op = i.op.clone();
                op.rename(&|v| resolve(&repl, v));
                let key = (op, f.vals[r.0 as usize]);
                match table.get(&key) {
                    Some(&v) => {
                        repl[r.0 as usize] = Some(v);
                        dead[b][n] = true;
                    }
                    None => {
                        table.insert(key.clone(), r);
                        undo.push(key);
                    }
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
