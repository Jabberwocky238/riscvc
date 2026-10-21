//! Rust 前端 → riscvc 后端，端到端：`tools/rust-build.sh` 把 `tests/rust/examples/selfcheck`（自检程序）用 rustc 出
//! LLVM IR、riscvc 编 + 链成 ELF（core、compiler_builtins、运行时 `tests/rust/rt` 也全经 riscvc），
//! 在解释器里从 `_start` 跑到 `ebreak`：a0 = 失败的检查个数，0 才过。O0 / O2 各一次。
//! 要 rustc 1.98.1 与 MLIR 的 mlir-translate / mlir-opt（`RISCVC_LLVM_BIN`），没有就 SKIP。
mod llvm;
use riscvc::sim::{Cpu, Stop};
use std::path::Path;
use std::process::Command;

fn level(lv: &str) {
    // 产物按 rv32imf（无 C）编 = 缺省目标
    let Some(llvm) = llvm::Llvm::locate() else { return };
    let rustc = Command::new("rustc").args(["+stable", "--version"]).output();
    if !rustc.as_ref().is_ok_and(|o| String::from_utf8_lossy(&o.stdout).contains("1.98.1")) {
        eprintln!("SKIP：要 rustc 1.98.1（stable）");
        return;
    }
    let root = Path::new(env!("CARGO_MANIFEST_DIR"));
    let out = std::env::temp_dir().join(format!("riscvc-rust-e2e-{lv}-{}.elf", std::process::id()));
    let st = Command::new(root.join("tools/rust-build.sh"))
        .args([root.join("tests/rust/examples/selfcheck/Cargo.toml").as_os_str(), "check".as_ref(), out.as_os_str(), lv.as_ref()])
        .env("RISCVC", env!("CARGO_BIN_EXE_riscvc"))
        .env("LLVM_BIN", llvm.bin())
        .status()
        .unwrap();
    assert!(st.success(), "rust-build.sh 失败");
    let elf = std::fs::read(&out).unwrap();
    std::fs::remove_file(&out).ok();
    let mut cpu = Cpu::default();
    cpu.load(&elf).unwrap();
    let stop = cpu.run(0x10000, 0x0fff_fff0, 50_000_000);
    // 停在启动代码的 ebreak（0x00100073）
    assert_eq!(stop, Stop::Trap(0x0010_0073), "{lv}：没跑到 ebreak（pc {:#x}）", cpu.pc);
    eprintln!("{lv}：失败的检查 {} 项", cpu.x[10]);
    assert_eq!(cpu.x[10], 0, "{lv}：有检查没过");
}

#[test]
fn o0() {
    level("O0");
}

#[test]
fn o2() {
    level("O2");
}
