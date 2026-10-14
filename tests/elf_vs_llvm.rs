//! 端到端 ELF 对拍：`tests/fixtures/unit`（入库，`tools/programs.sh` 生成）是 compiler-rt 的 builtins 单元测试
//! （有 main、自检，过了返回 0）。同一份 C 源出的 `.ll`：llc + ld.lld 链一个 ELF；由它转来的 `.mlir`：
//! riscvc llc + riscvc ld 链一个 ELF。被测的 builtins（`tests/fixtures/builtins`）同理两边各编各的，
//! 桩（`tests/fixtures/support/<abi>/`）两边共用一份。
//! 目标跟着 feature 走：llc 的 `-mattr` / `-target-abi` 取 [`Ext::mattr`] / [`Ext::abi`]，`.ll` 里每个函数写死的
//! `target-features` 去掉、`target-abi` 换掉（同一份 IR，换目标对拍；没开 M / F 时两边都走 libcall / 软浮点）。
//! 两个 ELF 都在 `src/sim` 里从 `main` 跑，比停机方式与 a0。两边都没定义的函数（有的 builtins 要 atomic / unwind 库、
//! 有的测试要 libm）落到共用的桩：一条 `ebreak` 停机。
//! 没有对照用的 LLVM（llc、ld.lld）就 SKIP。
mod llvm;
use object::{Object, ObjectSymbol};
use riscvc::feature::Target as Ext;
use riscvc::sim::{Cpu, Stop};
use std::path::Path;

const SCRIPT: &str = "ENTRY(main)\nSECTIONS {\n  . = 0x10000;\n  .text : { *(.text*) }\n  .rodata : { *(.rodata*) *(.srodata*) }\n  .data : { *(.data*) *(.sdata*) }\n  .bss : { *(.bss*) *(.sbss*) *(COMMON) }\n}\n";
const RET: u32 = 0x0fff_fff0;
const STACK: u32 = 0x7ff0_0000;
const STEPS: u64 = 50_000_000;
/// ⛔ 范围外（README「未做」）：用到 fp128（`long double`）常量与运算的。
const SCOPE: &[&str] = &["powitf2_test", "powixf2_test"];

/// 一侧工具链：一组目标文件 ⇒ ELF ⇒ 从 main 跑。
struct Side {
    objs: Vec<(String, Vec<u8>)>,
}

impl Side {
    /// 链上 `extra`，跑 main：（停机方式, 返回了就是 a0、停在桩 / 陷入就是所在的函数）；没有 main 回 None。
    fn run(&self, extra: &[(String, Vec<u8>)], elf: impl FnOnce(&[(String, Vec<u8>)]) -> Vec<u8>) -> Option<(Stop, String)> {
        let mut objs = self.objs.clone();
        objs.extend_from_slice(extra);
        let elf = elf(&objs);
        let mut cpu = Cpu::default();
        cpu.load(&elf).unwrap();
        let file = object::File::parse(elf.as_slice()).unwrap();
        let main = file.symbols().find(|s| s.name() == Ok("main")).map(|s| u32::try_from(s.address()).unwrap())?;
        cpu.x[2] = STACK;
        cpu.x[10] = 0;
        cpu.x[11] = 0;
        let stop = cpu.run(main, RET, STEPS);
        let detail = match stop {
            Stop::Returned => format!("{:#x}", cpu.x[10]),
            _ => file.symbols().filter(|s| s.address() <= u64::from(cpu.pc) && s.is_global()).max_by_key(|s| s.address()).map_or_else(String::new, |s| String::from(s.name().unwrap())),
        };
        Some((stop, detail))
    }
}

/// 所有目标文件里引用了、却谁都没定义的全局符号 ⇒ 每个一条 `ebreak` 的目标文件（两边共用）。
fn missing<'a>(objs: impl Iterator<Item = &'a [u8]>) -> (String, Vec<u8>) {
    let (mut defined, mut used) = (std::collections::BTreeSet::new(), std::collections::BTreeSet::new());
    for bytes in objs {
        let file = object::File::parse(bytes).unwrap();
        for s in file.symbols().filter(|s| s.is_global()) {
            let name = String::from(s.name().unwrap());
            if s.is_undefined() { used.insert(name) } else { defined.insert(name) };
        }
    }
    let asm: String = used.difference(&defined).map(|n| format!("    .globl {n}\n{n}:\n    ebreak\n")).collect();
    (String::from("missing.o"), riscvc::asm::Assembler::new(riscvc::asm::Options::default()).assemble(&format!("    .text\n{asm}")).unwrap())
}

fn riscvc_obj(mlir: &Path) -> Result<Vec<u8>, String> {
    let text = std::fs::read_to_string(mlir).map_err(|e| e.to_string())?;
    let m = riscvc::ir::Module::try_from(text.as_str()).map_err(|e| format!("转换：{e}"))?;
    let asm = m.compile().map_err(|e| format!("代码生成：{e}"))?;
    riscvc::asm::Assembler::new(riscvc::asm::Options::default()).assemble(&asm).map_err(|e| format!("汇编：{e}"))
}

fn llc_obj(llvm: &llvm::Llvm, ll: &Path, out: &Path) -> Vec<u8> {
    // 去掉函数上的 target-features、换掉 target-abi：让 -mattr / -target-abi 说了算
    let text = std::fs::read_to_string(ll).unwrap();
    let text = text.split("\"target-features\"=\"").enumerate().map(|(i, p)| if i == 0 { p } else { p.split_once('"').map_or(p, |(_, rest)| rest) }).collect::<String>();
    let text = text.replace("!\"target-abi\", !\"ilp32f\"", &format!("!\"target-abi\", !\"{}\"", Ext::abi()));
    let mattr = format!("-mattr={},-relax", Ext::mattr());
    let abi = format!("-target-abi={}", Ext::abi());
    let (_, err) = llvm.run("llc", &["-mtriple=riscv32", &mattr, &abi, "-filetype=obj", "-", "-o", out.to_str().unwrap()], &text);
    assert!(!err.contains("error"), "llc {}: {err}", ll.display());
    std::fs::read(out).unwrap()
}

