//! 端到端 ELF 对拍：`tests/fixtures/unit`（入库，`tools/programs.sh` 生成）是 compiler-rt 的 builtins 单元测试
//! （有 main、自检，过了返回 0）；`tests/fixtures/programs` 是 `tests/programs/*.c` 手写的小程序（排序、哈希、字符串、
//! 结构体传值、switch、函数指针、64 位、位操作、单 / 双精度、可变参数、递归、链表、大数、全局表；main 回校验和，⛔ 自检）。同一份 C 源出的 `.ll`：llc + ld.lld 链一个 ELF；由它转来的 `.mlir`：
//! riscvc llc + riscvc ld 链一个 ELF。被测的 builtins（`tests/fixtures/builtins`）同理两边各编各的，
//! 桩（`tests/fixtures/support/<abi>/`）两边共用一份。
//! 目标 = 缺省（`Target::default()`），扩展的程序（`tests/fixtures/programs-<扩展>`）按那个扩展的目标：llc 的 `-mattr` / `-target-abi` 取它的 `mattr` / `abi`，`.ll` 里每个函数写死的
//! `target-features` 去掉、`target-abi` 换掉（同一份 IR，换目标对拍；没开 M / F 时两边都走 libcall / 软浮点）。
//! 两个 ELF 都在 `src/sim.rs` 里从 `main` 跑，比停机方式与 a0。两边都没定义的函数（有的 builtins 要 atomic / unwind 库、
//! 有的测试要 libm）落到共用的桩：一条 `ebreak` 停机。
//! 没有对照用的 LLVM（llc、ld.lld）就 SKIP。
mod llvm;
mod par;
use object::{Object, ObjectSymbol};
use riscvc::feature::Target;
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
    /// 模拟器按它认扩展指令（march 串：`Target` 装着 `&dyn Module`，⛔ 跨线程共享，各线程现解析）。
    march: String,
}

