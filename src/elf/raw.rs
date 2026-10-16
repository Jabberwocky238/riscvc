//! ELF32 的**线格式**：每个字段在第几个字节，由 ELF 规范钉死。
//!
//! ⭐ 全部 `#[repr(C)]`，⛔ 不是 `packed`：ELF32 的每个结构体，字段本来就落在自身对齐的偏移上，⇒ `repr(C)` 的布局
//! 和文件逐字节相同；`packed` 只会让字段取不到引用、读写退化成逐字节搬运。前提由文件末尾的 `layout!` 逐字段在编译期守住。
//! ⚠ 常量只列可执行镜像与目标文件里常见的那些；`SHT_RELA` / `SHT_REL` 留着是为了认出可重定位目标文件。
use super::Error;
use core::mem::{offset_of, size_of};

/// 一个**纯字节**的结构体：`repr(C)`、`Copy`、无填充、无指针、任意位模式都合法。
///
/// # Safety
///
/// 实现者必须保证：`repr(C)` 且布局与 ELF 规范逐字节一致；**没有填充字节**（否则 [`Pod::to_bytes`] 读到未初始化内存）；
/// 任意 `size_of::<Self>()` 字节都是合法值（否则 [`Pod::read`] 造出非法值）。
pub unsafe trait Pod: Copy + Sized {
    /// 从 `bytes` 的 `at` 处解出一个。⚠ `read_unaligned`：切片首地址没有任何对齐保证。
    fn read(bytes: &[u8], at: usize) -> Result<Self, Error> {
        let truncated = Error::Truncated { at, need: size_of::<Self>(), have: bytes.len() };
        let window = at.checked_add(size_of::<Self>()).and_then(|end| bytes.get(at..end)).ok_or(truncated)?;
        // SAFETY: `window` 恰好 `size_of::<Self>()` 字节且来自活着的切片；`Self: Pod` 保证任意位模式合法；不要求对齐
        Ok(unsafe { window.as_ptr().cast::<Self>().read_unaligned() })
    }

    /// 这个值的字节，⭐ 就是它在文件里的样子。
    fn to_bytes(&self) -> &[u8] {
        // SAFETY: 指针来自活着的 `&Self`，对 `size_of::<Self>()` 字节有效；`Self: Pod` 保证无填充
        unsafe { core::slice::from_raw_parts(core::ptr::from_ref(self).cast::<u8>(), size_of::<Self>()) }
    }
}

/// `e_ident[16]` 拆成有名字的字段，⛔ 不留裸数组（记错「class 在第 4 个字节」的表现是把 64 位 ELF 当 32 位读，照样解得出数）。
#[repr(C)]
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Ident {
    pub magic: [u8; 4],
    pub class: u8,
    pub data: u8,
    pub version: u8,
    pub os_abi: u8,
    pub abi_version: u8,
    pub pad: [u8; 7],
}

impl Ident {
    pub const MAGIC: [u8; 4] = [0x7f, b'E', b'L', b'F'];
    /// `ELFCLASS32`。
    pub const CLASS32: u8 = 1;
    /// `ELFDATA2LSB`。
    pub const LSB: u8 = 1;
    /// `EV_CURRENT`。
    pub const CURRENT: u8 = 1;

    /// ELF32、小端、版本 1、无 OS / ABI 扩展。
    #[must_use]
    pub const fn elf32_le() -> Self {
        Self { magic: Self::MAGIC, class: Self::CLASS32, data: Self::LSB, version: Self::CURRENT, os_abi: 0, abi_version: 0, pad: [0; 7] }
    }
}

/// ELF32 文件头，52 字节。
#[repr(C)]
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Ehdr {
    pub ident: Ident,
    pub kind: u16,
    pub machine: u16,
    pub version: u32,
    pub entry: u32,
    pub phoff: u32,
    pub shoff: u32,
    pub flags: u32,
    pub ehsize: u16,
    pub phentsize: u16,
    pub phnum: u16,
    pub shentsize: u16,
    pub shnum: u16,
    pub shstrndx: u16,
}

impl Ehdr {
    /// `ET_REL`：链接前的目标文件。
    pub const REL: u16 = 1;
    /// `ET_EXEC`。
    pub const EXEC: u16 = 2;
    /// `EM_RISCV`。
    pub const RISCV: u16 = 243;
}

/// 一个程序头，32 字节：**加载器**读的那张表。
#[repr(C)]
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Phdr {
    pub kind: u32,
    pub offset: u32,
    pub vaddr: u32,
    pub paddr: u32,
    pub filesz: u32,
    pub memsz: u32,
    pub flags: u32,
    pub align: u32,
}

