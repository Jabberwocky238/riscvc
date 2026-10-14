//! 浮点：`float` 用 F 扩展；`double` 没有硬件（FLEN = 32），全走 compiler-rt 的软浮点。
//! 比较的软化同 LLVM 的 `softenSetCCOperands`：无序版本借有序函数对 NaN 的返回值。
use super::{Error, Isel, Part, R};
use crate::codegen::mir::MOp;
use crate::ir::{BinOp, CastOp, FPred, Kind, Ty, ValId};
use crate::isa::{Op as IOp, Rm};

const PAIR: [Part; 2] = [Part::Lo, Part::Hi];

impl Isel<'_> {
    fn double(&self, t: Ty) -> bool {
        matches!(self.kind(t), Kind::Double)
    }

    /// `op fd, a, b`（F 扩展）。
    fn ff(&mut self, op: IOp, a: R, b: R, rm: Rm) -> R {
        let d = self.fr();
        self.emit(MOp::Reg(op, rm as u8), vec![d], vec![a, b]);
        d
    }

    /// 结果是整数的浮点指令（比较、`fclass`、`fcvt.w.s` …）。
    fn fx(&mut self, op: IOp, uses: Vec<R>, rm: Rm) -> R {
        let d = self.xr();
        self.emit(MOp::Reg(op, rm as u8), vec![d], uses);
        d
    }

    pub(super) fn fbinary(&mut self, op: BinOp, a: ValId, b: ValId) -> Result<Vec<R>, Error> {
        let t = self.ty(a);
        if self.double(t) {
            let name = match op {
                BinOp::FAdd => "__adddf3",
                BinOp::FSub => "__subdf3",
                BinOp::FMul => "__muldf3",
                BinOp::FDiv => "__divdf3",
                BinOp::FRem => "fmod",
                _ => return Self::bad(format!("double 不支持 {op:?}")),
            };
            let (x, y) = (self.get(a)?, self.get(b)?);
            return self.libcall(name, &[(x, PAIR.to_vec()), (y, PAIR.to_vec())], &PAIR);
        }
        if !matches!(self.kind(t), Kind::Float) {
            return Self::bad(format!("浮点运算不支持 {:?}", self.kind(t)));
        }
        let (x, y) = (self.get1(a)?, self.get1(b)?);
        let iop = match op {
            BinOp::FAdd => IOp::FaddS,
            BinOp::FSub => IOp::FsubS,
            BinOp::FMul => IOp::FmulS,
            BinOp::FDiv => IOp::FdivS,
            BinOp::FRem => return self.libcall("fmodf", &[(vec![x], vec![Part::F]), (vec![y], vec![Part::F])], &[Part::F]),
            _ => return Self::bad(format!("float 不支持 {op:?}")),
        };
        Ok(vec![self.ff(iop, x, y, Rm::Dyn)])
    }

    pub(super) fn fneg(&mut self, a: ValId) -> Result<Vec<R>, Error> {
        if self.double(self.ty(a)) {
            let (lo, hi) = self.pair(a)?;
            let sign = self.li(i32::MIN);
            return Ok(vec![lo, self.rr(IOp::Xor, hi, sign)]);
        }
        let x = self.get1(a)?;
        Ok(vec![self.ff(IOp::FsgnjnS, x, x, Rm::Rne)])
    }

    /// 浮点比较 ⇒ 0 / 1。
    pub(super) fn fcmp(&mut self, p: FPred, a: ValId, b: ValId) -> Result<R, Error> {
        match p {
            FPred::False => return Ok(R::ZERO),
            FPred::True => return Ok(self.li(1)),
            _ => {}
        }
        if self.double(self.ty(a)) {
            return self.fcmp_double(p, a, b);
        }
        let (x, y) = (self.get1(a)?, self.get1(b)?);
        let not = |s: &mut Self, r: R| s.ri(IOp::Xori, r, 1);
        let rne = Rm::Rne;
        Ok(match p {
            FPred::Oeq => self.fx(IOp::FeqS, vec![x, y], rne),
            FPred::Olt => self.fx(IOp::FltS, vec![x, y], rne),
            FPred::Ole => self.fx(IOp::FleS, vec![x, y], rne),
            FPred::Ogt => self.fx(IOp::FltS, vec![y, x], rne),
            FPred::Oge => self.fx(IOp::FleS, vec![y, x], rne),
            FPred::One | FPred::Ueq => {
                let l = self.fx(IOp::FltS, vec![x, y], rne);
                let g = self.fx(IOp::FltS, vec![y, x], rne);
                let one = self.rr(IOp::Or, l, g);
                if p == FPred::One { one } else { not(self, one) }
            }
            FPred::Ord | FPred::Uno => {
                let ea = self.fx(IOp::FeqS, vec![x, x], rne);
                let eb = self.fx(IOp::FeqS, vec![y, y], rne);
                let ord = self.rr(IOp::And, ea, eb);
                if p == FPred::Ord { ord } else { not(self, ord) }
            }
            FPred::Une => {
                let e = self.fx(IOp::FeqS, vec![x, y], rne);
                not(self, e)
            }
            FPred::Ugt => {
                let t = self.fx(IOp::FleS, vec![x, y], rne);
                not(self, t)
            }
            FPred::Uge => {
                let t = self.fx(IOp::FltS, vec![x, y], rne);
                not(self, t)
            }
            FPred::Ult => {
                let t = self.fx(IOp::FleS, vec![y, x], rne);
                not(self, t)
            }
            FPred::Ule => {
                let t = self.fx(IOp::FltS, vec![y, x], rne);
                not(self, t)
            }
            FPred::False | FPred::True => unreachable!(),
        })
    }

    /// double 比较：一个库函数的返回值与 0 比（`ueq` / `one` 要两个）。
    fn fcmp_double(&mut self, p: FPred, a: ValId, b: ValId) -> Result<R, Error> {
        let (x, y) = (self.get(a)?, self.get(b)?);
        let call = |s: &mut Self, name: &str| -> Result<R, Error> { Ok(s.libcall(name, &[(x.clone(), PAIR.to_vec()), (y.clone(), PAIR.to_vec())], &[Part::X])?[0]) };
        let (name, cmp) = match p {
            FPred::Oeq => ("__eqdf2", IPredSoft::Eq),
            FPred::Une => ("__nedf2", IPredSoft::Ne),
            FPred::Olt => ("__ltdf2", IPredSoft::Lt),
            FPred::Ole => ("__ledf2", IPredSoft::Le),
            FPred::Ogt => ("__gtdf2", IPredSoft::Gt),
            FPred::Oge => ("__gedf2", IPredSoft::Ge),
            FPred::Uno => ("__unorddf2", IPredSoft::Ne),
            FPred::Ord => ("__unorddf2", IPredSoft::Eq),
            FPred::Ult => ("__gedf2", IPredSoft::Lt),
            FPred::Ule => ("__gtdf2", IPredSoft::Le),
            FPred::Ugt => ("__ledf2", IPredSoft::Gt),
            FPred::Uge => ("__ltdf2", IPredSoft::Ge),
            FPred::Ueq | FPred::One => {
                let e = call(self, "__eqdf2")?;
                let u = call(self, "__unorddf2")?;
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

    /// 与浮点相关的转换。
    pub(super) fn fcast(&mut self, op: CastOp, a: ValId, to: Ty) -> Result<Vec<R>, Error> {
        let from = self.ty(a);
        let x = self.get(a)?;
        let wbits = |s: &Self, t: Ty| s.types().bits(t).unwrap_or(32);
        Ok(match op {
            CastOp::FpTrunc if self.double(from) && matches!(self.kind(to), Kind::Float) => self.libcall("__truncdfsf2", &[(x, PAIR.to_vec())], &[Part::F])?,
            CastOp::FpExt if matches!(self.kind(from), Kind::Float) && self.double(to) => self.libcall("__extendsfdf2", &[(x, vec![Part::F])], &PAIR)?,
            CastOp::FpToSi | CastOp::FpToUi => {
                let signed = op == CastOp::FpToSi;
                let w = wbits(self, to);
                match (self.double(from), w > 32) {
                    (false, false) => {
                        let r = self.fx(if signed { IOp::FcvtWS } else { IOp::FcvtWuS }, x, Rm::Rtz);
                        vec![self.mask(r, w)]
                    }
                    (false, true) => self.libcall(if signed { "__fixsfdi" } else { "__fixunssfdi" }, &[(x, vec![Part::F])], &PAIR)?,
                    (true, false) => {
                        let r = self.libcall(if signed { "__fixdfsi" } else { "__fixunsdfsi" }, &[(x, PAIR.to_vec())], &[Part::X])?;
                        vec![self.mask(r[0], w)]
                    }
                    (true, true) => self.libcall(if signed { "__fixdfdi" } else { "__fixunsdfdi" }, &[(x, PAIR.to_vec())], &PAIR)?,
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
                match (self.double(to), w > 32) {
                    (false, false) => {
                        let d = self.fr();
                        self.emit(MOp::Reg(if signed { IOp::FcvtSW } else { IOp::FcvtSWu }, Rm::Dyn as u8), vec![d], src);
                        vec![d]
                    }
                    (false, true) => self.libcall(if signed { "__floatdisf" } else { "__floatundisf" }, &[(src, PAIR.to_vec())], &[Part::F])?,
                    (true, false) => self.libcall(if signed { "__floatsidf" } else { "__floatunsidf" }, &[(src, vec![Part::X])], &PAIR)?,
                    (true, true) => self.libcall(if signed { "__floatdidf" } else { "__floatundidf" }, &[(src, PAIR.to_vec())], &PAIR)?,
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
