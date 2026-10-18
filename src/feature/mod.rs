//! 指令集扩展：一个扩展一个文件夹、一个 cargo feature，全部用 `#[derive(Isa)]` 写表、经 [`crate::ext::Module`]
//! 接进汇编器、反汇编与解释器（核心只认 RV32I）。写新扩展照 `zmmul/` 抄。
//!
//! | 文件夹 | feature | 内容 |
//! | --- | --- | --- |
//! | `zmmul/` | `zmmul` | `mul` / `mulh*` |
//! | `m/` | `m`（蕴含 `zmmul`） | `div*` / `rem*` |
//! | `f/` | `f`（蕴含 `zicsr`） | 单精度浮点、`fcsr` 一类伪指令 |
//! | `zicsr/` | `zicsr` | `csrr*`、`csrr` / `csrw` / `rdcycle` 一类伪指令 |
//! | `xthead/<名>/` | `xthead<名>`（`xthead` = 全部） | 玄铁厂商扩展，默认不开 |
//! | `c.rs` | `c` | 16 位压缩指令（一张「压缩 ⇔ 32 位」对照表，⛔ 不走 `#[derive(Isa)]`），默认不开 |
mod c;
mod f;
mod m;
pub mod xthead;
mod zicsr;
mod zmmul;

use crate::ext::{Disassemble, Exec, Module, Std};
use crate::isa::Table;
use crate::sim::Stop;
pub use c::Compressed;
pub use f::{FForm, Float};
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
            /// C 隐含 Zca（有 F 再隐含 Zcf），同 LLVM。
            #[must_use]
            pub fn march() -> String {
                let mut exts: Vec<(&str, &str)> = Vec::new();
                $(if $t::ENABLED {
                    exts.push(($t::ALL[0].ext(), $ver));
                })*
                if Compressed::ENABLED {
                    exts.push(("c", "2p0"));
                    exts.push(("zca", "1p0"));
                    if Float::ENABLED {
                        exts.push(("zcf", "1p0"));
                    }
                }
                exts.sort_by_key(|(e, _)| Self::rank(e));
                exts.iter().fold(String::from("rv32i2p1"), |s, (e, v)| format!("{s}_{e}{v}"))
            }

            /// 扩展名在 `-march` 里的次序（同 LLVM 的 RISCVISAInfo）：单字母按 `imafdqlcbkjtpvnh`；
            /// z 扩展在后，按第二个字母所属的单字母类别、再按名字；x 扩展最后。
            fn rank(e: &str) -> (u8, usize, String) {
                const ORDER: &str = "imafdqlcbkjtpvnh";
                let class = |c: char| ORDER.find(c).unwrap_or(ORDER.len());
                let mut chars = e.chars();
                match (chars.next(), chars.next()) {
                    (Some(c), None) => (0, class(c), String::new()),
                    (Some('z'), Some(c)) => (1, class(c), String::from(e)),
                    _ => (2, 0, String::from(e)),
                }
            }

            /// 架构串（`rv32i2p1_m2p0_c2p0_zca1p0`，也认不规范的 `rv32imfc`）里有没有扩展 `ext`。
            #[must_use]
            pub fn lists(arch: &str, ext: &str) -> bool {
                let rest = arch.trim().to_ascii_lowercase();
                let rest = rest.strip_prefix("rv32").or_else(|| rest.strip_prefix("rv64")).unwrap_or(&rest).to_owned();
                let mut parts = rest.split('_');
                // 第一段是一串单字母（夹着版本号）
                let first = parts.next().unwrap_or_default();
                if ext.len() == 1 && first.chars().filter(char::is_ascii_alphabetic).filter(|&c| c != 'p').any(|c| ext.starts_with(c)) {
                    return true;
                }
                parts.any(|p| p.trim_end_matches(|c: char| c.is_ascii_digit() || c == 'p') == ext)
            }

            /// llc / llvm-mc 的 `-mattr`（对照用）：开了的 `+x`，关了的 `-x`。
            #[must_use]
            pub fn mattr() -> String {
                let c = if Compressed::ENABLED { "+c" } else { "-c" };
                [$(format!("{}{}", if $t::ENABLED { '+' } else { '-' }, $t::ALL[0].ext())),*, String::from(c)].join(",")
            }

            /// 浮点调用约定：开了 F 用 ilp32f，否则 ilp32（软浮点）。
            #[must_use]
            pub fn abi() -> String {
                String::from(if Float::ENABLED { "ilp32f" } else { "ilp32" })
            }
        }

        /// ⭐ 这次编译开了的内置扩展。
        #[must_use]
        pub fn builtin<'a>() -> Vec<&'a dyn Module> {
            let mut out: Vec<&'a dyn Module> = Vec::new();
            $(if $t::ENABLED {
                const E: Std<$t> = Std::new();
                out.push(&E);
            })*
            if Compressed::ENABLED {
                out.push(&Compressed);
            }
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
            if Compressed::ENABLED {
                return Compressed.decode(window);
            }
            None
        }

        /// 由认它的内置扩展执行一条。
        pub fn execute(cx: &mut Exec<'_, '_>, bytes: &[u8]) -> Result<(), Stop> {
            let mut window = [0; 8];
            window[..bytes.len().min(8)].copy_from_slice(&bytes[..bytes.len().min(8)]);
            $(if $t::ENABLED && Std::<$t>::new().decode(&window).is_some() {
                return Std::<$t>::new().execute(cx, bytes);
            })*
            if Compressed::ENABLED && Compressed.decode(&window).is_some() {
                return Compressed.execute(cx, bytes);
            }
            Err(Stop::Trap(u32::from_le_bytes([window[0], window[1], window[2], window[3]])))
        }
    };
}

tables!(
    M "2p0", Float "2p2", Zicsr "2p0", Zmmul "1p0",
    XTheadBa "1p0", XTheadBb "1p0", XTheadBs "1p0", XTheadCmo "1p0", XTheadCondMov "1p0",
    XTheadFMemIdx "1p0", XTheadMac "1p0", XTheadMemIdx "1p0", XTheadMemPair "1p0", XTheadSync "1p0",
);
