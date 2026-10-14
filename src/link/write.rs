//! 可执行 ELF32：头、程序头（同 lld：权限一变或遇到 `AT` 就另起一个 `PT_LOAD`）、各节、符号表、节表。
use super::input::Place;
use super::{Error, Linker, Out};
use object::elf;

/// 页大小：可装载段的文件偏移与虚地址模它同余（同 lld 的 max-page-size）。
const PAGE: u64 = 0x1000;

/// 一个输出到文件里的节（含合成的符号表等）。
struct Sec {
    name: String,
    ty: u32,
    flags: u64,
    addr: u64,
    offset: u64,
    size: u64,
    align: u64,
    link: u32,
    info: u32,
    entsize: u64,
    data: Vec<u8>,
}

/// 小端字节缓冲。
#[derive(Default)]
struct Buf(Vec<u8>);

impl Buf {
    fn u8(&mut self, v: u8) -> &mut Self {
        self.0.push(v);
        self
    }
    fn u16(&mut self, v: u16) -> &mut Self {
        self.0.extend_from_slice(&v.to_le_bytes());
        self
    }
    fn u32(&mut self, v: u64) -> &mut Self {
        self.0.extend_from_slice(&u32::try_from(v).unwrap_or(u32::MAX).to_le_bytes());
        self
    }
    fn pad(&mut self, to: u64) {
        let to = usize::try_from(to).unwrap_or_default();
        if self.0.len() < to {
            self.0.resize(to, 0);
        }
    }
}

/// 字符串表。
#[derive(Default)]
struct Strtab(Vec<u8>);

impl Strtab {
    fn add(&mut self, s: &str) -> u64 {
        if s.is_empty() {
            return 0;
        }
        if self.0.is_empty() {
            self.0.push(0);
        }
        let at = self.0.len() as u64;
        self.0.extend_from_slice(s.as_bytes());
        self.0.push(0);
        at
    }
}

