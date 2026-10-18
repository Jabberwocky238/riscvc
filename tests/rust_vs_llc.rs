//! Rust 作前端、riscvc 作后端（`tests/fixtures/rust`，入库，`tools/rust.sh` 生成）：rustc 1.98.1（LLVM 22.1.8）把
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
use riscvc::ir::Module;
use std::path::Path;

/// 两边的 compiler_builtins 也各编各的（false ⇒ 共用 llc 那份）。
const BUILTINS_OURS: bool = true;

/// riscvc 编一份 `.mlir` ⇒ 目标文件。
fn ours(path: &Path) -> Result<(Module, Vec<u8>), String> {
    let text = std::fs::read_to_string(path).map_err(|e| format!("{}：{e}", path.display()))?;
    let m = Module::try_from(text.as_str()).map_err(|e| format!("{}：解析 {e}", path.display()))?;
    let asm = m.compile().map_err(|e| format!("{}：编译 {e}", path.display()))?;
    let obj = riscvc::asm::Assembler::new().assemble(&asm).map_err(|e| format!("{}：汇编 {e}", path.display()))?;
    Ok((m, obj))
}

fn level(lv: &str) {
    // 对照的 .o 按 +m,+f,+zicsr（ilp32f）、⛔ C 编
    if !cfg!(all(feature = "m", feature = "f")) || cfg!(feature = "c") {
        eprintln!("SKIP：对照产物按 rv32imf（无 C）编，这次的扩展不同");
        return;
    }
    let root = Path::new(env!("CARGO_MANIFEST_DIR")).join("tests/fixtures/rust");
    let file = |crate_: &str, ext: &str| root.join(format!("{crate_}.{lv}.{ext}"));
    let Ok(theirs_probe) = std::fs::read(file("rvprobe", "o")) else {
        eprintln!("SKIP：没有 fixture（先跑 tools/rust.sh）");
        return;
    };
    let read = |p: &Path| std::fs::read(p).unwrap_or_else(|e| panic!("{}：{e}", p.display()));
    let builtins_theirs = read(&file("compiler_builtins", "o"));
    let builtins_ours = if BUILTINS_OURS { ours(&file("compiler_builtins", "mlir")).unwrap().1 } else { builtins_theirs.clone() };
    let (m, probe) = ours(&file("rvprobe", "mlir")).unwrap();
    let (_, core) = ours(&file("core", "mlir")).unwrap();
    let lib_ours = Lib::of(vec![(String::from("core.o"), core), (String::from("compiler_builtins.o"), builtins_ours)], true);
    let lib_theirs = Lib::of(vec![(String::from("core.o"), read(&file("core", "o"))), (String::from("compiler_builtins.o"), builtins_theirs)], true);
    let (a, b) = (Image::link(&lib_ours, "rvprobe.o", &probe).unwrap(), Image::link(&lib_theirs, "rvprobe.o", &theirs_probe).unwrap());
    let pair = Pair::new(&a, &b);
    let mut rng = llvm::Rng(0x0123_4567_89ab_cdef);
    let (mut runs, mut tested, mut bad) = (0, 0, Vec::new());
    for f in &m.functions {
        let Some(sig) = Sig::of(&m, f) else { continue };
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
    eprintln!("{lv}：{tested} 个入口、{runs} 次调用，{} 个结果不同", bad.len());
    assert!(tested > 30, "rvprobe 的入口太少（{tested}），fixture 不对？");
    assert!(bad.is_empty());
}

#[test]
fn o0() {
    level("O0");
}

#[test]
fn o2() {
    level("O2");
}