impl Phdr {
    pub const NULL: u32 = 0;
    /// `PT_LOAD`。
    pub const LOAD: u32 = 1;
    /// `PT_GNU_STACK`。
    pub const GNU_STACK: u32 = 0x6474_e551;
    /// `PT_GNU_RELRO`。
    pub const GNU_RELRO: u32 = 0x6474_e552;
    /// `PT_RISCV_ATTRIBUTES`。
    pub const RISCV_ATTRIBUTES: u32 = 0x7000_0003;
    /// `PF_X` / `PF_W` / `PF_R`。
    pub const X: u32 = 1;
    pub const W: u32 = 2;
    pub const R: u32 = 4;
}

/// 一个节头，40 字节。
#[repr(C)]
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct Shdr {
    pub name: u32,
    pub kind: u32,
    pub flags: u32,
    pub addr: u32,
    pub offset: u32,
    pub size: u32,
    pub link: u32,
    pub info: u32,
    pub addralign: u32,
    pub entsize: u32,
}

impl Shdr {
    pub const NULL: u32 = 0;
    /// `SHT_PROGBITS`：字节在文件里。
    pub const PROGBITS: u32 = 1;
    pub const SYMTAB: u32 = 2;
    pub const STRTAB: u32 = 3;
    pub const RELA: u32 = 4;
    /// `SHT_NOBITS`：占内存不占文件（`.bss`）。
    pub const NOBITS: u32 = 8;
    pub const REL: u32 = 9;
    pub const INIT_ARRAY: u32 = 14;
    pub const FINI_ARRAY: u32 = 15;
    /// `SHT_RISCV_ATTRIBUTES`。
    pub const RISCV_ATTRIBUTES: u32 = 0x7000_0003;
    /// `SHF_WRITE` / `SHF_ALLOC`（加载时占内存）/ `SHF_EXECINSTR` / `SHF_MERGE`。
    pub const WRITE: u32 = 0x1;
    pub const ALLOC: u32 = 0x2;
    pub const EXEC: u32 = 0x4;
    pub const MERGE: u32 = 0x10;
}

/// 一个符号表项，16 字节。
#[repr(C)]
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Sym {
    pub name: u32,
    pub value: u32,
    pub size: u32,
    pub info: u8,
    pub other: u8,
    pub shndx: u16,
}

impl Sym {
    /// 绑定（高 4 位）。
    #[must_use]
    pub const fn binding(&self) -> u8 {
        self.info >> 4
    }

    /// 类型（低 4 位）。
    #[must_use]
    pub const fn kind(&self) -> u8 {
        self.info & 0xf
    }
}

/// 一条带加数的重定位，12 字节。
#[repr(C)]
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Rela {
    pub offset: u32,
    pub info: u32,
    pub addend: i32,
}

impl Rela {
    /// 符号表下标（ELF32 是高 24 位）。
    #[must_use]
    pub const fn sym(&self) -> u32 {
        self.info >> 8
    }

    /// 重定位类型（ELF32 是低 8 位）。
    #[must_use]
    pub const fn kind(&self) -> u32 {
        self.info & 0xff
    }
}

/// 一条不带加数的重定位，8 字节。
#[repr(C)]
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Rel {
    pub offset: u32,
    pub info: u32,
}

/// ⭐ 一张表：每个线结构体的总长与每个字段的偏移，编译期钉死，并据此实现 [`Pod`]。
/// ⛔ 只钉总长不够：总长对得上而中间某个字段挪了位，解出来的数全错、但每一个都像真的。
macro_rules! layout {
    ($($ty:ident = $size:literal { $($field:ident @ $at:literal),* $(,)? })*) => {
        $(
            const _: () = {
                assert!(size_of::<$ty>() == $size);
                $(assert!(offset_of!($ty, $field) == $at);)*
            };
            // SAFETY: `repr(C)`；上面的断言逐字段钉住了偏移与总长 ⇒ 无填充；字段全是整数或 `u8` 数组 ⇒ 任意位模式合法
            unsafe impl Pod for $ty {}
        )*
    };
}

layout! {
    Ident = 16 { magic @ 0, class @ 4, data @ 5, version @ 6, os_abi @ 7, abi_version @ 8, pad @ 9 }
    Ehdr = 52 {
        ident @ 0, kind @ 16, machine @ 18, version @ 20, entry @ 24, phoff @ 28, shoff @ 32, flags @ 36,
        ehsize @ 40, phentsize @ 42, phnum @ 44, shentsize @ 46, shnum @ 48, shstrndx @ 50,
    }
    Phdr = 32 { kind @ 0, offset @ 4, vaddr @ 8, paddr @ 12, filesz @ 16, memsz @ 20, flags @ 24, align @ 28 }
    Shdr = 40 { name @ 0, kind @ 4, flags @ 8, addr @ 12, offset @ 16, size @ 20, link @ 24, info @ 28, addralign @ 32, entsize @ 36 }
    Sym = 16 { name @ 0, value @ 4, size @ 8, info @ 12, other @ 13, shndx @ 14 }
    Rela = 12 { offset @ 0, info @ 4, addend @ 8 }
    Rel = 8 { offset @ 0, info @ 4 }
}
