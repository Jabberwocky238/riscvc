//! 链接脚本（GNU ld / lld 的子集）：`ENTRY`、顶层与节内的符号赋值、`. =`、
//! `SECTIONS { 名字 [地址] [(NOLOAD)] : [AT(…)] [ALIGN(…)] { 输入描述 … } }`、`KEEP`、通配、`/DISCARD/`、`PROVIDE`。
use super::Error;

/// 运算符（二元运算与复合赋值）。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Op {
    Set,
    AddSet,
    SubSet,
    MulSet,
    DivSet,
    ShlSet,
    ShrSet,
    AndSet,
    OrSet,
    Mul,
    Div,
    Rem,
    Add,
    Sub,
    Shl,
    Shr,
    Lt,
    Gt,
    Le,
    Ge,
    Eq,
    Ne,
    And,
    Or,
    LAnd,
    LOr,
}

/// 多字符运算符的拼写（先长后短）。
const OPS: &[(&str, Op)] = &[
    ("<<=", Op::ShlSet),
    (">>=", Op::ShrSet),
    ("+=", Op::AddSet),
    ("-=", Op::SubSet),
    ("*=", Op::MulSet),
    ("/=", Op::DivSet),
    ("&=", Op::AndSet),
    ("|=", Op::OrSet),
    ("<<", Op::Shl),
    (">>", Op::Shr),
    ("==", Op::Eq),
    ("!=", Op::Ne),
    ("<=", Op::Le),
    (">=", Op::Ge),
    ("&&", Op::LAnd),
    ("||", Op::LOr),
];

impl Op {
    /// 复合赋值 ⇒ 对应的二元运算（`=` ⇒ None）。
    #[must_use]
    pub const fn compound(self) -> Option<Self> {
        Some(match self {
            Self::AddSet => Self::Add,
            Self::SubSet => Self::Sub,
            Self::MulSet => Self::Mul,
            Self::DivSet => Self::Div,
            Self::ShlSet => Self::Shl,
            Self::ShrSet => Self::Shr,
            Self::AndSet => Self::And,
            Self::OrSet => Self::Or,
            _ => return None,
        })
    }

    const fn is_assign(self) -> bool {
        matches!(self, Self::Set) || self.compound().is_some()
    }

    /// 两个数。
    pub fn apply(self, a: u64, b: u64) -> Result<u64, Error> {
        Ok(match self {
            Self::Mul => a.wrapping_mul(b),
            Self::Div => a.checked_div(b).ok_or_else(|| Error::Script(String::from("除以零")))?,
            Self::Rem => a.checked_rem(b).ok_or_else(|| Error::Script(String::from("除以零")))?,
            Self::Add => a.wrapping_add(b),
            Self::Sub => a.wrapping_sub(b),
            Self::Shl => a << (b & 63),
            Self::Shr => a >> (b & 63),
            Self::Lt => u64::from(a < b),
            Self::Gt => u64::from(a > b),
            Self::Le => u64::from(a <= b),
            Self::Ge => u64::from(a >= b),
            Self::Eq => u64::from(a == b),
            Self::Ne => u64::from(a != b),
            Self::And => a & b,
            Self::Or => a | b,
            Self::LAnd => u64::from(a != 0 && b != 0),
            Self::LOr => u64::from(a != 0 || b != 0),
            _ => return Err(Error::Script(format!("{self:?} 不是二元运算"))),
        })
    }
}

/// `ADDR` / `SIZEOF` / `LOADADDR` / `ALIGNOF`。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Of {
    Addr,
    Sizeof,
    Loadaddr,
    Alignof,
}

#[derive(Clone, Debug, PartialEq)]
pub enum Tok {
    Word(String),
    Num(u64),
    Punct(char),
    Op(Op),
}

/// 表达式。
#[derive(Clone, Debug)]
pub enum LExpr {
    Num(u64),
    Sym(String),
    Dot,
    Neg(Box<LExpr>),
    Not(Box<LExpr>),
    Bin(Op, Box<LExpr>, Box<LExpr>),
    Cond(Box<LExpr>, Box<LExpr>, Box<LExpr>),
    /// `ALIGN(a)` = 把 `.` 对齐；`ALIGN(e, a)`。
    Align(Box<LExpr>, Option<Box<LExpr>>),
    /// `ADDR(节)` / `SIZEOF(节)` / `LOADADDR(节)` / `ALIGNOF(节)`。
    Of(Of, String),
    Defined(String),
    Max(Box<LExpr>, Box<LExpr>),
    Min(Box<LExpr>, Box<LExpr>),
}

