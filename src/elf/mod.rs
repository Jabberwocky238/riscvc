//! ELF32 小端 RISC-V 的**读写模型**：字节 ⇄ 有名字的节与段，⭐ 不依赖 `std` feature（no_std 档：`no_std` + `alloc`）。
//!
//! ```text
//!   raw      线格式：`#[repr(C)]` 的 Ehdr / Phdr / Shdr / Sym / Rela / Rel（布局编译期逐字段钉死）
//!   model    解开之后的样子：有名字的节、拥有自己字节的段（[`Elf`]、[`Section`]、[`Segment`]）
//!   unpack   字节 → [`Elf`]（`Elf::try_from(&[u8])`）
//!   attributes  RISC-V 属性节的格式：字节 ⇄ vendor / 子段 / 属性（[`Attributes`]）
//!   pack     [`Elf`] → 字节（[`Elf::pack`]：[`Layout::Verbatim`] 原样 / [`Layout::Canonical`] 重排 / [`Layout::Flat`] 不带节表）
//! ```
//!
//! ⭐⭐ 判据只有一条：**解开再原样打回去 == 原文件，逐字节**（[`Layout::Verbatim`]）。解包或打包哪一处理解错了，都在这一步现形。
//!
//! ⚠ 这一层不碰操作系统：收 `&[u8]`、出 `Vec<u8>`，⛔ 不开文件、不调链接器。
//! ⚠ 只认 ELF32 小端 `EM_RISCV`；结构体的内存字节就是文件字节，⇒ 只在小端主机上编（大端 `compile_error!`）。
//! 特定加载器的约定（跳过哪些节、入口必须落在哪）和私有属性节的内容不在这里：调用方在 [`Elf`] 之上自己加。

#[cfg(target_endian = "big")]
compile_error!("riscvc::elf 直接把 `#[repr(C)]` 结构体的内存字节当文件字节用，只在小端主机上成立");

mod attributes;
mod model;
mod pack;
mod raw;
mod unpack;

pub use attributes::{riscv_tag, Attribute, Attributes, Subsection, Value, Vendor, FORMAT_A};
pub use model::{Elf, Section, Segment, SegmentData, SourceLayout};
pub use pack::{Layout, PAGE, TEXT_OFFSET};
pub use raw::{Ehdr, Ident, Phdr, Pod, Rel, Rela, Shdr, Sym};

use alloc::string::String;

/// 读写 ELF 的每一种拒绝。⭐ 每个变体带上越界的是谁、在哪：一份坏掉的镜像里，那就是全部线索。
#[derive(Clone, Debug, PartialEq, Eq, thiserror::Error)]
pub enum Error {
    #[error("不是 ELF：开头四字节是 {found:02x?}，应当是 7f 45 4c 46")]
    BadMagic { found: [u8; 4] },
    #[error("只认 32 位小端 ELF：这份是 class={class} data={data}（1/1 才是）")]
    NotElf32Le { class: u8, data: u8 },
    #[error("ELF 版本 {version}，只认 1")]
    BadVersion { version: u8 },
    #[error("机器类型 {machine}，只认 EM_RISCV(243)")]
    NotRiscv { machine: u16 },
    #[error("文件在偏移 {at:#x} 处截断：还要 {need} 字节，整个文件只有 {have}")]
    Truncated { at: usize, need: usize, have: usize },
    #[error("节头表项大小是 {found}，ELF32 规定 40")]
    BadSectionEntrySize { found: u16 },
    #[error("程序头表项大小是 {found}，ELF32 规定 32")]
    BadProgramEntrySize { found: u16 },
    #[error("e_shstrndx = {index}，但只有 {count} 个节")]
    NoStringTable { index: u16, count: u16 },
    #[error("节 {index} 的名字偏移 {at:#x} 落在字符串表（{size} 字节）之外")]
    NameOutOfTable { index: u16, at: u32, size: u32 },
    #[error("节 `{name}` 声明 {size} 字节在偏移 {offset:#x}，越过了文件末尾 {end:#x}")]
    SectionOutOfFile { name: String, offset: u32, size: u32, end: usize },
    #[error("段 {index} 声明 {filesz} 字节在偏移 {offset:#x}，越过了文件末尾 {end:#x}")]
    SegmentOutOfFile { index: u16, offset: u32, filesz: u32, end: usize },
    #[error("一份可执行镜像至少要有一个可加载的节，这份一个都没有")]
    NothingToLoad,
    #[error("节名 `{name}` 出现了两次（或原字符串表里找不到它）")]
    DuplicateSectionName { name: String },
    #[error("镜像要 {size} 字节，ELF32 的偏移字段只有 32 位")]
    TooLarge { size: usize },
    #[error("节 `{name}` 的对齐是 {align}，不是 2 的幂")]
    AlignNotPowerOfTwo { name: String, align: u32 },
    #[error("节 `{name}` 的地址 {addr:#x} 不满足它自己声明的对齐 {align:#x}")]
    AddrNotAligned { name: String, addr: u32, align: u32 },
    #[error("属性节格式版本是 {found:#x}，只认 `A`(0x41)")]
    BadAttributeVersion { found: u8 },
    #[error("属性节里 vendor 段声明 {declared} 字节，剩下的只有 {left}")]
    AttributeSectionOverrun { declared: u32, left: usize },
    #[error("属性节的 vendor 名没有结尾的 NUL")]
    UnterminatedVendor,
    #[error("属性子段 tag {tag} 声明 {declared} 字节，剩下的只有 {left}")]
    AttributeSubsectionOverrun { tag: u8, declared: u32, left: usize },
    #[error("ULEB128 没有结束，或超过 {bits} 位装不下")]
    BadUleb { bits: u32 },
    #[error("属性字符串没有结尾的 NUL")]
    UnterminatedString,
}
