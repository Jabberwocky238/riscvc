//! 字节 → [`Elf`]：一遍读完（镜像不大，⛔ 不做惰性），每一次越界都说清是谁越的。
use super::model::{Elf, Section, Segment, SegmentData, SourceLayout};
use super::raw::{Ehdr, Ident, Phdr, Pod, Shdr};
use super::Error;
use alloc::string::String;
use alloc::vec::Vec;
use core::mem::size_of;

/// ⭐ 字节 → [`Elf`]（不需要额外参数 ⇒ 标准库的 `TryFrom`）。
/// ⚠ 只认 ELF32 小端 RISC-V，其余一律拒：把 64 位 ELF 当 32 位读照样解得出数，而每一个都是错的。
///
/// ```
/// let bytes: &[u8] = b"not an elf";
/// assert!(riscvc::elf::Elf::try_from(bytes).is_err());
/// ```
impl TryFrom<&[u8]> for Elf {
    type Error = Error;

    fn try_from(bytes: &[u8]) -> Result<Self, Error> {
        let ident = Ident::read(bytes, 0)?;
        if ident.magic != Ident::MAGIC {
            return Err(Error::BadMagic { found: ident.magic });
        }
        if ident.class != Ident::CLASS32 || ident.data != Ident::LSB {
            return Err(Error::NotElf32Le { class: ident.class, data: ident.data });
        }
        if ident.version != Ident::CURRENT {
            return Err(Error::BadVersion { version: ident.version });
        }
        let ehdr = Ehdr::read(bytes, 0)?;
        if ehdr.machine != Ehdr::RISCV {
            return Err(Error::NotRiscv { machine: ehdr.machine });
        }
        // ⚠ 先有节，才知道哪些段的字节已经被认领
        let sections = Self::read_sections(bytes, &ehdr)?;
        let segments = Self::read_segments(bytes, &ehdr, &sections)?;
        Ok(Self {
            ident,
            kind: ehdr.kind,
            machine: ehdr.machine,
            version: ehdr.version,
            entry: ehdr.entry,
            flags: ehdr.flags,
            sections,
            segments,
            source: Some(SourceLayout { len: bytes.len(), phoff: ehdr.phoff, shoff: ehdr.shoff, shstrndx: ehdr.shstrndx, ehsize: ehdr.ehsize }),
        })
    }
}

impl Elf {
    fn read_segments(bytes: &[u8], ehdr: &Ehdr, sections: &[Section]) -> Result<Vec<Segment>, Error> {
        if ehdr.phnum == 0 {
            return Ok(Vec::new());
        }
        // ⚠ 读表按 phentsize 步进：差一个字节整张表就错位，而错位读出来的每一项都还像地址
        if usize::from(ehdr.phentsize) != size_of::<Phdr>() {
            return Err(Error::BadProgramEntrySize { found: ehdr.phentsize });
        }
        (0..ehdr.phnum)
            .map(|index| {
                let phdr = Phdr::read(bytes, ehdr.phoff as usize + usize::from(index) * size_of::<Phdr>())?;
                if phdr.filesz != 0 && (phdr.offset as usize).saturating_add(phdr.filesz as usize) > bytes.len() {
                    return Err(Error::SegmentOutOfFile { index, offset: phdr.offset, filesz: phdr.filesz, end: bytes.len() });
                }
                Ok(Segment {
                    kind: phdr.kind,
                    vaddr: phdr.vaddr,
                    paddr: phdr.paddr,
                    memsz: phdr.memsz,
                    flags: phdr.flags,
                    align: phdr.align,
                    offset: phdr.offset,
                    filesz: phdr.filesz,
                    data: SegmentData::claim(bytes, sections, phdr.offset, phdr.filesz),
                })
            })
            .collect()
    }

    fn read_sections(bytes: &[u8], ehdr: &Ehdr) -> Result<Vec<Section>, Error> {
        // ⭐ 没有节表是合法的（加载器只看程序头）
        if ehdr.shnum == 0 {
            return Ok(Vec::new());
        }
        if usize::from(ehdr.shentsize) != size_of::<Shdr>() {
            return Err(Error::BadSectionEntrySize { found: ehdr.shentsize });
        }
        if ehdr.shstrndx >= ehdr.shnum {
            return Err(Error::NoStringTable { index: ehdr.shstrndx, count: ehdr.shnum });
        }
        let shdr = |index: u16| Shdr::read(bytes, ehdr.shoff as usize + usize::from(index) * size_of::<Shdr>());
        let strtab = shdr(ehdr.shstrndx)?;
        let names = bytes.get(strtab.offset as usize..strtab.offset as usize + strtab.size as usize).ok_or(Error::SectionOutOfFile {
            name: String::from(".shstrtab"),
            offset: strtab.offset,
            size: strtab.size,
            end: bytes.len(),
        })?;
        (0..ehdr.shnum)
            .map(|index| {
                let shdr = shdr(index)?;
                let name = Self::read_name(names, index, shdr.name)?;
                // ⭐ NOBITS 的 offset 仍有值（指向下一个节），⛔ 照它读 size 个字节就读到别的节
                let data = if shdr.kind == Shdr::NOBITS || shdr.size == 0 {
                    Vec::new()
                } else {
                    let start = shdr.offset as usize;
                    bytes
                        .get(start..start.saturating_add(shdr.size as usize))
                        .ok_or_else(|| Error::SectionOutOfFile { name: name.clone(), offset: shdr.offset, size: shdr.size, end: bytes.len() })?
                        .to_vec()
                };
                Ok(Section {
                    name,
                    kind: shdr.kind,
                    flags: shdr.flags,
                    addr: shdr.addr,
                    link: shdr.link,
                    info: shdr.info,
                    addralign: shdr.addralign,
                    entsize: shdr.entsize,
                    memsz: shdr.size,
                    data,
                    offset: shdr.offset,
                })
            })
            .collect()
    }

    /// ⚠ 节名按规范是 ASCII；用 lossy 而不拒：一个怪名字不该让整份镜像读不出来，怪字节原样出现在报错里更有用。
    fn read_name(names: &[u8], index: u16, at: u32) -> Result<String, Error> {
        let size = u32::try_from(names.len()).unwrap_or(u32::MAX);
        let rest = names.get(at as usize..).ok_or(Error::NameOutOfTable { index, at, size })?;
        let end = rest.iter().position(|&b| b == 0).unwrap_or(rest.len());
        Ok(String::from_utf8_lossy(&rest[..end]).into_owned())
    }
}

impl SegmentData {
    /// 这个段覆盖的字节有没有节认领（判定一次、记在类型上）。
    fn claim(bytes: &[u8], sections: &[Section], offset: u32, filesz: u32) -> Self {
        if filesz == 0 {
            return Self::Empty;
        }
        let (start, end) = (offset as usize, offset as usize + filesz as usize);
        let covered = sections.iter().any(|s| !s.data.is_empty() && (s.offset as usize) <= start && end <= s.offset as usize + s.data.len());
        // ⚠ read_segments 已确认这段在文件里 ⇒ 切片一定成立
        if covered { Self::Covered } else { Self::Owned(bytes[start..end].to_vec()) }
    }
}
