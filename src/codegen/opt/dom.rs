//! 支配树（Cooper–Harvey–Kennedy 迭代法），只含从入口走得到的块。
use super::MBlock;

/// 孩子表扁平存放：块 `b` 的孩子是 `kids[starts[b]..starts[b + 1]]`（按逆后序）。
pub struct DomTree {
    kids: Box<[usize]>,
    starts: Box<[usize]>,
}

impl DomTree {
    /// 块 `b` 在支配树里的孩子。
    #[must_use]
    pub fn children(&self, b: usize) -> &[usize] {
        &self.kids[self.starts[b]..self.starts[b + 1]]
    }

    /// 逆后序（显式栈）。
    fn rpo(blocks: &[MBlock]) -> Vec<usize> {
        let mut seen = vec![false; blocks.len()];
        let mut post = Vec::with_capacity(blocks.len());
        let mut stack = vec![(0usize, 0usize)];
        seen[0] = true;
        while let Some((b, k)) = stack.last_mut() {
            let b = *b;
            match blocks[b].succs.get(*k) {
                Some(s) => {
                    *k += 1;
                    if !seen[s.index()] {
                        seen[s.index()] = true;
                        stack.push((s.index(), 0));
                    }
                }
                None => {
                    post.push(b);
                    stack.pop();
                }
            }
        }
        post.reverse();
        post
    }
}

impl From<&[MBlock]> for DomTree {
    fn from(blocks: &[MBlock]) -> Self {
        let n = blocks.len();
        let rpo = Self::rpo(blocks);
        let mut order = vec![usize::MAX; n];
        for (k, &b) in rpo.iter().enumerate() {
            order[b] = k;
        }
        let mut preds = vec![Vec::new(); n];
        for &b in &rpo {
            for s in &blocks[b].succs {
                preds[s.index()].push(b);
            }
        }
        let mut idom = vec![None; n];
        idom[0] = Some(0);
        let intersect = |idom: &[Option<usize>], mut a: usize, mut b: usize| {
            while a != b {
                while order[a] > order[b] {
                    a = idom[a].expect("处理过的块有 idom");
                }
                while order[b] > order[a] {
                    b = idom[b].expect("处理过的块有 idom");
                }
            }
            a
        };
        let mut changed = true;
        while changed {
            changed = false;
            for &b in &rpo[1..] {
                let mut done = preds[b].iter().copied().filter(|&p| idom[p].is_some());
                let Some(first) = done.next() else { continue };
                let new = done.fold(first, |acc, p| intersect(&idom, acc, p));
                if idom[b] != Some(new) {
                    idom[b] = Some(new);
                    changed = true;
                }
            }
        }
        // 按父块计数 ⇒ 前缀和得起点 ⇒ 按逆后序填（同一父块下的孩子保持逆后序）
        let mut starts = vec![0; n + 1];
        for &b in &rpo[1..] {
            if let Some(d) = idom[b] {
                starts[d + 1] += 1;
            }
        }
        for k in 0..n {
            starts[k + 1] += starts[k];
        }
        let mut fill = starts.clone();
        let mut kids = vec![0; starts[n]];
        for &b in &rpo[1..] {
            if let Some(d) = idom[b] {
                kids[fill[d]] = b;
                fill[d] += 1;
            }
        }
        Self { kids: kids.into(), starts: starts.into() }
    }
}
