//! 一行汇编 ⇒ 记号。注释（`#`、`//`、`/* */`）在 [`super::source`] 里先剥掉。
use super::Error;
use alloc::borrow::Cow;

#[derive(Clone, Debug, PartialEq)]
pub enum Tok<'a> {
    /// 名字：符号、助记符、伪操作、寄存器（可含 `.` `_` `$`）—— 借原行的切片。
    Ident(&'a str),
    Int(i64),
    Str(Vec<u8>),
    /// 数字局部标号的引用：`1b`（向后）、`1f`（向前）。
    Local(u32, bool),
    Punct(char),
    Shl,
    Shr,
    Eq,
    Ne,
    Le,
    Ge,
    AndAnd,
    OrOr,
}

/// 一行的记号（拥有者）。取值走 [`Cur`]：⛔ 不再每段一个 `Vec`。
#[derive(Clone)]
pub struct Toks<'a> {
    toks: Vec<Tok<'a>>,
}

impl<'a> Toks<'a> {
    /// 从头读这一行。
    pub fn cur(&self) -> Cur<'_, 'a> {
        Cur::new(&self.toks)
    }

    /// 逗号分隔的各段（不拆括号内的逗号）—— 各段借本行的记号切片，整个只分配一个 `Vec`。
    pub fn commas(&self) -> Vec<Cur<'_, 'a>> {
        self.cur().commas()
    }
}

/// 一段记号上的游标：借切片 + 位置，`Copy`，⛔ 不拥有任何东西。
#[derive(Clone, Copy)]
pub struct Cur<'t, 'a> {
    toks: &'t [Tok<'a>],
    at: usize,
}

impl<'t, 'a> Cur<'t, 'a> {
    #[must_use]
    pub fn new(toks: &'t [Tok<'a>]) -> Self {
        Self { toks, at: 0 }
    }

    pub fn tokens(&self) -> &'t [Tok<'a>] {
        &self.toks[self.at..]
    }

    pub fn peek(&self) -> Option<&'t Tok<'a>> {
        self.toks.get(self.at)
    }

    /// 往前一个（⛔ 不克隆记号：`Tok::Str` 里是 `Vec<u8>`）。
    pub fn next(&mut self) -> Option<&'t Tok<'a>> {
        let t = self.toks.get(self.at);
        self.at += usize::from(t.is_some());
        t
    }

    pub fn is_empty(&self) -> bool {
        self.at >= self.toks.len()
    }

    /// 下一个是 `c` 就吃掉。
    pub fn eat(&mut self, c: char) -> bool {
        let hit = self.peek() == Some(&Tok::Punct(c));
        self.at += usize::from(hit);
        hit
    }

    pub fn expect(&mut self, c: char) -> Result<(), Error> {
        if self.eat(c) { Ok(()) } else { Err(Error::Syntax(format!("要 `{c}`，见 {:?}", self.peek()))) }
    }

    /// 逗号分隔的各段（不拆括号内的逗号）—— 各段借同一片记号，整个只分配一个 `Vec`。
    pub fn commas(&self) -> Vec<Self> {
        let rest = self.tokens();
        let mut out = Vec::new();
        let (mut depth, mut start) = (0i32, 0usize);
        for (i, t) in rest.iter().enumerate() {
            match t {
                Tok::Punct('(') => depth += 1,
                Tok::Punct(')') => depth -= 1,
                Tok::Punct(',') if depth == 0 => {
                    out.push(Self::new(&rest[start..i]));
                    start = i + 1;
                }
                _ => {}
            }
        }
        if start < rest.len() || !out.is_empty() {
            out.push(Self::new(&rest[start..]));
        }
        out
    }

    /// 不动本游标地取名字。
    pub fn clone_ident(&self) -> Result<&'a str, Error> {
        let mut c = *self;
        c.ident()
    }

    pub fn ident(&mut self) -> Result<&'a str, Error> {
        match self.next() {
            Some(Tok::Ident(s)) => Ok(s),
            t => Err(Error::Syntax(format!("要名字，见 {t:?}"))),
        }
    }
}

