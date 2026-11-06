//! 自带的运行时函数：代码生成会落成调用、目标上又没有对应指令的那几个，名字与 ABI 同 compiler-rt，
//! 手边没有 compiler-rt / `compiler_builtins` 时直接链这里的。
//! 只收 riscvc 自己会发、又不依赖目标扩展的调用；软浮点、原子、没有 M 时的乘除仍要 compiler-rt。
use crate::asm::{Assembler, Error};
use crate::feature::Target;
use alloc::vec::Vec;

/// 一份内置运行时的汇编源：`name` 当目标文件名，`text` 是 GNU 汇编。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Builtin {
    pub name: &'static str,
    pub text: &'static str,
}

impl Builtin {
    /// rv32 上 i64 的除与余：`__udivdi3` / `__divdi3` / `__umoddi3` / `__moddi3`（`codegen` 的 i64 `udiv` / `sdiv` / `urem` / `srem`）。
    /// 只用 RV32I；语义同 C 的截断除法，余数随被除数的符号；除以 0、`INT64_MIN / -1` 是无效输入（不 trap，结果照恢复除法）。
    pub const I64_DIVMOD: Self = Self { name: "divdi3.s", text: include_str!("builtins.s") };

    pub const ALL: [Self; 1] = [Self::I64_DIVMOD];

    /// 按 `target` 汇编成目标文件（`.riscv.attributes` 随目标）。
    pub fn object(&self, target: Target<'_>) -> Result<Vec<u8>, Error> {
        Assembler::new().target(target).assemble(self.text)
    }
}
