//! 伪操作（`.section`、`.word`、`.p2align` …）。调试信息、CFI 一类不影响代码与数据的认了就跳过。
use super::fixup::Fix;
use super::lex::{Tok, Toks};
use super::{Assembler, Bind, Def, Error};
use object::elf;

impl Assembler {
    pub(super) fn directive(&mut self, word: &str, rest: &str) -> Result<(), Error> {
        let args = || Toks::try_from(rest).map(Toks::split_commas);
        match word {
            ".text" | ".data" | ".bss" | ".rodata" | ".sdata" | ".sbss" | ".tdata" | ".tbss" => self.switch(word, None, None, None),
            ".section" | ".pushsection" => {
                if word == ".pushsection" {
                    self.stack.push((self.cur, self.prev));
                }
                self.section(rest)?;
            }
            ".popsection" => {
                let (cur, prev) = self.stack.pop().ok_or_else(|| Error::Syntax(String::from(".popsection 没有配对的 .pushsection")))?;
                self.cur = cur;
                self.prev = prev;
            }
            ".previous" => core::mem::swap(&mut self.cur, &mut self.prev),
            ".globl" | ".global" | ".weak" | ".local" => {
                let bind = match word {
                    ".weak" => Bind::Weak,
                    ".local" => Bind::Local,
                    _ => Bind::Global,
                };
                for name in rest.split(',').map(str::trim).filter(|n| !n.is_empty()) {
                    let sym = self.symbol(name);
                    sym.bind = bind;
                    sym.declared = true;
                }
            }
            ".hidden" | ".protected" | ".internal" => {
                let vis = match word {
                    ".hidden" => elf::STV_HIDDEN,
                    ".protected" => elf::STV_PROTECTED,
                    _ => elf::STV_INTERNAL,
                };
                for name in rest.split(',').map(str::trim) {
                    self.symbol(name).vis = vis;
                }
            }
            ".type" => {
                let (name, ty) = rest.split_once(',').ok_or_else(|| Error::Syntax(String::from(".type 名字, @类型")))?;
                let ty = ty.trim().trim_start_matches(['@', '%', '#']).trim_matches('"');
                let kind = match ty {
                    "function" | "STT_FUNC" => elf::STT_FUNC,
                    "object" | "STT_OBJECT" => elf::STT_OBJECT,
                    "tls_object" | "STT_TLS" => elf::STT_TLS,
                    "common" | "STT_COMMON" => elf::STT_COMMON,
                    "notype" | "STT_NOTYPE" => elf::STT_NOTYPE,
                    "gnu_indirect_function" => elf::STT_GNU_IFUNC,
                    _ => return Err(Error::Syntax(format!("不认识的符号类型 `{ty}`"))),
                };
                self.symbol(name.trim()).kind = kind;
            }
            ".size" => {
                let mut a = args()?;
                if a.len() != 2 {
                    return Err(Error::Syntax(String::from(".size 名字, 表达式")));
                }
                let name = a[0].ident()?;
                let e = a[1].expr(self)?;
                self.symbol(&name).size = Some(e);
            }
            ".set" | ".equ" | ".equiv" => {
                let (name, value) = rest.split_once(',').ok_or_else(|| Error::Syntax(format!("{word} 名字, 表达式")))?;
                let e = Toks::try_from(value)?.expr(self)?;
                self.symbol(name.trim()).def = Def::Equ(e);
            }
            ".byte" | ".half" | ".hword" | ".2byte" | ".short" | ".word" | ".4byte" | ".long" | ".int" | ".quad" | ".8byte" | ".dword" => {
                let n: u8 = match word {
                    ".byte" => 1,
                    ".half" | ".hword" | ".2byte" | ".short" => 2,
                    ".word" | ".4byte" | ".long" | ".int" => 4,
                    _ => 8,
                };
                for mut a in args()? {
                    let e = a.expr(self)?;
                    // `.word %pltpcrel(f)` / `.word %gotpcrel(f)`：一定出重定位
                    let (kind, e) = match e.modifier() {
                        Some((super::Modifier::Pltpcrel, inner)) if n == 4 => (Fix::Reloc(elf::R_RISCV_PLT32), inner.clone()),
                        Some((super::Modifier::Gotpcrel, inner)) if n == 4 => (Fix::Reloc(elf::R_RISCV_GOT32_PCREL), inner.clone()),
                        _ => (Fix::Data(n), e),
                    };
                    self.note(kind, e);
                    self.bytes(&vec![0; usize::from(n)])?;
                }
            }
            ".single" | ".float" | ".double" => {
                for v in rest.split(',').map(str::trim).filter(|v| !v.is_empty()) {
                    let x: f64 = v.parse().map_err(|_| Error::Syntax(format!("{word} 的数 `{v}`")))?;
                    #[allow(clippy::cast_possible_truncation, reason = ".single 本来就是 f32")]
                    let bytes = if word == ".double" { x.to_le_bytes().to_vec() } else { (x as f32).to_le_bytes().to_vec() };
                    self.bytes(&bytes)?;
                }
            }
            ".insn" => self.insn(rest)?,
            ".fill" => {
                let a = args()?;
                let repeat = self.constant_arg(a.first(), "次数")?;
                let size = if a.len() > 1 { self.constant_arg(a.get(1), "大小")? } else { 1 };
                let value = if a.len() > 2 { self.constant_arg(a.get(2), "值")? } else { 0 };
                let size = usize::try_from(size.clamp(0, 8)).unwrap_or_default();
                let one = &value.to_le_bytes()[..size];
                self.bytes(&one.repeat(usize::try_from(repeat).map_err(|_| Error::Syntax(String::from(".fill 次数为负")))?))?;
            }
            ".org" => {
                let a = args()?;
                let mut t = a.first().cloned().ok_or_else(|| Error::Syntax(String::from(".org 要位置")))?;
                let e = t.expr(self)?;
                let v = self.eval(&e, 0)?;
                // 常数 = 节内偏移；`标号 + k` = 那个标号（本节）之后 k
                let target = match (v.constant(), v.syms.as_slice()) {
                    (Some(k), _) => k,
                    (None, [(name, 1)]) if let Some((sec, off)) = self.label(name).filter(|(sec, _)| *sec == self.cur) => {
                        let _ = sec;
                        off.cast_signed() + v.k
                    }
                    _ => return Err(Error::Syntax(String::from(".org 的位置要是本节内的常数"))),
                };
                let here = self.here().cast_signed();
                if target < here {
                    return Err(Error::Syntax(String::from(".org 不能往回")));
                }
                let fill = if a.len() > 1 { self.constant_arg(a.get(1), "填充值")? } else { 0 };
                self.bytes(&vec![u8::try_from(fill & 0xff).unwrap_or_default(); usize::try_from(target - here).unwrap_or_default()])?;
            }
            ".uleb128" | ".sleb128" => {
                for mut a in args()? {
                    let e = a.expr(self)?;
                    let k = self.eval(&e, 0)?.constant().ok_or_else(|| Error::Syntax(format!("{word} 只做常数（跨节的差要 SET_ULEB128 重定位，没做）")))?;
                    let bytes = if word == ".uleb128" { Self::uleb(k.cast_unsigned()) } else { Self::sleb(k) };
                    self.bytes(&bytes)?;
                }
            }
            ".zero" | ".space" | ".skip" => {
                let a = args()?;
                let n = self.constant_arg(a.first(), "长度")?;
                let fill = if a.len() > 1 { self.constant_arg(a.get(1), "填充值")? } else { 0 };
                self.bytes(&vec![u8::try_from(fill & 0xff).unwrap_or_default(); usize::try_from(n).map_err(|_| Error::Syntax(String::from("长度为负")))?])?;
            }
            ".ascii" | ".asciz" | ".string" => {
                let mut toks = Toks::try_from(rest)?;
                while let Some(t) = toks.next() {
                    match t {
                        Tok::Str(s) => {
                            self.bytes(&s)?;
                            if word != ".ascii" {
                                self.bytes(&[0])?;
                            }
                        }
                        Tok::Punct(',') => {}
                        t => return Err(Error::Syntax(format!("{word} 要字符串，见 {t:?}"))),
                    }
                }
            }
            ".p2align" | ".align" | ".balign" => {
                let a = args()?;
                let v = self.constant_arg(a.first(), "对齐")?;
                let align = if word == ".balign" { u64::try_from(v).unwrap_or(1) } else { 1u64 << v };
                let fill = if a.len() > 1 && !a[1].is_empty() { Some(self.constant_arg(a.get(1), "填充值")?) } else { None };
                let max = if a.len() > 2 { Some(self.constant_arg(a.get(2), "最多填几字节")?) } else { None };
                self.align(align, fill, max)?;
            }
            ".comm" | ".lcomm" => {
                let a = args()?;
                let mut name = a.first().ok_or_else(|| Error::Syntax(format!("{word} 名字, 大小")))?.clone_ident()?;
                let size = u64::try_from(self.constant_arg(a.get(1), "大小")?).unwrap_or_default();
                let align = if a.len() > 2 { u64::try_from(self.constant_arg(a.get(2), "对齐")?).unwrap_or(1) } else { 1 };
                let local = self.symbols.get(&name).is_some_and(|s| s.declared && s.bind == Bind::Local);
                if word == ".lcomm" || local {
                    // 放进 .bss
                    let back = (self.cur, self.prev);
                    self.switch(".bss", None, None, None);
                    self.align(align, None, None)?;
                    self.define(&name);
                    self.bytes(&vec![0; usize::try_from(size).unwrap_or_default()])?;
                    (self.cur, self.prev) = back;
                } else {
                    let sym = self.symbol(&core::mem::take(&mut name));
                    sym.def = Def::Common(size, align);
                    sym.bind = Bind::Global;
                    sym.kind = elf::STT_OBJECT;
                }
            }
            ".incbin" => {
                let mut toks = Toks::try_from(rest)?;
                let Some(Tok::Str(file)) = toks.next() else { return Err(Error::Syntax(String::from(".incbin 要文件名"))) };
                let file = String::from_utf8_lossy(&file).into_owned();
                let path = self.opts.include.iter().map(|d| d.join(&file)).find(|p| p.is_file()).unwrap_or_else(|| file.clone().into());
                let bytes = std::fs::read(&path).map_err(|e| Error::Syntax(format!(".incbin {}：{e}", path.display())))?;
                let a = toks.split_commas();
                let skip = if a.len() > 1 { usize::try_from(self.constant_arg(a.get(1), "跳过")?).unwrap_or_default() } else { 0 };
                let count = if a.len() > 2 { usize::try_from(self.constant_arg(a.get(2), "长度")?).unwrap_or_default() } else { bytes.len().saturating_sub(skip) };
                self.bytes(bytes.get(skip..skip + count).ok_or_else(|| Error::Syntax(String::from(".incbin 范围越界")))?)?;
            }
            ".attribute" => {
                let (tag, value) = rest.split_once(',').ok_or_else(|| Error::Syntax(String::from(".attribute 标签, 值")))?;
                let tag = match tag.trim() {
                    "stack_align" | "Tag_RISCV_stack_align" => 4,
                    "arch" | "Tag_RISCV_arch" => 5,
                    "unaligned_access" | "Tag_RISCV_unaligned_access" => 6,
                    "priv_spec" | "Tag_RISCV_priv_spec" => 8,
                    "priv_spec_minor" | "Tag_RISCV_priv_spec_minor" => 10,
                    "priv_spec_revision" | "Tag_RISCV_priv_spec_revision" => 12,
                    "atomic_abi" | "Tag_RISCV_atomic_abi" => 14,
                    "x3_reg_usage" | "Tag_RISCV_x3_reg_usage" => 16,
                    t => Self::const_text(t).ok().and_then(|v| u64::try_from(v).ok()).ok_or_else(|| Error::Syntax(format!("不认识的属性 `{t}`")))?,
                };
                let value = value.trim();
                let value = match value.strip_prefix('"').and_then(|v| v.strip_suffix('"')) {
                    Some(s) => Err(String::from(s)),
                    None => Ok(u64::try_from(Self::const_text(value)?).unwrap_or_default()),
                };
                self.attributes.retain(|(t, _)| *t != tag);
                self.attributes.push((tag, value));
            }
            ".option" => match rest.split(',').next().map(str::trim) {
                Some("push") => self.options.push((self.exact, self.pic)),
                Some("pop") => (self.exact, self.pic) = self.options.pop().ok_or_else(|| Error::Syntax(String::from(".option pop 没有配对的 push")))?,
                Some("exact") => self.exact = true,
                Some("noexact") => self.exact = false,
                Some("pic") => self.pic = true,
                Some("nopic") => self.pic = false,
                Some("rvc") => return Err(Error::Syntax(String::from("不做压缩指令（.option rvc）"))),
                // relax / norelax / norvc / arch 与认不出的：llvm-mc 也只是告警
                _ => {}
            },
            // 只影响调试信息 / 展开表 / 链接器提示的：认了就跳过
            // 变体调用约定：st_other 的 STO_RISCV_VARIANT_CC
            ".variant_cc" => {
                let name = rest.trim();
                self.symbol(name).vis |= 0x80;
            }
            ".reloc" => {
                let mut a = args()?;
                if a.len() < 2 {
                    return Err(Error::Syntax(String::from(".reloc 位置, 类型[, 表达式]")));
                }
                let at = a[0].expr(self)?;
                let name = a[1].ident()?;
                let super::reloc::RType(r_type) = name.as_str().try_into().map_err(|()| Error::Syntax(format!("不认识的重定位 `{name}`")))?;
                let target = match a.get_mut(2) {
                    Some(t) => t.expr(self)?,
                    None => super::Expr::Num(0),
                };
                let line = self.line;
                self.directs.push((at, r_type, target, line));
            }
            ".file" | ".ident" | ".loc" | ".addrsig" | ".addrsig_sym" | ".globaltype" | ".end" => {}
            w if w.starts_with(".cfi_") => {}
            _ => return Err(Error::Syntax(format!("不认识的伪操作 `{word}`"))),
        }
        Ok(())
    }

