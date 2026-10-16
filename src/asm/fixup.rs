//! 修补点：表达式求值、就地解析、解析不了的变重定位。
use super::{Assembler, Bind, Def, Error, Expr};
use crate::isa::Base;
use object::elf;

/// 修补哪种位段。
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Fix {
    /// I 型 12 位立即数（必须是常数）。
    Imm12,
    /// S 型 12 位立即数（必须是常数）。
    Store12,
    /// 移位量（必须是常数）。
    Shamt,
    /// U 型 20 位（必须是常数）。
    U20,
    Branch,
    Jal,
    /// `c.beqz` / `c.bnez`（16 位，±256 B）。
    RvcBranch,
    /// `c.j` / `c.jal`（16 位，±2 KiB）。
    RvcJump,
    Hi20,
    Lo12I,
    Lo12S,
    PcrelHi20,
    PcrelLo12I,
    PcrelLo12S,
    /// `auipc` + `jalr` 一对（8 字节）。
    Call,
    /// `.byte` / `.half` / `.word` / `.quad`：字节数。
    Data(u8),
    /// 代码对齐（开着松弛）：出 `R_RISCV_ALIGN`，加数 = 填的 nop 字节数。
    Align(u64),
    /// `.uleb128 A − B`（字节已按汇编时的值写好）：跨过可松弛点 ⇒ 出 `SET_ULEB128` / `SUB_ULEB128`。
    Uleb,
    /// 一定出这种重定位（TLS、`%pltpcrel` 一类：汇编时解析不了）。
    Reloc(u32),
    /// `auipc` 的 GOT / TLS 高位（一定出重定位；`%pcrel_lo` 可以配它）。
    PcHi(u32),
}

pub struct Fixup {
    pub offset: u64,
    pub kind: Fix,
    pub expr: Expr,
    pub line: usize,
    /// 出重定位后再跟一条 `R_RISCV_RELAX`（一定出重定位）。
    pub relax: bool,
}

/// 一条重定位（写 ELF 用）。
pub struct Reloc {
    pub section: usize,
    pub offset: u64,
    pub r_type: u32,
    pub symbol: String,
    pub addend: i64,
}

/// 求值结果：Σ 符号 × 系数 + 常数。同节两个标号相减在求值时就折掉。
#[derive(Clone, Debug, Default)]
pub struct Value {
    pub syms: Vec<(String, i64)>,
    pub k: i64,
}

impl Value {
    #[must_use]
    pub fn constant(&self) -> Option<i64> {
        self.syms.is_empty().then_some(self.k)
    }

    fn scale(mut self, by: i64) -> Self {
        self.k = self.k.wrapping_mul(by);
        for s in &mut self.syms {
            s.1 *= by;
        }
        self
    }

    /// 一个正系数符号 + 常数（重定位能表达的形状）。
    fn single(&self) -> Option<(&str, i64)> {
        match self.syms.as_slice() {
            [(name, 1)] => Some((name.as_str(), self.k)),
            _ => None,
        }
    }
}

