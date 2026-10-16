//! 整数：≤ 32 位一个寄存器（窄的恒零扩展）；更宽的见 wide.rs。
use super::{Error, Isel, R};
use crate::codegen::mir::{self, MInst, MOp, Rule};
use crate::ir::{BinOp, CastOp, Const, IPred, Kind, Ty, ValId};
use crate::feature::{Zmmul, M, Float};
use crate::isa::{Base, Rv32i as IOp};

impl Isel<'_> {
    /// 低 `w` 位以外清零（零扩展的不变式）。
    pub(super) fn mask(&mut self, r: R, w: u32) -> R {
        match w {
            32.. => r,
            1..=11 => self.ri(IOp::Andi, r, (1 << w) - 1),
            _ => {
                let t = self.ri(IOp::Slli, r, 32 - w as i32);
                self.ri(IOp::Srli, t, 32 - w as i32)
            }
        }
    }

    /// 低 `w` 位符号扩展到 32 位。
    pub(super) fn sext(&mut self, r: R, w: u32) -> R {
        if w >= 32 {
            return r;
        }
        let t = self.ri(IOp::Slli, r, 32 - w as i32);
        self.ri(IOp::Srai, t, 32 - w as i32)
    }

    /// 值若是整数常量：它的低 32 位（按有符号数解释）。
    pub(super) fn const_i32(&self, v: ValId) -> Option<i32> {
        match self.consts.get(&v)? {
            Const::Int(x) => Some(*x as u32 as i32),
            Const::Zero => Some(0),
            _ => None,
        }
    }

    fn width(&self, t: Ty) -> Result<u32, Error> {
        match self.kind(t) {
            Kind::Int(w) => Ok(*w),
            Kind::Ptr => Ok(32),
            k => Self::bad(format!("整数运算不支持 {k:?}")),
        }
    }

    /// `op rd, x, 常数`：立即数放得下用 I 型，否则把常数装进寄存器用 R 型。
    fn with_imm(&mut self, rop: IOp, iop: IOp, x: R, b: ValId) -> Result<R, Error> {
        if let Some(c) = self.const_i32(b)
            && iop.form().fits(i64::from(c))
            && !(iop.form() == Base::Shift && c < 0)
        {
            return Ok(self.ri(iop, x, c));
        }
        let y = self.get1(b)?;
        Ok(self.rr(rop, x, y))
    }

    /// 二元运算（浮点交给 float.rs）。
    pub(super) fn binary(&mut self, op: BinOp, a: ValId, b: ValId) -> Result<Vec<R>, Error> {
        let t = self.ty(a);
        if self.types().is_float(t) {
            return self.fbinary(op, a, b);
        }
        let w = self.width(t)?;
        if w > 32 {
            return self.wide_binary(op, a, b, w);
        }
        let x = self.get1(a)?;
        let r = match op {
            BinOp::Add => {
                let r = self.with_imm(IOp::Add, IOp::Addi, x, b)?;
                self.mask(r, w)
            }
            BinOp::Sub => match self.const_i32(b).filter(|c| Base::Imm.fits(-i64::from(*c))) {
                Some(c) => {
                    let r = self.ri(IOp::Addi, x, -c);
                    self.mask(r, w)
                }
                None => {
                    let y = self.get1(b)?;
                    let r = self.rr(IOp::Sub, x, y);
                    self.mask(r, w)
                }
            },
            BinOp::Mul => {
                let y = self.get1(b)?;
                let r = self.rr(Zmmul::Mul, x, y);
                self.mask(r, w)
            }
            BinOp::And => self.with_imm(IOp::And, IOp::Andi, x, b)?,
            BinOp::Or => self.with_imm(IOp::Or, IOp::Ori, x, b)?,
            BinOp::Xor => self.with_imm(IOp::Xor, IOp::Xori, x, b)?,
            BinOp::Shl => {
                let r = self.with_imm(IOp::Sll, IOp::Slli, x, b)?;
                self.mask(r, w)
            }
            BinOp::LShr => self.with_imm(IOp::Srl, IOp::Srli, x, b)?,
            BinOp::AShr => {
                let s = self.sext(x, w);
                let r = self.with_imm(IOp::Sra, IOp::Srai, s, b)?;
                self.mask(r, w)
            }
            BinOp::UDiv | BinOp::URem => match self.const_i32(b).and_then(|c| self.div_by_const(op, x, c, w)) {
                Some(r) => r,
                None => {
                    let y = self.get1(b)?;
                    self.rr(if op == BinOp::UDiv { M::Divu } else { M::Remu }, x, y)
                }
            },
            BinOp::SDiv | BinOp::SRem => {
                let sx = self.sext(x, w);
                let sc = self.const_i32(b).map(|c| if w < 32 { (c << (32 - w)) >> (32 - w) } else { c });
                let r = match sc.and_then(|c| self.div_by_const(op, sx, c, w)) {
                    Some(r) => r,
                    None => {
                        let y = self.get1(b)?;
                        let sy = self.sext(y, w);
                        self.rr(if op == BinOp::SDiv { M::Div } else { M::Rem }, sx, sy)
                    }
                };
                self.mask(r, w)
            }
            _ => return Self::bad(format!("整数不支持 {op:?}")),
        };
        Ok(vec![r])
    }

    pub(super) const fn signed(p: IPred) -> bool {
        matches!(p, IPred::Slt | IPred::Sle | IPred::Sgt | IPred::Sge)
    }

    /// ≤ 32 位比较的两个操作数（有符号的窄整数先符号扩展）。
    fn cmp_operands(&mut self, p: IPred, a: ValId, b: ValId, w: u32) -> Result<(R, R), Error> {
        let x = self.get1(a)?;
        let y = self.get1(b)?;
        Ok(if Self::signed(p) && w < 32 { (self.sext(x, w), self.sext(y, w)) } else { (x, y) })
    }

    /// `ctpop(x) p k` 改写成哪种位运算（同 LLVM 没有 Zbb 时的 SimplifySetCC）：
    /// `== 0` / `!= 0` ⇒ 看 `x`；`< 2` / `> 1` ⇒ 看 `x & (x − 1)`；`== 1` / `!= 1` ⇒ `(x − 1) <u (x ^ (x − 1))`。
    pub(super) const fn pop_kind(p: IPred, k: i32) -> Option<(IOp, u8)> {
        Some(match (p, k) {
            (IPred::Eq, 0) | (IPred::Ule, 0) | (IPred::Ult, 1) => (IOp::Beq, 0),
            (IPred::Ne, 0) | (IPred::Ugt, 0) | (IPred::Uge, 1) => (IOp::Bne, 0),
            (IPred::Ult, 2) | (IPred::Ule, 1) => (IOp::Beq, 1),
            (IPred::Ugt, 1) | (IPred::Uge, 2) => (IOp::Bne, 1),
            (IPred::Eq, 1) => (IOp::Bltu, 2),
            (IPred::Ne, 1) => (IOp::Bgeu, 2),
            _ => return None,
        })
    }

    /// 和常数比的 ctpop（[`Self::pop_kind`]）⇒ 分支形式的（条件, 两个操作数）。
    fn pop_test(&mut self, p: IPred, a: ValId, b: ValId) -> Result<Option<(IOp, R, R)>, Error> {
        let (Some(&(x, _)), Some(k)) = (self.pops.get(&a), self.const_i32(b)) else { return Ok(None) };
        let Some((op, how)) = Self::pop_kind(p, k) else { return Ok(None) };
        let x = self.get1(x)?;
        if how == 0 {
            return Ok(Some((op, x, R::ZERO)));
        }
        let m = self.ri(IOp::Addi, x, -1);
        Ok(Some(if how == 1 {
            (op, self.rr(IOp::And, x, m), R::ZERO)
        } else {
            (op, m, self.rr(IOp::Xor, x, m))
        }))
    }

    /// 分支形式的比较 ⇒ 0 / 1。
    fn test_value(&mut self, op: IOp, x: R, y: R) -> R {
        match op {
            IOp::Beq | IOp::Bne => {
                let t = if y == R::ZERO { x } else { self.rr(IOp::Xor, x, y) };
                if op == IOp::Beq { self.ri(IOp::Sltiu, t, 1) } else { self.rr(IOp::Sltu, R::ZERO, t) }
            }
            IOp::Bltu => self.rr(IOp::Sltu, x, y),
            _ => {
                let t = self.rr(IOp::Sltu, x, y);
                self.ri(IOp::Xori, t, 1)
            }
        }
    }

    /// 整数比较 ⇒ 0 / 1。
    pub(super) fn icmp(&mut self, p: IPred, a: ValId, b: ValId) -> Result<R, Error> {
        if let Some((op, x, y)) = self.pop_test(p, a, b)? {
            return Ok(self.test_value(op, x, y));
        }
        let w = self.width(self.ty(a))?;
        if w > 32 {
            return self.wide_icmp(p, a, b, w);
        }
        // 与常数比较：能用立即数就用
        if let Some(c) = self.const_i32(b) {
            let x = self.get1(a)?;
            let x = if Self::signed(p) && w < 32 { self.sext(x, w) } else { x };
            let c = if Self::signed(p) && w < 32 { (c << (32 - w)) >> (32 - w) } else { c };
            match p {
                IPred::Eq | IPred::Ne => {
                    let t = if c == 0 { x } else if Base::Imm.fits(i64::from(c)) { self.ri(IOp::Xori, x, c) } else {
                        let y = self.li(c);
                        self.rr(IOp::Xor, x, y)
                    };
                    return Ok(if p == IPred::Eq { self.ri(IOp::Sltiu, t, 1) } else { self.rr(IOp::Sltu, R::ZERO, t) });
                }
                IPred::Slt | IPred::Ult if Base::Imm.fits(i64::from(c)) => return Ok(self.ri(if p == IPred::Slt { IOp::Slti } else { IOp::Sltiu }, x, c)),
                _ => {}
            }
        }
        let (x, y) = self.cmp_operands(p, a, b, w)?;
        Ok(match p {
            IPred::Eq | IPred::Ne => {
                let t = self.rr(IOp::Xor, x, y);
                if p == IPred::Eq { self.ri(IOp::Sltiu, t, 1) } else { self.rr(IOp::Sltu, R::ZERO, t) }
            }
            IPred::Slt => self.rr(IOp::Slt, x, y),
            IPred::Ult => self.rr(IOp::Sltu, x, y),
            IPred::Sgt => self.rr(IOp::Slt, y, x),
            IPred::Ugt => self.rr(IOp::Sltu, y, x),
            IPred::Sle | IPred::Ule => {
                let t = self.rr(if p == IPred::Sle { IOp::Slt } else { IOp::Sltu }, y, x);
                self.ri(IOp::Xori, t, 1)
            }
            IPred::Sge | IPred::Uge => {
                let t = self.rr(if p == IPred::Sge { IOp::Slt } else { IOp::Sltu }, x, y);
                self.ri(IOp::Xori, t, 1)
            }
        })
    }

    /// 并进跳转的比较 ⇒ `bxx` 与两个操作数。
    pub(super) fn compare_branch(&mut self, p: IPred, a: ValId, b: ValId) -> Result<(IOp, R, R), Error> {
        if let Some(t) = self.pop_test(p, a, b)? {
            return Ok(t);
        }
        let w = self.width(self.ty(a))?;
        let (x, y) = self.cmp_operands(p, a, b, w)?;
        Ok(match p {
            IPred::Eq => (IOp::Beq, x, y),
            IPred::Ne => (IOp::Bne, x, y),
            IPred::Slt => (IOp::Blt, x, y),
            IPred::Sge => (IOp::Bge, x, y),
            IPred::Sgt => (IOp::Blt, y, x),
            IPred::Sle => (IOp::Bge, y, x),
            IPred::Ult => (IOp::Bltu, x, y),
            IPred::Uge => (IOp::Bgeu, x, y),
            IPred::Ugt => (IOp::Bltu, y, x),
            IPred::Ule => (IOp::Bgeu, y, x),
        })
    }

    /// 整数的截断 / 零扩展 / 符号扩展（一个值的字：⌈w/32⌉ 个，顶字零扩展）。
    pub(super) fn int_cast(&mut self, op: CastOp, x: &[R], wf: u32, wt: u32) -> Vec<R> {
        let nt = wt.div_ceil(32) as usize;
        let mut r = x.to_vec();
        if op == CastOp::SExt {
            r = self.sext_top(r, wf);
            if nt > r.len() {
                let s = self.ri(IOp::Srai, r[r.len() - 1], 31);
                r.resize(nt, s);
            }
        }
        // 窄整数恒零扩展 ⇒ 零扩展只差补高字
        r.resize(nt, R::ZERO);
        if op == CastOp::ZExt { r } else { self.mask_top(r, wt) }
    }

    /// 类型转换（浮点相关的交给 float.rs）。向量逐 lane（每 lane 占 1/n 个部件）；bitcast 整个值一起换。
    pub(super) fn cast(&mut self, op: CastOp, a: ValId, to: Ty) -> Result<Vec<R>, Error> {
        let from = self.ty(a);
        // fptosi / fptoui(floor 一类)：一条带舍入模式的 fcvt（同 LLVM 的 DAG 合并）
        if let (CastOp::FpToSi | CastOp::FpToUi, Some(&(v, rm, _)), Some(w)) = (op, self.rounds.get(&a), self.types().bits(to).filter(|w| *w <= 32)) {
            let v = self.get1(v)?;
            let r = self.fx(if op == CastOp::FpToSi { Float::FcvtWS } else { Float::FcvtWuS }, vec![v], rm);
            return Ok(vec![self.mask(r, w)]);
        }
        let x = self.get(a)?;
        if op == CastOp::Bitcast {
            return self.bitcast(from, x, to);
        }
        if let (Kind::Vector(n, ef), Kind::Vector(_, et)) = (self.kind(from).clone(), self.kind(to).clone()) {
            let n = n as usize;
            if n == 0 || x.len() % n != 0 {
                return Self::bad(format!("{op:?}：{n} 条 lane 对不上 {} 个部件", x.len()));
            }
            let mut out = Vec::new();
            for lane in x.chunks(x.len() / n) {
                out.extend(self.lane_cast(op, ef, lane.to_vec(), et)?);
            }
            return Ok(out);
        }
        self.lane_cast(op, from, x, to)
    }

    /// 一个标量（一条 lane）的转换：`x` 是 `from` 的部件。
    fn lane_cast(&mut self, op: CastOp, from: Ty, x: Vec<R>, to: Ty) -> Result<Vec<R>, Error> {
        let bits = |s: &Self, t: Ty| s.types().bits(t).unwrap_or(32);
        Ok(match op {
            CastOp::Trunc | CastOp::ZExt | CastOp::SExt => self.int_cast(op, &x, bits(self, from), bits(self, to)),
            CastOp::PtrToInt => {
                let w = bits(self, to);
                let op = if w > 32 { CastOp::ZExt } else { CastOp::Trunc };
                self.int_cast(op, &x[..1], 32, w)
            }
            CastOp::IntToPtr => vec![x[0]],
            CastOp::AddrSpaceCast => x,
            _ => self.fcast(op, from, x, to)?,
        })
    }

    /// 位型不变的转换。
    fn bitcast(&mut self, from: Ty, x: Vec<R>, to: Ty) -> Result<Vec<R>, Error> {
        let class = |s: &Self, t: Ty| s.parts(t).map(|p| p.iter().map(|q| q.class()).collect::<Vec<_>>());
        Ok(match (self.kind(from), self.kind(to)) {
            (Kind::Float, Kind::Int(32)) if Float::ENABLED => {
                let d = self.xr();
                self.emit(MOp::Reg(Float::FmvXW.into(), 7), &[d], &x);
                vec![d]
            }
            (Kind::Int(32), Kind::Float) if Float::ENABLED => {
                let d = self.fr();
                self.emit(MOp::Reg(Float::FmvWX.into(), 7), &[d], &x);
                vec![d]
            }
            // 部件形状不同（`<16 x i8>` ⇔ i128、`<2 x float>` ⇔ i64 一类）：经栈，按一边的类型写、按另一边的读
            _ if class(self, from)? != class(self, to)? => {
                let align = self.types().align(from).max(self.types().align(to));
                let obj = self.stack_slot(self.types().size(from).max(self.types().size(to)), align);
                self.store_at(from, &x, mir::Base::Frame(obj), 0, align)?;
                self.load_at(to, mir::Base::Frame(obj), 0, align)?
            }
            _ => x,
        })
    }

    /// `select c, a, b`：整数部件 `b ^ ((a ^ b) & -c)`，浮点部件搬到整数寄存器做同样的事。
    /// `select c, a, b`：一条 [`MOp::Select`]（条件是同一块里的整数比较 ⇒ 直接并进分支，同 `br`）。
    pub(super) fn select_value(&mut self, c: ValId, a: ValId, b: ValId) -> Result<Vec<R>, Error> {
        let (ta, fb) = (self.get(a)?, self.get(b)?);
        // 向量的条件（`<n x i1>`）：逐 lane 挑，每 lane 占值的 1/n 个部件（⚠ 并进分支的比较没算出来，⛔ 先 get）
        if !self.fused.contains_key(&c)
            && let lanes = self.get(c)?
            && lanes.len() > 1
        {
            if ta.len() != fb.len() || ta.len() % lanes.len() != 0 {
                return Self::bad(format!("select 的 {} 条 lane 对不上 {} / {} 个部件", lanes.len(), ta.len(), fb.len()));
            }
            let k = ta.len() / lanes.len();
            return Ok(lanes.iter().enumerate().flat_map(|(i, &l)| self.select_parts(IOp::Bne, l, R::ZERO, &ta[i * k..(i + 1) * k], &fb[i * k..(i + 1) * k])).collect());
        }
        let (op, x, y) = match self.fused.get(&c).copied() {
            Some((p, l, r)) => self.compare_branch(p, l, r)?,
            None => (IOp::Bne, self.get1(c)?, R::ZERO),
        };
        Ok(self.select_parts(op, x, y, &ta, &fb))
    }

    /// `op x, y` 成立取 `a` 的各部件，否则取 `b` 的：一条 [`MOp::Select`]（目的寄存器逐个绑在真值上）。
    pub(super) fn select_parts(&mut self, op: IOp, x: R, y: R, a: &[R], b: &[R]) -> Vec<R> {
        let mut inst = MInst::new(MOp::Select(op), &[], &[x, y]);
        let mut out = Vec::new();
        for (k, &t) in a.iter().enumerate() {
            let t = self.virt(t);
            let d = R::V(self.vreg(t.class()));
            inst.use_on(R::V(t), Rule::Any);
            inst.def_on(d, Rule::Reuse(2 + k));
            out.push(d);
        }
        b.iter().for_each(|&f| inst.use_on(f, Rule::Any));
        self.push(inst);
        out
    }
}
