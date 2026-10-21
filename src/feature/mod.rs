//! 指令集扩展：一个扩展一个文件夹、一张 `#[derive(Isa)]` 表、一个**模块**（[`builtin`] 里的常量，`impl ext::Module`），
//! 同外部扩展包一样挂进汇编器、反汇编、模拟器与代码生成（核心只认 RV32I）。写新扩展照 `zmmul/` 抄。
//!
//! ⭐ 开哪些是**运行时**的事：调用方给一个 [`Target`]（一组模块），⛔ cargo feature —— 同一个二进制能出不同 `-march` 的代码。
//!
//! | 文件夹 | 模块（`builtin::`） | 内容 |
//! | --- | --- | --- |
//! | `zmmul/` | `ZMMUL` | `mul` / `mulh*` |
//! | `m/` | `M`（带上 `ZMMUL`） | `div*` / `rem*` |
//! | `f/` | `F`（带上 `ZICSR`） | 单精度浮点、`fcsr` 一类伪指令 |
//! | `zicsr/` | `ZICSR` | `csrr*`、`csrr` / `csrw` / `rdcycle` 一类伪指令 |
//! | `xthead/<名>/` | `XTHEAD<名>` | 玄铁厂商扩展 |
//! | `c.rs` | `C` | 16 位压缩指令（一张「压缩 ⇔ 32 位」对照表，⛔ 不走 `#[derive(Isa)]`） |
mod c;
mod f;
mod m;
pub mod xthead;
mod zicsr;
mod zmmul;

use crate::ext::{Exec, Module, Std};
use crate::isa::Table;
use crate::sim::Stop;
pub use c::Compressed;
pub use f::{FForm, Float};
pub use m::M;
pub use zicsr::Zicsr;
pub use zmmul::Zmmul;
use xthead::{ba::XTheadBa, bb::XTheadBb, bs::XTheadBs, cmo::XTheadCmo, condmov::XTheadCondMov, fmemidx::XTheadFMemIdx, mac::XTheadMac, memidx::XTheadMemIdx, mempair::XTheadMemPair, sync::XTheadSync};

/// 内置的表一次列全（`表 常量 "版本"`，按 `-march` 的规范次序）⇒ 模块常量、目标描述、按名字执行。
macro_rules! tables {
    ($($t:ident $k:ident $ver:literal),* $(,)?) => {
        /// ⭐ 内置扩展的模块：`Target::rv32i().with(&builtin::M)`，或交给 `.modules(&[&builtin::XTHEADCMO, …])`。
        pub mod builtin {
            use super::*;
            $(
                #[doc = concat!("`", stringify!($t), "` 那张表。")]
                pub const $k: Std<$t> = Std::new();
            )*
            /// 16 位压缩指令。
            pub const C: Compressed = Compressed;
            /// 全部内置模块与版本（`-march` 的规范次序；C 另算，见 [`Target::march`]）。
            pub const ALL: &[(&dyn Module, &str)] = &[$((&$k, $ver),)* (&C, "2p0")];
        }

        impl Target<'_> {
            /// 开了的内置表的全部指令（RV32I + 它们）的（固定位, 掩码）：随机字对拍用。
            #[must_use]
            pub fn patterns(&self) -> Vec<(u32, u32)> {
                let mut out: Vec<(u32, u32)> = crate::isa::Rv32i::ALL.iter().map(|o| (o.bits(), o.mask())).collect();
                $(if self.has(builtin::$k.name()) {
                    out.extend($t::ALL.iter().map(|o| (o.bits(), o.mask())));
                })*
                out
            }

            /// ⭐ 内置模块 `module` 执行一条（内置模块没有状态 ⇒ 按名字现造一个，⛔ 要可变借用目标）；不是内置的 ⇒ 陷入。
            pub fn run(module: &dyn Module, cx: &mut Exec<'_, '_>, bytes: &[u8]) -> Result<(), Stop> {
                let name = module.name();
                $(if name == builtin::$k.name() {
                    return Std::<$t>::new().execute(cx, bytes);
                })*
                if name == "c" {
                    return Compressed.execute(cx, bytes);
                }
                let mut w = [0; 4];
                w[..bytes.len().min(4)].copy_from_slice(&bytes[..bytes.len().min(4)]);
                Err(Stop::Trap(u32::from_le_bytes(w)))
            }
        }
    };
}

tables!(
    M M "2p0", Float F "2p2", Zicsr ZICSR "2p0", Zmmul ZMMUL "1p0",
    XTheadBa XTHEADBA "1p0", XTheadBb XTHEADBB "1p0", XTheadBs XTHEADBS "1p0", XTheadCmo XTHEADCMO "1p0", XTheadCondMov XTHEADCONDMOV "1p0",
    XTheadFMemIdx XTHEADFMEMIDX "1p0", XTheadMac XTHEADMAC "1p0", XTheadMemIdx XTHEADMEMIDX "1p0", XTheadMemPair XTHEADMEMPAIR "1p0", XTheadSync XTHEADSYNC "1p0",
);

/// ⭐⭐ 目标：这次挂了哪些扩展模块（运行时给，⛔ cargo feature）。内置的与外部扩展包一视同仁，都是 [`Module`]。
///
/// 缺省（[`Default`]）= `rv32imf_zicsr_zmmul`，同从前的默认 feature。
#[derive(Clone)]
pub struct Target<'m> {
    mods: Vec<&'m dyn Module>,
}

impl Default for Target<'_> {
    fn default() -> Self {
        Self::rv32i().with(&builtin::M).with(&builtin::F)
    }
}

