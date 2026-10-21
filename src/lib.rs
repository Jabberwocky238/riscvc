//! riscvc：纯 Rust 的 RV32IMF 工具链（见 README）。feature `toolchain`（默认开）是工具链本体；目标扩展是运行时的 `feature::Target`，不是 feature
//! （见 Cargo.toml 与 [`isa::Ext`]）；关掉 `toolchain` 只剩 [`elf`]（`no_std` + `alloc`）。
#![cfg_attr(not(feature = "toolchain"), no_std)]
extern crate alloc;
// 过程宏生成的代码写 `::riscvc::…`，本 crate 里也要能解析
extern crate self as riscvc;

/// ELF32 小端 RISC-V 的读写模型（⭐ 不依赖 `toolchain`）。
pub mod elf;

/// 寄存器分配器（内化的 regalloc2，见 `src/alloc/VENDOR.md`）。
/// ⚠ 目录是 `src/alloc`，模块名是 `regalloc`：crate 根有 `extern crate alloc`，同名会撞。
#[cfg(feature = "toolchain")]
#[path = "alloc/mod.rs"]
pub mod regalloc;

#[cfg(feature = "toolchain")]
pub mod asm;
#[cfg(feature = "toolchain")]
pub mod cli;
#[cfg(feature = "toolchain")]
pub mod codegen;
#[cfg(feature = "toolchain")]
pub mod ext;
#[cfg(feature = "toolchain")]
pub mod feature;
#[cfg(feature = "toolchain")]
pub mod ir;
#[cfg(feature = "toolchain")]
pub mod isa;
#[cfg(feature = "toolchain")]
pub mod link;
/// 过程宏（`riscvc-macros`）：`#[derive(Isa)]` 指令表、`#[derive(Opcode)]` 操作码并集。
#[cfg(feature = "toolchain")]
pub mod macros {
    pub use riscvc_macros::{Isa, Opcode};
}
#[cfg(feature = "toolchain")]
/// 中端：内部 IR 上的分析与变换（⛔ 不是 `codegen::opt`，那层在机器 IR 上）。
pub mod opt;

/// 插件接口（方言与 pass）。⛔ 必须跟着 `toolchain` 走：它依赖 `ir` / `opt` / mlirformat，
/// 没门的话 `--no-default-features` 编不过，连带只用 `elf` 的下游（`default-features = false`）一起红。
#[cfg(feature = "toolchain")]
pub mod plugin;
#[cfg(feature = "toolchain")]
pub mod sim;
