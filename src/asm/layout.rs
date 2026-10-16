//! 布局（同 MCAssembler 的 layout 与 relaxation）：有几条指令的长度要等全文排好才定得下 ——
//! 跳到本文件标号的控制流指令（[`Grow`]：先按最短的出，够不着就放宽一级），跟着它们挪位置的对齐（[`Pad`]）。
//!
//! ```text
//! 条件跳转     c.beqz / c.bnez（2，±256 B）⇒ b<cc>（4，±4 KiB）⇒ 反向分支跳过 + jal（6 或 8：反向的那条能压就压）
//! 无条件跳转   c.j / c.jal（2，±2 KiB）⇒ jal（4，±1 MiB）
//! ```
//!
//! 放宽一条 = 改写它的字节（[`Assembler::splice`]），同一节里它后面的一切（标号、修补点、可松弛点、LEB、别的 Grow、
//! 对齐）都往后挪；对齐要重新算补多少。反复做到不再变（只会变长，必收敛）。
//! 解析不了的目标（外部 / 全局 / 别的节）解析时就定了长的形式，⛔ 不进这里；`.option exact` 也不进（不压、不放宽）。
use super::fixup::Fix;
use super::{Assembler, Def, Error, Expr};
use crate::feature::Compressed;
use crate::isa::{Inst, Rv32i as Op};

/// 一条控制流指令的种类。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Flow {
    /// `b<op> a, b, 目标`
    Branch(Op, u8, u8),
    /// `jal rd, 目标`（rd 是 x0 / ra 才压得成 c.j / c.jal）
    Jump(u8),
}

/// 长度到布局时才定的一条（同 MC 的 relaxable fragment）。
#[derive(Clone, Debug)]
pub struct Grow {
    pub offset: u64,
    /// 现在的字节数（2 / 4 / 6 / 8）。
    pub size: u64,
    pub flow: Flow,
    pub target: Expr,
    pub line: usize,
    /// 出这条时开着 rvc（放宽成长形式时反向分支能不能压）。
    pub rvc: bool,
}

/// 一处对齐：布局变了要重新补（开着松弛、出 R_RISCV_ALIGN 的那种字节数固定，不进这里）。
#[derive(Clone, Debug)]
pub struct Pad {
    pub offset: u64,
    pub align: u64,
    /// 现在补了几字节。
    pub size: u64,
    /// 代码节的 nop ⇒ `None`；别的按字节填。
    pub fill: Option<u8>,
    /// 要补的超过它就不补。
    pub max: Option<u64>,
    /// 定义它时标号的序号：同一位置上序号更小的标号在它前面（⛔ 被补的字节推走）。
    pub seq: u64,
}

impl Flow {
    /// 这一级够得着的距离。
    fn reach(self, size: u64) -> core::ops::RangeInclusive<i64> {
        match (self, size) {
            (Self::Branch(..), 2) => -256..=254,
            (Self::Branch(..), 4) => -4096..=4094,
            (Self::Jump(_), 2) => -2048..=2046,
            _ => -(1 << 20)..=(1 << 20) - 2,
        }
    }

    const fn inverse(op: Op) -> Op {
        match op {
            Op::Beq => Op::Bne,
            Op::Bne => Op::Beq,
            Op::Blt => Op::Bge,
            Op::Bge => Op::Blt,
            Op::Bltu => Op::Bgeu,
            _ => Op::Bltu,
        }
    }

    fn word(self) -> u32 {
        match self {
            Self::Branch(op, a, b) => u32::from(Inst::new(op).x(0, a, b)),
            Self::Jump(rd) => u32::from(Inst::new(Op::Jal).x(rd, 0, 0)),
        }
    }

    /// 最短的一级：压得成 16 位就 2，否则 4。
    fn shortest(self, rvc: bool) -> u64 {
        if rvc && Compressed::compress(self.word()).is_some() { 2 } else { 4 }
    }

    /// 放宽一级之后的字节数；已经是最长的 ⇒ `None`。
    fn wider(self, size: u64, rvc: bool) -> Option<u64> {
        match (self, size) {
            (_, 2) => Some(4),
            (Self::Branch(op, a, b), 4) => {
                let inv = u32::from(Inst::new(Self::inverse(op)).x(0, a, b).with_imm(6));
                Some(if rvc && Compressed::compress(inv).is_some() { 6 } else { 8 })
            }
            _ => None,
        }
    }

