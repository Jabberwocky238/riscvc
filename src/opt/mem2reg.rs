//! `mem2reg`：把只被整存整取的 alloca 提升成 SSA 值。
//!
//! ⭐ 这个 IR 是 **SSA + 块参数，没有 phi**。LLVM 里「在汇合点插一个 phi」在这里是
//! 「给块加一个参数，并在**每个**前驱的跳转处补一条实参」——两件事必须同时做，否则
//! 块参数与实参的个数就对不上了。本模块所有改动都围着这条不变式转。
//!
//! 算法是 Cytron 的老三步：挑槽位、按迭代支配边界插块参数、沿支配树改名。
use super::{AnalysisManager, Dom, FunctionPass, PerFunction, Preserved};
use crate::ir::{Const, Error, Function, Inst, Op, Types, ValId};
use alloc::vec;
use alloc::vec::Vec;

/// `mem2reg`：把只被 load / store 整体读写的 alloca 提升成 SSA 值。
pub struct Mem2RegImpl;

/// `mem2reg` 作为模块级 pass。
pub type Mem2Reg = PerFunction<Mem2RegImpl>;

/// 内置 `mem2reg` 的那一份。
pub const MEM2REG: Mem2Reg = PerFunction(Mem2RegImpl);

/// 一个被提升的槽位：它的 alloca 结果值，以及它装的东西的类型。
struct Slot {
    ptr: ValId,
    /// 从任意一次 load 的结果或 store 的来源取——alloca 自己只知道指针类型。
    ty: crate::ir::Ty,
}

impl Mem2RegImpl {
    /// 可提升的槽位：计数为常量 1 的 alloca，且它的指针只作 load / store 的指针用。
    /// 出现在别处（传参、比较、gep、存进内存……）就是逃逸，一律不碰。
    fn promotable(f: &Function) -> Vec<Slot> {
        let mut one = vec![false; f.vals.len()];
        for i in f.blocks.iter().flat_map(|b| &b.insts) {
            if let (Some(r), Op::Const(Const::Int(1))) = (i.result, &i.op) {
                one[r.0 as usize] = true;
            }
        }
        let mut slot = vec![false; f.vals.len()];
        let mut ty = vec![None; f.vals.len()];
        for i in f.blocks.iter().flat_map(|b| &b.insts) {
            if let (Some(r), Op::Alloca { count, .. }) = (i.result, &i.op)
                && one[count.0 as usize]
            {
                slot[r.0 as usize] = true;
            }
        }
        // 块参数不可能是 alloca 的结果，但跳转实参里出现就是逃逸。
        let mut bad = vec![false; f.vals.len()];
        let note = |v: ValId, t: crate::ir::Ty, ty: &mut Vec<Option<crate::ir::Ty>>| {
            if slot[v.0 as usize] {
                ty[v.0 as usize] = Some(t);
            }
        };
        for b in &f.blocks {
            for i in &b.insts {
                match &i.op {
                    Op::Load { ptr, .. } => {
                        if let Some(r) = i.result {
                            note(*ptr, f.vals[r.0 as usize], &mut ty);
                        }
                    }
                    Op::Store { val, ptr, .. } => {
                        note(*ptr, f.vals[val.0 as usize], &mut ty);
                        bad[val.0 as usize] = true;
                    }
                    Op::Alloca { .. } => {}
                    other => {
                        for v in other.operands() {
                            bad[v.0 as usize] = true;
                        }
                    }
                }
            }
        }
        (0..f.vals.len())
            .filter(|&v| slot[v] && !bad[v])
            .filter_map(|v| ty[v].map(|ty| Slot { ptr: ValId(u32::try_from(v).unwrap_or_default()), ty }))
            .collect()
    }

    /// 一个槽位在每个块的入口是不是活的 —— ⭐ 只在活的汇合块上加参数（剪枝 SSA）。
    /// 不剪的话，死掉的块参数会在**每个**前驱的跳转处换来一条寄存器拷贝，白花。
    fn live_in(slot: ValId, f: &Function) -> Vec<bool> {
        let n = f.blocks.len();
        // `读在写前`：这个块自己就要用到传进来的值。`写过`：块里存过，传进来的到此为止。
        let (mut reads, mut writes) = (vec![false; n], vec![false; n]);
        for (b, block) in f.blocks.iter().enumerate() {
            for i in &block.insts {
                match &i.op {
                    Op::Load { ptr, .. } if *ptr == slot && !writes[b] => reads[b] = true,
                    Op::Store { ptr, .. } if *ptr == slot => writes[b] = true,
                    _ => {}
                }
            }
        }
        let succs: Vec<Vec<usize>> = f.blocks.iter().map(|b| b.insts.last().map(|i| i.op.targets().map(|t| t.block.0 as usize).collect()).unwrap_or_default()).collect();
        let mut live = reads.clone();
        let mut work: Vec<usize> = (0..n).filter(|&b| live[b]).collect();
        while let Some(b) = work.pop() {
            for p in (0..n).filter(|&p| succs[p].contains(&b)) {
                // 前驱自己写过，传进来的那份到那儿就没人要了。
                if !writes[p] && !core::mem::replace(&mut live[p], true) {
                    work.push(p);
                }
            }
        }
        live
    }

