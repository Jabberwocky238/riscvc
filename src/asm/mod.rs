//! GNU 汇编器（RV32IMF + Zicsr，llvm-mc 的写法）：源文本 ⇒ ELF 可重定位目标文件。
//!
//! ```text
//! Source::lines   剥注释、预处理、分句、展开 .rept / .irp / .macro
//! Assembler::line 标号、伪操作（directive.rs）、指令与伪指令（inst.rs）⇒ 各节的字节 + 修补点（Fixup）
//! Assembler::finish  修补点能就地算的就地算，算不了的变重定位（fixup.rs）⇒ object 写 ELF（elf.rs）
//! ```
//!
//! ⚠ 指令长度在分析时就定死（没有压缩指令）。条件分支的目标在本文件里解析不了（全局 / 外部符号）时，
//! 同 LLVM 扩成「反向分支 + `j`」，⇒ 分析前先扫一遍全文，记下全局符号与所有标号（[`Assembler::prescan`]）。
mod directive;
mod elf;
mod expr;
mod fixup;
mod inst;
mod layout;
mod lex;
mod reloc;
mod source;

pub use expr::{Expr, Modifier};
use alloc::borrow::Cow;
use lex::Toks;
use source::Source;
use std::collections::{HashMap, HashSet};

#[derive(Debug, thiserror::Error)]
pub enum Error {
    #[error("{0}")]
    Syntax(String),
    #[error("第 {line} 行：{msg}")]
    At { line: usize, msg: String },
    #[error("{0}")]
    Io(#[from] std::io::Error),
}

impl Error {
    #[must_use]
    pub fn at(line: usize, msg: &str) -> Self {
        Self::At { line, msg: String::from(msg) }
    }
}

/// 汇编选项（对应 llvm-mc / clang 的开关）。
#[derive(Clone, Debug)]
pub struct Options {
    /// `-mabi=ilp32f` ⇒ `e_flags` 带 `EF_RISCV_FLOAT_ABI_SINGLE`（缺省跟 `f` feature）。
    pub float_abi: bool,
    /// `.S`：先做 C 预处理（只认简单的 `#if` / `#ifdef` / `#define`）。
    pub preprocess: bool,
    /// `-D名字[=值]`。
    pub defines: HashMap<String, String>,
    /// `.incbin` 的相对路径从哪找。
    pub include: Vec<std::path::PathBuf>,
    /// 写 `.riscv.attributes`（clang -c 的做法；llvm-mc 只在有 `.attribute` 时写）。
    pub attributes: Option<String>,
    /// `-mrelax`（缺省开，同 llvm-mc 在 riscv32 上）：可松弛的修补点出重定位 + `R_RISCV_RELAX`、
    /// 跨过它们的标号差不就地算、代码节里的对齐出 `R_RISCV_ALIGN`。`-mno-relax` = 关。
    pub relax: bool,
}

impl Default for Options {
    fn default() -> Self {
        Self { float_abi: crate::feature::Float::ENABLED, preprocess: false, defines: HashMap::new(), include: Vec::new(), attributes: None, relax: true }
    }
}

/// 节：名字、类型、标志、对齐、字节、修补点。
pub struct Section {
    pub name: String,
    /// `.text 1` 里那个 1。同名的各子节在 [`Assembler::merge_subsections`] 里按它升序拼起来。
    pub subsec: u32,
    /// 这一节是由多个子节拼起来的。只有这种节里的对齐才按 `R_RISCV_ALIGN` 保守处理
    /// （见 [`Assembler::relax_aligns`]）。
    pub spliced: bool,
    pub ty: u32,
    pub flags: u64,
    pub align: u64,
    pub entsize: u64,
    pub data: Vec<u8>,
    /// `SHT_NOBITS` 的大小（`data` 不用）。
    pub nobits: u64,
    pub fixups: Vec<fixup::Fixup>,
    /// 可松弛的地方（起, 止）：可松弛指令、带 `R_RISCV_ALIGN` 的对齐。跨过它们的 PC 相对量与标号差不能就地算（同 MC）。
    pub relax_items: Vec<(u64, u64)>,
    /// 带标号的 `.uleb128`（起, 止）。
    pub leb_items: Vec<(u64, u64)>,
    /// 汇编时还算不出来的 `.uleb128` / `.sleb128`（前向标号）：长度随值变，到布局期才定。
    lebs: Vec<layout::Leb>,
    /// 长度到布局时才定的控制流指令（[`layout`]）。
    grows: Vec<layout::Grow>,
    /// 布局变了要重补的对齐。
    pads: Vec<layout::Pad>,
}

impl Section {
    fn size(&self) -> u64 {
        if self.ty == object::elf::SHT_NOBITS { self.nobits } else { self.data.len() as u64 }
    }

