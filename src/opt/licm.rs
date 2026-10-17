//! `licm`：把循环里算出来每次都一样的指令提到循环外。
//!
//! 自然循环由回边认出来（`b → h` 且 `h` 支配 `b`）。提升的落点是**现成的**前置头块：
//! 循环外唯一的那个前驱，且它只有这一个后继。⛔ 没有现成的就跳过这个循环——新建一个
//! 前置头块要改 CFG，还要把块参数与各前驱的实参一起重排，代价和风险都不值当。
//!
//! ⛔ 不提升除法取余：[`Op::pure`] 说的是「没有副作用」，不是「随便挪到哪都不出错」。
//! 循环体一次都不进时，把 `x / y` 提到外面就可能把一次本不会发生的除零搬了出来。
use super::{AnalysisManager, Dom, FunctionPass, PerFunction, Preserved};
use crate::ir::{BinOp, Error, Function, Op, Types};
use alloc::vec;
use alloc::vec::Vec;

/// `licm`：循环不变量外提。
pub struct LicmImpl;

/// `licm` 作为模块级 pass。
pub type Licm = PerFunction<LicmImpl>;

/// 内置 `licm` 的那一份。
pub const LICM: Licm = PerFunction(LicmImpl);

/// 一个自然循环。
struct Loop {
    /// 循环头。
    head: usize,
    /// 循环里的块（含头）。
    body: Vec<bool>,
    /// 提升的落点：循环外唯一的前驱，且它只有这一个后继。
    pre: usize,
}

impl LicmImpl {
    /// 每个块的后继。
    fn succs(f: &Function) -> Vec<Vec<usize>> {
        f.blocks.iter().map(|b| b.insts.last().map(|i| i.op.targets().map(|t| t.block.0 as usize).collect()).unwrap_or_default()).collect()
    }

    /// 自然循环：回边 `b → h`（`h` 支配 `b`）定出头，循环体是不经过头就能到 `b` 的块。
    fn loops(f: &Function, dom: &Dom, succs: &[Vec<usize>]) -> Vec<Loop> {
        let n = f.blocks.len();
        let mut out: Vec<Loop> = Vec::new();
        for (b, outs) in succs.iter().enumerate() {
            for &h in outs {
                if !dom.dominates(h, b) {
                    continue;
                }
                // 已经有这个头了就把体并进去（多条回边同一个头）。
                let mut body = out.iter().position(|l| l.head == h).map_or_else(|| vec![false; n], |k| out[k].body.clone());
                body[h] = true;
                let mut work = vec![b];
                while let Some(x) = work.pop() {
                    if core::mem::replace(&mut body[x], true) {
                        continue;
                    }
                    work.extend(dom.preds().of(x).iter().copied());
                }
                // 循环外的前驱只能有一个，而且它只能有这一个后继 —— 那就是现成的前置头块。
                let outside: Vec<usize> = dom.preds().of(h).iter().copied().filter(|&p| !body[p]).collect();
                let ([pre], true) = (&*outside, outside.first().is_some_and(|&p| succs[p].len() == 1)) else { continue };
                match out.iter().position(|l| l.head == h) {
                    Some(k) => out[k].body = body,
                    None => out.push(Loop { head: h, body, pre: *pre }),
                }
            }
        }
        out
    }

    /// 这条指令挪到循环外安全吗。
    fn movable(op: &Op) -> bool {
        op.pure() && !matches!(op, Op::Bin(BinOp::UDiv | BinOp::SDiv | BinOp::URem | BinOp::SRem, ..))
    }
}

impl FunctionPass for LicmImpl {
    fn name(&self) -> &str {
        "licm"
    }

    fn summary(&self) -> &str {
        "把循环里每次都算出同样结果的指令提到循环外"
    }

    fn run(&self, f: &mut Function, _tys: &Types, am: &mut AnalysisManager) -> Result<Preserved, Error> {
        let succs = Self::succs(f);
        let loops = {
            let dom = am.get::<Dom>(f);
            Self::loops(f, dom, &succs)
        };
        if loops.is_empty() {
            return Ok(Preserved::All);
        }
        // 每个值在哪个块里定义（块参数算它自己那个块）。
        let mut home: Vec<Option<usize>> = vec![None; f.vals.len()];
        for (b, blk) in f.blocks.iter().enumerate() {
            for &p in &blk.params {
                home[p.0 as usize] = Some(b);
            }
            for i in &blk.insts {
                if let Some(r) = i.result {
                    home[r.0 as usize] = Some(b);
                }
            }
        }
        let mut moved = 0usize;
        for l in &loops {
            // 提一条可能让下一条也变成不变量，所以反复做到不再变。
            loop {
                let mut found = None;
                'scan: for b in 0..f.blocks.len() {
                    if !l.body[b] || b == l.pre {
                        continue;
                    }
                    for (n, i) in f.blocks[b].insts.iter().enumerate() {
                        let (Some(_), true) = (i.result, Self::movable(&i.op)) else { continue };
                        // 操作数全在循环外定义，才每次都一样。
                        if i.op.operands().all(|v| home[v.0 as usize].is_none_or(|h| !l.body[h])) {
                            found = Some((b, n));
                            break 'scan;
                        }
                    }
                }
                let Some((b, n)) = found else { break };
                let inst = f.blocks[b].insts.remove(n);
                if let Some(r) = inst.result {
                    home[r.0 as usize] = Some(l.pre);
                }
                // 放在前置头块的终结指令之前。
                let at = f.blocks[l.pre].insts.len().saturating_sub(1);
                f.blocks[l.pre].insts.insert(at, inst);
                moved += 1;
            }
        }
        // ⛔ 只挪指令，块与边没动。
        if moved == 0 { Ok(Preserved::All) } else { Ok(Preserved::Cfg) }
    }
}
