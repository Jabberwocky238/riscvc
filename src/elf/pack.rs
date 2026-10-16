//! [`Elf`] → 字节：**三种摆法，由调用方选**（[`Layout`]），⛔ 不自动判断。
//!
//! ⭐ [`Layout::Verbatim`] 存在的理由不是省得算，而是它是这一层**唯一的硬证据**：解开再打回去差一个字节，就说明解包或打包有一处理解错了。
//! ⚠ [`Layout::Canonical`] 的文件偏移镜像地址布局：`offset - TEXT_OFFSET == addr - 首个可加载节的地址`。
use super::model::{Elf, Section, SegmentData};
use super::raw::{Ehdr, Phdr, Pod, Shdr};
use super::Error;
use alloc::vec;
use alloc::vec::Vec;
use core::mem::size_of;

/// 重排时可加载正文在文件里的起点，也是生成的 `PT_LOAD` 的对齐（⭐ 同一个数：文件与内存都按页对齐，加载器可以直接映射）。
pub const TEXT_OFFSET: u32 = 0x1000;
pub const PAGE: u32 = 0x1000;

/// 按哪种方式摆这份镜像。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Layout {
    /// 用解包时记下的偏移原样写回（[`Elf::source`] 是 `None` 时退回 [`Layout::Canonical`]：新造的镜像没有「原样」可言）。
    Verbatim,
    /// 重新算一套偏移。
    Canonical,
    /// 同 [`Layout::Canonical`]，⛔ **但不产节表**（`e_shoff = 0`、`shnum = 0`）：文件 = 首页（头 + 程序头）+ 可加载节的字节。
    /// ⚠ 只认程序头的加载器能用它；按节头表铺镜像的加载器在它身上看到的是零个节。
    Flat,
}

/// 正在拼的文件字节。
struct Image(Vec<u8>);

impl Image {
    /// 在 `at` 处写下 `bytes`（⛔ 不扩展：越界说明偏移算错了）。
    fn put(&mut self, at: usize, bytes: &[u8]) -> Result<(), Error> {
        let have = self.0.len();
        self.0.get_mut(at..at + bytes.len()).ok_or(Error::Truncated { at, need: bytes.len(), have })?.copy_from_slice(bytes);
        Ok(())
    }

    /// 在 `at` 处写下 `bytes`，不够长先补 0。
    fn place(&mut self, at: usize, bytes: &[u8]) {
        self.0.resize(self.0.len().max(at + bytes.len()), 0);
        self.0[at..at + bytes.len()].copy_from_slice(bytes);
    }

    fn align(&mut self, align: u32) {
        let align = align.max(1) as usize;
        self.0.resize(self.0.len().next_multiple_of(align), 0);
    }

    fn len32(&self) -> Result<u32, Error> {
        u32::try_from(self.0.len()).map_err(|_| Error::TooLarge { size: self.0.len() })
    }
}

/// 一张字符串表（`.shstrtab`）。
struct Strtab<'a>(&'a [u8]);

impl Strtab<'_> {
    /// 一个名字在表里的偏移：完整的一项；否则名字在某一项里**第一次**出现、且正好是它的后缀（链接器会让名字共享尾巴）。
    fn find(&self, name: &[u8]) -> Option<u32> {
        let mut at = 0usize;
        while at < self.0.len() {
            let end = self.0[at..].iter().position(|&b| b == 0)? + at;
            let item = &self.0[at..end];
            if item == name {
                return u32::try_from(at).ok();
            }
            if let Some(inner) = item.windows(name.len()).position(|w| w == name).filter(|&p| p + name.len() == item.len()) {
                return u32::try_from(at + inner).ok();
            }
            at = end + 1;
        }
        None
    }
}

impl From<&Section> for Shdr {
    /// 节 ⇒ 节头（名字偏移与文件偏移由调用方再填）。
    fn from(s: &Section) -> Self {
        Self { name: 0, kind: s.kind, flags: s.flags, addr: s.addr, offset: s.offset, size: s.memsz, link: s.link, info: s.info, addralign: s.addralign, entsize: s.entsize }
    }
}

impl From<&super::Segment> for Phdr {
    fn from(s: &super::Segment) -> Self {
        Self { kind: s.kind, offset: s.offset, vaddr: s.vaddr, paddr: s.paddr, filesz: s.filesz, memsz: s.memsz, flags: s.flags, align: s.align }
    }
}

