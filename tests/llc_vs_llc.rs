//! 代码生成 vs `llc`：compiler-rt 语料，同一个函数两份编译产物（llc 编 `.ll`、riscvc 编 `.mlir`），
//! 各自链成镜像，在解释器里用同样的实参调用（[`llvm::call`]），比返回值、指针实参指向的内存、全局数据。
//! 每份语料各链一个镜像（两边共用桩与 builtins）。没有语料 / LLVM 就 SKIP。
mod llvm;
use llvm::call::{Domain, Image, Lib, Pair, Sig};
use riscvc::ir::Module;

fn level(name: &str) {
    let Some(llvm) = llvm::Llvm::locate() else { return };
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("target/corpus");
    let Ok(entries) = std::fs::read_dir(root.join("mlir")) else {
        eprintln!("SKIP：没有语料（先跑 tools/corpus.sh）");
        return;
    };
    let mut files: Vec<_> = entries.map(|e| e.unwrap().path()).filter(|p| p.to_str().unwrap().ends_with(&format!(".{name}.mlir"))).collect();
    files.sort();
    let tmp = std::env::temp_dir().join(format!("riscvc-llc-{name}-{}", std::process::id()));
    std::fs::create_dir_all(&tmp).unwrap();
    let lib = Lib::load();
    let mut rng = llvm::Rng(0x9e37_79b9_7f4a_7c15);
    let (mut bad, mut runs, mut tested) = (0, 0, 0);
    for f in &files {
        let stem = f.file_stem().unwrap().to_str().unwrap();
        let text = std::fs::read_to_string(f).unwrap();
        let m = Module::try_from(text.as_str()).unwrap();
        let asm = m.compile().unwrap_or_else(|e| panic!("{stem}: {e}"));
        let ours = riscvc::asm::Assembler::new().assemble(&asm).unwrap_or_else(|e| panic!("{stem}: 汇编 {e}"));
        let out = tmp.join(format!("{stem}.o"));
        let ll = root.join("ll").join(format!("{stem}.ll"));
        // 目标 = 缺省
        let target = riscvc::feature::Target::default();
        let (mattr, abi) = (format!("-mattr={},-relax", target.mattr()), format!("-target-abi={}", target.abi()));
        let (_, err) = llvm.run("llc", &["-mtriple=riscv32", &mattr, &abi, "-filetype=obj", ll.to_str().unwrap(), "-o", out.to_str().unwrap()], "");
        assert!(!err.contains("error"), "llc {stem}: {err}");
        let theirs = std::fs::read(&out).unwrap();
        let (a, b) = (Image::link(&lib, stem, &ours).unwrap(), Image::link(&lib, stem, &theirs).unwrap());
        let pair = Pair::new(&a, &b);
        for sig in m.functions.iter().filter_map(|func| Sig::of(&m, func)) {
            tested += 1;
            // C 源里的未定义行为（除以零、ctz / clz 的 0）不比
            let domain = if ["div", "mod", "ctz", "clz"].iter().any(|k| sig.name.contains(k)) { Domain::NonZero } else { Domain::Any };
            match pair.compare(&sig, &mut rng, 48, domain) {
                Ok(n) => runs += n,
                Err(e) => {
                    bad += 1;
                    if bad <= 20 {
                        eprintln!("{stem}: {e}");
                    }
                }
            }
        }
    }
    std::fs::remove_dir_all(&tmp).ok();
    eprintln!("{name}：{tested} 个函数、{runs} 次调用，{bad} 个函数结果不同");
    assert_eq!(bad, 0);
}

#[test]
fn o2() {
    level("O2");
}

#[test]
fn o0() {
    level("O0");
}
