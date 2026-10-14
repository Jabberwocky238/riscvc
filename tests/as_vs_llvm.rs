//! 汇编器 vs `llvm-mc -filetype=obj`：逐份比各节字节、重定位（目标归一成「全局名」或「节 + 偏移」）、全局符号。
//! 语料：`target/corpus/s`（`tools/corpus.sh`，compiler-rt）、`tests/fixtures/mc`（入库，`tools/fixtures.py` 从 LLVM 自带的
//! MC / lld fixture 生成）。没有语料 / LLVM 就 SKIP。
mod llvm;
use object::{Object, ObjectSection, ObjectSymbol, RelocationTarget};
use std::collections::BTreeMap;

/// 一份目标文件里要比的东西。
#[derive(Debug, PartialEq)]
struct Norm {
    sections: BTreeMap<String, (u32, u64, Vec<u8>)>,
    relocs: Vec<(String, u64, u32, String, i64)>,
    globals: BTreeMap<String, (String, u64, u64, u8, u8)>,
}

const SKIP: &[&str] = &[".comment", ".llvm_addrsig", ".symtab", ".strtab", ".shstrtab", ".note.GNU-stack"];

impl Norm {
    fn of(bytes: &[u8]) -> Self {
        let file = object::File::parse(bytes).unwrap();
        let name = |i: object::SectionIndex| file.section_by_index(i).map(|s| String::from(s.name().unwrap())).unwrap_or_default();
        let mut sections = BTreeMap::new();
        let mut relocs = Vec::new();
        for s in file.sections() {
            let n = String::from(s.name().unwrap());
            if SKIP.contains(&n.as_str()) || n.starts_with(".rela") || s.size() == 0 {
                continue;
            }
            let object::SectionFlags::Elf { sh_flags } = s.flags() else { panic!() };
            let ty = match s.kind() {
                object::SectionKind::UninitializedData => 8,
                _ => 1,
            };
            sections.insert(n.clone(), (ty, sh_flags, s.uncompressed_data().map(|d| d.to_vec()).unwrap_or_default()));
            for (off, r) in s.relocations() {
                let object::RelocationFlags::Elf { r_type } = r.flags() else { panic!() };
                let (target, addend) = match r.target() {
                    RelocationTarget::Symbol(i) => {
                        let sym = file.symbol_by_index(i).unwrap();
                        if sym.is_global() || sym.is_undefined() {
                            (String::from(sym.name().unwrap()), r.addend())
                        } else {
                            (format!("{}+{:#x}", sym.section_index().map(name).unwrap_or_default(), sym.address()), r.addend())
                        }
                    }
                    t => (format!("{t:?}"), r.addend()),
                };
                relocs.push((n.clone(), off, r_type, target, addend));
            }
        }
        relocs.sort();
        let globals = file
            .symbols()
            .filter(|s| s.is_global() || s.is_undefined())
            .filter(|s| !s.name().unwrap_or("").is_empty())
            .map(|s| {
                let object::SymbolFlags::Elf { st_info, st_other } = s.flags() else { panic!() };
                (String::from(s.name().unwrap()), (s.section_index().map(name).unwrap_or_default(), s.address(), s.size(), st_info, st_other))
            })
            .collect();
        Self { sections, relocs, globals }
    }
}

fn corpus(sub: &str, how: &str) {
    let Some(llvm) = llvm::Llvm::locate() else { return };
    let dir = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join(sub);
    let Ok(entries) = std::fs::read_dir(&dir) else {
        eprintln!("SKIP：没有语料（先跑 {how}）");
        return;
    };
    let mut files: Vec<_> = entries.map(|e| e.unwrap().path()).collect();
    files.sort();
    let (mut bad, mut n) = (0, 0);
    // 对照的 llvm-mc 开同样的扩展（cargo feature）
    let mattr = format!("-mattr={},-relax", riscvc::feature::Target::mattr());
    let out = std::env::temp_dir().join(format!("riscvc-as-{}-{}.o", std::process::id(), sub.replace('/', "-")));
    for f in &files {
        let text = std::fs::read_to_string(f).unwrap();
        let (_, err) = llvm.run("llvm-mc", &["-triple=riscv32", &mattr, "-target-abi=ilp32f", "-filetype=obj", f.to_str().unwrap(), "-o", out.to_str().unwrap()], "");
        assert!(!err.contains("error:"), "{}: llvm-mc: {err}", f.display());
        let theirs = Norm::of(&std::fs::read(&out).unwrap());
        n += 1;
        let ours = match riscvc::asm::Assembler::new(riscvc::asm::Options::default()).assemble(&text) {
            Ok(bytes) => Norm::of(&bytes),
            Err(e) => {
                bad += 1;
                eprintln!("{}: riscvc 报错：{e}", f.display());
                continue;
            }
        };
        if ours != theirs {
            bad += 1;
            if bad <= 10 {
                eprintln!("{}:", f.display());
                for (k, v) in &theirs.sections {
                    if ours.sections.get(k) != Some(v) {
                        eprintln!("  节 {k}：riscvc {:?}\n        llvm   {:?}", ours.sections.get(k).map(|s| (s.0, s.1, s.2.len())), (v.0, v.1, v.2.len()));
                        if let Some(o) = ours.sections.get(k)
                            && let Some(i) = o.2.iter().zip(&v.2).position(|(a, b)| a != b) {
                                eprintln!("    首个不同字节 @ {i:#x}");
                            }
                    }
                }
                for k in ours.sections.keys().filter(|k| !theirs.sections.contains_key(*k)) {
                    eprintln!("  多出节 {k}");
                }
                if ours.relocs != theirs.relocs {
                    eprintln!("  重定位：riscvc {:?}\n          llvm   {:?}", ours.relocs.iter().filter(|r| !theirs.relocs.contains(r)).take(4).collect::<Vec<_>>(), theirs.relocs.iter().filter(|r| !ours.relocs.contains(r)).take(4).collect::<Vec<_>>());
                }
                if ours.globals != theirs.globals {
                    eprintln!("  全局符号：riscvc {:?}\n            llvm   {:?}", ours.globals.iter().filter(|(k, v)| theirs.globals.get(*k) != Some(v)).take(4).collect::<Vec<_>>(), theirs.globals.iter().filter(|(k, v)| ours.globals.get(*k) != Some(v)).take(4).collect::<Vec<_>>());
                }
            }
        }
    }
    std::fs::remove_file(&out).ok();
    eprintln!("{} / {n} 份一致", n - bad);
    assert_eq!(bad, 0);
}

#[test]
fn compiler_rt_corpus() {
    corpus("target/corpus/s", "tools/corpus.sh");
}

#[test]
fn llvm_fixtures() {
    corpus("tests/fixtures/mc", "tools/fixtures.py");
}

/// 玄铁：`tests/fixtures/mc-xthead`（LLVM 的 XThead fixture，`cargo test --features xthead`）。
#[cfg(feature = "xthead")]
#[test]
fn xthead_fixtures() {
    corpus("tests/fixtures/mc-xthead", "tools/fixtures.py");
}
