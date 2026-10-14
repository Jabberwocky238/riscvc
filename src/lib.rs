//! riscvc：纯 Rust 的 RV32IMF 工具链（见 README）。一个组件一个 feature（见 Cargo.toml），`isa` 总在。
pub mod isa;

#[cfg(feature = "asm")]
pub mod asm;
#[cfg(feature = "cli")]
pub mod cli;
#[cfg(feature = "codegen")]
pub mod codegen;
#[cfg(feature = "mlir")]
pub mod ir;
#[cfg(feature = "link")]
pub mod link;
#[cfg(feature = "mlir")]
pub mod llvm;
#[cfg(feature = "mlir")]
pub mod plugin;
#[cfg(feature = "sim")]
pub mod sim;
