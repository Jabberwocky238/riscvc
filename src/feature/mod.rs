//! 指令集扩展：一个扩展一个文件夹、一个 cargo feature，全部用 `#[derive(Isa)]` 写表、经 [`crate::ext::Extension`]
//! 接进汇编器、反汇编与解释器（核心只认 RV32I）。写新扩展照 `zmmul/` 抄。
//!
//! | 文件夹 | feature | 内容 |
//! | --- | --- | --- |
//! | `zmmul/` | `zmmul` | `mul` / `mulh*` |
//! | `m/` | `m`（蕴含 `zmmul`） | `div*` / `rem*` |
//! | `f/` | `f`（蕴含 `zicsr`） | 单精度浮点、`fcsr` 一类伪指令 |
//! | `zicsr/` | `zicsr` | `csrr*`、`csrr` / `csrw` / `rdcycle` 一类伪指令 |
//! | `xthead/<名>/` | `xthead<名>`（`xthead` = 全部） | 玄铁厂商扩展，默认不开 |
mod f;
mod m;
pub mod xthead;
mod zicsr;
mod zmmul;

use crate::ext::{Exec, Extension, Std};
use crate::isa::Table;
use crate::sim::Stop;
pub use f::Float;
pub use m::M;
pub use zicsr::Zicsr;
pub use zmmul::Zmmul;
use xthead::{ba::XTheadBa, bb::XTheadBb, bs::XTheadBs, cmo::XTheadCmo, condmov::XTheadCondMov, fmemidx::XTheadFMemIdx, mac::XTheadMac, memidx::XTheadMemIdx, mempair::XTheadMemPair, sync::XTheadSync};

/// 内置的表一次列全（`表 "版本"`，按 `-march` 的规范次序）⇒ 注册表、译码、执行、目标描述。
macro_rules! tables {
    ($($t:ident $ver:literal),* $(,)?) => {
        /// 目标描述：从开了的扩展推出来。
        pub struct Target;

        impl Target {
            /// `-march` 串（同 clang 的规范写法，只列开了的）：`rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0`。
            #[must_use]
            pub fn march() -> String {
                let mut s = String::from("rv32i2p1");
                $(if $t::ENABLED {
                    s.push_str(&format!("_{}{}", $t::ALL[0].ext(), $ver));
                })*
                s
            }

            /// llc / llvm-mc 的 `-mattr`（对照用）：开了的 `+x`，关了的 `-x`。
            #[must_use]
            pub fn mattr() -> String {
                [$(format!("{}{}", if $t::ENABLED { '+' } else { '-' }, $t::ALL[0].ext())),*].join(",")
            }

            /// 浮点调用约定：开了 F 用 ilp32f，否则 ilp32（软浮点）。
            #[must_use]
            pub fn abi() -> String {
                String::from(if Float::ENABLED { "ilp32f" } else { "ilp32" })
            }
        }

        /// ⭐ 这次编译开了的内置扩展。
        #[must_use]
        pub fn builtin<'a>() -> Vec<&'a dyn Extension> {
            let mut out: Vec<&'a dyn Extension> = Vec::new();
            $(if $t::ENABLED {
                const E: Std<$t> = Std::new();
                out.push(&E);
            })*
            out
        }

        /// 开了的全部指令（RV32I + 内置扩展）的（固定位, 掩码）：随机字对拍用。
        #[must_use]
        pub fn patterns() -> Vec<(u32, u32)> {
            let mut out: Vec<(u32, u32)> = crate::isa::Rv32i::ALL.iter().map(|o| (o.bits(), o.mask())).collect();
            $(if $t::ENABLED {
                out.extend($t::ALL.iter().map(|o| (o.bits(), o.mask())));
            })*
            out
        }

        /// 内置扩展认不认 pc 处的字节：几字节。
        #[must_use]
        pub fn decode(window: &[u8; 8]) -> Option<usize> {
            $(if $t::ENABLED && let Some(n) = Std::<$t>::new().decode(window) {
                return Some(n);
            })*
            None
        }

        /// 由认它的内置扩展执行一条。
        pub fn execute(cx: &mut Exec<'_, '_>, bytes: &[u8]) -> Result<(), Stop> {
            let mut window = [0; 8];
            window[..bytes.len().min(8)].copy_from_slice(&bytes[..bytes.len().min(8)]);
            $(if $t::ENABLED && Std::<$t>::new().decode(&window).is_some() {
                return Std::<$t>::new().execute(cx, bytes);
            })*
            Err(Stop::Trap(u32::from_le_bytes([window[0], window[1], window[2], window[3]])))
        }
    };
}

tables!(
    M "2p0", Float "2p2", Zicsr "2p0", Zmmul "1p0",
    XTheadBa "1p0", XTheadBb "1p0", XTheadBs "1p0", XTheadCmo "1p0", XTheadCondMov "1p0",
    XTheadFMemIdx "1p0", XTheadMac "1p0", XTheadMemIdx "1p0", XTheadMemPair "1p0", XTheadSync "1p0",
);