    /// 这一级的字节与修补点（相对这条的起点）。
    fn form(self, size: u64) -> (Vec<u8>, Vec<(u64, Fix)>) {
        match (self, size) {
            (Self::Branch(..), 2) => (Compressed::compress(self.word()).expect("能压才有 2 字节的形式").to_le_bytes().to_vec(), vec![(0, Fix::RvcBranch)]),
            (Self::Jump(_), 2) => (Compressed::compress(self.word()).expect("能压才有 2 字节的形式").to_le_bytes().to_vec(), vec![(0, Fix::RvcJump)]),
            (Self::Branch(..), 4) => (self.word().to_le_bytes().to_vec(), vec![(0, Fix::Branch)]),
            (Self::Jump(_), _) => (self.word().to_le_bytes().to_vec(), vec![(0, Fix::Jal)]),
            // 长形式：反向分支跳过下一条 jal（反向的能压成 16 位 ⇒ 6 字节）
            (Self::Branch(op, a, b), n) => {
                let skip = Inst::new(Self::inverse(op)).x(0, a, b);
                let mut bytes = match n {
                    6 => Compressed::compress(u32::from(skip.with_imm(6))).expect("6 字节的形式是压过的").to_le_bytes().to_vec(),
                    _ => u32::from(skip.with_imm(8)).to_le_bytes().to_vec(),
                };
                let at = bytes.len() as u64;
                bytes.extend_from_slice(&u32::from(Inst::new(Op::Jal)).to_le_bytes());
                (bytes, vec![(at, Fix::Jal)])
            }
        }
    }
}

