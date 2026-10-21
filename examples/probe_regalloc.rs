//! 探针：寄存器分配器到底为什么要插那么多搬运。
//!
//! 走 [`riscvc::codegen::Observer`] 注入（⛔ 不是环境变量、不是 feature），把每个函数的
//! `Output::stats`（regalloc2 0.15.2 自带的计数：搬运、拆分、bundle）汇总起来，外加分配前机器 IR 的「多固定寄存器」。
//! ⚠ 「这条 mv 为什么存在」的按原因计数是从前内化 regalloc2 时加的，改回 crates.io 的 regalloc2 之后没有了。
//!
//! ```bash
//! cargo run --example probe_regalloc -- tests/fixtures/rust/core.O2.mlir
//! ```
use riscvc::codegen::Observer;
use riscvc::opt::DEFAULT_PIPELINE;
use riscvc::plugin::Registry;

#[derive(Default)]
struct Tally {
    funcs: usize,
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
        println!("\n=== {path} ===\n{} 个函数，最终 edits {}", t.funcs, t.edits);
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