    /// 把 `s` 接在自己后面，它记的各处偏移都加上 `delta`。
    fn absorb(&mut self, mut s: Self, delta: u64) {
        self.spliced = true;
        self.align = self.align.max(s.align);
        self.data.append(&mut s.data);
        self.nobits += s.nobits;
        for f in &mut s.fixups {
            f.offset += delta;
        }
        self.fixups.append(&mut s.fixups);
        self.relax_items.extend(s.relax_items.iter().map(|&(a, b)| (a + delta, b + delta)));
        self.leb_items.extend(s.leb_items.iter().map(|&(a, b)| (a + delta, b + delta)));
        for g in &mut s.grows {
            g.offset += delta;
        }
        self.grows.append(&mut s.grows);
        for p in &mut s.pads {
            p.offset += delta;
        }
        self.pads.append(&mut s.pads);
        for l in &mut s.lebs {
            l.offset += delta;
        }
        self.lebs.append(&mut s.lebs);
    }

    fn code(&self) -> bool {
        self.flags & u64::from(object::elf::SHF_EXECINSTR) != 0
    }
}

/// 符号的定义。
#[derive(Clone, Debug)]
pub enum Def {
    Undef,
    /// 某节里的位置。
    Label(usize, u64),
    /// `.set` / `=`：表达式。
    Equ(Expr),
    /// `.comm`：大小、对齐。
    Common(u64, u64),
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Bind {
    Local,
    Global,
    Weak,
}

#[derive(Clone, Debug)]
pub struct Symbol {
    pub def: Def,
    pub bind: Bind,
    /// `STT_*`。
    pub kind: u8,
    pub size: Option<Expr>,
    /// `STV_*`。
    pub vis: u8,
    /// 有重定位引用它（`.L` 开头的临时符号只在这时进符号表）。
    pub used: bool,
    /// 显式写过 `.local` / `.globl` / `.weak`（`.comm` 遇到显式 `.local` 的放进 `.bss`）。
    pub declared: bool,
}

/// `.option` 管的开关。
#[derive(Clone, Copy, Debug)]
struct Mode {
    /// `exact`：条件分支不扩成长跳转（连带 norelax）。
    exact: bool,
    /// `pic`：`la` 走 GOT。
    pic: bool,
    /// `relax` / `norelax`：此刻出的指令可不可松弛（缺省跟 `Options::relax`）。
    relax: bool,
    /// `rvc` / `norvc`：能压的压成 16 位（缺省跟 `c` feature）。
    rvc: bool,
}

/// 汇编器状态。
pub struct Assembler<'e> {
    opts: Options,
    /// 扩展指令（[`crate::ext::Module::assemble`]）：给的在前、内置的（M / Zmmul / F / Zicsr）在后；助记符先问它们，不认再走 RV32I。
    exts: Vec<&'e dyn crate::ext::Module>,
    pub sections: Vec<Section>,
    cur: usize,
    prev: usize,
    stack: Vec<(usize, usize)>,
    pub symbols: HashMap<String, Symbol>,
    /// 符号的出现次序（写符号表时用，保证输出稳定）。
    order: Vec<String>,
    /// 数字局部标号 n 已定义过几次。
    locals: HashMap<u32, u32>,
    /// `.Lpcrel_hiN` / `.Ltmp` 的计数。
    temp: u32,
    /// prescan：全文里声明成全局 / 弱的名字，与全文定义过的标号。
    globals: HashSet<String>,
    labels: HashSet<String>,
    /// `.attribute`：（标签, 整数或字符串）。
    attributes: Vec<(u64, Result<u64, String>)>,
    /// 当前行（报错用）。
    line: usize,
    /// `.option` 的开关（`push` / `pop` 整个存取）。
    mode: Mode,
    /// 标号的定义序号（布局补对齐时分清同一位置上的标号在对齐前还是后）。
    label_seq: HashMap<String, u64>,
    /// `.option push` 存的。
    options: Vec<Mode>,
    /// `.reloc 位置, 类型, 目标`（行号报错用）。
    directs: Vec<(Expr, u32, Expr, usize)>,
    /// 助记符 ⇒ 哪几个扩展可能认它（位掩码，第 k 位对应 `exts[k]`）。⛔ 只看名字，所以缓存得住
    /// （`Table::enabled` 是 feature 决定的常量）。
    known: HashMap<String, u32>,
}

impl<'e> Assembler<'e> {
    /// 挂上扩展指令（借用），排在内置扩展前面。
    #[must_use]
    pub fn modules(self, exts: &[&'e dyn crate::ext::Module]) -> Self {
        let mut all = exts.to_vec();
        all.extend(crate::ext::builtin());
        Self { exts: all, ..self }
    }
}

/// 表达式里局部标号与 `.` 的命名（借汇编器状态）。
impl expr::Names for Assembler<'_> {
    fn local(&mut self, n: u32, forward: bool) -> String {
        let defined = self.locals.get(&n).copied().unwrap_or(0);
        if forward { format!(".L{n}\u{2}{}", defined + 1) } else { format!(".L{n}\u{2}{defined}") }
    }

