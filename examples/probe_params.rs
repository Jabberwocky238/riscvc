//! 探针：跑完缺省流水线后，数有多少「平凡块参数」——所有可达前驱传进来的是同一个值。
//! 每消掉一个这样的参数，就省下「前驱个数」条寄存器拷贝。
//!
//! ⭐ 结论（2026-10-17，compiler_builtins.O0 / core.O0）：块参数 806 / 1062，
//! 其中平凡的只有 **3 / 2** —— mem2reg 的剪枝 SSA 已经做对了，
//! 多出来的那几千条 `mv` ⛔ 不是块参数的锅，别再往这个方向查。
//!
//! ```bash
//! cargo run --example probe_params -- tests/fixtures/rust/core.O0.mlir
//! ```

use riscvc::opt::DEFAULT_PIPELINE;
use riscvc::plugin::Registry;
use std::collections::HashMap;

fn main() {
    for path in std::env::args().skip(1) {
        let text = std::fs::read_to_string(&path).expect("读输入");
        let reg = Registry::default();
        let mut m = reg.parse(&text).expect("解析");
        let pipe: Vec<&str> = DEFAULT_PIPELINE.to_vec();
        reg.run(&mut m, &pipe).expect("跑流水线");
        let (mut params, mut trivial, mut saved) = (0usize, 0usize, 0usize);
        for f in &m.functions {
            if f.blocks.is_empty() {
                continue;
            }
            // 每个块：各前驱在每个参数位上给出的实参
            let mut incoming: HashMap<usize, Vec<Vec<u32>>> = HashMap::new();
            for b in &f.blocks {
                for i in b.insts.last().iter().flat_map(|i| i.op.targets()) {
                    let e = incoming.entry(i.block.0 as usize).or_insert_with(|| vec![Vec::new(); f.blocks[i.block.0 as usize].params.len()]);
                    for (k, a) in i.args.iter().enumerate() {
                        if k < e.len() {
                            e[k].push(a.0);
                        }
                    }
                }
            }
            for (bi, b) in f.blocks.iter().enumerate().skip(1) {
                let Some(inc) = incoming.get(&bi) else { continue };
                for (k, p) in b.params.iter().enumerate() {
                    params += 1;
                    let mut vs: Vec<u32> = inc[k].iter().copied().filter(|&v| v != p.0).collect();
                    vs.sort_unstable();
                    vs.dedup();
                    if vs.len() <= 1 {
                        trivial += 1;
                        saved += inc[k].len();
                    }
                }
            }
        }
        println!("{path}: 块参数 {params}，其中平凡 {trivial} ({}%)，可省的跳转实参 {saved}", trivial * 100 / params.max(1));
    }
}
