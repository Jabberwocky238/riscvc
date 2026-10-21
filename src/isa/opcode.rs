//! 操作码并集：每个变体包一张表（`#[derive(Opcode)]` 生成 `From<表>`、`Table` 的委托）。代码生成与 [`super::Inst`] 用它。
use super::Rv32i;
use crate::feature::{Atomic, Double, Float, M, Zicsr, Zmmul};
use crate::macros::Opcode;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, Opcode)]
pub enum Opcode {
    I(Rv32i),
    Zmmul(Zmmul),
    M(M),
    A(Atomic),
    F(Float),
    D(Double),
    Zicsr(Zicsr),
}