    fn dot(&mut self) -> String {
        self.temp += 1;
        let name = format!(".Ltmp{}", self.temp);
        self.define(&name);
        name
    }
}

impl Default for Assembler<'_> {
    fn default() -> Self {
        Self::new()
    }
}

impl<'e> Assembler<'e> {
    /// ⭐ 一个汇编器：缺省选项、只有内置模块。选项用 [`Self::options`]、扩展包用 [`Self::modules`]。
    #[must_use]
    pub fn new() -> Self {
        Self::with(Options::default())
    }

    /// 换一套选项（⚠ 会重建状态，⛔ 在加过内容之后别调）。
    #[must_use]
    pub fn options(self, opts: Options) -> Self {
        Self::with(opts)
    }

    fn with(opts: Options) -> Self {
        let relax = opts.relax;
        let mut asm = Self {
            opts,
            exts: crate::ext::builtin(),
            sections: Vec::new(),
            cur: 0,
            prev: 0,
            stack: Vec::new(),
            symbols: HashMap::new(),
            order: Vec::new(),
            locals: HashMap::new(),
            temp: 0,
            globals: HashSet::new(),
            labels: HashSet::new(),
            attributes: Vec::new(),
            line: 0,
            mode: Mode { exact: false, pic: false, relax, rvc: crate::feature::Compressed::ENABLED },
            label_seq: HashMap::new(),
            options: Vec::new(),
            directs: Vec::new(),
            known: HashMap::new(),
        };
        // 同 llvm-mc：一开始只有 .text；.data / .bss 等源里真的切过去才建（空的也建），按第一次切换的次序
        asm.switch(".text", 0, None, None, None);
        asm.cur = 0;
        asm.prev = 0;
        asm
    }

    /// ⭐ 汇编一份源文本 ⇒ ELF 目标文件字节。
    ///
    /// 挂扩展：`Assembler::new().options(opts).extensions(&[&my_ext]).assemble(text)`。
    pub fn assemble(mut self, text: &str) -> Result<Vec<u8>, Error> {
        let source = Source { defines: self.opts.defines.clone(), preprocess: self.opts.preprocess };
        let lines = source.lines(text)?;
        self.prescan(&lines);
        // 条件汇编栈：（本分支生效, 这一组已有分支生效过）
        let mut conds: Vec<(bool, bool)> = Vec::new();
        for line in &lines {
            self.line = line.no;
            let at = |e: Error| match e {
                Error::Syntax(msg) => Error::at(line.no, &format!("{msg}（`{}`）", line.text)),
                e => e,
            };
            let (word, rest) = line.text.split_once(char::is_whitespace).unwrap_or((&line.text, ""));
            // 绝大多数本来就是小写 ⇒ 有大写才复制
            let word = lower(word);
            let live = conds.iter().all(|(on, _)| *on);
            match word.as_ref() {
                ".if" | ".ifdef" | ".ifndef" | ".ifeq" | ".ifne" => {
                    let on = live && self.condition(&word, rest.trim()).map_err(at)?;
                    conds.push((on, on));
                }
                ".elseif" | ".else" => {
                    let (_, taken) = conds.pop().ok_or_else(|| at(Error::Syntax(format!("{word} 没有配对的 .if"))))?;
                    let parent = conds.iter().all(|(on, _)| *on);
                    let on = parent && !taken && (word == ".else" || self.condition(".if", rest.trim()).map_err(at)?);
                    conds.push((on, taken || on));
                }
                ".endif" => {
                    conds.pop().ok_or_else(|| at(Error::Syntax(String::from(".endif 没有配对的 .if"))))?;
                }
                _ if !live => {}
                _ => self.statement(&line.text).map_err(at)?,
            }
        }
        self.finish()
    }

