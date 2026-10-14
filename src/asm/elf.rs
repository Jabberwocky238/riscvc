//! 节、符号、重定位 ⇒ ELF32 可重定位目标文件（`object` 写）。
use super::{Assembler, Bind, Def, Error};
use object::elf;
use object::write::{Object, Relocation, SectionId, Symbol, SymbolId, SymbolSection};
use object::{Architecture, BinaryFormat, Endianness, FileFlags, RelocationFlags, SectionFlags, SectionKind, SymbolFlags, SymbolKind, SymbolScope};
use std::collections::HashMap;

impl Assembler<'_> {
    /// 解析修补点、写 ELF。
    pub(super) fn finish(mut self) -> Result<Vec<u8>, Error> {
        let relocs = self.resolve()?;
        let mut obj = Object::new(BinaryFormat::Elf, Architecture::Riscv32, Endianness::Little);
        let e_flags = if self.opts.float_abi { elf::EF_RISCV_FLOAT_ABI_SINGLE } else { 0 };
        obj.flags = FileFlags::Elf { os_abi: 0, abi_version: 0, e_flags };
        let ids: Vec<SectionId> = self
            .sections
            .iter()
            .map(|s| {
                let tls = s.flags & u64::from(elf::SHF_TLS) != 0;
                let kind = match s.ty {
                    elf::SHT_NOBITS if tls => SectionKind::UninitializedTls,
                    elf::SHT_PROGBITS if tls => SectionKind::Tls,
                    elf::SHT_NOBITS => SectionKind::UninitializedData,
                    elf::SHT_PROGBITS if s.flags & u64::from(elf::SHF_EXECINSTR) != 0 => SectionKind::Text,
                    elf::SHT_PROGBITS if s.flags & u64::from(elf::SHF_WRITE) != 0 => SectionKind::Data,
                    elf::SHT_PROGBITS if s.flags & u64::from(elf::SHF_ALLOC) != 0 => SectionKind::ReadOnlyData,
                    ty => SectionKind::Elf(ty),
                };
                let id = obj.add_section(Vec::new(), s.name.clone().into_bytes(), kind);
                let section = obj.section_mut(id);
                section.flags = SectionFlags::Elf { sh_flags: s.flags };
                if s.ty == elf::SHT_NOBITS {
                    section.append_bss(s.nobits, s.align);
                } else {
                    section.set_data(s.data.clone(), s.align);
                }
                id
            })
            .collect();
        if let Some(bytes) = self.attributes_section() {
            let id = obj.add_section(Vec::new(), b".riscv.attributes".to_vec(), SectionKind::Elf(elf::SHT_RISCV_ATTRIBUTES));
            obj.section_mut(id).set_data(bytes, 1);
        }
        let mut syms: HashMap<String, SymbolId> = HashMap::new();
        for name in self.order.clone() {
            let s = &self.symbols[&name];
            let temporary = name.starts_with(".L");
            if temporary && !s.used {
                continue;
            }
            let size_of = |s: &super::Symbol| -> Result<Option<u64>, Error> {
                Ok(s.size.as_ref().map(|e| self.eval(e, 0)).transpose()?.and_then(|v| v.constant()).and_then(|k| u64::try_from(k).ok()))
            };
            let (section, value, size) = match &s.def {
                Def::Label(sec, off) => (SymbolSection::Section(ids[*sec]), *off, size_of(s)?.unwrap_or(0)),
                Def::Common(size, align) => (SymbolSection::Common, *align, *size),
                Def::Equ(e) => {
                    let v = self.eval(e, 0)?;
                    match (v.constant(), v.syms.as_slice()) {
                        // 只有被引用或声明成全局的绝对符号才进符号表（同 llvm-mc）
                        (Some(k), _) if s.bind != Bind::Local || s.used => (SymbolSection::Absolute, k.cast_unsigned(), 0),
                        // 别名（`a = b`）：落在 b 的位置，没写 .size 就用 b 的
                        (None, [(target, 1)]) if let Some((sec, off)) = self.label(target) => {
                            let size = match size_of(s)? {
                                Some(n) => n,
                                None => size_of(&self.symbols[target])?.unwrap_or(0),
                            };
                            (SymbolSection::Section(ids[sec]), off.wrapping_add_signed(v.k), size)
                        }
                        _ => continue,
                    }
                }
                Def::Undef => {
                    if s.bind == Bind::Local && !s.used && !self.referenced(&name) {
                        continue;
                    }
                    (SymbolSection::Undefined, 0, 0)
                }
            };
            let bind = match (s.bind, &s.def) {
                (Bind::Weak, _) => elf::STB_WEAK,
                // 显式 `.local` 的未定义符号保持局部（同 llvm-mc）
                (Bind::Local, Def::Undef) if s.declared => elf::STB_LOCAL,
                (Bind::Global, _) | (_, Def::Undef | Def::Common(..)) => elf::STB_GLOBAL,
                (Bind::Local, _) => elf::STB_LOCAL,
            };
            let kind = match s.kind {
                elf::STT_FUNC => SymbolKind::Text,
                elf::STT_OBJECT | elf::STT_COMMON => SymbolKind::Data,
                elf::STT_TLS => SymbolKind::Tls,
                _ => SymbolKind::Unknown,
            };
            let st_type = match s.def {
                Def::Common(..) => elf::STT_OBJECT,
                // TLS 节里定义的、没写类型的 ⇒ STT_TLS（同 llvm-mc）
                Def::Label(sec, _) if s.kind == elf::STT_NOTYPE && self.sections[sec].flags & u64::from(elf::SHF_TLS) != 0 => elf::STT_TLS,
                _ => s.kind,
            };
            let id = obj.add_symbol(Symbol {
                name: name.clone().into_bytes(),
                value,
                size,
                kind,
                scope: if bind == elf::STB_LOCAL { SymbolScope::Compilation } else { SymbolScope::Dynamic },
                weak: bind == elf::STB_WEAK,
                section,
                flags: SymbolFlags::Elf { st_info: (bind << 4) | st_type, st_other: s.vis },
            });
            syms.insert(name, id);
        }
        for r in relocs {
            // 节名当符号用的 ⇒ 节符号
            let symbol = match (syms.get(&r.symbol), self.sections.iter().position(|s| s.name == r.symbol)) {
                (Some(&id), _) => id,
                (None, Some(sec)) => obj.section_symbol(ids[sec]),
                (None, None) => return Err(Error::Syntax(format!("重定位引用的 `{}` 没进符号表", r.symbol))),
            };
            obj.add_relocation(ids[r.section], Relocation { offset: r.offset, symbol, addend: r.addend, flags: RelocationFlags::Elf { r_type: r.r_type } })
                .map_err(|e| Error::Syntax(e.to_string()))?;
        }
        obj.write().map_err(|e| Error::Syntax(e.to_string()))
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
