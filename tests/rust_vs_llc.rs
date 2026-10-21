//! Rust 作前端、riscvc 作后端（`tests/fixtures/rust`、`rust-a`、`rust-d`：缺省 / +A / +A+D 三个目标，入库，`tools/rust.sh` 生成）：rustc 1.98.1（LLVM 22.1.8）把
//! `tests/rust/src/lib.rs`（rvprobe）、`core`、`compiler_builtins` 编成 LLVM IR，同一份 IR 两条路：
//! riscvc 编转来的 `.mlir`，llc 编 `.ll`（`.o` 入库，⛔ 测试时不要 LLVM）。
//!
//! 两个镜像（[`llvm::call`] 函数级对拍，O0 / O2 各一次）：
//! - riscvc：riscvc 编的 rvprobe + core + compiler_builtins
//! - llc：llc 编的 rvprobe + core + compiler_builtins
//!
//! 即 rvprobe、core、compiler_builtins（软浮点、memcpy）三个 crate 两边各编各的（`BUILTINS_OURS` 关掉 ⇒
//! compiler_builtins 两边共用 llc 那份，查问题时用）。
//! 对拍的是 rvprobe 的全部 `extern "C"` 入口（标量签名）；⛔ 预期失败：一律要和 llc 一致。
mod llvm;
use llvm::call::{Domain, Image, Lib, Pair, Sig};
use riscvc::feature::{builtin, Target};
use riscvc::ir::Module;
use std::path::Path;

/// 两边的 compiler_builtins 也各编各的（false ⇒ 共用 llc 那份）。
const BUILTINS_OURS: bool = true;

/// riscvc 按 `target` 编一份 `.mlir` ⇒ 目标文件。
fn ours(path: &Path, target: &Target<'static>) -> Result<(Module, Vec<u8>), String> {
    let text = std::fs::read_to_string(path).map_err(|e| format!("{}：{e}", path.display()))?;
    let m = Module::try_from(text.as_str()).map_err(|e| format!("{}：解析 {e}", path.display()))?;
    let asm = m.compile_with(&riscvc::codegen::Options { target: target.clone(), ..Default::default() }).map_err(|e| format!("{}：编译 {e}", path.display()))?;
    let obj = riscvc::asm::Assembler::new().target(target.clone()).assemble(&asm).map_err(|e| format!("{}：汇编 {e}", path.display()))?;
    Ok((m, obj))
}

/// `set`：fixture 那一套（`rust` / `rust-a` / `rust-d`，`tools/rust.sh` 按 `target` 生成），两边都按 `target` 编、链、跑。
fn level(lv: &str, set: &str, target: &Target<'static>) {
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("tests/fixtures").join(set);
    let file = |crate_: &str, ext: &str| root.join(format!("{crate_}.{lv}.{ext}"));
    let Ok(theirs_probe) = std::fs::read(file("rvprobe", "o")) else {
        eprintln!("SKIP：没有 fixture（先跑 tools/rust.sh）");
        return;
    };
    let read = |p: &Path| std::fs::read(p).unwrap_or_else(|e| panic!("{}：{e}", p.display()));
    let builtins_theirs = read(&file("compiler_builtins", "o"));
    let builtins_ours = if BUILTINS_OURS { ours(&file("compiler_builtins", "mlir"), target).unwrap().1 } else { builtins_theirs.clone() };
    let (m, probe) = ours(&file("rvprobe", "mlir"), target).unwrap();
    let (_, core) = ours(&file("core", "mlir"), target).unwrap();
    let lib_ours = Lib::of(vec![(String::from("core.o"), core), (String::from("compiler_builtins.o"), builtins_ours)], true);
    let lib_theirs = Lib::of(vec![(String::from("core.o"), read(&file("core", "o"))), (String::from("compiler_builtins.o"), builtins_theirs)], true);
    let (a, b) = (Image::link_on(&lib_ours, "rvprobe.o", &probe, target).unwrap(), Image::link_on(&lib_theirs, "rvprobe.o", &theirs_probe, target).unwrap());
    let pair = Pair::new(&a, &b);
    let mut rng = llvm::Rng(0x0123_4567_89ab_cdef);
    let (mut runs, mut tested, mut bad) = (0, 0, Vec::new());
    for f in &m.functions {
        let Some(sig) = Sig::of_on(&m, f, target.double()) else { continue };
        // rvprobe 自己的入口（core 内联进来的泛型实例也是全局符号，⛔ 测它们）
        if f.name.starts_with("_R") {
            continue;
        }
        tested += 1;
        // 除以零是 Rust 的 panic，两边都该陷入：照样比
        match pair.compare(&sig, &mut rng, 64, Domain::Any) {
            Ok(n) => runs += n,
            Err(e) => bad.push(e),
        }
    }
    for e in &bad {
        eprintln!("{lv}：{e}");
    }
    eprintln!("{set} {lv}：{tested} 个入口、{runs} 次调用，{} 个结果不同", bad.len());
    assert!(tested > 30, "rvprobe 的入口太少（{tested}），fixture 不对？");
    assert!(bad.is_empty());
}

#[test]
fn o0() {
    level("O0", "rust", &Target::default());
}

#[test]
fn o2() {
    level("O2", "rust", &Target::default());
}

/// A：core 与 rvprobe 的原子操作（`amo32` / `amo8` / `amo16` / `amoptr`）两边都出 amo / LR-SC。
fn a() -> Target<'static> {
    Target::default().with(&builtin::A)
}

#[test]
fn a_o0() {
    level("O0", "rust-a", &a());
}

#[test]
fn a_o2() {
    level("O2", "rust-a", &a());
}

/// D（+ A，ilp32d）：double 在 fa 寄存器里传、返回；core 与 compiler_builtins 也按 D 编。
fn d() -> Target<'static> {
    Target::default().with(&builtin::A).with(&builtin::D)
}

#[test]
fn d_o0() {
    level("O0", "rust-d", &d());
}

#[test]
fn d_o2() {
    level("O2", "rust-d", &d());
}