    /// `.if 表达式` / `.ifeq` / `.ifne` / `.ifdef 符号` / `.ifndef 符号`。
    fn condition(&mut self, word: &str, rest: &str) -> Result<bool, Error> {
        if let Some(neg) = match word {
            ".ifdef" => Some(false),
            ".ifndef" => Some(true),
            _ => None,
        } {
            let defined = self.symbols.get(rest).is_some_and(|s| !matches!(s.def, Def::Undef));
            return Ok(defined != neg);
        }
        let l = Toks::try_from(rest)?;
        let e = l.cur().expr(self)?;
        let k = self.eval(&e, 0)?.constant().ok_or_else(|| Error::Syntax(format!("{word} 要常数")))?;
        Ok(if word == ".ifeq" { k == 0 } else { k != 0 })
    }

    /// 先扫一遍：哪些名字会是全局 / 弱的，哪些名字在本文件里有标号（分支能不能就地解析要用）。
    fn prescan(&mut self, lines: &[source::Line]) {
        for line in lines {
            let mut text = line.text.as_ref();
            while let Some((label, rest)) = Self::label_prefix(text) {
                self.labels.insert(String::from(label));
                text = rest;
            }
            let (word, rest) = text.split_once(char::is_whitespace).unwrap_or((text, ""));
            if matches!(word, ".globl" | ".global" | ".weak") {
                self.globals.extend(rest.split(',').map(|s| String::from(s.trim())));
            }
        }
    }

    /// 行首的 `名字:`（数字局部标号也算）。
    fn label_prefix(text: &str) -> Option<(&str, &str)> {
        let t = text.trim_start();
        let end = t.find(|c: char| !(c.is_ascii_alphanumeric() || matches!(c, '_' | '.' | '$')))?;
        (end > 0 && t[end..].starts_with(':')).then(|| (&t[..end], &t[end + 1..]))
    }

    fn statement(&mut self, text: &str) -> Result<(), Error> {
        let mut text = text;
        while let Some((label, rest)) = Self::label_prefix(text) {
            let name = match label.parse::<u32>() {
                Ok(n) => {
                    let count = self.locals.entry(n).or_insert(0);
                    *count += 1;
                    format!(".L{n}\u{2}{count}")
                }
                Err(_) => String::from(label),
            };
            self.define(&name);
            text = rest;
        }
        let text = text.trim();
        if text.is_empty() {
            return Ok(());
        }
        // `名字 = 表达式`
        if let Some((name, value)) = text.split_once('=').filter(|(n, v)| !n.trim().contains(char::is_whitespace) && !v.starts_with('=') && !n.ends_with(['!', '<', '>', '='])) {
            let l = Toks::try_from(value)?;
            let e = l.cur().expr(self)?;
            self.symbol(name.trim()).def = Def::Equ(e);
            return Ok(());
        }
        let (word, rest) = text.split_once(char::is_whitespace).unwrap_or((text, ""));
        let word = lower(word);
        if word.starts_with('.') {
            self.directive(&word, rest.trim())
        } else {
            self.instruction(&word, rest.trim())
        }
    }

    /// 取符号（没有就建一个未定义的）。
    fn symbol(&mut self, name: &str) -> &mut Symbol {
        if !self.symbols.contains_key(name) {
            self.order.push(String::from(name));
        }
        self.symbols.entry(String::from(name)).or_insert(Symbol { def: Def::Undef, bind: Bind::Local, kind: 0, size: None, vis: 0, used: false, declared: false })
    }

    /// 在当前位置定义标号。
    fn define(&mut self, name: &str) {
        let at = Def::Label(self.cur, self.sections[self.cur].size());
        self.symbol(name).def = at;
        let seq = self.label_seq.len() as u64;
        self.label_seq.insert(String::from(name), seq);
    }

