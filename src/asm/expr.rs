//! 表达式：语法树、优先级（同 GNU as / llvm-mc 的 ELF 方言）、重定位修饰符。
use super::Error;
use super::lex::{Tok, Toks};

/// `名字` ⇒ 修饰符枚举 + `TryFrom<&str>`。
macro_rules! modifiers {
    ($($v:ident $name:literal,)*) => {
        /// `%hi(…)` 这类修饰符（同 llvm-mc 的 RISC-V specifier）。
        #[derive(Clone, Copy, Debug, PartialEq, Eq)]
        pub enum Modifier { $($v),* }

        impl TryFrom<&str> for Modifier {
            type Error = Error;
            fn try_from(s: &str) -> Result<Self, Error> {
                match s {
                    $($name => Ok(Self::$v),)*
                    _ => Err(Error::Syntax(format!("不认识的修饰符 `%{s}`"))),
                }
            }
        }
    };
}

modifiers! {
    Hi "hi",
    Lo "lo",
    PcrelHi "pcrel_hi",
    PcrelLo "pcrel_lo",
    GotPcrelHi "got_pcrel_hi",
    TprelHi "tprel_hi",
    TprelLo "tprel_lo",
    TprelAdd "tprel_add",
    TlsIePcrelHi "tls_ie_pcrel_hi",
    TlsGdPcrelHi "tls_gd_pcrel_hi",
    TlsdescHi "tlsdesc_hi",
    TlsdescLoadLo "tlsdesc_load_lo",
    TlsdescAddLo "tlsdesc_add_lo",
    TlsdescCall "tlsdesc_call",
    Pltpcrel "pltpcrel",
    Gotpcrel "gotpcrel",
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BinOp {
    Mul,
    Div,
    Rem,
    Shl,
    Shr,
    Or,
    Xor,
    And,
    Ornot,
    Add,
    Sub,
    Eq,
    Ne,
    Lt,
    Le,
    Gt,
    Ge,
    LAnd,
    LOr,
}

impl BinOp {
    /// GNU as 的优先级（高者先结合）。
    const fn precedence(self) -> u8 {
        match self {
            Self::Mul | Self::Div | Self::Rem | Self::Shl | Self::Shr => 6,
            Self::Or | Self::Xor | Self::And | Self::Ornot => 5,
            Self::Add | Self::Sub => 4,
            Self::Eq | Self::Ne | Self::Lt | Self::Le | Self::Gt | Self::Ge => 3,
            Self::LAnd => 2,
            Self::LOr => 1,
        }
    }

    fn of(t: &Tok) -> Option<Self> {
        Some(match t {
            Tok::Punct('*') => Self::Mul,
            Tok::Punct('/') => Self::Div,
            Tok::Punct('%') => Self::Rem,
            Tok::Shl => Self::Shl,
            Tok::Shr => Self::Shr,
            Tok::Punct('|') => Self::Or,
            Tok::Punct('^') => Self::Xor,
            Tok::Punct('&') => Self::And,
            Tok::Punct('!') => Self::Ornot,
            Tok::Punct('+') => Self::Add,
            Tok::Punct('-') => Self::Sub,
            Tok::Eq => Self::Eq,
            Tok::Ne => Self::Ne,
            Tok::Punct('<') => Self::Lt,
            Tok::Le => Self::Le,
            Tok::Punct('>') => Self::Gt,
            Tok::Ge => Self::Ge,
            Tok::AndAnd => Self::LAnd,
            Tok::OrOr => Self::LOr,
            _ => return None,
        })
    }

    /// 两个常数。
    pub fn apply(self, a: i64, b: i64) -> Result<i64, Error> {
        Ok(match self {
            Self::Mul => a.wrapping_mul(b),
            Self::Div | Self::Rem if b == 0 => return Err(Error::Syntax(String::from("除以零"))),
            Self::Div => a.wrapping_div(b),
            Self::Rem => a.wrapping_rem(b),
            Self::Shl => a.wrapping_shl(u32::try_from(b & 63).unwrap_or_default()),
            Self::Shr => a.wrapping_shr(u32::try_from(b & 63).unwrap_or_default()),
            Self::Or => a | b,
            Self::Xor => a ^ b,
            Self::And => a & b,
            Self::Ornot => a | !b,
            Self::Add => a.wrapping_add(b),
            Self::Sub => a.wrapping_sub(b),
            Self::Eq => i64::from(a == b),
            Self::Ne => i64::from(a != b),
            Self::Lt => i64::from(a < b),
            Self::Le => i64::from(a <= b),
            Self::Gt => i64::from(a > b),
            Self::Ge => i64::from(a >= b),
            Self::LAnd => i64::from(a != 0 && b != 0),
            Self::LOr => i64::from(a != 0 || b != 0),
        })
    }
}

/// 表达式语法树。局部标号（`1b` / `1f`）与 `.` 在语法分析时就已换成具体的符号名。
#[derive(Clone, Debug, PartialEq)]
pub enum Expr {
    Num(i64),
    Sym(String),
    Neg(Box<Expr>),
    Not(Box<Expr>),
    LNot(Box<Expr>),
    Bin(BinOp, Box<Expr>, Box<Expr>),
    Mod(Modifier, Box<Expr>),
}

impl Expr {
    /// 只有修饰符在最外层才算「带修饰符的操作数」。
    #[must_use]
    pub fn modifier(&self) -> Option<(Modifier, &Self)> {
        match self {
            Self::Mod(m, e) => Some((*m, e)),
            _ => None,
        }
    }
}

/// 表达式里出现的名字怎么落地：局部标号与 `.` 由调用方（汇编器）给名字。
pub trait Names {
    fn local(&mut self, n: u32, forward: bool) -> String;
    fn dot(&mut self) -> String;
}

impl Toks {
    /// 一整个表达式（到记号流结束或遇到不能续的记号为止）。
    pub fn expr(&mut self, names: &mut impl Names) -> Result<Expr, Error> {
        self.binary(1, names)
    }

    fn binary(&mut self, min: u8, names: &mut impl Names) -> Result<Expr, Error> {
        let mut lhs = self.unary(names)?;
        while let Some(op) = self.peek().and_then(BinOp::of) {
            let p = op.precedence();
            if p < min {
                break;
            }
            self.next();
            let rhs = self.binary(p + 1, names)?;
            lhs = Expr::Bin(op, Box::new(lhs), Box::new(rhs));
        }
        Ok(lhs)
    }

    fn unary(&mut self, names: &mut impl Names) -> Result<Expr, Error> {
        match self.next() {
            Some(Tok::Int(v)) => Ok(Expr::Num(v)),
            Some(Tok::Ident(s)) if s == "." => Ok(Expr::Sym(names.dot())),
            Some(Tok::Ident(s)) => Ok(Expr::Sym(s)),
            Some(Tok::Local(n, fwd)) => Ok(Expr::Sym(names.local(n, fwd))),
            Some(Tok::Punct('-')) => Ok(Expr::Neg(Box::new(self.unary(names)?))),
            Some(Tok::Punct('+')) => self.unary(names),
            Some(Tok::Punct('~')) => Ok(Expr::Not(Box::new(self.unary(names)?))),
            Some(Tok::Punct('!')) => Ok(Expr::LNot(Box::new(self.unary(names)?))),
            Some(Tok::Punct('(')) => {
                let e = self.expr(names)?;
                self.expect(')')?;
                Ok(e)
            }
            Some(Tok::Punct('%')) => {
                let m = Modifier::try_from(self.ident()?.as_str())?;
                self.expect('(')?;
                let e = self.expr(names)?;
                self.expect(')')?;
                Ok(Expr::Mod(m, Box::new(e)))
            }
            t => Err(Error::Syntax(format!("要表达式，见 {t:?}"))),
        }
    }
}
