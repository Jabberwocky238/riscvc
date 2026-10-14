//! riscvc：纯 Rust 的 RV32IMF 工具链（见 README）。feature 只管目标扩展（见 Cargo.toml 与 [`isa::Ext`]）。
// 过程宏生成的代码写 `::riscvc::…`，本 crate 里也要能解析
extern crate self as riscvc;

pub mod asm;
pub mod cli;
pub mod codegen;
pub mod ext;
pub mod feature;
pub mod ir;
pub mod isa;
pub mod link;
pub mod llvm;
/// 过程宏（`riscvc-macros`）：`#[derive(Isa)]` 指令表、`#[derive(Opcode)]` 操作码并集。
pub mod macros {
    pub use riscvc_macros::{Isa, Opcode};
}
pub mod plugin;
pub mod sim;