    /// 切到名为 `name` 的节（没有就建）。类型、标志按名字推（同 llvm-mc 的缺省），给了就用给的。
    fn switch(&mut self, name: &str, subsec: u32, flags: Option<u64>, ty: Option<u32>, entsize: Option<u64>) {
        use object::elf::{SHF_ALLOC, SHF_EXECINSTR, SHF_MERGE, SHF_STRINGS, SHF_WRITE, SHT_NOBITS, SHT_PROGBITS};
        self.prev = self.cur;
        if let Some(i) = self.sections.iter().position(|s| s.name == name && s.subsec == subsec) {
            self.cur = i;
            return;
        }
        let prefixed = |p: &str| name == p || name.starts_with(&format!("{p}."));
        let (dty, dflags) = if prefixed(".text") {
            (SHT_PROGBITS, SHF_ALLOC | SHF_EXECINSTR)
        } else if prefixed(".tbss") {
            (SHT_NOBITS, SHF_ALLOC | SHF_WRITE | object::elf::SHF_TLS)
        } else if prefixed(".tdata") {
            (SHT_PROGBITS, SHF_ALLOC | SHF_WRITE | object::elf::SHF_TLS)
        } else if prefixed(".bss") || prefixed(".sbss") {
            (SHT_NOBITS, SHF_ALLOC | SHF_WRITE)
        } else if prefixed(".data") || prefixed(".sdata") {
            (SHT_PROGBITS, SHF_ALLOC | SHF_WRITE)
        } else if prefixed(".rodata") || prefixed(".srodata") {
            (SHT_PROGBITS, SHF_ALLOC)
        } else {
            (SHT_PROGBITS, 0)
        };
        let flags = flags.unwrap_or(u64::from(dflags));
        let ty = ty.unwrap_or(dty);
        let entsize = entsize.unwrap_or(0);
        let _ = (SHF_MERGE, SHF_STRINGS);
        self.sections.push(Section { name: String::from(name), subsec, spliced: false, ty, flags, align: if flags & u64::from(SHF_EXECINSTR) != 0 { 4 } else { 1 }, entsize, data: Vec::new(), nobits: 0, fixups: Vec::new(), relax_items: Vec::new(), leb_items: Vec::new(), lebs: Vec::new(), grows: Vec::new(), pads: Vec::new() });
        self.cur = self.sections.len() - 1;
    }

    /// 子节合进基节：同名的按子节号升序拼起来，各项偏移随之重基。
    ///
    /// ⭐ 必须排在 [`Assembler::layout`] 之前——对齐与跳转长度都要按**最终**位置算，
    /// 而子节在源码里是穿插着写的（`.text 2` 可以出现在 `.text 0` 前面）。
    pub(super) fn merge_subsections(&mut self) {
        let old = core::mem::take(&mut self.sections);
        // 基名第一次出现的次序决定节的次序，同名的内部按子节号升序。
        let mut order: Vec<String> = Vec::new();
        for s in &old {
            if !order.contains(&s.name) {
                order.push(s.name.clone());
            }
        }
        let mut left: Vec<Option<Section>> = old.into_iter().map(Some).collect();
        // 旧下标 ⇒ （新下标, 偏移增量）
        let mut map: Vec<(usize, u64)> = alloc::vec![(0, 0); left.len()];
        let mut merged: Vec<Section> = Vec::new();
        for name in &order {
            let mut group: Vec<usize> = (0..left.len()).filter(|&k| left[k].as_ref().is_some_and(|s| s.name == *name)).collect();
            group.sort_by_key(|&k| left[k].as_ref().map_or(0, |s| s.subsec));
            let at = merged.len();
            let mut acc: Option<Section> = None;
            for k in group {
                let Some(s) = left[k].take() else { continue };
                match &mut acc {
                    None => {
                        map[k] = (at, 0);
                        acc = Some(s);
                    }
                    Some(a) => {
                        let delta = a.size();
                        map[k] = (at, delta);
                        a.absorb(s, delta);
                    }
                }
            }
            if let Some(a) = acc {
                merged.push(a);
            }
        }
        // 标号跟着它所在的那一段挪。
        for sym in self.symbols.values_mut() {
            if let Def::Label(sec, off) = &mut sym.def {
                let (to, delta) = map[*sec];
                (*sec, *off) = (to, *off + delta);
            }
        }
        self.sections = merged;
    }

