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
mod lex;
mod source;

pub use expr::{Expr, Modifier};
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
    /// `-mabi=ilp32f` ⇒ `e_flags` 带 `EF_RISCV_FLOAT_ABI_SINGLE`。
    pub float_abi: bool,
    /// `.S`：先做 C 预处理（只认简单的 `#if` / `#ifdef` / `#define`）。
    pub preprocess: bool,
    /// `-D名字[=值]`。
    pub defines: HashMap<String, String>,
    /// `.incbin` 的相对路径从哪找。
    pub include: Vec<std::path::PathBuf>,
    /// 写 `.riscv.attributes`（clang -c 的做法；llvm-mc 只在有 `.attribute` 时写）。
    pub attributes: Option<String>,
}

impl Default for Options {
    fn default() -> Self {
        Self { float_abi: true, preprocess: false, defines: HashMap::new(), include: Vec::new(), attributes: None }
    }
}

/// 节：名字、类型、标志、对齐、字节、修补点。
pub struct Section {
    pub name: String,
    pub ty: u32,
    pub flags: u64,
    pub align: u64,
    pub entsize: u64,
    pub data: Vec<u8>,
    /// `SHT_NOBITS` 的大小（`data` 不用）。
    pub nobits: u64,
    pub fixups: Vec<fixup::Fixup>,
}

impl Section {
    fn size(&self) -> u64 {
        if self.ty == object::elf::SHT_NOBITS { self.nobits } else { self.data.len() as u64 }
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

/// 汇编器状态。
pub struct Assembler {
    opts: Options,
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
}

/// 表达式里局部标号与 `.` 的命名（借汇编器状态）。
impl expr::Names for Assembler {
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

impl Assembler {
    #[must_use]
    pub fn new(opts: Options) -> Self {
        let mut asm = Self {
            opts,
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
        };
        // llvm-mc 一开始就有这三个节
        for name in [".text", ".data", ".bss"] {
            asm.switch(name, None, None, None);
        }
        asm.cur = 0;
        asm.prev = 0;
        asm
    }

    /// ⭐ 汇编一份源文本 ⇒ ELF 目标文件字节。
    pub fn assemble(mut self, text: &str) -> Result<Vec<u8>, Error> {
        let source = Source { defines: self.opts.defines.clone(), preprocess: self.opts.preprocess };
        let lines = source.lines(text)?;
        self.prescan(&lines);
        for line in &lines {
            self.line = line.no;
            self.statement(&line.text).map_err(|e| match e {
                Error::Syntax(msg) => Error::at(line.no, &format!("{msg}（`{}`）", line.text)),
                e => e,
            })?;
        }
        self.finish()
    }

    /// 先扫一遍：哪些名字会是全局 / 弱的，哪些名字在本文件里有标号（分支能不能就地解析要用）。
    fn prescan(&mut self, lines: &[source::Line]) {
        for line in lines {
            let mut text = line.text.as_str();
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
            let mut toks = Toks::try_from(value)?;
            let e = toks.expr(self)?;
            self.symbol(name.trim()).def = Def::Equ(e);
            return Ok(());
        }
        let (word, rest) = text.split_once(char::is_whitespace).unwrap_or((text, ""));
        let word = word.to_ascii_lowercase();
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
    }

    /// 切到名为 `name` 的节（没有就建）。类型、标志按名字推（同 llvm-mc 的缺省），给了就用给的。
    fn switch(&mut self, name: &str, flags: Option<u64>, ty: Option<u32>, entsize: Option<u64>) {
        use object::elf::{SHF_ALLOC, SHF_EXECINSTR, SHF_MERGE, SHF_STRINGS, SHF_WRITE, SHT_NOBITS, SHT_PROGBITS};
        self.prev = self.cur;
        if let Some(i) = self.sections.iter().position(|s| s.name == name) {
            self.cur = i;
            return;
        }
        let prefixed = |p: &str| name == p || name.starts_with(&format!("{p}."));
        let (dty, dflags) = if prefixed(".text") {
            (SHT_PROGBITS, SHF_ALLOC | SHF_EXECINSTR)
        } else if prefixed(".bss") || prefixed(".sbss") || prefixed(".tbss") {
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
        self.sections.push(Section { name: String::from(name), ty, flags, align: if flags & u64::from(SHF_EXECINSTR) != 0 { 4 } else { 1 }, entsize, data: Vec::new(), nobits: 0, fixups: Vec::new() });
        self.cur = self.sections.len() - 1;
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

    /// 编一条指令（字段已齐）。
    fn emit(&mut self, i: riscv::Inst) -> Result<(), Error> {
        self.bytes(&u32::from(i).to_le_bytes())
    }

    /// 编一条指令，并在它身上记一个修补点。
    fn emit_fix(&mut self, i: riscv::Inst, kind: fixup::Fix, e: Expr) -> Result<(), Error> {
        let offset = self.here();
        let line = self.line;
        self.sections[self.cur].fixups.push(fixup::Fixup { offset, kind, expr: e, line });
        self.emit(i)
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
        let e = Toks::try_from(text)?.expr(&mut NoNames)?;
        let asm = Self::new(Options::default());
        asm.eval(&e, 0)?.constant().ok_or_else(|| Error::Syntax(format!("`{text}` 不是常数")))
    }
}

use crate::isa as riscv;
