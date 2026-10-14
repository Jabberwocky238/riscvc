//! 浮点：`float` 用 F 扩展（`f` feature 没开就同 double 走软浮点）；`double` 没有硬件（FLEN = 32），全走 compiler-rt。
//! 比较的软化同 LLVM 的 `softenSetCCOperands`：无序版本借有序函数对 NaN 的返回值。
use super::{Error, Isel, Part, R};
use crate::codegen::mir::MOp;
use crate::ir::{BinOp, CastOp, FPred, Kind, Ty, ValId};
use crate::feature::{Float};
use crate::isa::{Opcode, Rv32i as IOp, Rm};

const PAIR: [Part; 2] = [Part::Lo, Part::Hi];

impl Isel<'_> {
    fn double(&self, t: Ty) -> bool {
        matches!(self.kind(t), Kind::Double)
    }

    /// `op fd, a, b`（F 扩展）。
    fn ff(&mut self, op: impl Into<Opcode>, a: R, b: R, rm: Rm) -> R {
        let op: Opcode = op.into();
        let d = self.fr();
        self.emit(MOp::Reg(op, rm as u8), vec![d], vec![a, b]);
        d
    }

    /// 结果是整数的浮点指令（比较、`fclass`、`fcvt.w.s` …）。
    fn fx(&mut self, op: impl Into<Opcode>, uses: Vec<R>, rm: Rm) -> R {
        let op: Opcode = op.into();
        let d = self.xr();
        self.emit(MOp::Reg(op, rm as u8), vec![d], uses);
        d
    }

    pub(super) fn fbinary(&mut self, op: BinOp, a: ValId, b: ValId) -> Result<Vec<R>, Error> {
        let t = self.ty(a);
        if let Some(sfx) = self.soft(t) {
            let name = match op {
                BinOp::FAdd => format!("__add{sfx}3"),
                BinOp::FSub => format!("__sub{sfx}3"),
                BinOp::FMul => format!("__mul{sfx}3"),
                BinOp::FDiv => format!("__div{sfx}3"),
                BinOp::FRem => String::from(if sfx == "df" { "fmod" } else { "fmodf" }),
                _ => return Self::bad(format!("软浮点不支持 {op:?}")),
            };
            let (x, y, ps) = (self.get(a)?, self.get(b)?, self.parts(t)?);
            return self.libcall(&name, &[(x, ps.clone()), (y, ps.clone())], &ps);
        }
        if !matches!(self.kind(t), Kind::Float) {
            return Self::bad(format!("浮点运算不支持 {:?}", self.kind(t)));
        }
        let (x, y) = (self.get1(a)?, self.get1(b)?);
        let iop = match op {
            BinOp::FAdd => Float::FaddS,
            BinOp::FSub => Float::FsubS,
            BinOp::FMul => Float::FmulS,
            BinOp::FDiv => Float::FdivS,
            BinOp::FRem => return self.libcall("fmodf", &[(vec![x], vec![Part::F]), (vec![y], vec![Part::F])], &[Part::F]),
            _ => return Self::bad(format!("float 不支持 {op:?}")),
        };
        Ok(vec![self.ff(iop, x, y, Rm::Dyn)])
    }

    pub(super) fn fneg(&mut self, a: ValId) -> Result<Vec<R>, Error> {
        if self.soft(self.ty(a)) == Some("sf") {
            let x = self.get1(a)?;
            let sign = self.li(i32::MIN);
            return Ok(vec![self.rr(IOp::Xor, x, sign)]);
        }
        if self.double(self.ty(a)) {
            let (lo, hi) = self.pair(a)?;
            let sign = self.li(i32::MIN);
            return Ok(vec![lo, self.rr(IOp::Xor, hi, sign)]);
        }
        let x = self.get1(a)?;
        Ok(vec![self.ff(Float::FsgnjnS, x, x, Rm::Rne)])
    }

    /// 浮点比较 ⇒ 0 / 1。
    pub(super) fn fcmp(&mut self, p: FPred, a: ValId, b: ValId) -> Result<R, Error> {
        match p {
            FPred::False => return Ok(R::ZERO),
            FPred::True => return Ok(self.li(1)),
            _ => {}
        }
        if let Some(sfx) = self.soft(self.ty(a)) {
            return self.fcmp_soft(sfx, p, a, b);
        }
        let (x, y) = (self.get1(a)?, self.get1(b)?);
        let not = |s: &mut Self, r: R| s.ri(IOp::Xori, r, 1);
        let rne = Rm::Rne;
        Ok(match p {
            FPred::Oeq => self.fx(Float::FeqS, vec![x, y], rne),
            FPred::Olt => self.fx(Float::FltS, vec![x, y], rne),
            FPred::Ole => self.fx(Float::FleS, vec![x, y], rne),
            FPred::Ogt => self.fx(Float::FltS, vec![y, x], rne),
            FPred::Oge => self.fx(Float::FleS, vec![y, x], rne),
            FPred::One | FPred::Ueq => {
                let l = self.fx(Float::FltS, vec![x, y], rne);
                let g = self.fx(Float::FltS, vec![y, x], rne);
                let one = self.rr(IOp::Or, l, g);
                if p == FPred::One { one } else { not(self, one) }
            }
            FPred::Ord | FPred::Uno => {
                let ea = self.fx(Float::FeqS, vec![x, x], rne);
                let eb = self.fx(Float::FeqS, vec![y, y], rne);
                let ord = self.rr(IOp::And, ea, eb);
                if p == FPred::Ord { ord } else { not(self, ord) }
            }
            FPred::Une => {
                let e = self.fx(Float::FeqS, vec![x, y], rne);
                not(self, e)
            }
            FPred::Ugt => {
                let t = self.fx(Float::FleS, vec![x, y], rne);
                not(self, t)
            }
            FPred::Uge => {
                let t = self.fx(Float::FltS, vec![x, y], rne);
                not(self, t)
            }
            FPred::Ult => {
                let t = self.fx(Float::FleS, vec![y, x], rne);
                not(self, t)
            }
            FPred::Ule => {
                let t = self.fx(Float::FltS, vec![y, x], rne);
                not(self, t)
            }
            FPred::False | FPred::True => unreachable!(),
        })
    }

    /// 软浮点比较：一个库函数（`__eq{sfx}2` …）的返回值与 0 比（`ueq` / `one` 要两个）。
    fn fcmp_soft(&mut self, sfx: &str, p: FPred, a: ValId, b: ValId) -> Result<R, Error> {
        let (x, y, ps) = (self.get(a)?, self.get(b)?, self.parts(self.ty(a))?);
        let call = |s: &mut Self, name: &str| -> Result<R, Error> { Ok(s.libcall(&format!("__{name}{sfx}2"), &[(x.clone(), ps.clone()), (y.clone(), ps.clone())], &[Part::X])?[0]) };
        let (name, cmp) = match p {
            FPred::Oeq => ("eq", IPredSoft::Eq),
            FPred::Une => ("ne", IPredSoft::Ne),
            FPred::Olt => ("lt", IPredSoft::Lt),
            FPred::Ole => ("le", IPredSoft::Le),
            FPred::Ogt => ("gt", IPredSoft::Gt),
            FPred::Oge => ("ge", IPredSoft::Ge),
            FPred::Uno => ("unord", IPredSoft::Ne),
            FPred::Ord => ("unord", IPredSoft::Eq),
            FPred::Ult => ("ge", IPredSoft::Lt),
            FPred::Ule => ("gt", IPredSoft::Le),
            FPred::Ugt => ("le", IPredSoft::Gt),
            FPred::Uge => ("lt", IPredSoft::Ge),
            FPred::Ueq | FPred::One => {
                let e = call(self, "eq")?;
                let u = call(self, "unord")?;
                let (e, u) = (IPredSoft::Eq.test(self, e), IPredSoft::Ne.test(self, u));
                return Ok(if p == FPred::Ueq {
                    self.rr(IOp::Or, e, u)
                } else {
                    let ne = self.ri(IOp::Xori, e, 1);
                    let ord = self.ri(IOp::Xori, u, 1);
                    self.rr(IOp::And, ne, ord)
                });
            }
            FPred::False | FPred::True => unreachable!(),
        };
        let r = call(self, name)?;
        Ok(cmp.test(self, r))
    }

    /// 与浮点相关的转换。软浮点（double；F 没开时 float）调 compiler-rt，名字的后缀按两边的类型拼。
    pub(super) fn fcast(&mut self, op: CastOp, a: ValId, to: Ty) -> Result<Vec<R>, Error> {
        let from = self.ty(a);
        let x = self.get(a)?;
        let wbits = |s: &Self, t: Ty| s.types().bits(t).unwrap_or(32);
        let (pf, pt) = (self.parts(from)?, self.parts(to)?);
        Ok(match op {
            CastOp::FpTrunc if self.double(from) && matches!(self.kind(to), Kind::Float) => self.libcall("__truncdfsf2", &[(x, pf)], &pt)?,
            CastOp::FpExt if matches!(self.kind(from), Kind::Float) && self.double(to) => self.libcall("__extendsfdf2", &[(x, pf)], &pt)?,
            CastOp::FpToSi | CastOp::FpToUi => {
                let signed = op == CastOp::FpToSi;
                let w = wbits(self, to);
                let u = if signed { "" } else { "uns" };
                match (self.soft(from), w > 32) {
                    (None, false) => {
                        let r = self.fx(if signed { Float::FcvtWS } else { Float::FcvtWuS }, x, Rm::Rtz);
                        vec![self.mask(r, w)]
                    }
                    (None, true) => self.libcall(&format!("__fix{u}sfdi"), &[(x, pf)], &PAIR)?,
                    (Some(sfx), false) => {
                        let r = self.libcall(&format!("__fix{u}{sfx}si"), &[(x, pf)], &[Part::X])?;
                        vec![self.mask(r[0], w)]
                    }
                    (Some(sfx), true) => self.libcall(&format!("__fix{u}{sfx}di"), &[(x, pf)], &PAIR)?,
                }
            }
            CastOp::SiToFp | CastOp::UiToFp => {
                let signed = op == CastOp::SiToFp;
                let w = wbits(self, from);
                let src = if w > 32 {
                    let (l, h) = self.pair(a)?;
                    vec![l, h]
                } else if signed {
                    vec![self.sext(x[0], w)]
                } else {
                    vec![x[0]]
                };
                let u = if signed { "" } else { "un" };
                let sfx = self.soft(to).unwrap_or("sf");
                match (self.soft(to), w > 32) {
                    (None, false) => {
                        let d = self.fr();
                        self.emit(MOp::Reg(if signed { Float::FcvtSW } else { Float::FcvtSWu }.into(), Rm::Dyn as u8), vec![d], src);
                        vec![d]
                    }
                    (_, true) => self.libcall(&format!("__float{u}di{sfx}"), &[(src, PAIR.to_vec())], &pt)?,
                    (Some(_), false) => self.libcall(&format!("__float{u}si{sfx}"), &[(src, vec![Part::X])], &pt)?,
                }
            }
            _ => return Self::bad(format!("不支持的转换 {op:?}：{:?} ⇒ {:?}", self.kind(from), self.kind(to))),
        })
    }
}

/// 软浮点比较函数的返回值怎么判（与 0 比）。
#[derive(Clone, Copy)]
enum IPredSoft {
    Eq,
    Ne,
    Lt,
    Le,
    Gt,
    Ge,
}

impl IPredSoft {
    fn test(self, s: &mut Isel<'_>, r: R) -> R {
        match self {
            Self::Eq => s.ri(IOp::Sltiu, r, 1),
            Self::Ne => s.rr(IOp::Sltu, R::ZERO, r),
            Self::Lt => s.ri(IOp::Srli, r, 31),
            Self::Ge => {
                let t = s.ri(IOp::Srli, r, 31);
                s.ri(IOp::Xori, t, 1)
            }
            Self::Gt => s.rr(IOp::Slt, R::ZERO, r),
            Self::Le => s.ri(IOp::Slti, r, 1),
        }
    }
}