    fn here(&self) -> u64 {
        self.sections[self.cur].size()
    }

    /// 往当前节追加字节（`.bss` 里只许零）。
    fn bytes(&mut self, b: &[u8]) -> Result<(), Error> {
        let s = &mut self.sections[self.cur];
        if s.ty == object::elf::SHT_NOBITS {
            if b.iter().any(|&x| x != 0) {
                return Err(Error::Syntax(format!("{} 里只能放零", s.name)));
            }
            s.nobits += b.len() as u64;
        } else {
            s.data.extend_from_slice(b);
        }
        Ok(())
    }

    /// 编一条指令（字段已齐）。没开的扩展的指令（含伪指令展开出来的）报错。
    fn emit(&mut self, i: riscv::Inst) -> Result<(), Error> {
        if !crate::isa::Table::enabled(&i.op) {
            return Err(Error::Syntax(format!("`{}` 要 {} 扩展（feature 没开）", i.op, crate::isa::Table::ext(&i.op))));
        }
        self.instruction_word(u32::from(i))
    }

    /// 编一条指令，⛔ 压缩（同 LLVM：PseudoCALL / PseudoTAIL 在编码器里才展开，不经 compressInst；
    /// 立即数不是字面常数的也不压，见 [`Expr::literal`]）。
    fn emit_wide(&mut self, i: riscv::Inst) -> Result<(), Error> {
        if !crate::isa::Table::enabled(&i.op) {
            return Err(Error::Syntax(format!("`{}` 要 {} 扩展（feature 没开）", i.op, crate::isa::Table::ext(&i.op))));
        }
        self.bytes(&u32::from(i).to_le_bytes())
    }

    /// 立即数来自 `e`：字面常数才可能压缩。
    /// ⚠ 单独一个 `.equ` 符号（裸符号）也压：LLVM 的 simm6 一类谓词收裸符号，值到布局再填（rvc_imm）。
    fn emit_imm(&mut self, i: riscv::Inst, e: &Expr) -> Result<(), Error> {
        let bare = matches!(e, Expr::Sym(n) if matches!(self.symbols.get(n).map(|s| &s.def), Some(Def::Equ(_))));
        if bare || self.literal(e, 0) { self.emit(i) } else { self.emit_wide(i) }
    }

    /// 字面常数：只有数、运算与值是字面常数的 `.equ` 符号（同 llvm-mc 解析时就当常数的那些）；⛔ 修饰符（`%lo(常数)`）、
    /// 标号（往往是前向引用，解析时还没有值）。
    fn literal(&self, e: &Expr, depth: usize) -> bool {
        match e {
            Expr::Num(_) => true,
            Expr::Mod(..) => false,
            Expr::Sym(n) => depth < 100 && matches!(self.symbols.get(n).map(|s| &s.def), Some(Def::Equ(inner)) if self.literal(inner, depth + 1)),
            Expr::Neg(a) | Expr::Not(a) | Expr::LNot(a) => self.literal(a, depth),
            Expr::Bin(_, a, b) => self.literal(a, depth) && self.literal(b, depth),
        }
    }

    /// 出一条标准指令的 32 位字：开着 rvc、身上没有修补点、压得下 ⇒ 出 16 位（同 llvm-mc 的 compressInst）。
    pub(super) fn instruction_word(&mut self, w: u32) -> Result<(), Error> {
        let here = self.here();
        let fixed = self.sections[self.cur].fixups.last().is_some_and(|f| f.offset == here);
        // `.option exact`：⛔ 压（同 llvm-mc）
        match (self.mode.rvc && !self.mode.exact && !fixed).then(|| crate::feature::Compressed::compress(w)).flatten() {
            Some(h) => self.bytes(&h.to_le_bytes()),
            None => self.bytes(&w.to_le_bytes()),
        }
    }

    /// 原样出一个 32 位字（`.insn`）。
    fn word(&mut self, w: u32) -> Result<(), Error> {
        self.bytes(&w.to_le_bytes())
    }

    /// 编一条指令，并在它身上记一个修补点。
    fn emit_fix(&mut self, i: riscv::Inst, kind: fixup::Fix, e: Expr) -> Result<(), Error> {
        self.note(kind, e);
        self.emit(i)
    }

