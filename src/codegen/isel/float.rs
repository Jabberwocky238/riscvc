//! 浮点：`float` 用 F 扩展（`f` feature 没开就同 double 走软浮点）；`double` 没有硬件（FLEN = 32），全走 compiler-rt。
//! 比较的软化同 LLVM 的 `softenSetCCOperands`：无序版本借有序函数对 NaN 的返回值。
//!
//! half / bfloat（同 LLVM 的 SoftPromoteHalf）：平时是整数寄存器里零扩展的 16 位；运算、比较、与整数互转都先提升到
//! float（half：`__extendhfsf2`，bfloat：左移 16 位），float 上做完再舍入回来（`__truncsfhf2` / `__truncsfbf2`）；
//! 取负、绝对值、copysign 按位做。
//!
//! 内层（`farith` / `fcmp_on` / `fptoint` / `inttofp`）按部件做，外层取值、把 16 位的先提升。
use super::{Error, Isel, Part, R};
use crate::codegen::mir::MOp;
use crate::ir::{BinOp, CastOp, FPred, Kind, Ty, Types, ValId};
use crate::feature::{Float};
use crate::isa::{Opcode, Rv32i as IOp, Rm};

const PAIR: [Part; 2] = [Part::Lo, Part::Hi];

impl Isel<'_> {
    /// `op fd, a, b`（F 扩展）。
    fn ff(&mut self, op: impl Into<Opcode>, a: R, b: R, rm: Rm) -> R {
        let op: Opcode = op.into();
        let d = self.fr();
        self.emit(MOp::Reg(op, rm as u8), &[d], &[a, b]);
        d
    }

    /// 结果是整数的浮点指令（比较、`fclass`、`fcvt.w.s` …）。
    pub(super) fn fx(&mut self, op: impl Into<Opcode>, uses: Vec<R>, rm: Rm) -> R {
        let op: Opcode = op.into();
        let d = self.xr();
        self.emit(MOp::Reg(op, rm as u8), &[d], &uses);
        d
    }

    /// double 的位型 ⇒ 同值的 fp128 位型（加宽是精确的：指数换偏置、尾数左移 60 位，次正规数规格化，NaN 保留载荷）。
    /// ⚠ 前端的 fp128 常量按 double 存。
    pub(super) const fn quad(bits: u64) -> u128 {
        let sign = ((bits >> 63) as u128) << 127;
        let (e, m) = ((bits >> 52) & 0x7ff, bits & ((1 << 52) - 1));
        let (qe, qm): (u128, u128) = match (e, m) {
            (0, 0) => (0, 0),
            (0x7ff, _) => (0x7fff, (m as u128) << 60),
            // 次正规：值 = m · 2⁻¹⁰⁷⁴，最高位在第 p 位
            (0, _) => {
                let p = 63 - m.leading_zeros();
                ((p + 16383 - 1074) as u128, ((m as u128) << (112 - p)) & ((1 << 112) - 1))
            }
            _ => ((e + 16383 - 1023) as u128, (m as u128) << 60),
        };
        sign | qe << 112 | qm
    }

    /// libm 的 float 取整函数 ⇒ 舍入模式：floor rdn、ceil rup、trunc rtz、round rmm、roundeven rne、rint / nearbyint 跟 frm。
    /// libm 的基名 + compiler-rt 的类型后缀（`sf` / `df` / `tf`）⇒ 函数名：float `floorf`、double `floor`、fp128 `floorl`；
    /// powi ⇒ `__powi{sf,df,tf}2`。
    pub(super) fn libm_name(base: &str, suffix: &str) -> String {
        match (base, suffix) {
            ("powi", s) => format!("__powi{s}2"),
            (b, "sf") => format!("{b}f"),
            (b, "tf") => format!("{b}l"),
            (b, _) => String::from(b),
        }
    }

    /// 取整一类 libm（基名）⇒ 舍入模式。
    pub(super) fn round_mode(name: &str) -> Option<Rm> {
        Some(match name {
            "floor" => Rm::Rdn,
            "ceil" => Rm::Rup,
            "trunc" => Rm::Rtz,
            "round" => Rm::Rmm,
            "roundeven" => Rm::Rne,
            "rint" | "nearbyint" => Rm::Dyn,
            _ => return None,
        })
    }

    /// float 取整（F 扩展，同 LLVM 的 lowerFTRUNC_FCEIL_FFLOOR_FROUND）：|x| < 2²³ ⇒ `fcvt.w.s` 再 `fcvt.s.w`（同一舍入模式），
    /// 再拿回 x 的符号（−0.5 取整得 −0）；否则（已经是整数、inf、NaN）原样。
    pub(super) fn fround(&mut self, x: R, rm: Rm) -> R {
        let k = self.li(0x4b00_0000);
        let big = self.fr();
        self.emit(MOp::Reg(Float::FmvWX.into(), 7), &[big], &[k]);
        let ax = self.ff(Float::FsgnjxS, x, x, Rm::Rne);
        let small = self.fx(Float::FltS, vec![ax, big], Rm::Rne);
        let i = self.fx(Float::FcvtWS, vec![x], rm);
        let f = self.fr();
        self.emit(MOp::Reg(Float::FcvtSW.into(), rm as u8), &[f], &[i]);
        let r = self.ff(Float::FsgnjS, f, x, Rm::Rne);
        self.select_parts(IOp::Bne, small, R::ZERO, &[r], &[x])[0]
    }

    /// compiler-rt 名字里的类型后缀（不管有没有硬件）：float `sf`、double `df`、fp128 `tf`。
    pub(super) fn fsuffix(&self, t: Ty) -> &'static str {
        match self.kind(t) {
            Kind::Double => "df",
            Kind::Fp128 => "tf",
            _ => "sf",
        }
    }

    /// 16 位浮点：`Some(是 bfloat)`。
    fn f16_kind(&self, t: Ty) -> Option<bool> {
        match self.kind(t) {
            Kind::Half => Some(false),
            Kind::BFloat => Some(true),
            _ => None,
        }
    }

    /// 16 位浮点 ⇒ float 的部件（half：`__extendhfsf2`，实参按调用约定；bfloat：左移 16 位就是 float 的位型）。
    pub(super) fn ext16(&mut self, x: R, bf: bool) -> Result<Vec<R>, Error> {
        let pf = self.parts(Types::FLOAT)?;
        if bf {
            let w = self.ri(IOp::Slli, x, 16);
            if !self.float() {
                return Ok(vec![w]);
            }
            let f = self.fr();
            self.emit(MOp::Reg(Float::FmvWX.into(), 7), &[f], &[w]);
            return Ok(vec![f]);
        }
        // 同 llc：开了 F 时 16 位原样放进 fa0（`fmv.w.x`，⛔ NaN-box —— 只有参数 / 返回值才 box）
        let arg = if self.float() {
            let f = self.fr();
            self.emit(MOp::Reg(Float::FmvWX.into(), 7), &[f], &[x]);
            (vec![f], vec![Part::F])
        } else {
            (vec![x], vec![Part::X])
        };
        self.libcall("__extendhfsf2", &[arg], &pf)
    }

    /// float / double 的部件 ⇒ 16 位浮点（`__trunc{sf,df}{hf,bf}2`；返回值按调用约定取回零扩展的 16 位）。
    pub(super) fn trunc16(&mut self, from: Ty, x: Vec<R>, bf: bool) -> Result<R, Error> {
        let name = format!("__trunc{}{}2", self.fsuffix(from), if bf { "bf" } else { "hf" });
        let pf = self.parts(from)?;
        if self.float() {
            let r = self.libcall(&name, &[(x, pf)], &[Part::F])?;
            return Ok(self.unbox(r[0]));
        }
        let r = self.libcall(&name, &[(x, pf)], &[Part::X])?;
        Ok(self.mask(r[0], 16))
    }

    pub(super) fn fbinary(&mut self, op: BinOp, a: ValId, b: ValId) -> Result<Vec<R>, Error> {
        let t = self.ty(a);
        if let Some(bf) = self.f16_kind(t) {
            let (x, y) = (self.get1(a)?, self.get1(b)?);
            let (x, y) = (self.ext16(x, bf)?, self.ext16(y, bf)?);
            let r = self.farith(op, Types::FLOAT, x, y)?;
            return Ok(vec![self.trunc16(Types::FLOAT, r, bf)?]);
        }
        let (x, y) = (self.get(a)?, self.get(b)?);
        self.farith(op, t, x, y)
    }

    /// 浮点四则（`t` 是 float / double；部件给定）。
    pub(super) fn farith(&mut self, op: BinOp, t: Ty, x: Vec<R>, y: Vec<R>) -> Result<Vec<R>, Error> {
        if let Some(sfx) = self.soft(t) {
            let name = match op {
                BinOp::FAdd => format!("__add{sfx}3"),
                BinOp::FSub => format!("__sub{sfx}3"),
                BinOp::FMul => format!("__mul{sfx}3"),
                BinOp::FDiv => format!("__div{sfx}3"),
                BinOp::FRem => String::from(match sfx {
                    "df" => "fmod",
                    "tf" => "fmodl",
                    _ => "fmodf",
                }),
                _ => return Self::bad(format!("软浮点不支持 {op:?}")),
            };
            let ps = self.parts(t)?;
            return self.libcall(&name, &[(x, ps.clone()), (y, ps.clone())], &ps);
        }
        if !matches!(self.kind(t), Kind::Float) {
            return Self::bad(format!("浮点运算不支持 {:?}", self.kind(t)));
        }
        let (x, y) = (x[0], y[0]);
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
        if self.f16_kind(self.ty(a)).is_some() {
            let x = self.get1(a)?;
            let sign = self.li(0x8000);
            return Ok(vec![self.rr(IOp::Xor, x, sign)]);
        }
        // 软浮点（float / double / fp128 在整数寄存器里）：翻顶字的符号位
        if self.soft(self.ty(a)).is_some() {
            let mut x = self.get(a)?;
            let sign = self.li(i32::MIN);
            let n = x.len();
            x[n - 1] = self.rr(IOp::Xor, x[n - 1], sign);
            return Ok(x);
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
        let t = self.ty(a);
        if let Some(bf) = self.f16_kind(t) {
            let (x, y) = (self.get1(a)?, self.get1(b)?);
            let (x, y) = (self.ext16(x, bf)?, self.ext16(y, bf)?);
            return self.fcmp_on(p, Types::FLOAT, x, y);
        }
        let (x, y) = (self.get(a)?, self.get(b)?);
        self.fcmp_on(p, t, x, y)
    }

    /// 浮点比较（`t` 是 float / double；部件给定）⇒ 0 / 1。
    fn fcmp_on(&mut self, p: FPred, t: Ty, x: Vec<R>, y: Vec<R>) -> Result<R, Error> {
        if let Some(sfx) = self.soft(t) {
            return self.fcmp_soft(sfx, p, t, x, y);
        }
        let (x, y) = (x[0], y[0]);
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
    fn fcmp_soft(&mut self, sfx: &str, p: FPred, t: Ty, x: Vec<R>, y: Vec<R>) -> Result<R, Error> {
        let ps = self.parts(t)?;
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

    /// 与浮点相关的转换。软浮点（double；F 没开时 float）调 compiler-rt，名字的后缀按两边的类型拼；
    /// 16 位浮点经 float（见模块说明）。
    pub(super) fn fcast(&mut self, op: CastOp, from: Ty, x: Vec<R>, to: Ty) -> Result<Vec<R>, Error> {
        let wbits = |s: &Self, t: Ty| s.types().bits(t).unwrap_or(32);
        let (pf, pt) = (self.parts(from)?, self.parts(to)?);
        match (op, self.f16_kind(from), self.f16_kind(to)) {
            // 从 16 位：先提升成 float
            (CastOp::FpExt | CastOp::FpTrunc | CastOp::FpToSi | CastOp::FpToUi, Some(bf), t16) => {
                let f = self.ext16(x[0], bf)?;
                return match (op, t16) {
                    (CastOp::FpToSi | CastOp::FpToUi, _) => self.fptoint(op == CastOp::FpToSi, Types::FLOAT, f, wbits(self, to)),
                    (_, Some(bt)) => Ok(vec![self.trunc16(Types::FLOAT, f, bt)?]),
                    _ if !matches!(self.kind(to), Kind::Float) => self.libcall(&format!("__extendsf{}2", self.fsuffix(to)), &[(f, self.parts(Types::FLOAT)?)], &pt),
                    _ => Ok(f),
                };
            }
            // 到 16 位：float / double 舍入；整数先转成 float
            (CastOp::FpTrunc, None, Some(bt)) => return Ok(vec![self.trunc16(from, x, bt)?]),
            (CastOp::SiToFp | CastOp::UiToFp, _, Some(bt)) => {
                let f = self.inttofp(op == CastOp::SiToFp, from, x, Types::FLOAT)?;
                return Ok(vec![self.trunc16(Types::FLOAT, f, bt)?]);
            }
            _ => {}
        }
        Ok(match op {
            // float / double / fp128 之间：`__trunc{从}{到}2`、`__extend{从}{到}2`
            CastOp::FpTrunc => self.libcall(&format!("__trunc{}{}2", self.fsuffix(from), self.fsuffix(to)), &[(x, pf)], &pt)?,
            CastOp::FpExt => self.libcall(&format!("__extend{}{}2", self.fsuffix(from), self.fsuffix(to)), &[(x, pf)], &pt)?,
            CastOp::FpToSi | CastOp::FpToUi => self.fptoint(op == CastOp::FpToSi, from, x, wbits(self, to))?,
            CastOp::SiToFp | CastOp::UiToFp => self.inttofp(op == CastOp::SiToFp, from, x, to)?,
            _ => return Self::bad(format!("不支持的转换 {op:?}：{:?} ⇒ {:?}", self.kind(from), self.kind(to))),
        })
    }

    /// 整数过 compiler-rt 转换函数时的宽度：（名字里的 `si` / `di` / `ti`, 字数, 部件）。
    fn conv_width(w: u32) -> Result<(&'static str, u32, Vec<Part>), Error> {
        Ok(match w {
            ..=32 => ("si", 1, vec![Part::X]),
            ..=64 => ("di", 2, PAIR.to_vec()),
            ..=128 => ("ti", 4, vec![Part::X; 4]),
            _ => return Self::bad(format!("i{w} 与浮点的转换还没做")),
        })
    }

    /// float / double（部件给定）⇒ `w` 位整数（向零取整）。
    fn fptoint(&mut self, signed: bool, from: Ty, x: Vec<R>, w: u32) -> Result<Vec<R>, Error> {
        let pf = self.parts(from)?;
        let u = if signed { "" } else { "uns" };
        let (size, words, pt) = Self::conv_width(w)?;
        let r = match (self.soft(from), words) {
            (None, 1) => vec![self.fx(if signed { Float::FcvtWS } else { Float::FcvtWuS }, x, Rm::Rtz)],
            (sfx, _) => self.libcall(&format!("__fix{u}{}{size}", sfx.unwrap_or("sf")), &[(x, pf)], &pt)?,
        };
        Ok(self.int_cast(CastOp::Trunc, &r, 32 * words, w))
    }

    /// 整数（`from` 的部件 `x`）⇒ 浮点 `to` 的部件。
    fn inttofp(&mut self, signed: bool, from: Ty, x: Vec<R>, to: Ty) -> Result<Vec<R>, Error> {
        let w = self.types().bits(from).unwrap_or(32);
        let pt = self.parts(to)?;
        let (size, words, pf) = Self::conv_width(w)?;
        let src = self.int_cast(if signed { CastOp::SExt } else { CastOp::ZExt }, &x, w, 32 * words);
        let u = if signed { "" } else { "un" };
        Ok(match (self.soft(to), words) {
            (None, 1) => {
                let d = self.fr();
                self.emit(MOp::Reg(if signed { Float::FcvtSW } else { Float::FcvtSWu }.into(), Rm::Dyn as u8), &[d], &src);
                vec![d]
            }
            (sfx, _) => self.libcall(&format!("__float{u}{size}{}", sfx.unwrap_or("sf")), &[(src, pf)], &pt)?,
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