    /// `.section 名字[, "标志"[, @类型[, 项长]]]`。
    fn section(&mut self, rest: &str) -> Result<(), Error> {
        let parts: Vec<&str> = rest.split(',').map(str::trim).collect();
        let name = parts[0].trim_matches('"');
        let flags = parts.get(1).map(|f| {
            f.trim_matches('"').chars().fold(0u64, |acc, c| {
                acc | u64::from(match c {
                    'a' => elf::SHF_ALLOC,
                    'w' => elf::SHF_WRITE,
                    'x' => elf::SHF_EXECINSTR,
                    'M' => elf::SHF_MERGE,
                    'S' => elf::SHF_STRINGS,
                    'G' => elf::SHF_GROUP,
                    'T' => elf::SHF_TLS,
                    'o' => elf::SHF_LINK_ORDER,
                    'R' => elf::SHF_GNU_RETAIN,
                    _ => 0,
                })
            })
        });
        let ty = match parts.get(2).map(|t| t.trim_start_matches(['@', '%'])) {
            Some("progbits") => Some(elf::SHT_PROGBITS),
            Some("nobits") => Some(elf::SHT_NOBITS),
            Some("note") => Some(elf::SHT_NOTE),
            Some("init_array") => Some(elf::SHT_INIT_ARRAY),
            Some("fini_array") => Some(elf::SHT_FINI_ARRAY),
            Some("preinit_array") => Some(elf::SHT_PREINIT_ARRAY),
            Some("llvm_addrsig") => Some(0x6fff_4c03),
            // 直接给数（`@0x70000003` = SHT_RISCV_ATTRIBUTES）
            Some(t) if let Ok(k) = Self::const_text(t) => Some(u32::try_from(k).map_err(|_| Error::Syntax(format!("节类型 `{t}`")))?),
            Some(t) => return Err(Error::Syntax(format!("不认识的节类型 `{t}`"))),
            None => None,
        };
        let entsize = parts.get(3).map(|e| Self::const_text(e)).transpose()?.and_then(|e| u64::try_from(e).ok());
        self.switch(name, flags, ty, entsize);
        Ok(())
    }

