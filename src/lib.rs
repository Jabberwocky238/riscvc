//! riscvc：纯 Rust 的 RV32IMF 工具链（见 README）。feature `toolchain`（默认开）是工具链本体，其余 feature 只管目标扩展
//! （见 Cargo.toml 与 [`isa::Ext`]）；关掉 `toolchain` 只剩 [`elf`]（`no_std` + `alloc`）。
#![cfg_attr(not(feature = "toolchain"), no_std)]
extern crate alloc;
// 过程宏生成的代码写 `::riscvc::…`，本 crate 里也要能解析
extern crate self as riscvc;

/// ELF32 小端 RISC-V 的读写模型（⭐ 不依赖 `toolchain`）。
pub mod elf;

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
#[cfg(feature = "toolchain")]
pub mod llvm;
/// 过程宏（`riscvc-macros`）：`#[derive(Isa)]` 指令表、`#[derive(Opcode)]` 操作码并集。
#[cfg(feature = "toolchain")]
pub mod macros {
    pub use riscvc_macros::{Isa, Opcode};
}
#[cfg(feature = "toolchain")]
/// 中端：内部 IR 上的分析与变换（⛔ 不是 `codegen::opt`，那层在机器 IR 上）。
pub mod opt;

pub mod plugin;
#[cfg(feature = "toolchain")]
pub mod sim;