/// 赋值：`名字 = e`、`名字 += e`、`PROVIDE(名字 = e)`。
#[derive(Clone, Debug)]
pub struct Assign {
    pub name: String,
    pub op: Op,
    pub value: LExpr,
    pub provide: bool,
}

/// 输入节描述：`[KEEP(] 文件模式(节模式 …) [)]`。
#[derive(Clone, Debug)]
pub struct Input {
    pub file: String,
    pub sections: Vec<String>,
    pub keep: bool,
}

#[derive(Clone, Debug)]
pub enum Item {
    Input(Input),
    Assign(Assign),
    /// `BYTE` / `SHORT` / `LONG` / `QUAD`。
    Data(u8, LExpr),
}

#[derive(Clone, Debug)]
pub struct OutSec {
    pub name: String,
    pub addr: Option<LExpr>,
    pub lma: Option<LExpr>,
    pub align: Option<LExpr>,
    pub noload: bool,
    pub items: Vec<Item>,
    /// `= 填充` 之类的尾巴不支持；`> 区域` 不支持（遇到就报错）。
    pub fill: Option<LExpr>,
}

#[derive(Clone, Debug)]
pub enum Cmd {
    Assign(Assign),
    Section(OutSec),
}

#[derive(Clone, Debug, Default)]
pub struct Script {
    pub entry: Option<LExpr>,
    /// 顶层命令与 `SECTIONS` 里的命令，按出现次序。`sections` 标记有没有 `SECTIONS` 块。
    pub cmds: Vec<Cmd>,
    pub sections: bool,
}

/// 记号流。
struct P {
    toks: Vec<Tok>,
    at: usize,
}


impl TryFrom<&str> for Script {
    type Error = Error;

    fn try_from(text: &str) -> Result<Self, Error> {
        let mut p = P { toks: P::lex(text)?, at: 0 };
        let mut script = Self::default();
        while let Some(t) = p.peek() {
            match t {
                Tok::Word(w) if w == "ENTRY" => {
                    p.next();
                    p.expect('(')?;
                    script.entry = Some(p.expr()?);
                    p.expect(')')?;
                }
                Tok::Word(w) if w == "SECTIONS" => {
                    p.next();
                    script.sections = true;
                    p.expect('{')?;
                    while !p.eat('}') {
                        if let Some(a) = p.assign()? {
                            script.cmds.push(Cmd::Assign(a));
                        } else {
                            script.cmds.push(Cmd::Section(p.out_section()?));
                        }
                    }
                }
                Tok::Word(w) if matches!(w.as_str(), "OUTPUT_ARCH" | "OUTPUT_FORMAT" | "SEARCH_DIR" | "TARGET" | "INPUT" | "GROUP" | "OUTPUT") => {
                    // 只影响格式 / 搜索的：跳过括号里的
                    p.next();
                    p.skip_parens()?;
                }
                Tok::Punct(';') => {
                    p.next();
                }
                _ => match p.assign()? {
                    Some(a) => script.cmds.push(Cmd::Assign(a)),
                    None => return Err(Error::Script(format!("不认识的命令 {:?}", p.peek()))),
                },
            }
        }
        Ok(script)
    }
}