impl<'a> TryFrom<&'a str> for Toks<'a> {
    type Error = Error;

    fn try_from(line: &'a str) -> Result<Self, Error> {
        let b = line.as_bytes();
        let mut toks = Vec::new();
        let mut i = 0;
        while i < b.len() {
            let c = b[i];
            if c.is_ascii_whitespace() {
                i += 1;
                continue;
            }
            if c.is_ascii_digit() {
                let start = i;
                let (radix, skip) = match (c, b.get(i + 1).map(u8::to_ascii_lowercase)) {
                    (b'0', Some(b'x')) => (16, 2),
                    (b'0', Some(b'b')) if b.get(i + 2).is_some_and(|d| matches!(d, b'0' | b'1')) => (2, 2),
                    _ => (10, 0),
                };
                i += skip;
                let digits = i;
                while i < b.len() && (b[i].is_ascii_alphanumeric() || b[i] == b'_') {
                    i += 1;
                }
                let text = &line[digits..i];
                // `1b` / `1f`：数字局部标号
                if radix == 10 && (text.ends_with('b') || text.ends_with('f')) && text[..text.len() - 1].bytes().all(|d| d.is_ascii_digit()) {
                    let n = text[..text.len() - 1].parse().map_err(|_| Error::Syntax(format!("局部标号 `{text}`")))?;
                    toks.push(Tok::Local(n, text.ends_with('f')));
                    continue;
                }
                // 八进制（前导 0）同 GNU as
                let (radix, text) = if radix == 10 && text.len() > 1 && text.starts_with('0') { (8, &text[1..]) } else { (radix, text) };
                // `_` 是分隔符，绝大多数字面量没有 ⇒ 有才复制一份
                let cleaned = if text.contains('_') { Cow::Owned(text.replace('_', "")) } else { Cow::Borrowed(text) };
                let v = u64::from_str_radix(&cleaned, radix).map_err(|_| Error::Syntax(format!("数 `{}`", &line[start..i])))?;
                toks.push(Tok::Int(v.cast_signed()));
                continue;
            }
            if c.is_ascii_alphabetic() || matches!(c, b'_' | b'.' | b'$') {
                let start = i;
                while i < b.len() && (b[i].is_ascii_alphanumeric() || matches!(b[i], b'_' | b'.' | b'$')) {
                    i += 1;
                }
                toks.push(Tok::Ident(&line[start..i]));
                continue;
            }
            if c == b'"' {
                let (s, n) = Self::string(&b[i + 1..])?;
                toks.push(Tok::Str(s));
                i += n + 2;
                continue;
            }
            if c == b'\'' && b.len() > i + 2 && b[i + 2] == b'\'' {
                toks.push(Tok::Int(i64::from(b[i + 1])));
                i += 3;
                continue;
            }
            let two = b.get(i..i + 2).unwrap_or_default();
            let pair = match two {
                b"<<" => Some(Tok::Shl),
                b">>" => Some(Tok::Shr),
                b"==" => Some(Tok::Eq),
                b"!=" => Some(Tok::Ne),
                b"<=" => Some(Tok::Le),
                b">=" => Some(Tok::Ge),
                b"&&" => Some(Tok::AndAnd),
                b"||" => Some(Tok::OrOr),
                _ => None,
            };
            if let Some(t) = pair {
                toks.push(t);
                i += 2;
                continue;
            }
            toks.push(Tok::Punct(char::from(c)));
            i += 1;
        }
        Ok(Self { toks })
    }
}

impl Toks<'_> {
    /// 字符串字面量（开引号之后）⇒ 字节与消耗的长度（不含两个引号）。
    fn string(b: &[u8]) -> Result<(Vec<u8>, usize), Error> {
        let mut out = Vec::new();
        let mut i = 0;
        while i < b.len() {
            match b[i] {
                b'"' => return Ok((out, i)),
                b'\\' => {
                    i += 1;
                    let e = *b.get(i).ok_or_else(|| Error::Syntax(String::from("字符串没收尾")))?;
                    match e {
                        b'n' => out.push(b'\n'),
                        b't' => out.push(b'\t'),
                        b'r' => out.push(b'\r'),
                        b'b' => out.push(8),
                        b'f' => out.push(12),
                        b'0'..=b'7' => {
                            let mut v = 0u32;
                            let mut n = 0;
                            while n < 3 && i < b.len() && (b'0'..=b'7').contains(&b[i]) {
                                v = v * 8 + u32::from(b[i] - b'0');
                                i += 1;
                                n += 1;
                            }
                            out.push(u8::try_from(v & 0xff).unwrap_or_default());
                            continue;
                        }
                        b'x' => {
                            let mut v = 0u32;
                            i += 1;
                            while i < b.len() && b[i].is_ascii_hexdigit() {
                                v = v * 16 + char::from(b[i]).to_digit(16).unwrap_or_default();
                                i += 1;
                            }
                            out.push(u8::try_from(v & 0xff).unwrap_or_default());
                            continue;
                        }
                        other => out.push(other),
                    }
                }
                c => out.push(c),
            }
            i += 1;
        }
        Err(Error::Syntax(String::from("字符串没收尾")))
    }
}
