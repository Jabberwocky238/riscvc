//! Rust 前端 → riscvc 后端，端到端：`tools/rust-build.sh` 把 `tests/rust/examples/selfcheck`（自检程序）用 rustc 出
//! LLVM IR、riscvc 编 + 链成 ELF（core、compiler_builtins、运行时 `tests/rust/rt` 也全经 riscvc），
//! 在解释器里从 `_start` 跑到 `ebreak`：a0 = 失败的检查个数，0 才过。O0 / O2 各一次。
//! 要 rustc 1.98.1 与 MLIR 的 mlir-translate / mlir-opt（`RISCVC_LLVM_BIN`），没有就 SKIP。
mod llvm;
use riscvc::sim::{Cpu, Stop};
use std::path::Path;
use std::process::Command;

/// `march`：rustc 与 riscvc 都按它编（`tools/rust-build.sh` 的 `MARCH`），模拟器也按它认扩展。
fn level(lv: &str, march: &str) {
    let Some(llvm) = llvm::Llvm::locate() else { return };
    let rustc = Command::new("rustc").args(["+stable", "--version"]).output();
    if !rustc.as_ref().is_ok_and(|o| String::from_utf8_lossy(&o.stdout).contains("1.98.1")) {
        eprintln!("SKIP：要 rustc 1.98.1（stable）");
        return;
    }
    let root = Path::new(env!("CARGO_MANIFEST_DIR"));
    let out = std::env::temp_dir().join(format!("riscvc-rust-e2e-{lv}-{march}-{}.elf", std::process::id()));
    let st = Command::new(root.join("tools/rust-build.sh"))
        .args([root.join("tests/rust/examples/selfcheck/Cargo.toml").as_os_str(), "check".as_ref(), out.as_os_str(), lv.as_ref()])
        .env("RISCVC", env!("CARGO_BIN_EXE_riscvc"))
        .env("LLVM_BIN", llvm.bin())
        .env("MARCH", march)
        .status()
        .unwrap();
    assert!(st.success(), "rust-build.sh 失败");
    let elf = std::fs::read(&out).unwrap();
    std::fs::remove_file(&out).ok();
    let mut cpu = Cpu { target: riscvc::feature::Target::parse(march).unwrap(), ..Cpu::default() };
    cpu.load(&elf).unwrap();
    let stop = cpu.run(0x10000, 0x0fff_fff0, 50_000_000);
    // 停在启动代码的 ebreak（0x00100073）
    assert_eq!(stop, Stop::Trap(0x0010_0073), "{lv}：没跑到 ebreak（pc {:#x}）", cpu.pc);
    eprintln!("{lv} {march}：失败的检查 {} 项", cpu.x[10]);
    assert_eq!(cpu.x[10], 0, "{lv} {march}：有检查没过");
}

#[test]
fn o0() {
    level("O0", "rv32imf_zicsr");
}

#[test]
fn o2() {
    level("O2", "rv32imf_zicsr");
}

/// A：core 的原子操作直接出 amo / LR-SC（⛔ 经 rvrt 的 __atomic_*）。
#[test]
fn a_o0() {
    level("O0", "rv32imaf_zicsr");
}

#[test]
fn a_o2() {
    level("O2", "rv32imaf_zicsr");
}

/// D（ilp32d，自定义 target JSON）：double 在 fa 寄存器里、core 的浮点格式化也走 D。
#[test]
fn d_o0() {
    level("O0", "rv32imafd_zicsr");
}

#[test]
fn d_o2() {
    level("O2", "rv32imafd_zicsr");
}