impl Assembler<'_> {
    /// 表达式求值。`.set` 的符号展开；标号留成符号；同节的「标号 − 标号」折成常数。
    pub(crate) fn eval(&self, e: &Expr, depth: usize) -> Result<Value, Error> {
        if depth > 100 {
            return Err(Error::Syntax(String::from("符号定义成环")));
        }
        let constant = |v: Value, what: &str| v.constant().ok_or_else(|| Error::Syntax(format!("{what} 的操作数要是常数")));
        let v = match e {
            Expr::Num(k) => Value { syms: Vec::new(), k: *k },
            Expr::Sym(name) => match self.symbols.get(name).map(|s| (&s.def, s.kind)) {
                // ifunc 的别名不展开：重定位指向别名自己（同 llvm-mc）
                Some((Def::Equ(inner), kind)) if kind != elf::STT_GNU_IFUNC => self.eval(inner, depth + 1)?,
                _ => Value { syms: vec![(name.clone(), 1)], k: 0 },
            },
            Expr::Neg(a) => self.eval(a, depth + 1)?.scale(-1),
            Expr::Not(a) => Value { syms: Vec::new(), k: !constant(self.eval(a, depth + 1)?, "~")? },
            Expr::LNot(a) => Value { syms: Vec::new(), k: i64::from(constant(self.eval(a, depth + 1)?, "!")? == 0) },
            Expr::Bin(op, a, b) => {
                let (a, b) = (self.eval(a, depth + 1)?, self.eval(b, depth + 1)?);
                match op {
                    super::expr::BinOp::Add | super::expr::BinOp::Sub => {
                        let b = if *op == super::expr::BinOp::Sub { b.scale(-1) } else { b };
                        let mut v = Value { syms: a.syms, k: a.k.wrapping_add(b.k) };
                        v.syms.extend(b.syms);
                        v
                    }
                    _ => Value { syms: Vec::new(), k: op.apply(constant(a, "运算")?, constant(b, "运算")?)? },
                }
            }
            // 常数上的 %hi / %lo 现在就折
            Expr::Mod(m @ (super::Modifier::Hi | super::Modifier::Lo), a) if let Some(k) = self.eval(a, depth + 1)?.constant() => {
                let v = k as i32;
                let lo = (v << 20) >> 20;
                Value { syms: Vec::new(), k: i64::from(if *m == super::Modifier::Lo { lo } else { (v.wrapping_sub(lo) >> 12) & 0xf_ffff }) }
            }
            Expr::Mod(..) => return Err(Error::Syntax(String::from("修饰符只能出现在操作数最外层"))),
        };
        Ok(self.fold(v))
    }

    /// 合并同名符号，折掉同节标号的差。
    fn fold(&self, v: Value) -> Value {
        let mut syms: Vec<(String, i64)> = Vec::new();
        for (name, c) in v.syms {
            match syms.iter_mut().find(|(n, _)| *n == name) {
                Some(s) => s.1 += c,
                None => syms.push((name, c)),
            }
        }
        syms.retain(|(_, c)| *c != 0);
        let mut k = v.k;
        // 一正一负、同一节的两个标号 ⇒ 常数
        while let Some((i, j, d)) = syms.iter().enumerate().find_map(|(i, (a, ca))| {
            let (sa, oa) = self.label(a)?;
            syms.iter().enumerate().find_map(|(j, (b, cb))| {
                let (sb, ob) = self.label(b)?;
                (*ca == 1 && *cb == -1 && sa == sb).then(|| (i, j, oa.cast_signed() - ob.cast_signed()))
            })
        }) {
            k = k.wrapping_add(d);
            let (hi, lo) = if i > j { (i, j) } else { (j, i) };
            syms.remove(hi);
            syms.remove(lo);
        }
        Value { syms, k }
    }

    /// 节里 [lo, hi] 之间整个落着一个可松弛点（同 MC：跨过它的差在汇编时定不下来）；节里有可松弛点时，
    /// 带标号的 `.uleb128` 也算（MC 的 LEB 片段不折）。
    fn crosses(&self, section: usize, lo: u64, hi: u64) -> bool {
        let s = &self.sections[section];
        let inside = |&(a, b): &(u64, u64)| a >= lo && b <= hi;
        s.relax_items.iter().any(inside) || (!s.relax_items.is_empty() && s.leb_items.iter().any(inside))
    }

    /// 同节的「A − B (+ k)」跨过可松弛点 ⇒ 不折，A、B 留在值里（同 MC 的 AttemptToFoldSymbolOffsetDifference）：
    /// 数据出 ADD / SUB，`%hi` / `%lo` 之类就报错。
    fn unfold(&self, e: &Expr, v: Value) -> Value {
        match self.label_terms(e, 0).as_slice() {
            [(a, 1), (b, -1)] | [(b, -1), (a, 1)]
                if v.syms.is_empty()
                    && let (Some((sa, oa)), Some((sb, ob))) = (self.label(a), self.label(b))
                    && sa == sb
                    && self.crosses(sa, oa.min(ob), oa.max(ob)) =>
            {
                Value { syms: vec![(a.clone(), 1), (b.clone(), -1)], k: v.k - (oa.cast_signed() - ob.cast_signed()) }
            }
            _ => v,
        }
    }

    /// PC 相对的目标在本节、能就地解析、且**符号本身**和修补点之间没有可松弛点 ⇒ 目标偏移（同 MC：看的是
    /// 「符号 − 修补点」能不能折，加数不算：`.+32` 的符号就在这条上，跨不过什么；`.L+32` 要看 `.L` 到这条之间）。
    fn local_pcrel(&self, section: usize, v: &Value, pc: u64) -> Option<u64> {
        let target = self.local_target(section, v)?;
        let (name, _) = v.single()?;
        let (_, at) = self.label(name)?;
        (!self.crosses(section, pc.min(at), pc.max(at))).then_some(target)
    }

    /// 表达式里的标号与系数（不折同节的差；`.set` 展开）：判断「A − B」是否跨过可松弛点用。加减以外的 ⇒ 认不出（空名）。
    fn label_terms(&self, e: &Expr, depth: usize) -> Vec<(String, i64)> {
        if depth > 100 {
            return vec![(String::new(), 0)];
        }
        let scale = |v: Vec<(String, i64)>, c: i64| v.into_iter().map(|(n, k)| (n, k * c)).collect::<Vec<_>>();
        match e {
            Expr::Sym(name) => match self.symbols.get(name).map(|s| &s.def) {
                Some(Def::Equ(inner)) => self.label_terms(inner, depth + 1),
                _ => vec![(name.clone(), 1)],
            },
            Expr::Neg(a) => scale(self.label_terms(a, depth + 1), -1),
            Expr::Bin(op @ (super::expr::BinOp::Add | super::expr::BinOp::Sub), a, b) => {
                let mut v = self.label_terms(a, depth + 1);
                let c = if *op == super::expr::BinOp::Sub { -1 } else { 1 };
                v.extend(scale(self.label_terms(b, depth + 1), c));
                v
            }
            Expr::Num(_) => Vec::new(),
            _ => vec![(String::new(), 0)],
        }
    }

    /// 已定义的标号 ⇒ （节, 偏移）。
    pub(crate) fn label(&self, name: &str) -> Option<(usize, u64)> {
        match self.symbols.get(name).map(|s| &s.def) {
            Some(Def::Label(s, o)) => Some((*s, *o)),
            // 没定义成别的的节名 = 节首（同 llvm-mc 的节符号）
            None | Some(Def::Undef) => self.sections.iter().position(|s| s.name == name).map(|s| (s, 0)),
            _ => None,
        }
    }

    /// 符号会不会是全局 / 弱的（⇒ 不能就地解析，可能被别处的定义替换）。
    pub(crate) fn preemptible(&self, name: &str) -> bool {
        self.globals.contains(name) || self.symbols.get(name).is_some_and(|s| s.bind != Bind::Local)
    }

    /// 分支 / 调用目标在本节内、能就地解析 ⇒ 目标偏移。
    fn local_target(&self, section: usize, v: &Value) -> Option<u64> {
        let (name, k) = v.single()?;
        let (s, o) = self.label(name)?;
        (s == section && !self.preemptible(name)).then(|| o.wrapping_add_signed(k))
    }

    /// 修补点 ⇒ 改字节或出重定位。
    pub(crate) fn resolve(&mut self) -> Result<Vec<Reloc>, Error> {
        let mut relocs = Vec::new();
        for section in 0..self.sections.len() {
            let fixups = core::mem::take(&mut self.sections[section].fixups);
            for f in &fixups {
                self.fixup(section, f, &fixups, &mut relocs).map_err(|e| match e {
                    Error::Syntax(msg) => Error::at(f.line, &msg),
                    e => e,
                })?;
            }
            self.sections[section].fixups = fixups;
        }
        // `.reloc`：位置是「标号 + 常数」（定了节），目标是「符号 + 常数」
        for (at, r_type, target, line) in core::mem::take(&mut self.directs) {
            let bad = |msg: &str| Error::at(line, msg);
            let v = self.eval(&at, 0)?;
            let (section, offset) = match v.single().and_then(|(n, k)| Some((self.label(n)?, k))) {
                Some(((sec, off), k)) => (sec, off.wrapping_add_signed(k)),
                None => return Err(bad(".reloc 的位置要是「标号 + 常数」")),
            };
            let t = self.eval(&target, 0)?;
            // 常数目标（含 `.set` 成常数的符号）⇒ 0 号符号 + 加数（同 llvm-mc）
            let (symbol, addend) = match t.constant() {
                Some(k) => ("", k),
                None => t.single().ok_or_else(|| bad(".reloc 的目标要是「符号 + 常数」或常数"))?,
            };
            relocs.push(Reloc { section, offset, r_type, symbol: String::from(symbol), addend });
        }
        // 0 号符号（RELAX / ALIGN、常数目标）⛔ 不建符号
        for r in relocs.iter().filter(|r| !r.symbol.is_empty()) {
            let sym = self.symbol(&r.symbol);
            sym.used = true;
            // TLS 重定位引用的符号是 TLS 的（同 llvm-mc）
            if sym.kind == elf::STT_NOTYPE
                && matches!(r.r_type, elf::R_RISCV_TPREL_HI20 | elf::R_RISCV_TPREL_LO12_I | elf::R_RISCV_TPREL_LO12_S | elf::R_RISCV_TPREL_ADD | elf::R_RISCV_TLS_GOT_HI20 | elf::R_RISCV_TLS_GD_HI20 | elf::R_RISCV_TLSDESC_HI20)
            {
                sym.kind = elf::STT_TLS;
            }
        }
        Ok(relocs)
    }

    fn fixup(&mut self, section: usize, f: &Fixup, all: &[Fixup], relocs: &mut Vec<Reloc>) -> Result<(), Error> {
        let before = relocs.len();
        self.fixup_inner(section, f, all, relocs)?;
        // 要松弛的：重定位之后跟一条 R_RISCV_RELAX（0 号符号）
        if f.relax && relocs.len() > before {
            relocs.push(Reloc { section, offset: f.offset, r_type: elf::R_RISCV_RELAX, symbol: String::new(), addend: 0 });
        }
        Ok(())
    }

    fn fixup_inner(&mut self, section: usize, f: &Fixup, all: &[Fixup], relocs: &mut Vec<Reloc>) -> Result<(), Error> {
        let v = self.unfold(&f.expr, self.eval(&f.expr, 0)?);
        let pc = f.offset;
        // 常数也能出（0 号符号 + 常数）：松弛时的 %hi / %lo
        let reloc = |r_type: u32, v: &Value| -> Result<Reloc, Error> {
            let (name, addend) = match v.constant() {
                Some(k) => ("", k),
                None => v.single().ok_or_else(|| Error::Syntax(format!("{:?} 的表达式重定位表达不了：{:?}", f.kind, v)))?,
            };
            Ok(Reloc { section, offset: pc, r_type, symbol: String::from(name), addend })
        };
        let need_const = |v: &Value| v.constant().ok_or_else(|| Error::Syntax(format!("{:?} 要常数，见 {:?}", f.kind, v)));
        match f.kind {
            Fix::Imm12 | Fix::Store12 | Fix::Shamt | Fix::U20 => {
                let form = match f.kind {
                    Fix::Imm12 => Base::Imm,
                    Fix::Store12 => Base::Store,
                    Fix::Shamt => Base::Shift,
                    _ => Base::U,
                };
                let k = Self::rv32(form, need_const(&v)?);
                if !form.fits(k) {
                    return Err(Error::Syntax(format!("立即数 {k} 超出 {form:?} 的范围")));
                }
                self.patch(section, pc, form.scatter(i32::try_from(k).unwrap_or_default()));
            }
            Fix::Align(n) => relocs.push(Reloc { section, offset: pc, r_type: elf::R_RISCV_ALIGN, symbol: String::new(), addend: n.cast_signed() }),
            Fix::Hi20 | Fix::Lo12I | Fix::Lo12S => match v.constant() {
                Some(k) if !f.relax => self.patch(section, pc, Self::hi_lo(f.kind, k)),
                _ => relocs.push(reloc(
                    match f.kind {
                        Fix::Hi20 => elf::R_RISCV_HI20,
                        Fix::Lo12I => elf::R_RISCV_LO12_I,
                        _ => elf::R_RISCV_LO12_S,
                    },
                    &v,
                )?),
            },
            Fix::Reloc(t) | Fix::PcHi(t) => relocs.push(reloc(t, &v)?),
            // 压缩的跳转：常数目标 = 偏移；本节解析得了 ⇒ 就地填，否则出 RVC_BRANCH / RVC_JUMP
            Fix::RvcBranch | Fix::RvcJump => {
                let bits = |d: i64| if f.kind == Fix::RvcBranch { crate::feature::Compressed::branch_bits(d) } else { crate::feature::Compressed::jump_bits(d) };
                let d = match v.constant() {
                    Some(d) => Some(d),
                    None => self.local_pcrel(section, &v, pc).filter(|_| !f.relax).map(|t| t.cast_signed() - pc.cast_signed()),
                };
                match d {
                    Some(d) => {
                        let b = bits(d).ok_or_else(|| Error::Syntax(format!("跳转距离 {d} 超出压缩跳转的范围")))?;
                        self.patch16(section, pc, b);
                    }
                    None => relocs.push(reloc(if f.kind == Fix::RvcBranch { elf::R_RISCV_RVC_BRANCH } else { elf::R_RISCV_RVC_JUMP }, &v)?),
                }
            }
            // 常数目标 = 偏移（同 llvm-mc：`jal 2046`、`beq a0, a1, 102`）
            Fix::Branch | Fix::Jal if let Some(d) = v.constant() => {
                let form = if f.kind == Fix::Branch { Base::Branch } else { Base::J };
                let d = Self::rv32(form, d);
                if !form.fits(d) {
                    return Err(Error::Syntax(format!("跳转距离 {d} 超出 {form:?} 的范围")));
                }
                self.patch(section, pc, form.scatter(i32::try_from(d).unwrap_or_default()));
            }
            Fix::Branch | Fix::Jal | Fix::Call | Fix::PcrelHi20 => match self.local_pcrel(section, &v, pc).filter(|_| !f.relax) {
                Some(target) => {
                    let d = target.cast_signed() - pc.cast_signed();
                    match f.kind {
                        Fix::Branch | Fix::Jal => {
                            let form = if f.kind == Fix::Branch { Base::Branch } else { Base::J };
                            if !form.fits(d) {
                                return Err(Error::Syntax(format!("跳转距离 {d} 超出 {form:?} 的范围")));
                            }
                            self.patch(section, pc, form.scatter(i32::try_from(d).unwrap_or_default()));
                        }
                        Fix::Call => {
                            self.patch(section, pc, Self::hi_lo(Fix::Hi20, d));
                            self.patch(section, pc + 4, Self::hi_lo(Fix::Lo12I, d));
                        }
                        _ => self.patch(section, pc, Self::hi_lo(Fix::Hi20, d)),
                    }
                }
                None => relocs.push(reloc(
                    match f.kind {
                        Fix::Branch => elf::R_RISCV_BRANCH,
                        Fix::Jal => elf::R_RISCV_JAL,
                        Fix::Call => elf::R_RISCV_CALL_PLT,
                        _ => elf::R_RISCV_PCREL_HI20,
                    },
                    &v,
                )?),
            },
            Fix::PcrelLo12I | Fix::PcrelLo12S => {
                // 操作数是 auipc 那条的标号；目标取 auipc 那个修补点的
                let (label, _) = v.single().ok_or_else(|| Error::Syntax(String::from("%pcrel_lo 的操作数要是一个标号")))?;
                let (s, at) = self.label(label).ok_or_else(|| Error::Syntax(format!("%pcrel_lo 的标号 `{label}` 没定义")))?;
                // auipc 在别的节、或是 GOT / TLS 的高位 ⇒ 只能出重定位（链接器配对）
                let hi = all.iter().find(|h| s == section && h.offset == at && matches!(h.kind, Fix::PcrelHi20));
                let target = match hi {
                    Some(hi) if !hi.relax && !f.relax => self.local_pcrel(section, &self.eval(&hi.expr, 0)?, hi.offset),
                    _ => None,
                };
                match target {
                    Some(target) => {
                        let d = target.cast_signed() - at.cast_signed();
                        self.patch(section, pc, Self::hi_lo(if f.kind == Fix::PcrelLo12I { Fix::Lo12I } else { Fix::Lo12S }, d));
                    }
                    None => relocs.push(Reloc {
                        section,
                        offset: pc,
                        r_type: if f.kind == Fix::PcrelLo12I { elf::R_RISCV_PCREL_LO12_I } else { elf::R_RISCV_PCREL_LO12_S },
                        symbol: String::from(label),
                        addend: 0,
                    }),
                }
            }
            Fix::Uleb => {
                if let [(a, 1), (b, -1)] | [(b, -1), (a, 1)] = v.syms.as_slice() {
                    relocs.push(Reloc { section, offset: pc, r_type: elf::R_RISCV_SET_ULEB128, symbol: a.clone(), addend: v.k });
                    relocs.push(Reloc { section, offset: pc, r_type: elf::R_RISCV_SUB_ULEB128, symbol: b.clone(), addend: 0 });
                }
            }
            Fix::Data(n) => {
                if let Some(k) = v.constant() {
                    let bits = u32::from(n) * 8;
                    if bits < 64 && (k >= 1 << bits || k < -(1 << (bits - 1))) {
                        return Err(Error::Syntax(format!("{k} 放不进 {n} 字节")));
                    }
                    let at = usize::try_from(pc).unwrap_or_default();
                    self.sections[section].data[at..at + usize::from(n)].copy_from_slice(&k.to_le_bytes()[..usize::from(n)]);
                } else if let Some((name, k)) = v.single() {
                    let r_type = match n {
                        4 => elf::R_RISCV_32,
                        8 => elf::R_RISCV_64,
                        _ => return Err(Error::Syntax(format!("{n} 字节的数据放不了符号地址"))),
                    };
                    relocs.push(Reloc { section, offset: pc, r_type, symbol: String::from(name), addend: k });
                } else if let [(a, 1), (b, -1)] | [(b, -1), (a, 1)] = v.syms.as_slice() {
                    let (add, sub) = match n {
                        1 => (elf::R_RISCV_ADD8, elf::R_RISCV_SUB8),
                        2 => (elf::R_RISCV_ADD16, elf::R_RISCV_SUB16),
                        4 => (elf::R_RISCV_ADD32, elf::R_RISCV_SUB32),
                        _ => (elf::R_RISCV_ADD64, elf::R_RISCV_SUB64),
                    };
                    relocs.push(Reloc { section, offset: pc, r_type: add, symbol: a.clone(), addend: v.k });
                    relocs.push(Reloc { section, offset: pc, r_type: sub, symbol: b.clone(), addend: 0 });
                } else {
                    return Err(Error::Syntax(format!("数据表达式重定位表达不了：{v:?}")));
                }
            }
        }
        Ok(())
    }

    /// `%hi` / `%lo` 的位（`Hi20` 进 U 型，`Lo12I` 进 I 型，`Lo12S` 进 S 型）。
    fn hi_lo(kind: Fix, v: i64) -> u32 {
        let v = v as i32;
        match kind {
            Fix::Hi20 => Base::U.scatter((v.wrapping_add(0x800)) >> 12),
            Fix::Lo12I => Base::Imm.scatter((v << 20) >> 20),
            _ => Base::Store.scatter((v << 20) >> 20),
        }
    }

    /// 把位或进节里 `at` 处的 16 位（压缩指令）。
    fn patch16(&mut self, section: usize, at: u64, bits: u16) {
        let at = usize::try_from(at).unwrap_or_default();
        let data = &mut self.sections[section].data;
        let h = u16::from_le_bytes([data[at], data[at + 1]]) | bits;
        data[at..at + 2].copy_from_slice(&h.to_le_bytes());
    }

    /// 把位或进节里 `at` 处的 32 位字。
    fn patch(&mut self, section: usize, at: u64, bits: u32) {
        let at = usize::try_from(at).unwrap_or_default();
        let data = &mut self.sections[section].data;
        let w = u32::from_le_bytes(data[at..at + 4].try_into().expect("4 字节")) | bits;
        data[at..at + 4].copy_from_slice(&w.to_le_bytes());
    }
}
