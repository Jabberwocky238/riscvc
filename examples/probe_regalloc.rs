//! 探针：寄存器分配器到底为什么要插那么多搬运。
//!
//! 走 [`riscvc::codegen::Observer`] 注入（⛔ 不是环境变量、不是 feature），把每个函数的
//! `Output::stats` 汇总起来。两组数:
//!
//! * **按原因分的搬运**（`moves_by_prio`，riscvc 给 Ion 加的）——「这条 mv 为什么存在」
//! * **拆分的来由**（`splits_*`，上游自带）——活跃区间为什么会被切开
//!
//! ```bash
//! cargo run --example probe_regalloc -- tests/fixtures/rust/core.O2.mlir
//! ```
use riscvc::codegen::Observer;
use riscvc::opt::DEFAULT_PIPELINE;
use riscvc::plugin::Registry;

/// `InsertMovePrio` 的六个取值，下标对齐 `moves_by_prio`。
const WHY: [&str; 6] = [
    "入边（前驱跳转处）",
    "段间接缝（同一个值被拆成多段，段与段分到不同寄存器）",
    "多固定寄存器·首轮（同一个值在一条指令上被要求待在两个不同的 ABI 寄存器里）",
    "多固定寄存器·次轮",
    "双地址（目的寄存器必须复用某个源）",
    "出边（后继块开头）",
];

#[derive(Default)]
struct Tally {
    funcs: usize,
    by_prio: [usize; 6],
    edits: usize,
    splits: usize,
    bundles: usize,
    spill_bundles: usize,
    merged: usize,
    evicted: usize,
    bparam: usize,
    insts: usize,
    /// 「多固定寄存器」赔掉的搬运，按 MOp 种类归类
    multi: Vec<(&'static str, usize, usize)>,
}

impl Observer for Tally {
    fn wants_shape(&self) -> bool {
        true
    }

    fn allocated(&mut self, _name: &str, shape: riscvc::codegen::Shape<'_>, out: &riscvc::regalloc::Output) {
        let s = &out.stats;
        self.insts += shape.insts;
        for &(k, d, c) in shape.multi_fixed {
            match self.multi.iter_mut().find(|(s, ..)| *s == k) {
                Some((_, a, b)) => (*a, *b) = (*a + d, *b + c),
                None => self.multi.push((k, d, c)),
            }
        }
        self.funcs += 1;
        for (a, b) in self.by_prio.iter_mut().zip(s.moves_by_prio) {
            *a += b;
        }
        self.edits += s.edits_count;
        self.splits += s.splits;
        self.bundles += s.final_bundle_count;
        self.spill_bundles += s.spill_bundle_count;
        self.merged += s.merged_bundle_count;
        self.evicted += s.evict_bundle_count;
        self.bparam += s.blockparam_ins_count + s.blockparam_outs_count;
    }
}

fn main() {
    for path in std::env::args().skip(1) {
        let text = std::fs::read_to_string(&path).expect("读输入");
        let reg = Registry::default();
        let mut m = reg.parse(&text).expect("解析");
        reg.run(&mut m, &DEFAULT_PIPELINE.to_vec()).expect("跑流水线");
        let mut t = Tally::default();
        m.compile_observed(&mut t).expect("编译");
        let total: usize = t.by_prio.iter().sum();
        println!("\n=== {path} ===\n{} 个函数，插入搬运 {total} 条（最终 edits {}）", t.funcs, t.edits);
        let mut rows: Vec<(usize, &str)> = t.by_prio.iter().copied().zip(WHY).collect();
        rows.sort_by(|a, b| b.0.cmp(&a.0));
        for (n, why) in rows {
            if n > 0 {
                println!("  {n:7}  {:3}%  {why}", n * 100 / total.max(1));
            }
        }
        t.multi.sort_by_key(|x| core::cmp::Reverse(x.1 + x.2));
        let (dup, clob): (usize, usize) = t.multi.iter().fold((0, 0), |a, x| (a.0 + x.1, a.1 + x.2));
        println!("「多固定寄存器」合计 {}：同一个值传了两次 {dup}，实参在调用后还活着 {clob}；按指令种类：{}",
                 dup + clob, t.multi.iter().map(|(k, d, c)| format!("{k} {}+{}", d, c)).collect::<Vec<_>>().join("，"));
        println!("机器指令 {}；拆分 {} 次；最终 bundle {}，其中溢出 bundle {}；合并 {}，驱逐 {}；块参数进出 {}",
                 t.insts, t.splits, t.bundles, t.spill_bundles, t.merged, t.evicted, t.bparam);
        // ⚠ 上游的 splits_clobbers / splits_hot / splits_conflicts / splits_defs / splits_all
        //   在 0.15.2 里声明了但一次都不写（死字段），⛔ 别去读它们。
    }
}
