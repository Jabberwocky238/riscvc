//! 指令集：寄存器、CSR、指令表的通用部分（[`Table`]：编码 / 译码 / 打印按格式走）、RV32I 基础表。
//! 扩展（M、Zmmul、F、Zicsr）的表在 `src/feature/<名>/`，经 [`crate::ext::Extension`] 接进汇编器、反汇编与解释器。
mod base;
mod csr;
mod csr_table;
mod inst;
mod opcode;
mod reg;

pub use base::Rv32i;
pub use csr::Csr;
pub use inst::{Ext, Form, Inst, Style, Table};
pub use opcode::Opcode;
pub use reg::{F, Rm, X};
