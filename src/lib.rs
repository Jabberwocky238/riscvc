//! riscvc：纯 Rust 的 RV32IMAFDC 工具链（见 README）。两档：feature `std`（默认开）是工具链本体；关掉（`default-features = false`）
//! 是 no_std 档，只剩 [`elf`]（`no_std` + `alloc`）。目标扩展是运行时的 `feature::Target`，不是 feature。
#![cfg_attr(not(feature = "std"), no_std)]
extern crate alloc;
// 过程宏生成的代码写 `::riscvc::…`，本 crate 里也要能解析
extern crate self as riscvc;

/// ELF32 小端 RISC-V 的读写模型（⭐ no_std 档也有：不依赖 `std` feature）。
pub mod elf;

/// 寄存器分配器：crates.io 的 regalloc2（钉在 0.15.2），转出成 `riscvc::regalloc`（`codegen::Observer` 收到的
/// `Output` 就是它的）。
#[cfg(feature = "std")]
pub use regalloc2 as regalloc;

#[cfg(feature = "std")]
pub mod asm;
#[cfg(feature = "std")]
pub mod cli;
#[cfg(feature = "std")]
pub mod codegen;
#[cfg(feature = "std")]
pub mod ext;
#[cfg(feature = "std")]
pub mod feature;
#[cfg(feature = "std")]
pub mod ir;
#[cfg(feature = "std")]
pub mod isa;
#[cfg(feature = "std")]
pub mod link;
/// 过程宏（`riscvc-macros`）：`#[derive(Isa)]` 指令表、`#[derive(Opcode)]` 操作码并集。
#[cfg(feature = "std")]
pub mod macros {
    pub use riscvc_macros::{Isa, Opcode};
}
#[cfg(feature = "std")]
/// 中端：内部 IR 上的分析与变换（⛔ 不是 `codegen::opt`，那层在机器 IR 上）。
pub mod opt;

/// 插件接口（方言与 pass）。⛔ 必须跟着 `std` 走：它依赖 `ir` / `opt` / mlirformat，
/// 没门的话 `--no-default-features` 编不过，连带只用 `elf` 的下游（`default-features = false`）一起红。
#[cfg(feature = "std")]
pub mod plugin;
#[cfg(feature = "std")]
pub mod sim;
