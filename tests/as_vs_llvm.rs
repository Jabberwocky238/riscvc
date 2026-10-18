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
    /// 节名的次序（含空节；不含符号表、字符串表、重定位节）：MC 只建用到的节。
    names: Vec<String>,
    relocs: Vec<(String, u64, u32, String, i64)>,
    globals: BTreeMap<String, (String, u64, u64, u8, u8)>,
}

const SKIP: &[&str] = &[".comment", ".llvm_addrsig", ".symtab", ".strtab", ".shstrtab", ".note.GNU-stack"];

impl Norm {
    fn of(bytes: &[u8]) -> Self {
        let file = object::File::parse(bytes).unwrap();
        let name = |i: object::SectionIndex| file.section_by_index(i).map(|s| String::from(s.name().unwrap())).unwrap_or_default();
        let mut sections = BTreeMap::new();
        let names = file.sections().filter_map(|s| s.name().ok().map(String::from)).filter(|n| !SKIP.contains(&n.as_str()) && !n.starts_with(".rela") && !n.is_empty()).collect();
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
            .map(|s| {
                let object::SymbolFlags::Elf { st_info, st_other } = s.flags() else { panic!() };
                (String::from(s.name().unwrap()), (s.section_index().map(name).unwrap_or_default(), s.address(), s.size(), st_info, st_other))
            })
            .collect();
        Self { sections, names, relocs, globals }
    }
}

/// `relax`：两边都开松弛（llvm-mc `+relax` 对 `Options { relax: true }`）。
fn corpus(sub: &str, how: &str, relax: bool) {
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
    let mattr = format!("-mattr={},{}relax", riscvc::feature::Target::mattr(), if relax { '+' } else { '-' });
    let out = std::env::temp_dir().join(format!("riscvc-as-{}-{}-{relax}.o", std::process::id(), sub.replace('/', "-")));
    for f in &files {
        let text = std::fs::read_to_string(f).unwrap();
        let (_, err) = llvm.run("llvm-mc", &["-triple=riscv32", &mattr, "-target-abi=ilp32f", "-filetype=obj", f.to_str().unwrap(), "-o", out.to_str().unwrap()], "");
        n += 1;
        // llvm-mc 拒绝的（+relax 下 `%hi(A − B)` 跨可松弛点 …）：riscvc 也得拒绝
        if err.contains("error:") {
            if riscvc::asm::Assembler::new().options(riscvc::asm::Options { relax, ..Default::default() }).assemble(&text).is_ok() {
                bad += 1;
                eprintln!("{}: llvm-mc 报错、riscvc 没报：{err}", f.display());
            }
            continue;
        }
        let theirs = Norm::of(&std::fs::read(&out).unwrap());
        let ours = match riscvc::asm::Assembler::new().options(riscvc::asm::Options { relax, ..Default::default() }).assemble(&text) {
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
                if ours.names != theirs.names {
                    eprintln!("  节名：riscvc {:?}\n        llvm   {:?}", ours.names, theirs.names);
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
    corpus("target/corpus/s", "tools/corpus.sh", false);
}

#[test]
fn compiler_rt_corpus_relax() {
    corpus("target/corpus/s", "tools/corpus.sh", true);
}

#[test]
fn llvm_fixtures() {
    corpus("tests/fixtures/mc", "tools/fixtures.py", false);
}

#[test]
fn llvm_fixtures_relax() {
    corpus("tests/fixtures/mc", "tools/fixtures.py", true);
}

/// 玄铁：`tests/fixtures/mc-xthead`（LLVM 的 XThead fixture，`cargo test --features xthead`）。
#[cfg(feature = "xthead")]
#[test]
fn xthead_fixtures() {
    corpus("tests/fixtures/mc-xthead", "tools/fixtures.py", false);
}

/// C：`tests/fixtures/mc-c`（全部 LLVM fixture 开 +c 再过 llvm-mc；`cargo test --features c`）。⚠ 开了 C，
/// llvm-mc 把能压的都压掉 ⇒ 这里比的主要是汇编器的自动压缩与松弛。
#[cfg(feature = "c")]
#[test]
fn c_fixtures() {
    corpus("tests/fixtures/mc-c", "tools/fixtures.py", false);
}

#[cfg(feature = "c")]
#[test]
fn c_fixtures_relax() {
    corpus("tests/fixtures/mc-c", "tools/fixtures.py", true);
}