impl Elf {
    /// ⭐ [`Elf`] → 字节。
    ///
    /// ```
    /// use riscvc::elf::{Elf, Layout, Section, Shdr};
    /// let elf = Elf {
    ///     ident: riscvc::elf::Ident::elf32_le(), kind: riscvc::elf::Ehdr::EXEC, machine: riscvc::elf::Ehdr::RISCV, version: 1,
    ///     entry: 0x1_0000, flags: 0, segments: Vec::new(), source: None,
    ///     sections: vec![Section { name: ".text".into(), kind: Shdr::PROGBITS, flags: Shdr::ALLOC | Shdr::EXEC, addr: 0x1_0000,
    ///         link: 0, info: 0, addralign: 4, entsize: 0, memsz: 4, data: 0x0000_8067u32.to_le_bytes().to_vec(), offset: 0 }],
    /// };
    /// let bytes = elf.pack(Layout::Canonical)?;
    /// let again = Elf::try_from(bytes.as_slice())?;
    /// assert_eq!(again.pack(Layout::Verbatim)?, bytes);
    /// # Ok::<(), riscvc::elf::Error>(())
    /// ```
    pub fn pack(&self, layout: Layout) -> Result<Vec<u8>, Error> {
        match (layout, self.source) {
            (Layout::Verbatim, Some(source)) => self.pack_verbatim(source),
            (Layout::Flat, _) => self.pack_computed(false),
            _ => self.pack_computed(true),
        }
    }

    fn pack_verbatim(&self, source: super::SourceLayout) -> Result<Vec<u8>, Error> {
        let mut image = Image(vec![0u8; source.len]);
        // 节的字节（NOBITS 没有字节可写：它的 offset 指向的是别人的地方）
        for section in self.sections.iter().filter(|s| !s.data.is_empty()) {
            let room = image.0.get_mut(section.offset as usize..section.offset as usize + section.data.len());
            room.ok_or_else(|| Error::SectionOutOfFile {
                name: section.name.clone(),
                offset: section.offset,
                size: u32::try_from(section.data.len()).unwrap_or(u32::MAX),
                end: source.len,
            })?
            .copy_from_slice(&section.data);
        }
        // 没有节认领的段字节（不带节表的镜像整个正文都在这里）
        for segment in &self.segments {
            if let SegmentData::Owned(data) = &segment.data {
                image.put(segment.offset as usize, data)?;
            }
        }
        for (index, segment) in self.segments.iter().enumerate() {
            image.put(source.phoff as usize + index * size_of::<Phdr>(), Phdr::from(segment).to_bytes())?;
        }
        let names = Strtab(self.sections.get(usize::from(source.shstrndx)).map_or(&[][..], |s| s.data.as_slice()));
        for (index, section) in self.sections.iter().enumerate() {
            // 🚨 ⛔ 不重建字符串表：链接器会让名字共享后缀，重建的表合法却和原文件不同字节 ⇒ 去原表里**找**
            let name = match section.name.as_bytes() {
                [] => 0,
                name => names.find(name).ok_or_else(|| Error::DuplicateSectionName { name: section.name.clone() })?,
            };
            image.put(source.shoff as usize + index * size_of::<Shdr>(), Shdr { name, ..Shdr::from(section) }.to_bytes())?;
        }
        image.put(0, self.header(source.phoff, source.shoff, source.shstrndx).to_bytes())?;
        Ok(image.0)
    }

    /// Canonical 与 Flat 共用这一条（`with_sections` 为假 ⇒ 不产 `.shstrtab` 与节表）：正文怎么摆、程序头怎么生成在两者下一模一样。
    fn pack_computed(&self, with_sections: bool) -> Result<Vec<u8>, Error> {
        let sections: Vec<&Section> = self.sections.iter().filter(|s| !s.name.is_empty() && s.name != ".shstrtab").collect();
        Self::check(&sections)?;
        let mut load: Vec<&Section> = sections.iter().copied().filter(|s| s.allocated()).collect();
        load.sort_by_key(|s| s.addr);
        let base = load.first().ok_or(Error::NothingToLoad)?.addr;
        let file_at = |addr: u32| TEXT_OFFSET + (addr - base);

        let mut image = Image(vec![0u8; TEXT_OFFSET as usize]);
        for section in load.iter().filter(|s| !s.data.is_empty()) {
            image.place(file_at(section.addr) as usize, &section.data);
        }
        // 不占内存的节（属性、注释）跟在后面，各自记下落在哪
        let mut offsets = Vec::with_capacity(sections.len());
        for section in &sections {
            if section.allocated() {
                offsets.push(file_at(section.addr));
            } else {
                image.align(section.addralign);
                offsets.push(image.len32()?);
                image.0.extend_from_slice(&section.data);
            }
        }
        // `.shstrtab` 最后重建（⛔ 不复用输入那份：节可能已经增删）
        let (shoff, table) = if with_sections {
            let (names, name_at) = Self::names(&sections);
            let names_at = image.len32()?;
            image.0.extend_from_slice(&names);
            image.align(4);
            let shoff = image.len32()?;
            let size = u32::try_from(names.len()).map_err(|_| Error::TooLarge { size: names.len() })?;
            let mut table = vec![Shdr::default()];
            table.extend(sections.iter().zip(&name_at).zip(&offsets).map(|((s, &name), &offset)| Shdr { name, offset, ..Shdr::from(*s) }));
            table.push(Shdr { name: name_at[sections.len()], kind: Shdr::STRTAB, offset: names_at, size, addralign: 1, ..Shdr::default() });
            for shdr in &table {
                image.0.extend_from_slice(shdr.to_bytes());
            }
            (shoff, table)
        } else {
            (0, Vec::new())
        };
        // 程序头：解包来的照抄，新造的一个可加载节一个 PT_LOAD
        let segments: Vec<Phdr> = if self.segments.is_empty() { load.iter().map(|s| Self::derive(s, file_at(s.addr))).collect() } else { self.segments.iter().map(Phdr::from).collect() };
        // 🚨 程序头表在**已经写好的**首页里 ⇒ 回填，⛔ 不 extend（e_phoff 指着 52）
        let phoff = size_of::<Ehdr>();
        for (index, phdr) in segments.iter().enumerate() {
            image.put(phoff + index * size_of::<Phdr>(), phdr.to_bytes())?;
        }
        let count = |n: usize| u16::try_from(n).map_err(|_| Error::TooLarge { size: n });
        let entsize = |n: usize, size: usize| if n == 0 { 0 } else { size as u16 };
        // 🚨 计数和表项大小必须一起改：header() 按模型算，而这条路上段与节表都可能是现生成的
        let mut ehdr = self.header(phoff as u32, shoff, if table.is_empty() { 0 } else { count(table.len() - 1)? });
        ehdr.phnum = count(segments.len())?;
        ehdr.phentsize = entsize(segments.len(), size_of::<Phdr>());
        ehdr.shnum = count(table.len())?;
        ehdr.shentsize = entsize(table.len(), size_of::<Shdr>());
        image.put(0, ehdr.to_bytes())?;
        Ok(image.0)
    }