impl P {
    fn lex(text: &str) -> Result<Vec<Tok>, Error> {
        let b = text.as_bytes();
        let mut out = Vec::new();
        let mut i = 0;
        let word = |c: u8| c.is_ascii_alphanumeric() || matches!(c, b'_' | b'.' | b'$' | b'*' | b'?' | b'/' | b'-' | b'[' | b']' | b'\\' | b'^' | b'~' | b'!' | b'@' | b'+' | b':' | b'=');
        while i < b.len() {
            let c = b[i];
            if c.is_ascii_whitespace() {
                i += 1;
            } else if b[i..].starts_with(b"/*") {
                i += b[i..].windows(2).position(|w| w == b"*/").map_or(b.len() - i, |p| p + 2);
            } else if c == b'#' || b[i..].starts_with(b"//") {
                i += b[i..].iter().position(|&c| c == b'\n').unwrap_or(b.len() - i);
            } else if c.is_ascii_digit() {
                let start = i;
                while i < b.len() && b[i].is_ascii_alphanumeric() {
                    i += 1;
                }
                let t = &text[start..i];
                let (t, mul) = match t.as_bytes().last() {
                    Some(b'K' | b'k') => (&t[..t.len() - 1], 1024),
                    Some(b'M' | b'm') => (&t[..t.len() - 1], 1 << 20),
                    _ => (t, 1),
                };
                let v = if let Some(h) = t.strip_prefix("0x").or_else(|| t.strip_prefix("0X")) {
                    u64::from_str_radix(h, 16)
                } else if let Some(h) = t.strip_suffix(['h', 'H']) {
                    u64::from_str_radix(h, 16)
                } else {
                    t.parse()
                }
                .map_err(|_| Error::Script(format!("数 `{t}`")))?;
                out.push(Tok::Num(v * mul));
            } else if let Some((spelling, op)) = OPS.iter().find(|(sp, _)| b[i..].starts_with(sp.as_bytes())) {
                out.push(Tok::Op(*op));
                i += spelling.len();
            } else if c == b'"' {
                let end = b[i + 1..].iter().position(|&c| c == b'"').ok_or_else(|| Error::Script(String::from("引号没收尾")))?;
                out.push(Tok::Word(String::from(&text[i + 1..i + 1 + end])));
                i += end + 2;
            } else if c == b'/' && b[i..].starts_with(b"/DISCARD/") {
                out.push(Tok::Word(String::from("/DISCARD/")));
                i += 9;
            } else if c == b'.' && b.get(i + 1).is_none_or(|n| !word(*n) || *n == b'=') {
                out.push(Tok::Word(String::from(".")));
                i += 1;
            } else if c.is_ascii_alphabetic() || matches!(c, b'_' | b'.' | b'$' | b'*' | b'?' | b'[') {
                let start = i;
                // ⚠ 词里可以有 `-` `+` `:` `=`（文件名、节名），但 `名字 =`、`a + b` 中间有空白所以拆得开；
                //    紧挨着的 `:` / `=` / `+` 不能吃进来（`.text:`、`a=b`）
                while i < b.len() && word(b[i]) && !matches!(b[i], b':' | b'=' | b'+' | b'!' | b'~' | b'^') {
                    i += 1;
                }
                out.push(Tok::Word(String::from(&text[start..i])));
            } else {
                out.push(Tok::Punct(char::from(c)));
                i += 1;
            }
        }
        Ok(out)
    }

    fn peek(&self) -> Option<&Tok> {
        self.toks.get(self.at)
    }

    fn next(&mut self) -> Option<Tok> {
        let t = self.toks.get(self.at).cloned();
        self.at += 1;
        t
    }

    fn eat(&mut self, c: char) -> bool {
        let hit = self.peek() == Some(&Tok::Punct(c));
        self.at += usize::from(hit);
        hit
    }

    fn eat_word(&mut self, w: &str) -> bool {
        let hit = matches!(self.peek(), Some(Tok::Word(x)) if x == w);
        self.at += usize::from(hit);
        hit
    }

    fn expect(&mut self, c: char) -> Result<(), Error> {
        if self.eat(c) { Ok(()) } else { Err(Error::Script(format!("要 `{c}`，见 {:?}", self.peek()))) }
    }

    fn word(&mut self) -> Result<String, Error> {
        match self.next() {
            Some(Tok::Word(w)) => Ok(w),
            t => Err(Error::Script(format!("要名字，见 {t:?}"))),
        }
    }

    fn skip_parens(&mut self) -> Result<(), Error> {
        self.expect('(')?;
        let mut depth = 1;
        while depth > 0 {
            match self.next() {
                Some(Tok::Punct('(')) => depth += 1,
                Some(Tok::Punct(')')) => depth -= 1,
                None => return Err(Error::Script(String::from("括号没收尾"))),
                _ => {}
            }
        }
        Ok(())
    }

    /// 赋值（不是就回 None、不消耗）。
    fn assign(&mut self) -> Result<Option<Assign>, Error> {
        let start = self.at;
        let provide = matches!(self.peek(), Some(Tok::Word(w)) if w == "PROVIDE" || w == "PROVIDE_HIDDEN" || w == "HIDDEN");
        if provide {
            self.next();
            self.expect('(')?;
        }
        let name = match self.peek() {
            Some(Tok::Word(w)) => w.clone(),
            _ => {
                self.at = start;
                return Ok(None);
            }
        };
        self.next();
        let op = match self.next() {
            Some(Tok::Punct('=')) => Op::Set,
            Some(Tok::Op(op)) if op.is_assign() => op,
            _ => {
                self.at = start;
                return Ok(None);
            }
        };
        let value = self.expr()?;
        if provide {
            self.expect(')')?;
        }
        self.eat(';');
        Ok(Some(Assign { name, op, value, provide: provide && !matches!(&self.toks[start], Tok::Word(w) if w == "HIDDEN") }))
    }