impl Side {
    /// 链上 `extra`，跑 main：（停机方式, 返回了就是 a0、停在桩 / 陷入就是所在的函数）；没有 main 回 None。
    fn run(&self, extra: &[(String, Vec<u8>)], elf: impl FnOnce(&[(String, Vec<u8>)]) -> Vec<u8>) -> Option<(Stop, String)> {
        let mut objs = self.objs.clone();
        objs.extend_from_slice(extra);
        let elf = elf(&objs);
        let mut cpu = Cpu { target: Target::parse(&self.march).unwrap(), ..Cpu::default() };
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
fn missing<'a>(objs: impl Iterator<Item = &'a [u8]>, target: &Target<'static>) -> (String, Vec<u8>) {
    let (mut defined, mut used) = (std::collections::BTreeSet::new(), std::collections::BTreeSet::new());
    for bytes in objs {
        let file = object::File::parse(bytes).unwrap();
        for s in file.symbols().filter(|s| s.is_global()) {
            let name = String::from(s.name().unwrap());
            if s.is_undefined() { used.insert(name) } else { defined.insert(name) };
        }
    }
    let asm: String = used.difference(&defined).map(|n| format!("    .globl {n}\n{n}:\n    ebreak\n")).collect();
    (String::from("missing.o"), riscvc::asm::Assembler::new().target(target.clone()).assemble(&format!("    .text\n{asm}")).unwrap())
}

fn riscvc_obj(mlir: &Path, target: &Target<'static>) -> Result<Vec<u8>, String> {
    let text = std::fs::read_to_string(mlir).map_err(|e| e.to_string())?;
    let m = riscvc::ir::Module::try_from(text.as_str()).map_err(|e| format!("转换：{e}"))?;
    let asm = m.compile_with(&riscvc::codegen::Options { target: target.clone(), ..Default::default() }).map_err(|e| format!("代码生成：{e}"))?;
    riscvc::asm::Assembler::new().target(target.clone()).assemble(&asm).map_err(|e| format!("汇编：{e}"))
}

fn llc_obj(llvm: &llvm::Llvm, ll: &Path, out: &Path, target: &Target<'static>) -> Vec<u8> {
    // 去掉函数上的 target-features、换掉 target-abi：让 -mattr / -target-abi 说了算
    let text = std::fs::read_to_string(ll).unwrap();
    let text = text.split("\"target-features\"=\"").enumerate().map(|(i, p)| if i == 0 { p } else { p.split_once('"').map_or(p, |(_, rest)| rest) }).collect::<String>();
    let text = text.replace("!\"target-abi\", !\"ilp32f\"", &format!("!\"target-abi\", !\"{}\"", target.abi()));
    let mattr = format!("-mattr={},-relax", target.mattr());
    let abi = format!("-target-abi={}", target.abi());
    let (_, err) = llvm.run("llc", &["-mtriple=riscv32", &mattr, &abi, "-filetype=obj", "-", "-o", out.to_str().unwrap()], &text);
    assert!(!err.contains("error"), "llc {}: {err}", ll.display());
    std::fs::read(out).unwrap()
}

/// `name`：档（O0 / O2）；`target`：两边都按它编（builtins 也是）；`dirs`：（fixture 目录, 自检）。
fn level(name: &str, target: &Target<'static>, dirs: &[(&str, bool)]) {
    let Some(llvm) = llvm::Llvm::locate() else { return };
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("tests/fixtures");
    let builtins = std::fs::read_dir(root.join("builtins")).unwrap();
    let tmp = std::env::temp_dir().join(format!("riscvc-elf-{name}-{}-{}", target.march(), std::process::id()));
    std::fs::create_dir_all(&tmp).unwrap();
    // 桩：按调用约定选
    let support: Vec<(String, Vec<u8>)> = ["support.o", "mulsi3.o"].iter().map(|n| (String::from(*n), std::fs::read(root.join("support").join(target.abi()).join(n)).unwrap())).collect();
    eprintln!("目标：{}（{}）", target.march(), target.abi());
    // builtins：O2，两边各编各的
    let (mut ours, mut theirs) = (Side { objs: support.clone(), march: target.march() }, Side { objs: support, march: target.march() });
    let mut builtins: Vec<_> = builtins.map(|e| e.unwrap().path()).filter(|p| p.to_str().unwrap().ends_with(".O2.mlir")).collect();
    builtins.sort();
    // 两边各编各的（并行，见 tests/par；llc 的输出按序号各写一份）
    let march = target.march();
    let objs = par::map(&builtins, |k, m| {
        let target = &Target::parse(&march).unwrap();
        let stem = m.file_stem().unwrap().to_str().unwrap();
        let ours = riscvc_obj(m, target).unwrap_or_else(|e| panic!("{stem}: {e}"));
        let theirs = llc_obj(&llvm, &root.join(format!("builtins/{stem}.ll")), &tmp.join(format!("b{k}.o")), target);
        (format!("{stem}.o"), ours, theirs)
    });
    for (name, o, t) in objs {
        ours.objs.push((name.clone(), o));
        theirs.objs.push((name, t));
    }
    // ld.lld 的工作目录按程序的序号各一个（并行的程序 ⛔ 共用）
    let lld = |dir: &Path, objs: &[(String, Vec<u8>)]| -> Vec<u8> {
        std::fs::create_dir_all(dir).unwrap();
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
    // （目录, 自检：过了返回 0）
    let mut progs: Vec<(&str, bool, std::path::PathBuf)> = Vec::new();
    for &(dir, selfcheck) in dirs {
        let mut ps: Vec<_> = std::fs::read_dir(root.join(dir)).unwrap().map(|e| e.unwrap().path()).filter(|p| p.to_str().unwrap().ends_with(&format!(".{name}.mlir"))).collect();
        ps.sort();
        progs.extend(ps.into_iter().map(|p| (dir, selfcheck, p)));
    }
    /// 一个程序的结论。
    enum Verdict {
        /// 范围外 / 没有 main：不算数。
        Skip(Option<String>),
        /// 比了：（不一致的说明, 对照自己没过的说明）。
        Ran(Option<String>, Option<String>),
    }
    // 每个程序：两边编、链、跑、比（并行）
    let verdicts = par::map(&progs, |k, (dir, selfcheck, m)| {
        let target = &Target::parse(&march).unwrap();
        let stem = m.file_stem().unwrap().to_str().unwrap();
        if SCOPE.iter().any(|p| stem.starts_with(&format!("{p}."))) {
            return Verdict::Skip(Some(format!("SKIP（范围外：fp128）：{stem}")));
        }
        let theirs_obj = (String::from("test.o"), llc_obj(&llvm, &root.join(format!("{dir}/{stem}.ll")), &tmp.join(format!("t{k}.o")), target));
        // 没有 main（源里被 `#if` 掉了）的跳过
        if !object::File::parse(theirs_obj.1.as_slice()).unwrap().symbols().any(|s| s.name() == Ok("main") && s.is_definition()) {
            return Verdict::Skip(None);
        }
        // 对照自己没过（测试本身在这个目标上不成立）的，记下来照比
        let obj = match riscvc_obj(m, target) {
            Ok(obj) => obj,
            Err(e) => return Verdict::Ran(Some(format!("{stem}: {e}")), None),
        };
        let all = ours.objs.iter().chain(&theirs.objs).map(|(_, b)| b.as_slice());
        let stub = missing(all.chain([obj.as_slice(), theirs_obj.1.as_slice()]), target);
        let dir_k = tmp.join(format!("lld{k}"));
        let expect = theirs.run(&[theirs_obj.clone(), stub.clone()], |o| lld(&dir_k, o)).expect("有 main");
        let broken = (*selfcheck && expect != (Stop::Returned, String::from("0x0"))).then(|| format!("{stem} {expect:?}"));
        // 扩展的程序（programs-<扩展>）不调库函数：llc 那边都没正常返回（停在桩上）⇒ 两边一致也不算数
        assert!(!dir.starts_with("programs-") || expect.0 == Stop::Returned, "{stem}：llc 那边没有返回（{expect:?}）");
        let got = ours.run(&[(String::from("test.o"), obj), stub], ld).expect("llvm 那边有 main");
        Verdict::Ran((got != expect).then(|| format!("{stem}: riscvc {got:?} ≠ llvm {expect:?}")), broken)
    });
    let (mut bad, mut broken, mut n) = (Vec::new(), Vec::new(), 0);
    for v in verdicts {
        match v {
            Verdict::Skip(Some(why)) => eprintln!("{why}"),
            Verdict::Skip(None) => {}
            Verdict::Ran(b, k) => {
                n += 1;
                bad.extend(b);
                broken.extend(k);
            }
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

/// 缺省目标的两组：builtins 单元测试（自检）与手写程序。
const DEFAULT: &[(&str, bool)] = &[("unit", true), ("programs", false)];

#[test]
fn o2() {
    level("O2", &Target::default(), DEFAULT);
}

#[test]
fn o0() {
    level("O0", &Target::default(), DEFAULT);
}

/// A 扩展（rv32imaf）：`tests/programs-a`（原子操作）两边都开 +a。
fn a() -> Target<'static> {
    Target::default().with(&riscvc::feature::builtin::A)
}

#[test]
fn a_o2() {
    level("O2", &a(), &[("programs-a", false)]);
}

#[test]
fn a_o0() {
    level("O0", &a(), &[("programs-a", false)]);
}

/// D 扩展（rv32imfd，ilp32d）：`tests/programs-d`（double），外加缺省的两组整个按 D 再比一遍（builtins 也按 D 编）。
fn d() -> Target<'static> {
    Target::default().with(&riscvc::feature::builtin::D)
}

#[test]
fn d_o2() {
    level("O2", &d(), &[("programs-d", false), ("unit", true), ("programs", false)]);
}

#[test]
fn d_o0() {
    level("O0", &d(), &[("programs-d", false), ("unit", true), ("programs", false)]);
}

/// C + D：同一组 double 程序，开 C（汇编器自动压缩，含 Zcd 的 c.fld / c.fsd）。
#[test]
fn dc_o2() {
    level("O2", &d().with(&riscvc::feature::builtin::C), &[("programs-d", false), ("programs", false)]);
}
