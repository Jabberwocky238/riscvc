//! 整数：≤ 32 位一个寄存器（窄的恒零扩展），33..=64 位拆成低 / 高两半。
use super::{Error, Isel, Part, R};
use crate::codegen::mir::{MInst, MOp, Rule};
use crate::ir::{BinOp, CastOp, Const, IPred, Kind, Ty, ValId};
use crate::feature::{Zmmul, M, Float};
use crate::isa::{Base, Rv32i as IOp, Table};

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
            Kind::Int(w) if *w <= 64 => Ok(*w),
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
            return self.binary64(op, a, b, w);
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

    /// 33..=64 位：低 / 高两半。
    fn binary64(&mut self, op: BinOp, a: ValId, b: ValId, w: u32) -> Result<Vec<R>, Error> {
        if w < 64 && matches!(op, BinOp::AShr | BinOp::SDiv | BinOp::SRem) {
            return Self::bad(format!("i{w} 的有符号 {op:?} 还没做"));
        }
        let (al, ah) = self.pair(a)?;
        let (lo, hi) = match op {
            BinOp::And | BinOp::Or | BinOp::Xor => {
                let (bl, bh) = self.pair(b)?;
                let iop = match op {
                    BinOp::And => IOp::And,
                    BinOp::Or => IOp::Or,
                    _ => IOp::Xor,
                };
                (self.rr(iop, al, bl), self.rr(iop, ah, bh))
            }
            BinOp::Add => {
                let b = self.pair(b)?;
                self.add64((al, ah), b)
            }
            BinOp::Sub => {
                let b = self.pair(b)?;
                self.sub64((al, ah), b)
            }
            BinOp::Mul => {
                let b = self.pair(b)?;
                self.mul64((al, ah), b)?
            }
            BinOp::Shl | BinOp::LShr | BinOp::AShr => match self.const_i32(b) {
                Some(c) => self.shift64_const(op, al, ah, c & 63),
                None => {
                    let s = self.low(b)?;
                    self.shift64_var(op, al, ah, s)
                }
            },
            BinOp::UDiv | BinOp::SDiv | BinOp::URem | BinOp::SRem => {
                let name = match op {
                    BinOp::UDiv => "__udivdi3",
                    BinOp::SDiv => "__divdi3",
                    BinOp::URem => "__umoddi3",
                    _ => "__moddi3",
                };
                let (bl, bh) = self.pair(b)?;
                let r = self.libcall(name, &[(vec![al, ah], vec![Part::Lo, Part::Hi]), (vec![bl, bh], vec![Part::Lo, Part::Hi])], &[Part::Lo, Part::Hi])?;
                (r[0], r[1])
            }
            _ => return Self::bad(format!("i64 不支持 {op:?}")),
        };
        let hi = if w < 64 && matches!(op, BinOp::Add | BinOp::Sub | BinOp::Mul | BinOp::Shl) { self.mask(hi, w - 32) } else { hi };
        Ok(vec![lo, hi])
    }

    // ---- 64 位的部件运算（两半：lo, hi）：binary64 与溢出检测共用 ------------------------------

    pub(super) fn add64(&mut self, (al, ah): (R, R), (bl, bh): (R, R)) -> (R, R) {
        let lo = self.rr(IOp::Add, al, bl);
        let carry = self.rr(IOp::Sltu, lo, al);
        let h = self.rr(IOp::Add, ah, bh);
        (lo, self.rr(IOp::Add, h, carry))
    }

    pub(super) fn sub64(&mut self, (al, ah): (R, R), (bl, bh): (R, R)) -> (R, R) {
        let lo = self.rr(IOp::Sub, al, bl);
        let borrow = self.rr(IOp::Sltu, al, bl);
        let h = self.rr(IOp::Sub, ah, bh);
        (lo, self.rr(IOp::Sub, h, borrow))
    }

    /// 低 64 位的积。没有 Zmmul：整个调 `__muldi3`（同 llc；拆开算的 mulhu 自己就要调它）。
    pub(super) fn mul64(&mut self, (al, ah): (R, R), (bl, bh): (R, R)) -> Result<(R, R), Error> {
        if !Zmmul::Mul.enabled() {
            let r = self.libcall("__muldi3", &[(vec![al, ah], vec![Part::Lo, Part::Hi]), (vec![bl, bh], vec![Part::Lo, Part::Hi])], &[Part::Lo, Part::Hi])?;
            return Ok((r[0], r[1]));
        }
        let lo = self.rr(Zmmul::Mul, al, bl);
        let h0 = self.rr(Zmmul::Mulhu, al, bl);
        let h1 = self.rr(Zmmul::Mul, al, bh);
        let h2 = self.rr(Zmmul::Mul, ah, bl);
        let h = self.rr(IOp::Add, h0, h1);
        Ok((lo, self.rr(IOp::Add, h, h2)))
    }

    /// `a <u b`（64 位）⇒ 0 / 1。
    pub(super) fn ltu64(&mut self, (al, ah): (R, R), (bl, bh): (R, R)) -> R {
        let hi_lt = self.rr(IOp::Sltu, ah, bh);
        let d = self.rr(IOp::Xor, ah, bh);
        let hi_eq = self.ri(IOp::Sltiu, d, 1);
        let lo_lt = self.rr(IOp::Sltu, al, bl);
        let t = self.rr(IOp::And, hi_eq, lo_lt);
        self.rr(IOp::Or, hi_lt, t)
    }

    /// 64 位值的两半。
    pub(super) fn pair(&mut self, v: ValId) -> Result<(R, R), Error> {
        let p = self.get(v)?;
        match p.as_slice() {
            [lo, hi] => Ok((*lo, *hi)),
            [lo] => Ok((*lo, R::ZERO)),
            _ => Self::bad("不是 64 位值"),
        }
    }

    fn shift64_const(&mut self, op: BinOp, lo: R, hi: R, c: i32) -> (R, R) {
        match (op, c) {
            (_, 0) => (lo, hi),
            (BinOp::Shl, 1..32) => {
                let h = self.ri(IOp::Slli, hi, c);
                let carry = self.ri(IOp::Srli, lo, 32 - c);
                (self.ri(IOp::Slli, lo, c), self.rr(IOp::Or, h, carry))
            }
            (BinOp::Shl, _) => (R::ZERO, self.ri(IOp::Slli, lo, c - 32)),
            (_, 1..32) => {
                let l = self.ri(IOp::Srli, lo, c);
                let carry = self.ri(IOp::Slli, hi, 32 - c);
                let lo = self.rr(IOp::Or, l, carry);
                (lo, self.ri(if op == BinOp::LShr { IOp::Srli } else { IOp::Srai }, hi, c))
            }
            (BinOp::LShr, _) => (self.ri(IOp::Srli, hi, c - 32), R::ZERO),
            _ => (self.ri(IOp::Srai, hi, c - 32), self.ri(IOp::Srai, hi, 31)),
        }
    }

    /// 变量移位（0..=63），无分支：按 `s ≥ 32` 做掩码选两种结果。
    pub(super) fn shift64_var(&mut self, op: BinOp, lo: R, hi: R, s: R) -> (R, R) {
        let big = self.ri(IOp::Srli, s, 5);
        let big = self.ri(IOp::Andi, big, 1);
        let m = self.rr(IOp::Sub, R::ZERO, big); // s ≥ 32 ⇒ 全 1
        let nm = self.ri(IOp::Addi, big, -1); // s < 32 ⇒ 全 1
        let inv = self.ri(IOp::Xori, s, 31); // 低 5 位 = 31 − s
        match op {
            BinOp::Shl => {
                let ls = self.rr(IOp::Sll, lo, s);
                let hs = self.rr(IOp::Sll, hi, s);
                let c = self.ri(IOp::Srli, lo, 1);
                let c = self.rr(IOp::Srl, c, inv);
                let small = self.rr(IOp::Or, hs, c);
                let a = self.rr(IOp::And, ls, m);
                let b = self.rr(IOp::And, small, nm);
                (self.rr(IOp::And, ls, nm), self.rr(IOp::Or, a, b))
            }
            _ => {
                let ls = self.rr(IOp::Srl, lo, s);
                let hs = self.rr(if op == BinOp::LShr { IOp::Srl } else { IOp::Sra }, hi, s);
                let c = self.ri(IOp::Slli, hi, 1);
                let c = self.rr(IOp::Sll, c, inv);
                let small = self.rr(IOp::Or, ls, c);
                let a = self.rr(IOp::And, hs, m);
                let b = self.rr(IOp::And, small, nm);
                let lo = self.rr(IOp::Or, a, b);
                let hi = if op == BinOp::LShr {
                    self.rr(IOp::And, hs, nm)
                } else {
                    let sign = self.ri(IOp::Srai, hi, 31);
                    let a = self.rr(IOp::And, sign, m);
                    let b = self.rr(IOp::And, hs, nm);
                    self.rr(IOp::Or, a, b)
                };
                (lo, hi)
            }
        }
    }

    const fn signed(p: IPred) -> bool {
        matches!(p, IPred::Slt | IPred::Sle | IPred::Sgt | IPred::Sge)
    }

    /// ≤ 32 位比较的两个操作数（有符号的窄整数先符号扩展）。
    fn cmp_operands(&mut self, p: IPred, a: ValId, b: ValId, w: u32) -> Result<(R, R), Error> {
        let x = self.get1(a)?;
        let y = self.get1(b)?;
        Ok(if Self::signed(p) && w < 32 { (self.sext(x, w), self.sext(y, w)) } else { (x, y) })
    }

    /// 整数比较 ⇒ 0 / 1。
    pub(super) fn icmp(&mut self, p: IPred, a: ValId, b: ValId) -> Result<R, Error> {
        let w = self.width(self.ty(a))?;
        if w > 32 {
            return self.icmp64(p, a, b);
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

    fn icmp64(&mut self, p: IPred, a: ValId, b: ValId) -> Result<R, Error> {
        let (al, ah) = self.pair(a)?;
        let (bl, bh) = self.pair(b)?;
        let lt = |s: &mut Self, signed: bool, xl: R, xh: R, yl: R, yh: R| {
            let hi_lt = s.rr(if signed { IOp::Slt } else { IOp::Sltu }, xh, yh);
            let d = s.rr(IOp::Xor, xh, yh);
            let hi_eq = s.ri(IOp::Sltiu, d, 1);
            let lo_lt = s.rr(IOp::Sltu, xl, yl);
            let t = s.rr(IOp::And, hi_eq, lo_lt);
            s.rr(IOp::Or, hi_lt, t)
        };
        let signed = Self::signed(p);
        Ok(match p {
            IPred::Eq | IPred::Ne => {
                let l = self.rr(IOp::Xor, al, bl);
                let h = self.rr(IOp::Xor, ah, bh);
                let t = self.rr(IOp::Or, l, h);
                if p == IPred::Eq { self.ri(IOp::Sltiu, t, 1) } else { self.rr(IOp::Sltu, R::ZERO, t) }
            }
            IPred::Slt | IPred::Ult => lt(self, signed, al, ah, bl, bh),
            IPred::Sgt | IPred::Ugt => lt(self, signed, bl, bh, al, ah),
            IPred::Sge | IPred::Uge => {
                let t = lt(self, signed, al, ah, bl, bh);
                self.ri(IOp::Xori, t, 1)
            }
            IPred::Sle | IPred::Ule => {
                let t = lt(self, signed, bl, bh, al, ah);
                self.ri(IOp::Xori, t, 1)
            }
        })
    }

    /// 并进跳转的比较 ⇒ `bxx` 与两个操作数。
    pub(super) fn compare_branch(&mut self, p: IPred, a: ValId, b: ValId) -> Result<(IOp, R, R), Error> {
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

    /// 整数的截断 / 零扩展 / 符号扩展（一个值的部件：≤ 32 位一个，33..=64 位两个）。
    fn int_cast(&mut self, op: CastOp, x: &[R], wf: u32, wt: u32) -> Vec<R> {
        match op {
            CastOp::Trunc if wt > 32 => vec![x[0], self.mask(x[1], wt - 32)],
            CastOp::Trunc => vec![self.mask(x[0], wt)],
            // 窄整数恒零扩展 ⇒ 零扩展只差补一个高半
            CastOp::ZExt if wt > 32 && x.len() == 1 => vec![x[0], R::ZERO],
            CastOp::ZExt => x.to_vec(),
            _ => {
                let s = self.sext(x[0], wf);
                if wt > 32 {
                    let h = if wf > 32 { x[1] } else { self.ri(IOp::Srai, s, 31) };
                    vec![s, h]
                } else {
                    vec![self.mask(s, wt)]
                }
            }
        }
    }

    /// 类型转换（浮点相关的交给 float.rs）。
    pub(super) fn cast(&mut self, op: CastOp, a: ValId, to: Ty) -> Result<Vec<R>, Error> {
        let from = self.ty(a);
        let bits = |s: &Self, t: Ty| s.types().bits(t).unwrap_or(32);
        // 向量：逐 lane（每 lane 占 1/n 个部件，按元素的位宽）
        if let (Kind::Vector(n, ef), Kind::Vector(_, et)) = (self.kind(from).clone(), self.kind(to).clone())
            && matches!(op, CastOp::Trunc | CastOp::ZExt | CastOp::SExt)
        {
            let x = self.get(a)?;
            let (n, wf, wt) = (n as usize, bits(self, ef), bits(self, et));
            if n == 0 || x.len() % n != 0 {
                return Self::bad(format!("{op:?}：{n} 条 lane 对不上 {} 个部件", x.len()));
            }
            let k = x.len() / n;
            return Ok(x.chunks(k).flat_map(|lane| self.int_cast(op, lane, wf, wt)).collect());
        }
        Ok(match op {
            CastOp::Trunc | CastOp::ZExt | CastOp::SExt => {
                let x = self.get(a)?;
                self.int_cast(op, &x, bits(self, from), bits(self, to))
            }
            CastOp::PtrToInt => {
                let x = self.get1(a)?;
                let w = bits(self, to);
                if w > 32 { vec![x, R::ZERO] } else { vec![self.mask(x, w)] }
            }
            CastOp::IntToPtr => vec![self.low(a)?],
            CastOp::AddrSpaceCast => self.get(a)?,
            CastOp::Bitcast => {
                let x = self.get(a)?;
                match (self.kind(from), self.kind(to)) {
                    // 软浮点的 float 本来就在整数寄存器里
                    (Kind::Float, _) | (_, Kind::Float) if !crate::feature::Float::ENABLED => x,
                    (Kind::Float, Kind::Int(32)) => {
                        let d = self.xr();
                        self.emit(MOp::Reg(Float::FmvXW.into(), 7), &[d], &x);
                        vec![d]
                    }
                    (Kind::Int(32), Kind::Float) => {
                        let d = self.fr();
                        self.emit(MOp::Reg(Float::FmvWX.into(), 7), &[d], &x);
                        vec![d]
                    }
                    _ => x,
                }
            }
            _ => self.fcast(op, a, to)?,
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
