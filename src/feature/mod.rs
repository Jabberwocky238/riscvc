//! 指令集扩展：一个扩展一个文件夹、一个 cargo feature，全部用 `#[derive(Isa)]` 写表、经 [`crate::ext::Extension`]
//! 接进汇编器、反汇编与解释器（核心只认 RV32I）。写新扩展照 `zmmul/` 抄。
//!
//! | 文件夹 | feature | 内容 |
//! | --- | --- | --- |
//! | `zmmul/` | `zmmul` | `mul` / `mulh*` |
//! | `m/` | `m`（蕴含 `zmmul`） | `div*` / `rem*` |
//! | `f/` | `f`（蕴含 `zicsr`） | 单精度浮点、`fcsr` 一类伪指令 |
//! | `zicsr/` | `zicsr` | `csrr*`、`csrr` / `csrw` / `rdcycle` 一类伪指令 |
mod f;
mod m;
mod zicsr;
mod zmmul;

use crate::ext::{Exec, Extension, Std};
use crate::isa::Table;
use crate::sim::Stop;
pub use f::Float;
pub use m::M;
pub use zicsr::Zicsr;
pub use zmmul::Zmmul;

/// 内置的表一次列全 ⇒ 注册表、译码、执行。
macro_rules! tables {
    ($($t:ident),* $(,)?) => {
        /// ⭐ 这次编译开了的内置扩展。
        #[must_use]
        pub fn builtin<'a>() -> Vec<&'a dyn Extension> {
            let mut out: Vec<&'a dyn Extension> = Vec::new();
            $(if $t::ALL[0].enabled() {
                const E: Std<$t> = Std::new();
                out.push(&E);
            })*
            out
        }

        /// 内置扩展认不认 pc 处的字节：几字节。
        #[must_use]
        pub fn decode(window: &[u8; 8]) -> Option<usize> {
            $(if $t::ALL[0].enabled() && let Some(n) = Std::<$t>::new().decode(window) {
                return Some(n);
            })*
            None
        }

        /// 由认它的内置扩展执行一条。
        pub fn execute(cx: &mut Exec<'_, '_>, bytes: &[u8]) -> Result<(), Stop> {
            let mut window = [0; 8];
            window[..bytes.len().min(8)].copy_from_slice(&bytes[..bytes.len().min(8)]);
            $(if $t::ALL[0].enabled() && Std::<$t>::new().decode(&window).is_some() {
                return Std::<$t>::new().execute(cx, bytes);
            })*
            Err(Stop::Trap(u32::from_le_bytes([window[0], window[1], window[2], window[3]])))
        }
    };
}

tables!(Zmmul, M, Float, Zicsr);
