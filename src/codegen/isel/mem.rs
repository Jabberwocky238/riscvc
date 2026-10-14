//! 访存：`load` / `store`（标量叶子逐个访问；对齐不够就逐字节）、`alloca`（栈帧对象）、`getelementptr`
//! （常数偏移并进地址，⛔ 先算出指针再加）、聚合值的 `extractvalue` / `insertvalue`（只是部件的重排）。
use super::{Error, FrameObj, Isel, R};
use crate::codegen::mir::{Base, MOp};
use crate::ir::{Index, Kind, Ty, ValId};
use crate::feature::{Zmmul, Float};
use crate::isa::{Ext, Form, Inst, Opcode, Rv32i as IOp};

/// 一个标量叶子：类型与它在聚合里的字节偏移。
type Leaf = (Ty, u64);

impl Isel<'_> {
    /// 聚合类型的标量叶子（与 `parts` 同序）。
    fn leaves(&self, t: Ty, off: u64, out: &mut Vec<Leaf>) {
        match self.kind(t) {
            Kind::Struct(fields, _) => {
                let (offs, _) = self.types().struct_layout(t);
                for (f, o) in fields.iter().zip(offs) {
                    self.leaves(*f, off + o, out);
                }
            }
            Kind::Array(n, e) => (0..*n).for_each(|i| self.leaves(*e, off + i * self.types().size(*e), out)),
            Kind::Vector(n, e) => (0..u64::from(*n)).for_each(|i| self.leaves(*e, off + i * self.types().size(*e), out)),
            _ => out.push((t, off)),
        }
    }

    /// 指针 ⇒ （基址, 常数偏移）：静态 alloca、常数下标的 GEP 不出代码。
    pub(super) fn address(&mut self, ptr: ValId) -> Result<(Base, i64), Error> {
        if let Some(&obj) = self.allocas.get(&ptr) {
            return Ok((Base::Frame(obj), 0));
        }
        if let Some(&(b, off)) = self.derived.get(&ptr) {
            return Ok((b, off));
        }
        Ok((Base::Reg(self.get1(ptr)?), 0))
    }

    /// （基址, 偏移）⇒ 偏移放得进 12 位的形式（寄存器基址超了就先加好）。
    fn fit(&mut self, base: Base, off: i64) -> (Base, i32) {
        match base {
            Base::Reg(r) if !Inst::fits(Form::Imm, off) || !Inst::fits(Form::Imm, off + 8) => {
                let k = self.li(off as i32);
                (Base::Reg(self.rr(IOp::Add, r, k)), 0)
            }
            b => (b, off as i32),
        }
    }

    /// 地址的值（`derived` / 帧对象要用成普通指针时）。
    pub(super) fn materialize(&mut self, base: Base, off: i64) -> R {
        match base {
            Base::Reg(r) if off == 0 => r,
            Base::Reg(r) if Inst::fits(Form::Imm, off) => self.ri(IOp::Addi, r, off as i32),
            Base::Reg(r) => {
                let k = self.li(off as i32);
                self.rr(IOp::Add, r, k)
            }
            b => {
                let d = self.xr();
                self.emit(MOp::Addr(b, off as i32), vec![d], Vec::new());
                d
            }
        }
    }

    fn uses_of(base: Base) -> Vec<R> {
        match base {
            Base::Reg(r) => vec![r],
            _ => Vec::new(),
        }
    }

    /// 读一个标量叶子 ⇒ 部件。
    fn load_leaf(&mut self, t: Ty, base: Base, off: i64, align: u64) -> Result<Vec<R>, Error> {
        let size = self.types().size(t);
        let natural = size.min(4);
        if align < natural && size > 1 {
            // 对齐不够：逐字节读、拼
            let mut words = Vec::new();
            for w in 0..size.div_ceil(4) {
                let n = (size - 4 * w).min(4);
                let mut acc = R::ZERO;
                for i in 0..n {
                    let (b, o) = self.fit(base, off + i64::try_from(4 * w + i).unwrap_or(0));
                    let d = self.xr();
                    self.emit(MOp::Load(IOp::Lbu.into(), b, o), vec![d], Self::uses_of(b));
                    let sh = if i == 0 { d } else { self.ri(IOp::Slli, d, i32::try_from(8 * i).unwrap_or(0)) };
                    acc = if i == 0 { sh } else { self.rr(IOp::Or, acc, sh) };
                }
                words.push(acc);
            }
            if matches!(self.kind(t), Kind::Float) && Ext::F.enabled() {
                let d = self.fr();
                self.emit(MOp::Reg(Float::FmvWX.into(), 7), vec![d], vec![words[0]]);
                return Ok(vec![d]);
            }
            return Ok(words);
        }
        let one = |s: &mut Self, op: Opcode, float: bool, at: i64| {
            let (b, o) = s.fit(base, at);
            let d = if float { s.fr() } else { s.xr() };
            s.emit(MOp::Load(op, b, o), vec![d], Self::uses_of(b));
            d
        };
        Ok(match self.kind(t) {
            Kind::Int(w) if *w <= 8 => vec![one(self, IOp::Lbu.into(), false, off)],
            Kind::Int(w) if *w <= 16 => vec![one(self, IOp::Lhu.into(), false, off)],
            Kind::Int(w) if *w <= 32 => vec![one(self, IOp::Lw.into(), false, off)],
            Kind::Int(_) | Kind::Double => vec![one(self, IOp::Lw.into(), false, off), one(self, IOp::Lw.into(), false, off + 4)],
            Kind::Ptr => vec![one(self, IOp::Lw.into(), false, off)],
            Kind::Half | Kind::BFloat => vec![one(self, IOp::Lhu.into(), false, off)],
            Kind::Float if Ext::F.enabled() => vec![one(self, Float::Flw.into(), true, off)],
            Kind::Float => vec![one(self, IOp::Lw.into(), false, off)],
            k => return Self::bad(format!("不能 load {k:?}")),
        })
    }

    pub(super) fn load(&mut self, t: Ty, ptr: ValId, align: u64, _volatile: bool) -> Result<Vec<R>, Error> {
        let (base, off) = self.address(ptr)?;
        let mut leaves = Vec::new();
        self.leaves(t, 0, &mut leaves);
        let mut out = Vec::new();
        for (lt, lo) in leaves {
            // 叶子的实际对齐：整体对齐与偏移的公约
            let a = if align == 0 { self.types().align(t) } else { align };
            let a = if lo == 0 { a } else { a.min(1 << lo.trailing_zeros()) };
            out.extend(self.load_leaf(lt, base, off + i64::try_from(lo).unwrap_or(0), a)?);
        }
        Ok(out)
    }

    fn store_leaf(&mut self, t: Ty, parts: &[R], base: Base, off: i64, align: u64) -> Result<(), Error> {
        let size = self.types().size(t);
        let natural = size.min(4);
        let one = |s: &mut Self, op: Opcode, v: R, at: i64| {
            let (b, o) = s.fit(base, at);
            let mut uses = vec![v];
            uses.extend(Self::uses_of(b));
            s.emit(MOp::Store(op, b, o), Vec::new(), uses);
        };
        if align < natural && size > 1 {
            let words: Vec<R> = if matches!(self.kind(t), Kind::Float) && Ext::F.enabled() {
                let x = self.xr();
                self.emit(MOp::Reg(Float::FmvXW.into(), 7), vec![x], vec![parts[0]]);
                vec![x]
            } else {
                parts.to_vec()
            };
            for (w, &word) in words.iter().enumerate() {
                let n = (size - 4 * w as u64).min(4);
                for i in 0..n {
                    let v = if i == 0 { word } else { self.ri(IOp::Srli, word, i32::try_from(8 * i).unwrap_or(0)) };
                    one(self, IOp::Sb.into(), v, off + i64::try_from(4 * w as u64 + i).unwrap_or(0));
                }
            }
            return Ok(());
        }
        match self.kind(t) {
            Kind::Int(w) if *w <= 8 => one(self, IOp::Sb.into(), parts[0], off),
            Kind::Int(w) if *w <= 16 => one(self, IOp::Sh.into(), parts[0], off),
            Kind::Int(w) if *w <= 32 => one(self, IOp::Sw.into(), parts[0], off),
            Kind::Int(_) | Kind::Double => {
                one(self, IOp::Sw.into(), parts[0], off);
                one(self, IOp::Sw.into(), parts[1], off + 4);
            }
            Kind::Ptr => one(self, IOp::Sw.into(), parts[0], off),
            Kind::Half | Kind::BFloat => one(self, IOp::Sh.into(), parts[0], off),
            Kind::Float if Ext::F.enabled() => one(self, Float::Fsw.into(), parts[0], off),
            Kind::Float => one(self, IOp::Sw.into(), parts[0], off),
            k => return Self::bad(format!("不能 store {k:?}")),
        }
        Ok(())
    }

    pub(super) fn store(&mut self, val: ValId, ptr: ValId, align: u64) -> Result<(), Error> {
        let t = self.ty(val);
        let parts = self.get(val)?;
        let (base, off) = self.address(ptr)?;
        let mut leaves = Vec::new();
        self.leaves(t, 0, &mut leaves);
        let mut at = 0;
        for (lt, lo) in leaves {
            let n = self.parts(lt)?.len();
            let a = if align == 0 { self.types().align(t) } else { align };
            let a = if lo == 0 { a } else { a.min(1 << lo.trailing_zeros()) };
            self.store_leaf(lt, &parts[at..at + n], base, off + i64::try_from(lo).unwrap_or(0), a)?;
            at += n;
        }
        Ok(())
    }

    /// `alloca`：入口块里常数个数的 ⇒ 栈帧对象（不出代码）；别的 ⇒ 动态调 `sp`。
    pub(super) fn alloca(&mut self, r: Option<ValId>, t: Ty, count: ValId, align: u64) -> Result<(), Error> {
        let Some(r) = r else { return Ok(()) };
        let size = self.types().size(t);
        if self.cur == 0 && let Some(n) = self.const_i32(count) {
            let obj = u32::try_from(self.frame.len()).expect("帧对象太多");
            self.frame.push(FrameObj { size: (size * u64::try_from(n.max(0)).unwrap_or(0)).max(1), align: align.max(1) });
            self.allocas.insert(r, obj);
            return Ok(());
        }
        // 动态：字节数向上取 16，sp 往下挪，地址 = sp + 出参区
        let n = self.get1(count)?;
        let bytes = if size == 1 {
            n
        } else {
            let k = self.li(i32::try_from(size).unwrap_or(0));
            self.rr(Zmmul::Mul, n, k)
        };
        let bytes = self.ri(IOp::Addi, bytes, 15);
        let bytes = self.ri(IOp::Andi, bytes, -16);
        let d = self.xr();
        self.emit(MOp::SpAlloc, vec![d], vec![bytes]);
        self.dynamic_sp = true;
        self.set(Some(r), vec![d]);
        Ok(())
    }

    /// `getelementptr`：常数偏移全并进（基址, 偏移），动态下标乘步长加上去。
    pub(super) fn gep(&mut self, r: Option<ValId>, src: Ty, base: ValId, indices: &[Index]) -> Result<(), Error> {
        let mut off: i64 = 0;
        let mut terms: Vec<(ValId, u64)> = Vec::new();
        let mut t = src;
        for (k, idx) in indices.iter().enumerate() {
            let (stride, next) = if k == 0 {
                (self.types().size(src), src)
            } else {
                match self.kind(t) {
                    Kind::Struct(..) => {
                        let Index::Const(i) = idx else { return Self::bad("结构体下标要是常数") };
                        let (e, o) = self.types().element(t, u64::try_from(*i).unwrap_or(0)).ok_or_else(|| Error::Select(String::from("结构体下标越界")))?;
                        off += i64::try_from(o).unwrap_or(0);
                        t = e;
                        continue;
                    }
                    Kind::Array(_, e) | Kind::Vector(_, e) => (self.types().size(*e), *e),
                    k => return Self::bad(format!("GEP 走不进 {k:?}")),
                }
            };
            match idx {
                Index::Const(i) => off += i * i64::try_from(stride).unwrap_or(0),
                Index::Dyn(v) => match self.const_i32(*v) {
                    Some(c) => off += i64::from(c) * i64::try_from(stride).unwrap_or(0),
                    None => terms.push((*v, stride)),
                },
            }
            t = next;
        }
        let (b, o) = self.address(base)?;
        let off = off + o;
        let Some(r) = r else { return Ok(()) };
        if terms.is_empty() {
            self.derived.insert(r, (b, off));
            return Ok(());
        }
        let mut acc = self.materialize(b, 0);
        for (v, stride) in terms {
            let w = self.types().bits(self.ty(v)).unwrap_or(32);
            let i = self.get1(v)?;
            let i = if w < 32 { self.sext(i, w) } else { i };
            let scaled = match stride {
                0 => continue,
                1 => i,
                s if s.is_power_of_two() => self.ri(IOp::Slli, i, i32::try_from(s.trailing_zeros()).unwrap_or(0)),
                s => {
                    let k = self.li(i32::try_from(s).unwrap_or(0));
                    self.rr(Zmmul::Mul, i, k)
                }
            };
            acc = self.rr(IOp::Add, acc, scaled);
        }
        if off == 0 {
            self.set(Some(r), vec![acc]);
        } else {
            self.derived.insert(r, (Base::Reg(acc), off));
        }
        Ok(())
    }

    /// 聚合值里一条路径对应的部件区间（起点, 个数）。
    fn range(&self, mut t: Ty, pos: &[u32]) -> Result<(usize, usize), Error> {
        let mut start = 0;
        for &i in pos {
            match self.kind(t) {
                Kind::Struct(fields, _) => {
                    for f in &fields[..i as usize] {
                        start += self.parts(*f)?.len();
                    }
                    t = fields[i as usize];
                }
                Kind::Array(_, e) | Kind::Vector(_, e) => {
                    start += i as usize * self.parts(*e)?.len();
                    t = *e;
                }
                k => return Self::bad(format!("走不进 {k:?}")),
            }
        }
        Ok((start, self.parts(t)?.len()))
    }

    pub(super) fn extract(&mut self, a: ValId, pos: &[u32]) -> Result<Vec<R>, Error> {
        let (s, n) = self.range(self.ty(a), pos)?;
        Ok(self.get(a)?[s..s + n].to_vec())
    }

    pub(super) fn insert(&mut self, a: ValId, v: ValId, pos: &[u32]) -> Result<Vec<R>, Error> {
        let (s, n) = self.range(self.ty(a), pos)?;
        let mut parts = self.get(a)?;
        parts.splice(s..s + n, self.get(v)?);
        Ok(parts)
    }
}
