//! 支配树与支配边界：Cooper-Harvey-Kennedy 的迭代算法，按逆后序跑到不动点。
//!
//! 走不到的块（[`crate::ir::Function::rpo`] 没收录的）没有支配者，一律当成「不被任何块支配、也不支配任何块」。
use crate::ir::Function;
use super::Analysis;

/// 每个块的前驱（按出现次序；同一前驱经多条边到达就出现多次 —— 块参数的实参要按边对上）。
pub struct Preds(Vec<Vec<usize>>);

impl Preds {
    #[must_use]
    pub fn new(f: &Function) -> Self {
        let mut preds = vec![Vec::new(); f.blocks.len()];
        for (b, blk) in f.blocks.iter().enumerate() {
            let Some(term) = blk.insts.last() else { continue };
            for t in term.op.targets() {
                preds[t.block.0 as usize].push(b);
            }
        }
        Self(preds)
    }

    #[must_use]
    pub fn of(&self, b: usize) -> &[usize] {
        &self.0[b]
    }
}

/// 支配树（自带前驱：分析之间的依赖由被依赖者自己算，⛔ 不在管理器里做嵌套借用）。
pub struct Dom {
    /// 直接支配者；入口是它自己，走不到的块是 `None`。
    idom: Vec<Option<usize>>,
    /// 逆后序里的位置（`usize::MAX` = 走不到）。
    at: Vec<usize>,
    preds: Preds,
}

impl Dom {
    #[must_use]
    pub fn preds(&self) -> &Preds {
        &self.preds
    }

    #[must_use]
    pub fn new(f: &Function) -> Self {
        let preds = Preds::new(f);
        let n = f.blocks.len();
        let rpo = f.rpo();
        let mut at = vec![usize::MAX; n];
        for (k, &b) in rpo.iter().enumerate() {
            at[b] = k;
        }
        let mut idom = vec![None; n];
        let Some(&entry) = rpo.first() else { return Self { idom, at, preds } };
        idom[entry] = Some(entry);
        // 逆后序保证前驱大多已定 ⇒ 几轮就到不动点
        let mut changed = true;
        while changed {
            changed = false;
            for &b in rpo.iter().skip(1) {
                // 第一个已定的前驱起手，其余逐个求交
                let mut new = None;
                for &p in preds.of(b) {
                    if idom[p].is_none() {
                        continue;
                    }
                    new = Some(match new {
                        None => p,
                        Some(cur) => Self::meet(&idom, &at, p, cur),
                    });
                }
                if new.is_some() && idom[b] != new {
                    idom[b] = new;
                    changed = true;
                }
            }
        }
        Self { idom, at, preds }
    }

    /// 两个块在支配树上的最近公共祖先（沿 idom 往上走，用逆后序号比深浅）。
    fn meet(idom: &[Option<usize>], at: &[usize], mut a: usize, mut b: usize) -> usize {
        while a != b {
            while at[a] > at[b] {
                a = idom[a].expect("已定");
            }
            while at[b] > at[a] {
                b = idom[b].expect("已定");
            }
        }
        a
    }

    /// 直接支配者（入口与走不到的块都是 `None`）。
    #[must_use]
    pub fn idom(&self, b: usize) -> Option<usize> {
        self.idom[b].filter(|&d| d != b)
    }

    /// `a` 支配 `b` 吗（自反：`a == b` 算支配）。走不到的块一律 `false`。
    #[must_use]
    pub fn dominates(&self, a: usize, b: usize) -> bool {
        if self.at[a] == usize::MAX || self.at[b] == usize::MAX {
            return false;
        }
        let mut x = b;
        loop {
            if x == a {
                return true;
            }
            match self.idom[x] {
                Some(d) if d != x => x = d,
                _ => return false,
            }
        }
    }

    /// 支配边界（Cytron）：`DF[b]` 是「b 支配它的某个前驱、却不严格支配它自己」的那些块 ——
    /// ⭐ 要给哪些块加参数（phi 的落点）就看这里。
    #[must_use]
    pub fn frontier(&self, f: &Function) -> Vec<Vec<usize>> {
        let preds = &self.preds;
        let mut df = vec![Vec::new(); f.blocks.len()];
        for b in 0..f.blocks.len() {
            let ps = preds.of(b);
            if ps.len() < 2 || self.at[b] == usize::MAX {
                continue;
            }
            let stop = self.idom[b];
            for &p in ps {
                let mut x = p;
                while self.at[x] != usize::MAX && Some(x) != stop {
                    if !df[x].contains(&b) {
                        df[x].push(b);
                    }
                    match self.idom[x] {
                        Some(d) if d != x => x = d,
                        _ => break,
                    }
                }
            }
        }
        df
    }
}

impl Analysis for Dom {
    const NAME: &'static str = "dom";

    fn compute(f: &Function) -> Self {
        Self::new(f)
    }
}
