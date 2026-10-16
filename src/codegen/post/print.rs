//! [`PFunc`] ⇒ 汇编文本。块结尾实际出什么由 [`Tail`] 定（relax 量字节数用同一份）。
use super::{PFunc, PInst, Term};
use crate::isa::{Rv32i as IOp, Style, X};
use core::fmt;

/// 离开函数的那一条。
pub enum Exit<'f> {
    Ret,
    /// `tail 符号`（两条）
    Tail(&'f str),
}

/// 一个块结尾实际出的指令。
pub struct Tail<'f> {
    /// 条件跳转（已按布局反过来，目标是要跳去的那个）。
    pub branch: Option<(IOp, u8, u8, usize)>,
    /// 条件跳转够不着：反向分支跳过一条 `j`。
    pub long: bool,
    /// 结尾的 `j`。
    pub jump: Option<usize>,
    pub exit: Option<Exit<'f>>,
}

impl Tail<'_> {
    /// 字节数。
    pub fn size(&self) -> u32 {
        let b = match (self.branch, self.long) {
            (None, _) => 0,
            (Some(_), false) => 4,
            (Some(_), true) => 8,
        };
        let exit = match self.exit {
            None => 0,
            Some(Exit::Ret) => 4,
            Some(Exit::Tail(_)) => 8,
        };
        b + 4 * u32::from(self.jump.is_some()) + exit
    }
}

impl PInst {
    /// 字节数（同汇编器的展开：`li` 放得进 12 位、或低 12 位全 0 ⇒ 一条）。
    pub fn size(&self) -> u32 {
        match self {
            Self::I(_) | Self::Trap => 4,
            Self::Li(_, k) if (-2048..2048).contains(k) || k & 0xfff == 0 => 4,
            Self::Li(..) | Self::La(..) | Self::Call(_) => 8,
        }
    }
}

impl PFunc {
    pub fn label(&self, b: usize) -> String {
        format!(".LBB{}_{b}", self.id)
    }

    /// 布局里第 `k` 块的结尾：落到下一块的跳转不出；真分支落在下一块 ⇒ 反过来跳假分支。
    pub fn tail(&self, k: usize) -> Tail<'_> {
        let next = self.next(k);
        let exit = |e| Tail { branch: None, long: false, jump: None, exit: e };
        match &self.blocks[self.layout[k]].term {
            &Term::Jump(t) => Tail { branch: None, long: false, jump: (next != Some(t)).then_some(t), exit: None },
            Term::Ret => exit(Some(Exit::Ret)),
            Term::Tail(sym) => exit(Some(Exit::Tail(sym))),
            Term::Unreachable => exit(None),
            &Term::Branch { op, a, b, t, f, long } => {
                let (op, t, f) = if next == Some(t) { (op.inverted().expect("条件分支"), f, t) } else { (op, t, f) };
                Tail { branch: Some((op, a, b, t)), long, jump: (next != Some(f)).then_some(f), exit: None }
            }
        }
    }
}

impl fmt::Display for PInst {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            Self::I(i) => f.write_str(&i.print(0, Style::default())),
            Self::Li(rd, k) => write!(f, "li\t{}, {k}", X(*rd)),
            Self::La(rd, sym, 0) => write!(f, "lla\t{}, {sym}", X(*rd)),
            Self::La(rd, sym, off) => write!(f, "lla\t{}, {sym}{off:+}", X(*rd)),
            Self::Call(sym) => write!(f, "call\t{sym}"),
            Self::Trap => f.write_str("unimp"),
        }
    }
}

impl fmt::Display for PFunc {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        let mut skips = 0;
        for (k, &b) in self.layout.iter().enumerate() {
            writeln!(f, "{}:", self.label(b))?;
            for i in &self.blocks[b].insts {
                writeln!(f, "\t{i}")?;
            }
            let tail = self.tail(k);
            match (tail.branch, tail.long) {
                (Some((op, x, y, t)), false) => writeln!(f, "\t{op}\t{}, {}, {}", X(x), X(y), self.label(t))?,
                (Some((op, x, y, t)), true) => {
                    skips += 1;
                    let skip = format!(".Lskip{}_{skips}", self.id);
                    writeln!(f, "\t{}\t{}, {}, {skip}", op.inverted().expect("条件分支"), X(x), X(y))?;
                    writeln!(f, "\tj\t{}\n{skip}:", self.label(t))?;
                }
                (None, _) => {}
            }
            if let Some(t) = tail.jump {
                writeln!(f, "\tj\t{}", self.label(t))?;
            }
            match tail.exit {
                Some(Exit::Ret) => writeln!(f, "\tret")?,
                Some(Exit::Tail(sym)) => writeln!(f, "\ttail\t{sym}")?,
                None => {}
            }
        }
        Ok(())
    }
}