    /// 每个槽位该在哪些块上长出一个参数：有 store 的块，按支配边界反复扩张，
    /// 再把槽位在那儿不活的块剔掉。
    fn joins(slots: &[Slot], f: &Function, frontier: &[Vec<usize>]) -> Vec<Vec<usize>> {
        slots
            .iter()
            .map(|s| {
                let live = Self::live_in(s.ptr, f);
                let mut work: Vec<usize> = (0..f.blocks.len())
                    .filter(|&b| f.blocks[b].insts.iter().any(|i| matches!(&i.op, Op::Store { ptr, .. } if *ptr == s.ptr)))
                    .collect();
                let mut need = vec![false; f.blocks.len()];
                while let Some(b) = work.pop() {
                    for &j in &frontier[b] {
                        if !core::mem::replace(&mut need[j], true) {
                            work.push(j);
                        }
                    }
                }
                need.iter().enumerate().filter(|&(b, n)| *n && live[b]).map(|(b, _)| b).collect()
            })
            .collect()
    }
}

impl FunctionPass for Mem2RegImpl {
    fn name(&self) -> &str {
        "mem2reg"
    }

    fn summary(&self) -> &str {
        "只被整存整取的 alloca 提升成 SSA 值（汇合处加块参数）"
    }

    fn run(&self, f: &mut Function, _tys: &Types, am: &mut AnalysisManager) -> Result<Preserved, Error> {
        let slots = Self::promotable(f);
        if slots.is_empty() {
            return Ok(Preserved::All);
        }
        let (idom, frontier) = {
            let dom = am.get::<Dom>(f);
            ((0..f.blocks.len()).map(|b| dom.idom(b)).collect::<Vec<_>>(), dom.frontier(f))
        };
        let joins = Self::joins(&slots, f, &frontier);

        // ① 插块参数。`added[b]` 是块 b 新长出来的参数，按槽位顺序排——每个前驱补实参
        //    时也按这个顺序，两边才对得上。
        let mut added: Vec<Vec<(usize, ValId)>> = vec![Vec::new(); f.blocks.len()];
        for (k, blocks) in joins.iter().enumerate() {
            for &b in blocks {
                let v = ValId(u32::try_from(f.vals.len()).unwrap_or_default());
                f.vals.push(slots[k].ty);
                f.blocks[b].params.push(v);
                added[b].push((k, v));
            }
        }

        // 还没写过就读，读到的是 undef —— 先在入口备好，当前值才永远有东西可给，
        // 否则汇合处补实参时会少一条，块参数就对不上了。
        let undef: Vec<ValId> = slots
            .iter()
            .map(|s| {
                let v = ValId(u32::try_from(f.vals.len()).unwrap_or_default());
                f.vals.push(s.ty);
                v
            })
            .collect();
        let seed: Vec<Inst> = undef.iter().map(|&v| Inst { result: Some(v), op: Op::Const(Const::Undef) }).collect();
        f.blocks[0].insts.splice(0..0, seed);

        // ② 沿支配树前序改名。每个槽位一份当前值；进块前存档，出块后还原。
        let mut kids: Vec<Vec<usize>> = vec![Vec::new(); f.blocks.len()];
        for b in 0..f.blocks.len() {
            if let Some(p) = idom[b] {
                kids[p].push(b);
            }
        }
        let mut repl: Vec<Option<ValId>> = vec![None; f.vals.len()];
        let mut cur: Vec<ValId> = undef;
        let mut dead: Vec<Vec<bool>> = f.blocks.iter().map(|b| vec![false; b.insts.len()]).collect();
        // (块, 进块前的当前值) —— 退栈时还原，等价于递归的前序遍历。
        let mut stack = vec![(0usize, None)];
        while let Some((b, saved)) = stack.pop() {
            if let Some(saved) = saved {
                cur = saved;
                continue;
            }
            stack.push((b, Some(cur.clone())));
            for &(k, v) in &added[b] {
                cur[k] = v;
            }
            for (n, i) in f.blocks[b].insts.iter().enumerate() {
                match &i.op {
                    Op::Load { ptr, .. } => {
                        if let Some(k) = slots.iter().position(|s| s.ptr == *ptr) {
                            if let Some(r) = i.result {
                                repl[r.0 as usize] = Some(cur[k]);
                            }
                            dead[b][n] = true;
                        }
                    }
                    Op::Store { val, ptr, .. } => {
                        if let Some(k) = slots.iter().position(|s| s.ptr == *ptr) {
                            cur[k] = *val;
                            dead[b][n] = true;
                        }
                    }
                    Op::Alloca { .. } => {
                        if i.result.is_some_and(|r| slots.iter().any(|s| s.ptr == r)) {
                            dead[b][n] = true;
                        }
                    }
                    _ => {}
                }
            }
            // ③ 给每个后继新长出来的参数补实参 —— 不变式就靠这一步维持。
            let succs: Vec<usize> = f.blocks[b].insts.last().map(|i| i.op.targets().map(|t| t.block.0 as usize).collect()).unwrap_or_default();
            let fills: Vec<Vec<ValId>> = succs.iter().map(|&s| added[s].iter().map(|&(k, _)| cur[k]).collect()).collect();
            if let Some(last) = f.blocks[b].insts.last_mut() {
                for (t, fill) in last.op.targets_mut().zip(fills) {
                    t.args.extend(fill);
                }
            }
            stack.extend(kids[b].iter().map(|&c| (c, None)));
        }

        // ④ 把被删掉的 load 的结果换成它读到的值，再删掉 alloca / load / store。
        let to = |v: ValId| {
            let mut v = v;
            while let Some(n) = repl[v.0 as usize] {
                v = n;
            }
            v
        };
        for b in &mut f.blocks {
            for i in &mut b.insts {
                i.op.rename(&to);
            }
        }
        for (b, block) in f.blocks.iter_mut().enumerate() {
            let mut n = 0;
            block.insts.retain(|_| {
                n += 1;
                !dead[b][n - 1]
            });
        }
        // ⛔ 只动了块参数与跳转实参，块与边没变 ⇒ 支配类分析仍然有效。
        Ok(Preserved::Cfg)
    }
}