    /// 表达式里此刻已是常数的 `.set` / `.equ` 符号换成值（它们可以重定义：同 llvm-mc，用的是使用处的值）。
    pub(crate) fn pin(&self, e: &Expr) -> Expr {
        match e {
            Expr::Sym(n) if matches!(self.symbols.get(n).map(|s| &s.def), Some(Def::Equ(_))) => match self.eval(e, 0).ok().and_then(|v| v.constant()) {
                Some(k) => Expr::Num(k),
                None => e.clone(),
            },
            Expr::Neg(a) => Expr::Neg(Box::new(self.pin(a))),
            Expr::Not(a) => Expr::Not(Box::new(self.pin(a))),
            Expr::LNot(a) => Expr::LNot(Box::new(self.pin(a))),
            Expr::Bin(op, a, b) => Expr::Bin(*op, Box::new(self.pin(a)), Box::new(self.pin(b))),
            Expr::Mod(m, a) => Expr::Mod(*m, Box::new(self.pin(a))),
            _ => e.clone(),
        }
    }

    /// 在当前位置记一个修补点（不出字节；同一条指令上的第二个重定位）。
    fn note(&mut self, kind: fixup::Fix, e: Expr) {
        let offset = self.here();
        self.note_at(offset, kind, e);
    }

    /// 在当前节的 `offset` 处记一个修补点；开着松弛时按种类登记可松弛点（同 RISCVMCCodeEmitter）。
    pub(super) fn note_at(&mut self, offset: u64, kind: fixup::Fix, e: Expr) {
        use fixup::Fix;
        let e = self.pin(&e);
        let line = self.line;
        let symbolic = || self.eval(&e, 0).map_or(true, |v| v.constant().is_none());
        let relaxable = self.mode.relax
            && match kind {
                Fix::Call | Fix::Hi20 | Fix::Lo12I | Fix::Lo12S | Fix::PcrelHi20 | Fix::PcrelLo12I | Fix::PcrelLo12S => true,
                Fix::Reloc(t) | Fix::PcHi(t) => { use object::elf as e; matches!(t, e::R_RISCV_TPREL_HI20 | e::R_RISCV_TPREL_LO12_I | e::R_RISCV_TPREL_LO12_S | e::R_RISCV_TPREL_ADD | e::R_RISCV_GOT_HI20 | e::R_RISCV_TLSDESC_HI20) },
                // 条件分支只是候选（可能扩成 b<cc> + jal）：算可松弛点，但不带 R_RISCV_RELAX；压缩的跳转同
                Fix::Jal | Fix::Branch | Fix::RvcBranch | Fix::RvcJump => symbolic(),
                _ => false,
            };
        if relaxable {
            let len = match kind {
                Fix::Call => 8,
                Fix::RvcBranch | Fix::RvcJump => 2,
                _ => 4,
            };
            self.sections[self.cur].relax_items.push((offset, offset + len));
        }
        let relax = relaxable && !matches!(kind, Fix::Branch | Fix::RvcBranch | Fix::RvcJump);
        self.sections[self.cur].fixups.push(fixup::Fixup { offset, kind, expr: e, line, relax });
    }

    /// 新的 `.Lpcrel_hiN` 标号，定义在当前位置。
    fn pcrel_label(&mut self) -> String {
        let name = format!(".Lpcrel_hi{}", self.temp);
        self.temp += 1;
        self.define(&name);
        name
    }

    /// 一段文本的常数值（`.rept` 的次数这类，只认数与四则）。
    pub(crate) fn const_text(text: &str) -> Result<i64, Error> {
        struct NoNames;
        impl expr::Names for NoNames {
            fn local(&mut self, _: u32, _: bool) -> String {
                String::from("?")
            }
            fn dot(&mut self) -> String {
                String::from("?")
            }
        }
        let l = Toks::try_from(text)?;
        let e = l.cur().expr(&mut NoNames)?;
        let asm = Self::new();
        asm.eval(&e, 0)?.constant().ok_or_else(|| Error::Syntax(format!("`{text}` 不是常数")))
    }
}

/// 小写化：助记符与伪操作绝大多数本来就是小写 ⇒ 有大写才复制一份。
fn lower(word: &str) -> Cow<'_, str> {
    if word.bytes().any(|b| b.is_ascii_uppercase()) { Cow::Owned(word.to_ascii_lowercase()) } else { Cow::Borrowed(word) }
}

use crate::isa as riscv;
