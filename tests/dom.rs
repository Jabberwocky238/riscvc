//! 支配底座的不变式：拿入库的 lit 语料（上千个函数）跑 [`riscvc::opt::Dom`]，违例即算法错。
//!
//! ⛔ 不手搓 CFG：手搓的那几个形状恰好是最容易想对的，真实语料里的不可达块、自环、
//! 多重边才是出错的地方。
mod par;
use riscvc::opt::{Dom, Preds};
use riscvc::plugin::Registry;
use std::fs;
use std::path::Path;

/// 收集目录下的 `.mlir`。
fn gather(dir: &Path, out: &mut Vec<std::path::PathBuf>) {
    let Ok(rd) = fs::read_dir(dir) else { return };
    for e in rd.flatten() {
        let p = e.path();
        if p.is_dir() {
            gather(&p, out);
        } else if p.extension().is_some_and(|x| x == "mlir") {
            out.push(p);
        }
    }
}

#[test]
fn invariants_on_lit_corpus() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("tests/fixtures/lit");
    let mut files = Vec::new();
    gather(&root, &mut files);
    if files.is_empty() {
        eprintln!("SKIP：没有 fixture（先跑 tools/lit.sh）");
        return;
    }
    files.sort();
    // 每份语料各算各的（并行，见 tests/par）：（函数数, 块数, 违例）
    let per = par::map(&files, |_, f| {
        let (mut funcs, mut blocks, mut bad) = (0usize, 0usize, Vec::new());
        let Ok(text) = fs::read_to_string(f) else { return (funcs, blocks, bad) };
        let Ok(m) = Registry::default().parse(&text) else { return (funcs, blocks, bad) };
        for func in &m.functions {
            if func.blocks.is_empty() {
                continue;
            }
            funcs += 1;
            blocks += func.blocks.len();
            let preds = Preds::new(func);
            let dom = Dom::new(func);
            let rpo = func.rpo();
            let entry = rpo[0];
            let mut say = |why: String| {
                if bad.len() < 20 {
                    bad.push(format!("{}::{}：{why}", f.display(), func.name));
                }
            };
            for &b in &rpo {
                // 入口支配每个可达块
                if !dom.dominates(entry, b) {
                    say(format!("入口 {entry} 不支配可达块 {b}"));
                }
                // 自反
                if !dom.dominates(b, b) {
                    say(format!("{b} 不支配自己"));
                }
                match dom.idom(b) {
                    // 直接支配者必须严格支配它
                    Some(d) => {
                        if d == b || !dom.dominates(d, b) {
                            say(format!("idom({b}) = {d} 却不严格支配它"));
                        }
                    }
                    // 只有入口可以没有直接支配者
                    None if b != entry => say(format!("可达块 {b} 没有 idom（入口是 {entry}）")),
                    None => {}
                }
            }
            // 每条边 p→s：idom(s) 必须支配 p（支配树的性质）
            for &s in &rpo {
                if let Some(d) = dom.idom(s) {
                    for &p in preds.of(s) {
                        if dom.dominates(entry, p) && !dom.dominates(d, p) {
                            say(format!("边 {p}→{s}：idom({s}) = {d} 不支配 {p}"));
                        }
                    }
                }
            }
            // 支配边界：x ∈ DF 的某块 b ⇒ x 支配 b 的某个前驱，且 x 不严格支配 b
            for (x, front) in dom.frontier(func).iter().enumerate() {
                for &b in front {
                    if !preds.of(b).iter().any(|&p| dom.dominates(x, p)) {
                        say(format!("DF[{x}] 含 {b}，但 {x} 不支配 {b} 的任何前驱"));
                    }
                    if x != b && dom.dominates(x, b) {
                        say(format!("DF[{x}] 含 {b}，但 {x} 严格支配了 {b}"));
                    }
                }
            }
        }
        (funcs, blocks, bad)
    });
    let (funcs, blocks) = per.iter().fold((0, 0), |(f, b), p| (f + p.0, b + p.1));
    let bad: Vec<String> = per.into_iter().flat_map(|p| p.2).take(20).collect();
    eprintln!("{} 份、{funcs} 个函数、{blocks} 个块", files.len());
    assert!(bad.is_empty(), "支配不变式违例 {} 处：\n{}", bad.len(), bad.join("\n"));
}