    fn out_section(&mut self) -> Result<OutSec, Error> {
        let name = self.word()?;
        let mut sec = OutSec { name, addr: None, lma: None, align: None, noload: false, items: Vec::new(), fill: None };
        // [地址] [(NOLOAD)] :
        while !self.eat(':') {
            if self.peek() == Some(&Tok::Punct('(')) && matches!(self.toks.get(self.at + 1), Some(Tok::Word(w)) if w == "NOLOAD" || w == "COPY" || w == "INFO" || w == "OVERLAY") {
                self.next();
                sec.noload = self.word()? == "NOLOAD";
                self.expect(')')?;
            } else {
                sec.addr = Some(self.expr()?);
            }
        }
        // AT(…) ALIGN(…) SUBALIGN(…)
        loop {
            if self.eat_word("AT") {
                self.expect('(')?;
                sec.lma = Some(self.expr()?);
                self.expect(')')?;
            } else if self.eat_word("ALIGN") {
                self.expect('(')?;
                sec.align = Some(self.expr()?);
                self.expect(')')?;
            } else if self.eat_word("SUBALIGN") {
                self.skip_parens()?;
            } else {
                break;
            }
        }
        self.expect('{')?;
        while !self.eat('}') {
            if self.eat(';') {
                continue;
            }
            if let Some(a) = self.assign()? {
                sec.items.push(Item::Assign(a));
                continue;
            }
            let size = match self.peek() {
                Some(Tok::Word(w)) => match w.as_str() {
                    "BYTE" => Some(1),
                    "SHORT" => Some(2),
                    "LONG" => Some(4),
                    "QUAD" => Some(8),
                    _ => None,
                },
                _ => None,
            };
            if let Some(n) = size {
                self.next();
                self.expect('(')?;
                let e = self.expr()?;
                self.expect(')')?;
                sec.items.push(Item::Data(n, e));
                continue;
            }
            let keep = self.eat_word("KEEP");
            if keep {
                self.expect('(')?;
            }
            let file = self.word()?;
            let mut sections = Vec::new();
            if self.eat('(') {
                while !self.eat(')') {
                    // EXCLUDE_FILE / SORT 一类：认了，只取里面的模式
                    let w = self.word()?;
                    if matches!(w.as_str(), "SORT" | "SORT_BY_NAME" | "SORT_BY_ALIGNMENT" | "SORT_NONE") {
                        self.expect('(')?;
                        while !self.eat(')') {
                            sections.push(self.word()?);
                        }
                    } else {
                        sections.push(w);
                    }
                }
            } else if file == "COMMON" {
                sections.push(String::from("COMMON"));
            }
            if keep {
                self.expect(')')?;
            }
            // `*(…)` 的文件模式是 `*`；`COMMON` 单写
            let (file, sections) = if sections.is_empty() { (String::from("*"), vec![file]) } else { (file, sections) };
            sec.items.push(Item::Input(Input { file, sections, keep }));
        }
        if self.eat('=') {
            sec.fill = Some(self.expr()?);
        }
        if matches!(self.peek(), Some(Tok::Punct('>'))) {
            return Err(Error::Script(String::from("不支持 MEMORY 区域（`> 区域`）")));
        }
        self.eat(',');
        Ok(sec)
    }

    fn expr(&mut self) -> Result<LExpr, Error> {
        let c = self.binary(1)?;
        if self.eat('?') {
            let a = self.expr()?;
            self.expect(':')?;
            let b = self.expr()?;
            return Ok(LExpr::Cond(Box::new(c), Box::new(a), Box::new(b)));
        }
        Ok(c)
    }

    fn binop(&self) -> Option<(Op, u8)> {
        Some(match self.peek()? {
            Tok::Punct('*') => (Op::Mul, 6),
            Tok::Punct('/') => (Op::Div, 6),
            Tok::Punct('%') => (Op::Rem, 6),
            Tok::Punct('+') => (Op::Add, 5),
            Tok::Punct('-') => (Op::Sub, 5),
            Tok::Op(op @ (Op::Shl | Op::Shr)) => (*op, 4),
            Tok::Punct('<') => (Op::Lt, 3),
            Tok::Punct('>') => (Op::Gt, 3),
            Tok::Op(op @ (Op::Le | Op::Ge | Op::Eq | Op::Ne)) => (*op, 3),
            Tok::Punct('&') => (Op::And, 2),
            Tok::Punct('|') => (Op::Or, 2),
            Tok::Op(op @ (Op::LAnd | Op::LOr)) => (*op, 1),
            _ => return None,
        })
    }