impl Linker {
    pub(super) fn write(&self) -> Result<Vec<u8>, Error> {
        let mut secs: Vec<Sec> = self
            .slots
            .iter()
            .filter_map(|s| if let super::Slot::Out(i) = s { Some(&self.outs[*i]) } else { None })
            .map(|o: &Out| Sec { name: o.name.clone(), ty: o.ty, flags: o.flags, addr: o.addr, offset: 0, size: o.size, align: o.align, link: 0, info: 0, entsize: 0, data: o.data.clone() })
            .collect();
        // 非 ALLOC 的排在后面（同 lld）
        secs.sort_by_key(|s| s.flags & u64::from(elf::SHF_ALLOC) == 0);
        if let Some(attrs) = self.attributes() {
            secs.push(Sec { name: String::from(".riscv.attributes"), ty: elf::SHT_RISCV_ATTRIBUTES, flags: 0, addr: 0, offset: 0, size: attrs.len() as u64, align: 1, link: 0, info: 0, entsize: 0, data: attrs });
        }
        // 程序头：可装载段
        let alloc: Vec<usize> = (0..secs.len()).filter(|&i| secs[i].flags & u64::from(elf::SHF_ALLOC) != 0).collect();
        let perm = |s: &Sec| elf::PF_R | if s.flags & u64::from(elf::SHF_WRITE) != 0 { elf::PF_W } else { 0 } | if s.flags & u64::from(elf::SHF_EXECINSTR) != 0 { elf::PF_X } else { 0 };
        let mut loads: Vec<Vec<usize>> = Vec::new();
        for &i in &alloc {
            let lma_starts = self.outs.iter().find(|o| o.name == secs[i].name).and_then(|o| o.script.as_ref()).is_some_and(|s| s.lma.is_some());
            match loads.last_mut() {
                Some(seg) if perm(&secs[seg[0]]) == perm(&secs[i]) && !lma_starts && secs[i].addr >= secs[*seg.last().expect("非空")].addr => seg.push(i),
                _ => loads.push(vec![i]),
            }
        }
        let has_attrs = secs.iter().any(|s| s.ty == elf::SHT_RISCV_ATTRIBUTES);
        let nphdr = loads.len() + 1 + usize::from(has_attrs);
        // 文件偏移
        let mut off = 52 + 32 * nphdr as u64;
        for seg in &loads {
            let first = &secs[seg[0]];
            let base_addr = first.addr;
            // 首节：偏移与地址模页同余
            let want = base_addr % PAGE;
            off = if off % PAGE <= want { off - off % PAGE + want } else { off - off % PAGE + PAGE + want };
            let base_off = off;
            for &i in seg {
                secs[i].offset = base_off + (secs[i].addr - base_addr);
                if secs[i].ty != elf::SHT_NOBITS {
                    off = secs[i].offset + secs[i].size;
                }
            }
            for &i in seg {
                if secs[i].ty == elf::SHT_NOBITS {
                    secs[i].offset = off.max(secs[i].offset.min(off));
                }
            }
        }
        // 符号表
        let mut strtab = Strtab::default();
        let mut symtab = Buf::default();
        let mut nlocal = 1;
        if !self.opts.strip {
            symtab.0.extend_from_slice(&[0; 16]);
            let index = |name: &str| secs.iter().position(|s| s.name == name).map_or(elf::SHN_ABS, |p| u16::try_from(p + 1).unwrap_or(elf::SHN_ABS));
            let mut sym = |name: &str, value: u64, size: u64, info: u8, other: u8, shndx: u16| {
                let n = strtab.add(name);
                symtab.u32(n).u32(value).u32(size).u8(info).u8(other).u16(shndx);
            };
            for (o, obj) in self.objs.iter().enumerate() {
                for s in obj.syms.iter().skip(1) {
                    if !s.local() || s.ty == elf::STT_SECTION || s.name.is_empty() || s.name.starts_with(".L") || s.name.starts_with('$') {
                        continue;
                    }
                    let (value, shndx) = match s.place {
                        Place::Section(i) => match self.placed.get(&(o, i)) {
                            Some(Some((out, a))) => (a + s.value, index(&self.outs[*out].name)),
                            _ => continue,
                        },
                        Place::Abs if s.ty == elf::STT_FILE => (0, elf::SHN_ABS),
                        Place::Abs => (s.value, elf::SHN_ABS),
                        _ => continue,
                    };
                    sym(&s.name, value, s.size, s.bind << 4 | s.ty, s.other, shndx);
                    nlocal += 1;
                }
            }
            for name in &self.order {
                let Some(def) = self.globals.get(name) else {
                    // 弱引用、没定义：照样记一个未定义的弱符号
                    continue;
                };
                match *def {
                    super::Def::Script(v) => {
                        let shndx = secs.iter().position(|s| s.flags & u64::from(elf::SHF_ALLOC) != 0 && s.addr <= v && v <= s.addr + s.size).map_or(elf::SHN_ABS, |p| u16::try_from(p + 1).unwrap_or(elf::SHN_ABS));
                        sym(name, v, 0, elf::STB_GLOBAL << 4 | elf::STT_NOTYPE, 0, shndx);
                    }
                    super::Def::Obj(o, i) => {
                        let s = &self.objs[o].syms[i];
                        let (value, shndx) = match s.place {
                            Place::Section(si) => match self.placed.get(&(o, si)) {
                                Some(Some((out, a))) => (a + s.value, index(&self.outs[*out].name)),
                                _ => (0, elf::SHN_UNDEF),
                            },
                            Place::Abs => (s.value, elf::SHN_ABS),
                            _ => (0, elf::SHN_UNDEF),
                        };
                        sym(name, value, s.size, s.bind << 4 | s.ty, s.other, shndx);
                    }
                }
            }
        }
        // 非 ALLOC 节、符号表、节名表
        let nsec = secs.len();
        if !self.opts.strip {
            secs.push(Sec { name: String::from(".symtab"), ty: elf::SHT_SYMTAB, flags: 0, addr: 0, offset: 0, size: symtab.0.len() as u64, align: 4, link: u32::try_from(nsec + 3).unwrap_or_default(), info: nlocal, entsize: 16, data: symtab.0 });
        }
        let mut shstrtab = Strtab::default();
        let names: Vec<u64> = secs.iter().map(|s| shstrtab.add(&s.name)).collect();
        let shstr_name = shstrtab.add(".shstrtab");
        let str_name = if self.opts.strip { 0 } else { shstrtab.add(".strtab") };
        secs.push(Sec { name: String::from(".shstrtab"), ty: elf::SHT_STRTAB, flags: 0, addr: 0, offset: 0, size: shstrtab.0.len() as u64, align: 1, link: 0, info: 0, entsize: 0, data: shstrtab.0 });
        if !self.opts.strip {
            secs.push(Sec { name: String::from(".strtab"), ty: elf::SHT_STRTAB, flags: 0, addr: 0, offset: 0, size: strtab.0.len() as u64, align: 1, link: 0, info: 0, entsize: 0, data: strtab.0 });
        }
        for s in secs.iter_mut().filter(|s| s.flags & u64::from(elf::SHF_ALLOC) == 0) {
            off = off.next_multiple_of(s.align.max(1));
            s.offset = off;
            off += s.size;
        }
        let shoff = off.next_multiple_of(4);
        // 写
        let mut b = Buf::default();
        b.0.extend_from_slice(&[0x7f, b'E', b'L', b'F', elf::ELFCLASS32, elf::ELFDATA2LSB, elf::EV_CURRENT, elf::ELFOSABI_NONE]);
        b.0.extend_from_slice(&[0; 8]);
        let flags = self.e_flags();
        b.u16(elf::ET_EXEC).u16(elf::EM_RISCV).u32(u64::from(elf::EV_CURRENT)).u32(self.entry).u32(52).u32(shoff).u32(u64::from(flags));
        b.u16(52).u16(32).u16(u16::try_from(nphdr).unwrap_or_default()).u16(40).u16(u16::try_from(secs.len() + 1).unwrap_or_default());
        b.u16(u16::try_from(secs.iter().position(|s| s.name == ".shstrtab").map_or(0, |p| p + 1)).unwrap_or_default());
        for seg in &loads {
            let first = &secs[seg[0]];
            let last_file = seg.iter().filter(|&&i| secs[i].ty != elf::SHT_NOBITS).map(|&i| secs[i].offset + secs[i].size).max().unwrap_or(first.offset);
            let last_mem = seg.iter().map(|&i| secs[i].addr + secs[i].size).max().unwrap_or(first.addr);
            let lma = self.outs.iter().find(|o| o.name == first.name).map_or(first.addr, |o| o.lma);
            b.u32(u64::from(elf::PT_LOAD)).u32(first.offset).u32(first.addr).u32(lma).u32(last_file - first.offset).u32(last_mem - first.addr).u32(u64::from(perm(first))).u32(PAGE);
        }
        b.u32(u64::from(elf::PT_GNU_STACK)).u32(0).u32(0).u32(0).u32(0).u32(0).u32(u64::from(elf::PF_R | elf::PF_W)).u32(0);
        if let Some(a) = secs.iter().find(|s| s.ty == elf::SHT_RISCV_ATTRIBUTES) {
            b.u32(u64::from(0x7000_0003u32)).u32(a.offset).u32(0).u32(0).u32(a.size).u32(0).u32(u64::from(elf::PF_R)).u32(1);
        }
        for s in &secs {
            if s.ty != elf::SHT_NOBITS && !s.data.is_empty() {
                b.pad(s.offset);
                let at = usize::try_from(s.offset).unwrap_or_default();
                if b.0.len() < at + s.data.len() {
                    b.0.resize(at + s.data.len(), 0);
                }
                b.0[at..at + s.data.len()].copy_from_slice(&s.data);
            }
        }
        b.pad(shoff);
        b.0.extend_from_slice(&[0; 40]);
        for (k, s) in secs.iter().enumerate() {
            let name = match s.name.as_str() {
                ".shstrtab" => shstr_name,
                ".strtab" => str_name,
                _ => names[k],
            };
            let link = if s.ty == elf::SHT_SYMTAB { u32::try_from(secs.iter().position(|x| x.name == ".strtab").map_or(0, |p| p + 1)).unwrap_or_default() } else { s.link };
            b.u32(name).u32(u64::from(s.ty)).u32(s.flags).u32(s.addr).u32(s.offset).u32(s.size).u32(u64::from(link)).u32(u64::from(s.info)).u32(s.align).u32(s.entsize);
        }
        Ok(b.0)
    }

    /// 各输入的 `e_flags` 取并（浮点 ABI 要一致）。
    fn e_flags(&self) -> u32 {
        self.objs.iter().filter(|o| !o.name.starts_with('<')).map(|o| o.e_flags).fold(0, |a, f| a | f)
    }

    /// 合并 `.riscv.attributes`：都一样就照抄；不一样取第一份并警告（⚠ 没做架构串的并集）。
    fn attributes(&self) -> Option<Vec<u8>> {
        // 脚本丢掉了（`/DISCARD/`）的不算
        let all: Vec<&[u8]> = self
            .objs
            .iter()
            .enumerate()
            .flat_map(|(o, obj)| obj.sections.iter().enumerate().filter_map(move |(i, s)| Some((o, i, s.as_ref()?))))
            .filter(|(o, i, s)| s.ty == elf::SHT_RISCV_ATTRIBUTES && self.placed.get(&(*o, *i)) != Some(&None))
            .map(|(.., s)| s.data.as_slice())
            .collect();
        let first = *all.first()?;
        if all.iter().any(|a| *a != first) {
            eprintln!("riscvc ld: 警告：各输入的 .riscv.attributes 不同，取第一份");
        }
        Some(first.to_vec())
    }
}
