//! 节、符号、重定位 ⇒ ELF32 可重定位目标文件（`object` 的底层 `elf::Writer`：符号下标、节次序都自己定，
//! 0 号符号的重定位（`R_RISCV_RELAX` / `R_RISCV_ALIGN`、常数目标的 `.reloc`）也写得出）。
//!
//! 节次序：空节、各节（有重定位的紧跟它的 `.rela`）、`.riscv.attributes`、`.symtab`、`.strtab`、`.shstrtab`。
//! 符号次序：0 号空符号、局部（出现次序；要用的节符号排在最后）、全局。
use super::{Assembler, Bind, Def, Error};
use object::elf;
use object::write::StringId;
use object::write::elf::{FileHeader, Rel, SectionHeader, SectionIndex, Sym, Writer};
use object::Endianness;
use std::collections::HashMap;

/// 一个要写的符号。
struct OutSym {
    name: String,
    /// 重定位按它找下标：符号名；节符号是节名。
    key: String,
    /// 节下标（ELF 节号）或 `SHN_*`。
    shndx: u16,
    section: Option<SectionIndex>,
    value: u64,
    size: u64,
    st_info: u8,
    st_other: u8,
}

impl Assembler<'_> {
    /// 解析修补点、写 ELF。
    pub(super) fn finish(mut self) -> Result<Vec<u8>, Error> {
        let relocs = self.resolve()?;
        let attrs = self.attributes_section();
        // 节号（与下面 reserve 的次序一致）：各节，有重定位的紧跟它的 .rela
        let has_rela: Vec<bool> = (0..self.sections.len()).map(|k| relocs.iter().any(|r| r.section == k)).collect();
        let mut sec_idx: Vec<SectionIndex> = Vec::new();
        let mut next = 1u32;
        for &rela in &has_rela {
            sec_idx.push(SectionIndex(next));
            next += 1 + u32::from(rela);
        }
        let rela_names: Vec<String> = self.sections.iter().map(|s| format!(".rela{}", s.name)).collect();
        // 符号
        let mut locals: Vec<OutSym> = Vec::new();
        let mut globals: Vec<OutSym> = Vec::new();
        for name in self.order.clone() {
            let s = &self.symbols[&name];
            let temporary = name.starts_with(".L");
            if temporary && !s.used {
                continue;
            }
            let size_of = |s: &super::Symbol| -> Result<Option<u64>, Error> {
                Ok(s.size.as_ref().map(|e| self.eval(e, 0)).transpose()?.and_then(|v| v.constant()).and_then(|k| u64::try_from(k).ok()))
            };
            let (shndx, section, value, size) = match &s.def {
                Def::Label(sec, off) => (sec_idx[*sec].0 as u16, Some(sec_idx[*sec]), *off, size_of(s)?.unwrap_or(0)),
                Def::Common(size, align) => (elf::SHN_COMMON, None, *align, *size),
                Def::Equ(e) => {
                    let v = self.eval(e, 0)?;
                    match (v.constant(), v.syms.as_slice()) {
                        // 只有被引用或声明成全局的绝对符号才进符号表（同 llvm-mc）
                        (Some(k), _) if s.bind != Bind::Local || s.used => (elf::SHN_ABS, None, k.cast_unsigned(), 0),
                        // 别名（`a = b`）：落在 b 的位置，没写 .size 就用 b 的
                        (None, [(target, 1)]) if let Some((sec, off)) = self.label(target) => {
                            let size = match size_of(s)? {
                                Some(n) => n,
                                None => size_of(&self.symbols[target])?.unwrap_or(0),
                            };
                            (sec_idx[sec].0 as u16, Some(sec_idx[sec]), off.wrapping_add_signed(v.k), size)
                        }
                        _ => continue,
                    }
                }
                Def::Undef => {
                    // 节名当符号用的走节符号（下面补）
                    if (s.bind == Bind::Local && !s.used && !self.referenced(&name)) || (!s.declared && self.sections.iter().any(|x| x.name == name)) {
                        continue;
                    }
                    (elf::SHN_UNDEF, None, 0, 0)
                }
            };
            let bind = match (s.bind, &s.def) {
                (Bind::Weak, _) => elf::STB_WEAK,
                // 显式 `.local` 的未定义符号保持局部（同 llvm-mc）
                (Bind::Local, Def::Undef) if s.declared => elf::STB_LOCAL,
                (Bind::Global, _) | (_, Def::Undef | Def::Common(..)) => elf::STB_GLOBAL,
                (Bind::Local, _) => elf::STB_LOCAL,
            };
            let st_type = match s.def {
                Def::Common(..) => elf::STT_OBJECT,
                // TLS 节里定义的、没写类型的 ⇒ STT_TLS（同 llvm-mc）
                Def::Label(sec, _) if s.kind == elf::STT_NOTYPE && self.sections[sec].flags & u64::from(elf::SHF_TLS) != 0 => elf::STT_TLS,
                _ => s.kind,
            };
            let out = OutSym { name: name.clone(), key: name.clone(), shndx, section, value, size, st_info: (bind << 4) | st_type, st_other: s.vis };
            if bind == elf::STB_LOCAL { locals.push(out) } else { globals.push(out) }
        }
        // 节名当符号用的 ⇒ 节符号（局部，排在局部的最后）
        for r in &relocs {
            if !r.symbol.is_empty()
                && !locals.iter().chain(&globals).any(|s| s.name == r.symbol)
                && let Some(k) = self.sections.iter().position(|s| s.name == r.symbol)
                && !locals.iter().any(|s| s.st_info == elf::STT_SECTION && s.section == Some(sec_idx[k]))
            {
                locals.push(OutSym { name: String::new(), key: r.symbol.clone(), shndx: sec_idx[k].0 as u16, section: Some(sec_idx[k]), value: 0, size: 0, st_info: elf::STT_SECTION, st_other: 0 });
            }
        }
        let mut buf = Vec::new();
        let mut w = Writer::new(Endianness::Little, false, &mut buf);
        w.reserve_file_header();
        let mut sec_name: Vec<StringId> = Vec::new();
        let mut rela_name: Vec<Option<StringId>> = Vec::new();
        for (k, s) in self.sections.iter().enumerate() {
            sec_name.push(w.add_section_name(s.name.as_bytes()));
            let got = w.reserve_section_index();
            debug_assert_eq!(got, sec_idx[k]);
            rela_name.push(if has_rela[k] {
                let n = w.add_section_name(rela_names[k].as_bytes());
                w.reserve_section_index();
                Some(n)
            } else {
                None
            });
        }
        let attrs_name = attrs.as_ref().map(|_| {
            let n = w.add_section_name(b".riscv.attributes");
            w.reserve_section_index();
            n
        });
        // 符号名 ⇒ 下标（0 = 空符号）
        let mut index: HashMap<&str, u32> = HashMap::new();
        w.reserve_null_symbol_index();
        let mut names: Vec<Option<StringId>> = Vec::new();
        for s in locals.iter().chain(&globals) {
            let i = w.reserve_symbol_index(s.section);
            names.push(if s.name.is_empty() { None } else { Some(w.add_string(s.name.as_bytes())) });
            index.entry(s.key.as_str()).or_insert(i.0);
        }
        let num_local = 1 + locals.len() as u32;
        let symtab = w.reserve_symtab_section_index();
        w.reserve_strtab_section_index();
        w.reserve_shstrtab_section_index();
        // 内容的偏移
        let data_off: Vec<usize> = self.sections.iter().map(|s| if s.ty == elf::SHT_NOBITS { 0 } else { w.reserve(s.data.len(), usize::try_from(s.align).unwrap_or(1).max(1)) }).collect();
        let rela_off: Vec<usize> = (0..self.sections.len()).map(|k| {
            let n = relocs.iter().filter(|r| r.section == k).count();
            if n == 0 { 0 } else { w.reserve_relocations(n, true) }
        }).collect();
        let attrs_off = attrs.as_ref().map(|a| w.reserve(a.len(), 1));
        w.reserve_symtab();
        w.reserve_strtab();
        w.reserve_shstrtab();
        w.reserve_section_headers();
        // 写
        let e_flags = if self.opts.float_abi { elf::EF_RISCV_FLOAT_ABI_SINGLE } else { 0 };
        w.write_file_header(&FileHeader { os_abi: 0, abi_version: 0, e_type: elf::ET_REL, e_machine: elf::EM_RISCV, e_entry: 0, e_flags }).map_err(|e| Error::Syntax(e.to_string()))?;
        for s in &self.sections {
            if s.ty != elf::SHT_NOBITS {
                w.write_align(usize::try_from(s.align).unwrap_or(1).max(1));
                w.write(&s.data);
            }
        }
        for k in 0..self.sections.len() {
            let mut rs: Vec<&super::fixup::Reloc> = relocs.iter().filter(|r| r.section == k).collect();
            if rs.is_empty() {
                continue;
            }
            rs.sort_by_key(|r| r.offset);
            w.write_align_relocation();
            for r in rs {
                let sym = if r.symbol.is_empty() { 0 } else { *index.get(r.symbol.as_str()).ok_or_else(|| Error::Syntax(format!("重定位引用的 `{}` 没进符号表", r.symbol)))? };
                w.write_relocation(true, &Rel { r_offset: r.offset, r_sym: sym, r_type: r.r_type, r_addend: r.addend });
            }
        }
        if let Some(a) = &attrs {
            w.write(a);
        }
        w.write_null_symbol();
        for (s, name) in locals.iter().chain(&globals).zip(names) {
            w.write_symbol(&Sym { name, section: s.section, st_info: s.st_info, st_other: s.st_other, st_shndx: s.shndx, st_value: s.value, st_size: s.size });
        }
        w.write_strtab();
        w.write_shstrtab();
        w.write_null_section_header();
        for (k, s) in self.sections.iter().enumerate() {
            let size = if s.ty == elf::SHT_NOBITS { s.nobits } else { s.data.len() as u64 };
            w.write_section_header(&SectionHeader { name: Some(sec_name[k]), sh_type: s.ty, sh_flags: s.flags, sh_addr: 0, sh_offset: data_off[k] as u64, sh_size: size, sh_link: 0, sh_info: 0, sh_addralign: s.align, sh_entsize: s.entsize });
            if let Some(name) = rela_name[k] {
                let n = relocs.iter().filter(|r| r.section == k).count();
                w.write_relocation_section_header(name, sec_idx[k], symtab, rela_off[k], n, true);
            }
        }
        if let (Some(name), Some(off), Some(a)) = (attrs_name, attrs_off, &attrs) {
            w.write_section_header(&SectionHeader { name: Some(name), sh_type: elf::SHT_RISCV_ATTRIBUTES, sh_flags: 0, sh_addr: 0, sh_offset: off as u64, sh_size: a.len() as u64, sh_link: 0, sh_info: 0, sh_addralign: 1, sh_entsize: 0 });
        }
        w.write_symtab_section_header(num_local);
        w.write_strtab_section_header();
        w.write_shstrtab_section_header();
        Ok(buf)
    }

    /// 未定义的局部符号是否在任何修补点里出现过（出现过 ⇒ 它是外部符号，要进符号表）。
    fn referenced(&self, name: &str) -> bool {
        self.sections.iter().flat_map(|s| &s.fixups).any(|f| self.eval(&f.expr, 0).is_ok_and(|v| v.syms.iter().any(|(n, _)| n == name)))
    }

    /// `.riscv.attributes`：`'A'` + 长度 + `"riscv\0"` + `Tag_File` 子节（各属性：ULEB 标签 + 整数 ULEB 或 NUL 结尾的串）。
    fn attributes_section(&self) -> Option<Vec<u8>> {
        let mut attrs = self.attributes.clone();
        if let Some(arch) = &self.opts.attributes {
            if !attrs.iter().any(|(t, _)| *t == 4) {
                attrs.insert(0, (4, Ok(16)));
            }
            if !attrs.iter().any(|(t, _)| *t == 5) {
                attrs.push((5, Err(arch.clone())));
            }
        }
        if attrs.is_empty() {
            return None;
        }
        let uleb = |out: &mut Vec<u8>, mut v: u64| loop {
            let b = u8::try_from(v & 0x7f).unwrap_or_default();
            v >>= 7;
            if v == 0 {
                out.push(b);
                break;
            }
            out.push(b | 0x80);
        };
        let mut body = Vec::new();
        for (tag, value) in &attrs {
            uleb(&mut body, *tag);
            match value {
                Ok(v) => uleb(&mut body, *v),
                Err(s) => {
                    body.extend_from_slice(s.as_bytes());
                    body.push(0);
                }
            }
        }
        let mut file = vec![1u8];
        file.extend_from_slice(&u32::try_from(body.len() + 5).unwrap_or_default().to_le_bytes());
        file.extend(body);
        let mut sub = Vec::new();
        sub.extend_from_slice(&u32::try_from(file.len() + 10).unwrap_or_default().to_le_bytes());
        sub.extend_from_slice(b"riscv\0");
        sub.extend(file);
        let mut out = vec![b'A'];
        out.extend(sub);
        Some(out)
    }
}
