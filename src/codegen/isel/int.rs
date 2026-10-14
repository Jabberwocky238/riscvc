//! 整数：≤ 32 位一个寄存器（窄的恒零扩展），33..=64 位拆成低 / 高两半。
use super::{Error, Isel, Part, R};
use crate::codegen::mir::MOp;
use crate::ir::{BinOp, CastOp, Const, IPred, Kind, Ty, ValId};
use crate::isa::{Inst, Op as IOp, Form};
use regalloc2::RegClass;

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
            && Inst::fits(iop.form(), i64::from(c))
            && !(iop.form() == Form::Shift && c < 0)
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
            BinOp::Sub => match self.const_i32(b).filter(|c| Inst::fits(Form::Imm, -i64::from(*c))) {
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
                let r = self.rr(IOp::Mul, x, y);
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
            BinOp::UDiv | BinOp::URem => {
                let y = self.get1(b)?;
                self.rr(if op == BinOp::UDiv { IOp::Divu } else { IOp::Remu }, x, y)
            }
            BinOp::SDiv | BinOp::SRem => {
                let y = self.get1(b)?;
                let (sx, sy) = (self.sext(x, w), self.sext(y, w));
                let r = self.rr(if op == BinOp::SDiv { IOp::Div } else { IOp::Rem }, sx, sy);
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
                let (bl, bh) = self.pair(b)?;
                let lo = self.rr(IOp::Add, al, bl);
                let carry = self.rr(IOp::Sltu, lo, al);
                let h = self.rr(IOp::Add, ah, bh);
                (lo, self.rr(IOp::Add, h, carry))
            }
            BinOp::Sub => {
                let (bl, bh) = self.pair(b)?;
                let lo = self.rr(IOp::Sub, al, bl);
                let borrow = self.rr(IOp::Sltu, al, bl);
                let h = self.rr(IOp::Sub, ah, bh);
                (lo, self.rr(IOp::Sub, h, borrow))
            }
            BinOp::Mul => {
                let (bl, bh) = self.pair(b)?;
                let lo = self.rr(IOp::Mul, al, bl);
                let h0 = self.rr(IOp::Mulhu, al, bl);
                let h1 = self.rr(IOp::Mul, al, bh);
                let h2 = self.rr(IOp::Mul, ah, bl);
                let h = self.rr(IOp::Add, h0, h1);
                (lo, self.rr(IOp::Add, h, h2))
            }
            BinOp::Shl | BinOp::LShr | BinOp::AShr => match self.const_i32(b) {
                Some(c) => self.shift64_const(op, al, ah, c & 63),
                None => {
                    let s = self.get1(b)?;
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
                    let t = if c == 0 { x } else if Inst::fits(Form::Imm, i64::from(c)) { self.ri(IOp::Xori, x, c) } else {
                        let y = self.li(c);
                        self.rr(IOp::Xor, x, y)
                    };
                    return Ok(if p == IPred::Eq { self.ri(IOp::Sltiu, t, 1) } else { self.rr(IOp::Sltu, R::ZERO, t) });
                }
                IPred::Slt | IPred::Ult if Inst::fits(Form::Imm, i64::from(c)) => return Ok(self.ri(if p == IPred::Slt { IOp::Slti } else { IOp::Sltiu }, x, c)),
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

    /// 类型转换（浮点相关的交给 float.rs）。
    pub(super) fn cast(&mut self, op: CastOp, a: ValId, to: Ty) -> Result<Vec<R>, Error> {
        let from = self.ty(a);
        let bits = |s: &Self, t: Ty| s.types().bits(t).unwrap_or(32);
        Ok(match op {
            CastOp::Trunc => {
                let x = self.get1(a)?;
                let w = bits(self, to);
                if w > 32 {
                    let (l, h) = self.pair(a)?;
                    vec![l, self.mask(h, w - 32)]
                } else {
                    vec![self.mask(x, w)]
                }
            }
            CastOp::ZExt => {
                let x = self.get(a)?;
                if bits(self, to) > 32 && x.len() == 1 { vec![x[0], R::ZERO] } else { x }
            }
            CastOp::SExt => {
                let wf = bits(self, from);
                let x = self.get1(a)?;
                let s = self.sext(x, wf);
                let wt = bits(self, to);
                if wt > 32 {
                    let h = if wf > 32 { self.pair(a)?.1 } else { self.ri(IOp::Srai, s, 31) };
                    vec![s, h]
                } else {
                    vec![self.mask(s, wt)]
                }
            }
            CastOp::PtrToInt => {
                let x = self.get1(a)?;
                let w = bits(self, to);
                if w > 32 { vec![x, R::ZERO] } else { vec![self.mask(x, w)] }
            }
            CastOp::IntToPtr => vec![self.get1(a)?],
            CastOp::AddrSpaceCast => self.get(a)?,
            CastOp::Bitcast => {
                let x = self.get(a)?;
                match (self.kind(from), self.kind(to)) {
                    (Kind::Float, Kind::Int(32)) => {
                        let d = self.xr();
                        self.emit(MOp::Reg(IOp::FmvXW, 7), vec![d], x);
                        vec![d]
                    }
                    (Kind::Int(32), Kind::Float) => {
                        let d = self.fr();
                        self.emit(MOp::Reg(IOp::FmvWX, 7), vec![d], x);
                        vec![d]
                    }
                    _ => x,
                }
            }
            _ => self.fcast(op, a, to)?,
        })
    }

    /// `select c, a, b`：整数部件 `b ^ ((a ^ b) & -c)`，浮点部件搬到整数寄存器做同样的事。
    pub(super) fn select_value(&mut self, c: ValId, a: ValId, b: ValId) -> Result<Vec<R>, Error> {
        let c = self.get1(c)?;
        let m = self.rr(IOp::Sub, R::ZERO, c);
        let (xa, xb) = (self.get(a)?, self.get(b)?);
        let mut out = Vec::new();
        for (pa, pb) in xa.into_iter().zip(xb) {
            let float = matches!(pa, R::V(v) if v.class() == RegClass::Float);
            let (ia, ib) = if float {
                let (x, y) = (self.xr(), self.xr());
                self.emit(MOp::Reg(IOp::FmvXW, 7), vec![x], vec![pa]);
                self.emit(MOp::Reg(IOp::FmvXW, 7), vec![y], vec![pb]);
                (x, y)
            } else {
                (pa, pb)
            };
            let d = self.rr(IOp::Xor, ia, ib);
            let d = self.rr(IOp::And, d, m);
            let r = self.rr(IOp::Xor, d, ib);
            out.push(if float {
                let f = self.fr();
                self.emit(MOp::Reg(IOp::FmvWX, 7), vec![f], vec![r]);
                f
            } else {
                r
            });
        }
        Ok(out)
    }
}