    /// 文件头。🚨 表为空时表项大小必须是 0，⛔ 不是 40 / 32：否则不带节表的镜像写回去会在 0x2e 处和原文件分家。
    fn header(&self, phoff: u32, shoff: u32, shstrndx: u16) -> Ehdr {
        let (phentsize, phnum) = if self.segments.is_empty() { (0, 0) } else { (size_of::<Phdr>() as u16, self.segments.len() as u16) };
        let (shentsize, shnum, shstrndx) = if self.sections.is_empty() { (0, 0, 0) } else { (size_of::<Shdr>() as u16, self.sections.len() as u16, shstrndx) };
        Ehdr {
            ident: self.ident,
            kind: self.kind,
            machine: self.machine,
            version: self.version,
            entry: self.entry,
            phoff,
            shoff,
            flags: self.flags,
            ehsize: size_of::<Ehdr>() as u16,
            phentsize,
            phnum,
            shentsize,
            shnum,
            shstrndx,
        }
    }

    /// 重排前的检查：节名唯一、对齐是 2 的幂、可加载节的地址满足自己的对齐。
    fn check(sections: &[&Section]) -> Result<(), Error> {
        for (i, s) in sections.iter().enumerate() {
            if sections[..i].iter().any(|b| b.name == s.name) {
                return Err(Error::DuplicateSectionName { name: s.name.clone() });
            }
            if s.addralign > 1 && !s.addralign.is_power_of_two() {
                return Err(Error::AlignNotPowerOfTwo { name: s.name.clone(), align: s.addralign });
            }
            if s.allocated() && s.addralign > 1 && !s.addr.is_multiple_of(s.addralign) {
                return Err(Error::AddrNotAligned { name: s.name.clone(), addr: s.addr, align: s.addralign });
            }
        }
        Ok(())
    }

    /// `.shstrtab` 的字节与每个节名的偏移（末尾多一项是 `.shstrtab` 自己）。
    fn names(sections: &[&Section]) -> (Vec<u8>, Vec<u32>) {
        let mut names = vec![0u8];
        let at = sections
            .iter()
            .map(|s| s.name.as_str())
            .chain([".shstrtab"])
            .map(|name| {
                let at = names.len() as u32;
                names.extend_from_slice(name.as_bytes());
                names.push(0);
                at
            })
            .collect();
        (names, at)
    }

    /// 一个可加载节 ⇒ 一个 `PT_LOAD`（权限由节的 flags 翻译）。⚠ `paddr` 取 `vaddr`：那个差值推不出来，要别的值调用方自己填 `segments`。
    fn derive(section: &Section, offset: u32) -> Phdr {
        let flags = Phdr::R | if section.flags & Shdr::EXEC != 0 { Phdr::X } else { 0 } | if section.flags & Shdr::WRITE != 0 { Phdr::W } else { 0 };
        let filesz = u32::try_from(section.data.len()).unwrap_or(u32::MAX);
        Phdr { kind: Phdr::LOAD, offset, vaddr: section.addr, paddr: section.addr, filesz, memsz: section.memsz, flags, align: PAGE }
    }
}