    /// 对齐当前位置到 `align`：代码节填 `nop`，别的填 `fill`（缺省 0）。`max`：要填的超过它就不填。
    pub(super) fn align(&mut self, align: u64, fill: Option<i64>, max: Option<i64>) -> Result<(), Error> {
        let here = self.here();
        let pad = here.next_multiple_of(align.max(1)) - here;
        let s = &mut self.sections[self.cur];
        s.align = s.align.max(align);
        if max.is_some_and(|m| pad > u64::try_from(m).unwrap_or(0)) {
            return Ok(());
        }
        let mut bytes = Vec::new();
        if s.code() && fill.is_none() {
            // 同 llvm-mc：奇数先补一个 0，再差 2 字节补 `c.nop`（不开 C 也补），其余一条条 nop
            if pad % 2 == 1 {
                bytes.push(0);
            }
            if pad % 4 >= 2 {
                bytes.extend_from_slice(&[0x01, 0x00]);
            }
            for _ in 0..pad / 4 {
                bytes.extend_from_slice(&0x13u32.to_le_bytes());
            }
        } else {
            bytes.resize(usize::try_from(pad).unwrap_or_default(), u8::try_from(fill.unwrap_or(0) & 0xff).unwrap_or_default());
        }
        self.bytes(&bytes)
    }

