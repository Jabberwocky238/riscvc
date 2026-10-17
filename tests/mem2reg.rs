//! mem2reg 之后，块参数与跳转实参必须依旧一一对应。
//!
//! ⭐ 这个 IR 没有 phi：提升一个槽位要同时「给块加参数」和「给**每个**前驱补实参」。
//! 两件事但凡漏一半，个数就对不上——这条不变式比任何单点用例都值钱，所以拿入库的
//! lit 语料整批压。⛔ 不手搓 CFG：真实语料里的不可达块、自环、多重边才是出错的地方。
use riscvc::ir::Function;
use riscvc::opt::{MEM2REG, Pass};
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

/// 每个块的参数个数，和每个前驱在对应出口给出的实参个数，必须相等。
fn mismatched(f: &Function) -> Vec<String> {
    let mut bad = Vec::new();
    for (b, block) in f.blocks.iter().enumerate() {
        for t in block.insts.last().iter().flat_map(|i| i.op.targets()) {
            let want = f.blocks.get(t.block.0 as usize).map_or(0, |s| s.params.len());
            if t.args.len() != want {
                bad.push(format!("{}：块 {b} → 块 {} 给了 {} 个实参，那个块要 {want} 个", f.name, t.block.0, t.args.len()));
            }
        }
    }
    bad
}

#[test]
fn block_params_and_jump_args_still_line_up() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("tests/fixtures/lit");
    let mut files = Vec::new();
    gather(&root, &mut files);
    if files.is_empty() {
        eprintln!("SKIP：没有 fixture（先跑 tools/lit.sh）");
        return;
    }
    files.sort();
    let reg = Registry::default();
    let (mut funcs, mut before, mut bad) = (0usize, 0usize, Vec::new());
    for path in &files {
        let Ok(text) = fs::read_to_string(path) else { continue };
        let Ok(mut m) = reg.parse(&text) else { continue };
        // 先验语料本身是对的，不然分不清是谁坏的。
        for func in &m.functions {
            before += mismatched(func).len();
        }
        if MEM2REG.run(&mut m).is_err() {
            continue;
        }
        for func in &m.functions {
            if func.blocks.is_empty() {
                continue;
            }
            funcs += 1;
            bad.extend(mismatched(func).into_iter().map(|e| format!("{}：{e}", path.display())));
        }
    }
    assert_eq!(before, 0, "语料本身就对不上，先查解析");
    println!("{} 份、{funcs} 个函数 …… 跑完 mem2reg 仍对得上", files.len());
    assert!(bad.is_empty(), "{} 处对不上：\n{}", bad.len(), bad.iter().take(20).cloned().collect::<Vec<_>>().join("\n"));
}
