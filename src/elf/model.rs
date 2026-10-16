//! 解包之后手里拿着的东西：**有名字的、拥有自己字节的** ELF。
//!
//! ⭐ 和 `raw` 的分工：`raw` 是文件里的样子（定长、无名字、偏移是数字），这里是说得出口的样子（节有名字、数据是自己的、
//! `NOBITS` 没有字节由类型说）。⚠ 这一层**保留原始偏移**（[`SourceLayout`]、各节的 `offset`）：[`Layout::Verbatim`] 靠它原样写回。
//!
//! [`Layout::Verbatim`]: super::Layout::Verbatim
use super::raw::{Ident, Phdr, Shdr};
use alloc::string::String;
use alloc::vec::Vec;

/// 一份解开的 ELF32 小端 RISC-V。
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Elf {
    pub ident: Ident,
    /// `ET_EXEC` / `ET_REL`。
    pub kind: u16,
    /// `EM_RISCV`。
    pub machine: u16,
    pub version: u32,
    pub entry: u32,
    pub flags: u32,
    /// 按节头表的顺序。
    pub sections: Vec<Section>,
    pub segments: Vec<Segment>,
    /// 原文件是怎么摆的：`Some` = 从字节解出来的（可以 Verbatim 原样写回），`None` = 新造的（只能重排）。
    /// ⚠ 不是模型的一部分，是「我从哪来」的存根：改过 `sections` 之后这些偏移就不再成立。
    pub source: Option<SourceLayout>,
}

/// 原文件的摆放方式（只有 Verbatim 关心）。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct SourceLayout {
    pub len: usize,
    pub phoff: u32,
    pub shoff: u32,
    pub shstrndx: u16,
    pub ehsize: u16,
}

/// 一个节。
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Section {
    pub name: String,
    pub kind: u32,
    pub flags: u32,
    pub addr: u32,
    pub link: u32,
    pub info: u32,
    pub addralign: u32,
    pub entsize: u32,
    /// 在内存里占多少（`sh_size`）—— `NOBITS` 时它**不等于** `data.len()`。
    pub memsz: u32,
    /// 文件里的字节。⭐ `NOBITS` 这里是空的，⛔ 不是一堆 0：「文件里没有」和「文件里有一堆零」是两回事。
    pub data: Vec<u8>,
    /// 原文件里的偏移；新造的节填 0。
    pub offset: u32,
}

impl Section {
    /// 加载时占内存（`SHF_ALLOC`）。
    #[must_use]
    pub const fn allocated(&self) -> bool {
        self.flags & Shdr::ALLOC != 0
    }

    /// 占内存不占文件（`SHT_NOBITS`）。
    #[must_use]
    pub const fn nobits(&self) -> bool {
        self.kind == Shdr::NOBITS
    }

    /// 加载器要铺的节：`SHF_ALLOC`、`PROGBITS` 或 `NOBITS`、非空。
    #[must_use]
    pub const fn loadable(&self) -> bool {
        self.allocated() && matches!(self.kind, Shdr::PROGBITS | Shdr::NOBITS) && self.memsz != 0
    }

    /// RISC-V 属性节（`SHT_RISCV_ATTRIBUTES`）。
    #[must_use]
    pub const fn is_attributes(&self) -> bool {
        self.kind == Shdr::RISCV_ATTRIBUTES
    }
}

/// 一个程序段。
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Segment {
    pub kind: u32,
    pub vaddr: u32,
    pub paddr: u32,
    pub memsz: u32,
    pub flags: u32,
    pub align: u32,
    /// 原文件里的偏移与长度。
    pub offset: u32,
    pub filesz: u32,
    pub data: SegmentData,
}

/// 一个段覆盖的那些字节**归谁所有**：由 unpack 当场判定一次并记在类型上，⛔ 不让每个读者各自假设。
///
/// ⚠ 不带节表的镜像（`shnum = 0`）整个正文没有任何节认领 ⇒ 只能由段拿着，否则打回去正文全是 0。
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum SegmentData {
    /// 这段文件已经被某个节认领 ⇒ 段只是指向它（⛔ 不再存一份：两份会漂移）。
    Covered,
    /// 没有任何节覆盖它 ⇒ 段自己拿着。
    Owned(Vec<u8>),
    /// `filesz == 0`（`PT_GNU_STACK`、纯 `.bss` 段）。
    Empty,
}

impl Segment {
    #[must_use]
    pub const fn loadable(&self) -> bool {
        self.kind == Phdr::LOAD
    }

    /// `vaddr - paddr`。⚠ 是链接方式的属性，⛔ 不能由地址推出来。
    #[must_use]
    pub const fn physical_offset(&self) -> u32 {
        self.vaddr.wrapping_sub(self.paddr)
    }
}

impl Elf {
    /// 按名字找一个节。
    #[must_use]
    pub fn section(&self, name: &str) -> Option<&Section> {
        self.sections.iter().find(|s| s.name == name)
    }

    /// 加载器要铺的那些节（[`Section::loadable`]），按节表顺序。
    pub fn loadable(&self) -> impl Iterator<Item = &Section> {
        self.sections.iter().filter(|s| s.loadable())
    }

    /// 全部可加载节按地址拼成的连续镜像，以及它的起始地址；节之间的空洞补 0，`NOBITS` 按它的 `memsz` 占位。
    /// `None` = 没有可加载的节。
    #[must_use]
    pub fn flat_image(&self) -> Option<(u32, Vec<u8>)> {
        let mut parts: Vec<&Section> = self.loadable().collect();
        parts.sort_by_key(|s| s.addr);
        let base = parts.first()?.addr;
        let mut image = Vec::new();
        for section in parts {
            let at = (section.addr - base) as usize;
            image.resize(image.len().max(at), 0);
            image.extend_from_slice(&section.data);
            if section.nobits() {
                image.resize(at + section.memsz as usize, 0);
            }
        }
        Some((base, image))
    }
}