    /// 常数参数（现在就要能算出来）。
    pub(super) fn constant_arg(&mut self, toks: Option<&Toks>, what: &str) -> Result<i64, Error> {
        let mut toks = toks.ok_or_else(|| Error::Syntax(format!("缺{what}")))?.clone();
        let e = toks.expr(self)?;
        self.eval(&e, 0)?.constant().ok_or_else(|| Error::Syntax(format!("{what}要是常数")))
    }
}

impl Assembler {
    fn uleb(mut v: u64) -> Vec<u8> {
        let mut out = Vec::new();
        loop {
            let b = u8::try_from(v & 0x7f).unwrap_or_default();
            v >>= 7;
            if v == 0 {
                out.push(b);
                return out;
            }
            out.push(b | 0x80);
        }
    }

    fn sleb(mut v: i64) -> Vec<u8> {
        let mut out = Vec::new();
        loop {
            let b = u8::try_from(v & 0x7f).unwrap_or_default();
            v >>= 7;
            if (v == 0 && b & 0x40 == 0) || (v == -1 && b & 0x40 != 0) {
                out.push(b);
                return out;
            }
            out.push(b | 0x80);
        }
    }
}

impl Toks {
    fn clone_ident(&self) -> Result<String, Error> {
        self.clone().ident()
    }
}