    fn binary(&mut self, min: u8) -> Result<LExpr, Error> {
        let mut lhs = self.unary()?;
        while let Some((op, p)) = self.binop() {
            if p < min {
                break;
            }
            self.next();
            let rhs = self.binary(p + 1)?;
            lhs = LExpr::Bin(op, Box::new(lhs), Box::new(rhs));
        }
        Ok(lhs)
    }

    fn unary(&mut self) -> Result<LExpr, Error> {
        match self.next() {
            Some(Tok::Num(v)) => Ok(LExpr::Num(v)),
            Some(Tok::Punct('-')) => Ok(LExpr::Neg(Box::new(self.unary()?))),
            Some(Tok::Punct('~')) => Ok(LExpr::Not(Box::new(self.unary()?))),
            Some(Tok::Punct('(')) => {
                let e = self.expr()?;
                self.expect(')')?;
                Ok(e)
            }
            Some(Tok::Word(w)) if w == "." => Ok(LExpr::Dot),
            Some(Tok::Word(w)) => {
                let f = match w.as_str() {
                    "ADDR" => Some(Of::Addr),
                    "SIZEOF" => Some(Of::Sizeof),
                    "LOADADDR" => Some(Of::Loadaddr),
                    "ALIGNOF" => Some(Of::Alignof),
                    _ => None,
                };
                if let Some(f) = f {
                    self.expect('(')?;
                    let s = self.word()?;
                    self.expect(')')?;
                    return Ok(LExpr::Of(f, s));
                }
                match w.as_str() {
                    "ALIGN" => {
                        self.expect('(')?;
                        let a = self.expr()?;
                        let b = if self.eat(',') { Some(Box::new(self.expr()?)) } else { None };
                        self.expect(')')?;
                        Ok(match b {
                            Some(b) => LExpr::Align(b, Some(Box::new(a))),
                            None => LExpr::Align(Box::new(a), None),
                        })
                    }
                    "DEFINED" => {
                        self.expect('(')?;
                        let s = self.word()?;
                        self.expect(')')?;
                        Ok(LExpr::Defined(s))
                    }
                    "MAX" | "MIN" => {
                        self.expect('(')?;
                        let a = self.expr()?;
                        self.expect(',')?;
                        let b = self.expr()?;
                        self.expect(')')?;
                        Ok(if w == "MAX" { LExpr::Max(Box::new(a), Box::new(b)) } else { LExpr::Min(Box::new(a), Box::new(b)) })
                    }
                    "ABSOLUTE" => {
                        self.expect('(')?;
                        let a = self.expr()?;
                        self.expect(')')?;
                        Ok(a)
                    }
                    "CONSTANT" => {
                        self.expect('(')?;
                        let c = self.word()?;
                        self.expect(')')?;
                        match c.as_str() {
                            "MAXPAGESIZE" | "COMMONPAGESIZE" => Ok(LExpr::Num(0x1000)),
                            _ => Err(Error::Script(format!("CONSTANT({c})"))),
                        }
                    }
                    _ => Ok(LExpr::Sym(w)),
                }
            }
            t => Err(Error::Script(format!("要表达式，见 {t:?}"))),
        }
    }
}

/// 通配（`*` `?` `[…]`）。
#[must_use]
pub fn glob(pattern: &str, text: &str) -> bool {
    let (p, t) = (pattern.as_bytes(), text.as_bytes());
    let (mut pi, mut ti) = (0, 0);
    let (mut star, mut mark) = (None, 0);
    while ti < t.len() {
        if pi < p.len() && p[pi] == b'[' {
            if let Some(end) = p[pi..].iter().position(|&c| c == b']') {
                let set = &p[pi + 1..pi + end];
                let (neg, set) = match set.first() {
                    Some(b'!' | b'^') => (true, &set[1..]),
                    _ => (false, set),
                };
                let mut hit = false;
                let mut k = 0;
                while k < set.len() {
                    if k + 2 < set.len() && set[k + 1] == b'-' {
                        hit |= (set[k]..=set[k + 2]).contains(&t[ti]);
                        k += 3;
                    } else {
                        hit |= set[k] == t[ti];
                        k += 1;
                    }
                }
                if hit != neg {
                    pi += end + 1;
                    ti += 1;
                    continue;
                }
            }
        } else if pi < p.len() && (p[pi] == b'?' || p[pi] == t[ti]) {
            pi += 1;
            ti += 1;
            continue;
        } else if pi < p.len() && p[pi] == b'*' {
            star = Some(pi);
            mark = ti;
            pi += 1;
            continue;
        }
        match star {
            Some(s) => {
                pi = s + 1;
                mark += 1;
                ti = mark;
            }
            None => return false,
        }
    }
    p[pi..].iter().all(|&c| c == b'*')
}
