//! 输入：ELF32 可重定位目标文件 ⇒ 节、符号、重定位（拷成自有的结构，后面不再碰 `object`）。
use super::Error;
use object::elf;
use object::read::elf::{ElfFile32, FileHeader, SectionHeader, Sym as _};
use object::{Endianness, LittleEndian as LE};

/// 符号落在哪。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Place {
    Undef,
    Abs,
    /// `.comm`：对齐。
    Common(u64),
    /// 输入文件里的节号。
    Section(usize),
}

#[derive(Clone, Debug)]
pub struct InSym {
    pub name: String,
    pub place: Place,
    pub value: u64,
    pub size: u64,
    pub bind: u8,
    pub ty: u8,
    pub other: u8,
}

impl InSym {
    #[must_use]
    pub const fn local(&self) -> bool {
        self.bind == elf::STB_LOCAL
    }
}

#[derive(Clone, Copy, Debug)]
pub struct InReloc {
    pub offset: u64,
    pub r_type: u32,
    /// 本文件符号表的下标。
    pub sym: usize,
    pub addend: i64,
}

/// 一个输入节。
#[derive(Clone, Debug)]
pub struct InSec {
    pub name: String,
    pub ty: u32,
    pub flags: u64,
    pub align: u64,
    pub data: Vec<u8>,
    pub size: u64,
    pub relocs: Vec<InReloc>,
}

impl InSec {
    #[must_use]
    pub const fn alloc(&self) -> bool {
        self.flags & elf::SHF_ALLOC as u64 != 0
    }
}

/// 一个输入文件。节按 ELF 节号存（`None` = 不参与链接的节：符号表、字符串表、重定位节、空节）。
pub struct Obj {
    pub name: String,
    pub e_flags: u32,
    pub sections: Vec<Option<InSec>>,
    pub syms: Vec<InSym>,
}

impl TryFrom<(&str, &[u8])> for Obj {
    type Error = Error;

    fn try_from((name, bytes): (&str, &[u8])) -> Result<Self, Error> {
        let bad = |why: String| Error::Input(format!("{name}：{why}"));
        let file = ElfFile32::<Endianness>::parse(bytes).map_err(|e| bad(e.to_string()))?;
        let e = file.endian();
        let header = file.elf_header();
        if header.e_machine(e) != elf::EM_RISCV || header.e_type(e) != elf::ET_REL {
            return Err(bad(String::from("不是 RISC-V 可重定位目标文件")));
        }
        let table = file.elf_section_table();
        let mut sections: Vec<Option<InSec>> = Vec::new();
        for s in table.iter() {
            let ty = s.sh_type(e);
            let keep = matches!(ty, elf::SHT_PROGBITS | elf::SHT_NOBITS | elf::SHT_INIT_ARRAY | elf::SHT_FINI_ARRAY | elf::SHT_PREINIT_ARRAY | elf::SHT_NOTE | elf::SHT_RISCV_ATTRIBUTES);
            if !keep {
                sections.push(None);
                continue;
            }
            let name = String::from_utf8_lossy(table.section_name(e, s).map_err(|e| bad(e.to_string()))?).into_owned();
            let data = if ty == elf::SHT_NOBITS { Vec::new() } else { s.data(e, bytes).map_err(|e| bad(e.to_string()))?.to_vec() };
            sections.push(Some(InSec { name, ty, flags: u64::from(s.sh_flags(e)), align: u64::from(s.sh_addralign(e)).max(1), data, size: u64::from(s.sh_size(e)), relocs: Vec::new() }));
        }
        // 重定位：RELA 节挂到它的目标节上
        for s in table.iter() {
            if s.sh_type(e) != elf::SHT_RELA {
                continue;
            }
            let target = s.sh_info(e) as usize;
            let relas: &[elf::Rela32<LE>] = object::pod::slice_from_all_bytes(s.data(e, bytes).map_err(|e| bad(e.to_string()))?).map_err(|()| bad(String::from("RELA 节长度")))?;
            if let Some(Some(sec)) = sections.get_mut(target) {
                sec.relocs.extend(relas.iter().map(|r| InReloc {
                    offset: u64::from(r.r_offset.get(LE)),
                    r_type: r.r_info.get(LE) & 0xff,
                    sym: (r.r_info.get(LE) >> 8) as usize,
                    addend: i64::from(r.r_addend.get(LE)),
                }));
            }
        }
        let symtab = table.symbols(e, bytes, elf::SHT_SYMTAB).map_err(|e| bad(e.to_string()))?;
        let syms = symtab
            .iter()
            .map(|s| {
                let shndx = s.st_shndx(e);
                let place = match shndx {
                    elf::SHN_UNDEF => Place::Undef,
                    elf::SHN_ABS => Place::Abs,
                    elf::SHN_COMMON => Place::Common(u64::from(s.st_value(e))),
                    i => Place::Section(usize::from(i)),
                };
                InSym {
                    name: String::from_utf8_lossy(symtab.symbol_name(e, s).unwrap_or_default()).into_owned(),
                    place,
                    value: u64::from(s.st_value(e)),
                    size: u64::from(s.st_size(e)),
                    bind: s.st_bind(),
                    ty: s.st_type(),
                    other: s.st_other(),
                }
            })
            .collect();
        Ok(Self { name: String::from(name), e_flags: header.e_flags(e), sections, syms })
    }
}