fn level(name: &str) {
    let Some(llvm) = llvm::Llvm::locate() else { return };
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("tests/fixtures");
    let (progs, builtins) = (std::fs::read_dir(root.join("unit")).unwrap(), std::fs::read_dir(root.join("builtins")).unwrap());
    let tmp = std::env::temp_dir().join(format!("riscvc-elf-{name}-{}", std::process::id()));
    std::fs::create_dir_all(&tmp).unwrap();
    // 桩：按调用约定选
    let support: Vec<(String, Vec<u8>)> = ["support.o", "mulsi3.o"].iter().map(|n| (String::from(*n), std::fs::read(root.join("support").join(Ext::abi()).join(n)).unwrap())).collect();
    eprintln!("目标：{}（{}）", Ext::march(), Ext::abi());
    // builtins：O2，两边各编各的
    let (mut ours, mut theirs) = (Side { objs: support.clone() }, Side { objs: support });
    let mut builtins: Vec<_> = builtins.map(|e| e.unwrap().path()).filter(|p| p.to_str().unwrap().ends_with(".O2.mlir")).collect();
    builtins.sort();
    for m in &builtins {
        let stem = m.file_stem().unwrap().to_str().unwrap();
        ours.objs.push((format!("{stem}.o"), riscvc_obj(m).unwrap_or_else(|e| panic!("{stem}: {e}"))));
        theirs.objs.push((format!("{stem}.o"), llc_obj(&llvm, &root.join(format!("builtins/{stem}.ll")), &tmp.join("b.o"))));
    }
    let lld = |objs: &[(String, Vec<u8>)]| -> Vec<u8> {
        let dir = tmp.join("lld");
        std::fs::create_dir_all(&dir).unwrap();
        let mut args = vec![String::from("-T"), dir.join("link.ld").display().to_string(), String::from("--unresolved-symbols=ignore-all"), String::from("-o"), dir.join("a.elf").display().to_string()];
        std::fs::write(dir.join("link.ld"), SCRIPT).unwrap();
        for (n, b) in objs {
            let p = dir.join(n);
            std::fs::write(&p, b).unwrap();
            args.push(p.display().to_string());
        }
        let args: Vec<&str> = args.iter().map(String::as_str).collect();
        let (_, err) = llvm.run("ld.lld", &args, "");
        assert!(!err.contains("error"), "ld.lld: {err}");
        std::fs::read(dir.join("a.elf")).unwrap()
    };
    let ld = |objs: &[(String, Vec<u8>)]| -> Vec<u8> {
        let inputs: Vec<(&str, &[u8])> = objs.iter().map(|(n, b)| (n.as_str(), b.as_slice())).collect();
        riscvc::link::Linker::link(riscvc::link::Options { script: Some(String::from(SCRIPT)), allow_undefined: true, ..Default::default() }, &inputs).unwrap()
    };
    let mut progs: Vec<_> = progs.map(|e| e.unwrap().path()).filter(|p| p.to_str().unwrap().ends_with(&format!(".{name}.mlir"))).collect();
    progs.sort();
    let (mut bad, mut broken, mut n) = (Vec::new(), Vec::new(), 0);
    for m in &progs {
        let stem = m.file_stem().unwrap().to_str().unwrap();
        if SCOPE.iter().any(|p| stem.starts_with(&format!("{p}."))) {
            eprintln!("SKIP（范围外：fp128）：{stem}");
            continue;
        }
        let theirs_obj = (String::from("test.o"), llc_obj(&llvm, &root.join(format!("unit/{stem}.ll")), &tmp.join("t.o")));
        // 没有 main（源里被 `#if` 掉了）的跳过
        if !object::File::parse(theirs_obj.1.as_slice()).unwrap().symbols().any(|s| s.name() == Ok("main") && s.is_definition()) {
            continue;
        }
        n += 1;
        // 对照自己没过（测试本身在这个目标上不成立）的，记下来照比
        let got = match riscvc_obj(m) {
            Ok(obj) => {
                let all = ours.objs.iter().chain(&theirs.objs).map(|(_, b)| b.as_slice());
                let stub = missing(all.chain([obj.as_slice(), theirs_obj.1.as_slice()]));
                let expect = theirs.run(&[theirs_obj.clone(), stub.clone()], lld).expect("有 main");
                if expect != (Stop::Returned, String::from("0x0")) {
                    broken.push(format!("{stem} {expect:?}"));
                }
                (ours.run(&[(String::from("test.o"), obj), stub], ld).expect("llvm 那边有 main"), expect)
            }
            Err(e) => {
                bad.push(format!("{stem}: {e}"));
                continue;
            }
        };
        let (got, expect) = got;
        if got != expect {
            bad.push(format!("{stem}: riscvc {got:?} ≠ llvm {expect:?}"));
        }
    }
    std::fs::remove_dir_all(&tmp).ok();
    for b in &broken {
        eprintln!("对照没过：{b}");
    }
    for b in &bad {
        eprintln!("✗ {b}");
    }
    eprintln!("{name}：{n} 个程序，{} 个与 llvm 一致（对照自己没过的 {} 个）", n - bad.len(), broken.len());
    assert!(bad.is_empty());
}

#[test]
fn o2() {
    level("O2");
}

#[test]
fn o0() {
    level("O0");
}