impl<'m> Target<'m> {
    /// 只有 RV32I。
    #[must_use]
    pub const fn rv32i() -> Self {
        Self { mods: Vec::new() }
    }

    /// 再挂一个模块（同名的已经有 ⇒ 不重复挂）。`M` 带上 `Zmmul`、`F` 带上 `Zicsr`（同规范的蕴含）。
    #[must_use]
    pub fn with(mut self, module: &'m dyn Module) -> Self {
        let implied: &[&'m dyn Module] = match module.name() {
            "m" => &[&builtin::ZMMUL],
            "f" => &[&builtin::ZICSR],
            _ => &[],
        };
        for m in core::iter::once(module).chain(implied.iter().copied()) {
            if !self.has(m.name()) {
                self.mods.push(m);
            }
        }
        self
    }

    /// 挂上一组模块。
    #[must_use]
    pub fn with_all(self, modules: &[&'m dyn Module]) -> Self {
        modules.iter().fold(self, |t, m| t.with(*m))
    }

    /// 挂了的模块（挂的次序）。
    #[must_use]
    pub fn modules(&self) -> &[&'m dyn Module] {
        &self.mods
    }

    /// 挂没挂名叫 `ext` 的模块（`Module::name`，同 `-mattr` 写法：`m`、`f`、`xtheadcmo` …）。
    #[must_use]
    pub fn has(&self, ext: &str) -> bool {
        self.mods.iter().any(|m| m.name() == ext)
    }

    /// 有硬件单精度浮点（F）。
    #[must_use]
    pub fn float(&self) -> bool {
        self.has("f")
    }

    /// 有 16 位压缩指令（C）。
    #[must_use]
    pub fn rvc(&self) -> bool {
        self.has("c")
    }

    /// `-march` 串（同 clang 的规范写法，只列挂了的内置扩展）：`rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0`。
    /// C 隐含 Zca（有 F 再隐含 Zcf），同 LLVM。外部扩展包不进这个串。
    #[must_use]
    pub fn march(&self) -> String {
        let mut exts: Vec<(&str, &str)> = builtin::ALL.iter().filter(|(m, _)| m.name() != "c" && self.has(m.name())).map(|(m, v)| (m.name(), *v)).collect();
        if self.rvc() {
            exts.push(("c", "2p0"));
            exts.push(("zca", "1p0"));
            if self.float() {
                exts.push(("zcf", "1p0"));
            }
        }
        exts.sort_by_key(|(e, _)| Self::rank(e));
        exts.iter().fold(String::from("rv32i2p1"), |s, (e, v)| format!("{s}_{e}{v}"))
    }

    /// llc / llvm-mc 的 `-mattr`（对照用）：每个内置扩展挂了 `+x`、没挂 `-x`。
    #[must_use]
    pub fn mattr(&self) -> String {
        builtin::ALL.iter().map(|(m, _)| format!("{}{}", if self.has(m.name()) { '+' } else { '-' }, m.name())).collect::<Vec<_>>().join(",")
    }

    /// 浮点调用约定：有 F 用 ilp32f，否则 ilp32（软浮点）。
    #[must_use]
    pub fn abi(&self) -> String {
        String::from(if self.float() { "ilp32f" } else { "ilp32" })
    }

    /// 挂了的模块里谁认 pc 处的字节、几字节。
    #[must_use]
    pub fn claim(&self, window: &[u8; 8]) -> Option<(&'m dyn Module, usize)> {
        self.mods.iter().find_map(|m| m.decode(window).map(|n| (*m, n)))
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
}

impl Target<'static> {
    /// ⭐ 从架构串取内置模块：`rv32imf_zicsr`、`rv32i2p1_m2p0_c2p0_zca1p0_xtheadcmo1p0`，也认 `-mattr` 写法（`+m,+f,-c`）。
    /// 认不出的扩展名 ⇒ 报错（⛔ 默默丢掉：丢一个 `f` 就是换了调用约定）。`zca` / `zcf` 跟着 `c` 走。
    pub fn parse(spec: &str) -> Result<Self, String> {
        let spec = spec.trim();
        let mut target = Self::rv32i();
        if spec.starts_with(['+', '-']) {
            for part in spec.split(',').map(str::trim).filter(|p| !p.is_empty()) {
                let (on, name) = part.split_at(1);
                // `-relax` 一类关掉的不是扩展，不管
                if on == "+" {
                    let found = builtin::ALL.iter().find(|(m, _)| m.name() == name).ok_or_else(|| format!("不认识的扩展 `{name}`"))?;
                    target = target.with(found.0);
                }
            }
            return Ok(target);
        }
        let arch = spec.to_ascii_lowercase();
        if !arch.starts_with("rv32") {
            return Err(format!("`{spec}` 不是 rv32 的架构串"));
        }
        // 每一段（单字母串里的每个字母、`_` 隔开的 z / x 扩展）都要认得
        let rest = &arch[4..];
        let mut parts = rest.split('_');
        let letters: String = parts.next().unwrap_or_default().chars().filter(|c| c.is_ascii_alphabetic() && *c != 'p').collect();
        let names = letters.chars().map(String::from).chain(parts.map(|p| p.trim_end_matches(|c: char| c.is_ascii_digit() || c == 'p').to_owned()));
        for name in names.filter(|n| !matches!(n.as_str(), "i" | "e" | "zca" | "zcf" | "")) {
            let name = if name == "g" { String::from("m") } else { name };
            let found = builtin::ALL.iter().find(|(m, _)| m.name() == name).ok_or_else(|| format!("不认识的扩展 `{name}`"))?;
            target = target.with(found.0);
        }
        Ok(target)
    }
}