impl Assembler<'_> {
    /// ⭐ 出一条跳到本文件标号的控制流指令：先按最短的出（`compress`：允许从 16 位起），记一个 [`Grow`]，布局时再定。
    pub(super) fn flow(&mut self, flow: Flow, target: &Expr, compress: bool) -> Result<(), Error> {
        let size = flow.shortest(self.mode.rvc && compress);
        let offset = self.here();
        self.put_form(self.cur, offset, flow, size, target);
        let (bytes, _) = flow.form(size);
        self.bytes(&bytes)?;
        let (line, target, rvc) = (self.line, self.pin(target), self.mode.rvc);
        self.sections[self.cur].grows.push(Grow { offset, size, flow, target, line, rvc });
        Ok(())
    }

    /// 在 `section` 的 `offset` 处记下这一级的修补点（字节由调用方放）。
    fn put_form(&mut self, section: usize, offset: u64, flow: Flow, size: u64, target: &Expr) {
        let cur = self.cur;
        self.cur = section;
        for (at, fix) in flow.form(size).1 {
            self.note_at(offset + at, fix, target.clone());
        }
        self.cur = cur;
    }

    /// 目标此刻离这条有多远；目标不在本节（布局前没法知道它在哪）⇒ `None`。
    fn distance(&self, section: usize, g: &Grow) -> Option<i64> {
        let v = self.eval(&g.target, 0).ok()?;
        if let Some(k) = v.constant() {
            return Some(k);
        }
        let (name, k) = match v.syms.as_slice() {
            [(name, 1)] => (name.as_str(), v.k),
            _ => return None,
        };
        let (s, o) = self.label(name)?;
        (s == section).then(|| o.cast_signed() + k - g.offset.cast_signed())
    }

    /// ⭐ 排布局：放宽够不着的、重补对齐，到不再变为止。
    pub(super) fn layout(&mut self) -> Result<(), Error> {
        loop {
            let mut changed = false;
            for section in 0..self.sections.len() {
                // 一次放宽一条（放宽会挪后面的，下一轮再看别的）
                let far = (0..self.sections[section].grows.len()).find_map(|k| {
                    let g = &self.sections[section].grows[k];
                    let ok = self.distance(section, g).is_some_and(|d| g.flow.reach(g.size).contains(&d));
                    (!ok).then(|| g.flow.wider(g.size, g.rvc).map(|n| (k, n))).flatten()
                });
                if let Some((k, n)) = far {
                    self.widen(section, k, n);
                    changed = true;
                    continue;
                }
                if let Some(k) = (0..self.sections[section].pads.len()).find(|&k| {
                    let p = &self.sections[section].pads[k];
                    Self::pad_size(p) != p.size
                }) {
                    self.repad(section, k);
                    changed = true;
                }
            }
            if !changed {
                return Ok(());
            }
        }
    }

    /// 对齐此刻要补几字节。
    fn pad_size(p: &Pad) -> u64 {
        let need = p.offset.next_multiple_of(p.align.max(1)) - p.offset;
        if p.max.is_some_and(|m| need > m) { 0 } else { need }
    }

    /// 补 `n` 字节（代码节：奇数先补 0，差 2 补 c.nop，其余 nop；别的按填充字节）。
    #[must_use]
    pub(super) fn padding(n: u64, fill: Option<u8>) -> Vec<u8> {
        let Some(b) = fill else {
            let mut bytes = Vec::new();
            if n % 2 == 1 {
                bytes.push(0);
            }
            if n % 4 >= 2 {
                bytes.extend_from_slice(&[0x01, 0x00]);
            }
            for _ in 0..n / 4 {
                bytes.extend_from_slice(&0x13u32.to_le_bytes());
            }
            return bytes;
        };
        vec![b; usize::try_from(n).unwrap_or_default()]
    }

    fn widen(&mut self, section: usize, k: usize, size: u64) {
        let g = self.sections[section].grows[k].clone();
        // 这条原来的修补点、可松弛点去掉，换新一级的
        let s = &mut self.sections[section];
        s.fixups.retain(|f| !(g.offset..g.offset + g.size).contains(&f.offset));
        s.relax_items.retain(|&(a, _)| !(g.offset..g.offset + g.size).contains(&a));
        let (bytes, _) = g.flow.form(size);
        self.splice(section, g.offset, g.size, &bytes, u64::MAX);
        self.sections[section].grows[k].size = size;
        let line = self.line;
        self.line = g.line;
        self.put_form(section, g.offset, g.flow, size, &g.target);
        self.line = line;
    }

    fn repad(&mut self, section: usize, k: usize) {
        let p = self.sections[section].pads[k].clone();
        let n = Self::pad_size(&p);
        self.splice(section, p.offset, p.size, &Self::padding(n, p.fill), p.seq);
        self.sections[section].pads[k].size = n;
    }

    /// ⭐ `section` 里 `[at, at + old)` 换成 `new`，后面的一切往后挪。`seq`：恰在 `at` 的标号里，序号比它小的在前面、不挪
    /// （对齐用；改写指令时 `at` 处的标号都在指令前面 ⇒ 给 `u64::MAX`）。
    fn splice(&mut self, section: usize, at: u64, old: u64, new: &[u8], seq: u64) {
        let end = at + old;
        let delta = new.len() as i64 - old.cast_signed();
        let shift = |o: &mut u64| *o = o.wrapping_add_signed(delta);
        let s = &mut self.sections[section];
        let (a, e) = (usize::try_from(at).unwrap_or_default(), usize::try_from(end).unwrap_or_default());
        s.data.splice(a..e, new.iter().copied());
        s.fixups.iter_mut().filter(|f| f.offset >= end).for_each(|f| shift(&mut f.offset));
        for (x, y) in s.relax_items.iter_mut().chain(s.leb_items.iter_mut()).filter(|(x, _)| *x >= end) {
            shift(x);
            shift(y);
        }
        s.grows.iter_mut().filter(|g| g.offset >= end && g.offset > at).for_each(|g| shift(&mut g.offset));
        s.pads.iter_mut().filter(|p| p.offset >= end && p.offset > at).for_each(|p| shift(&mut p.offset));
        for (name, sym) in &mut self.symbols {
            if let Def::Label(sec, off) = &mut sym.def
                && *sec == section
                && (*off > at || (*off == at && old == 0 && self.label_seq.get(name).is_some_and(|&q| q > seq)))
                && *off >= end
            {
                shift(off);
            }
        }
    }
}
