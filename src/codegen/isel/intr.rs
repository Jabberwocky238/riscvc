//! `llvm.intr.*`。没有 Zbb：数位用无分支的 SWAR（乘法在 M 扩展里）。
use super::{Error, Isel, Part, R};
use crate::codegen::mir::{Base, MOp};
use crate::ir::{IPred, Intr, Kind, Ty, ValId};
use crate::feature::{Zmmul, Float};
use crate::isa::{Opcode, Rv32i as IOp, Rm, Table};

const PAIR: [Part; 2] = [Part::Lo, Part::Hi];

impl Isel<'_> {
    fn bits_of(&self, v: ValId) -> u32 {
        self.types().bits(self.ty(v)).unwrap_or(32)
    }

    /// 32 位的 1 的个数。
    fn pop32(&mut self, v: R) -> R {
        let k55 = self.li(0x5555_5555);
        let k33 = self.li(0x3333_3333);
        let k0f = self.li(0x0f0f_0f0f);
        let k01 = self.li(0x0101_0101);
        let t = self.ri(IOp::Srli, v, 1);
        let t = self.rr(IOp::And, t, k55);
        let v = self.rr(IOp::Sub, v, t);
        let a = self.rr(IOp::And, v, k33);
        let b = self.ri(IOp::Srli, v, 2);
        let b = self.rr(IOp::And, b, k33);
        let v = self.rr(IOp::Add, a, b);
        let t = self.ri(IOp::Srli, v, 4);
        let v = self.rr(IOp::Add, v, t);
        let v = self.rr(IOp::And, v, k0f);
        let v = self.rr(Zmmul::Mul, v, k01);
        self.ri(IOp::Srli, v, 24)
    }

    /// 32 位前导零个数（0 ⇒ 32）。
    fn ctlz32(&mut self, x: R) -> R {
        let mut t = x;
        for s in [1, 2, 4, 8, 16] {
            let u = self.ri(IOp::Srli, t, s);
            t = self.rr(IOp::Or, t, u);
        }
        let n = self.ri(IOp::Xori, t, -1);
        self.pop32(n)
    }

    /// 32 位尾随零个数（0 ⇒ 32）。
    fn cttz32(&mut self, x: R) -> R {
        let neg = self.rr(IOp::Sub, R::ZERO, x);
        let t = self.rr(IOp::And, x, neg);
        let t = self.ri(IOp::Addi, t, -1);
        self.pop32(t)
    }

    fn bswap32(&mut self, x: R) -> R {
        let ff00 = self.li(0xff00);
        let b0 = self.ri(IOp::Slli, x, 24);
        let b1 = self.rr(IOp::And, x, ff00);
        let b1 = self.ri(IOp::Slli, b1, 8);
        let b2 = self.ri(IOp::Srli, x, 8);
        let b2 = self.rr(IOp::And, b2, ff00);
        let b3 = self.ri(IOp::Srli, x, 24);
        let a = self.rr(IOp::Or, b0, b1);
        let b = self.rr(IOp::Or, b2, b3);
        self.rr(IOp::Or, a, b)
    }

    /// 按 0 / 1 的 `c` 在两组部件里挑。
    pub(super) fn pick(&mut self, c: R, a: &[R], b: &[R]) -> Vec<R> {
        self.select_parts(IOp::Bne, c, R::ZERO, a, b)
    }

    /// 位反转（32 位）：相邻 1 / 2 / 4 位两两交换，再按字节反转（同 LLVM 没有 Zbb 时的展开）。
    fn rev32(&mut self, x: R) -> R {
        let mut x = x;
        for (s, m) in [(1, 0x5555_5555u32), (2, 0x3333_3333), (4, 0x0f0f_0f0f)] {
            let m = self.li(m.cast_signed());
            let a = self.ri(IOp::Srli, x, s);
            let a = self.rr(IOp::And, a, m);
            let b = self.rr(IOp::And, x, m);
            let b = self.ri(IOp::Slli, b, s);
            x = self.rr(IOp::Or, a, b);
        }
        self.bswap32(x)
    }

    /// 64 位的饱和加减：溢出（借位）就换成界值。有符号的界看被加数的符号：非负 ⇒ MAX，负 ⇒ MIN。
    fn sat64(&mut self, i: &Intr, args: &[ValId]) -> Result<Vec<R>, Error> {
        let (a, b) = (self.pair(args[0])?, self.pair(args[1])?);
        let (r, over, bound) = match i {
            Intr::UAddSat => {
                let r = self.add64(a, b);
                let m = self.li(-1);
                (r, self.ltu64(r, a), [m, m])
            }
            Intr::USubSat => (self.sub64(a, b), self.ltu64(a, b), [R::ZERO, R::ZERO]),
            _ => {
                let sub = *i == Intr::SSubSat;
                let r = if sub { self.sub64(a, b) } else { self.add64(a, b) };
                let over = if sub { self.sign_of_and(a.1, b.1, a.1, r.1) } else { self.sign_of_and(r.1, a.1, r.1, b.1) };
                let sa = self.ri(IOp::Srai, a.1, 31);
                let lo = self.ri(IOp::Xori, sa, -1);
                let k = self.li(i32::MAX);
                let hi = self.rr(IOp::Xor, sa, k);
                (r, over, [lo, hi])
            }
        };
        Ok(self.pick(over, &bound, &[r.0, r.1]))
    }

    /// 64 位的 `*.with.overflow`：（结果两半, 溢出 0 / 1）。
    fn overflow64(&mut self, i: &Intr, args: &[ValId]) -> Result<Vec<R>, Error> {
        let (a, b) = (self.pair(args[0])?, self.pair(args[1])?);
        let sign = |s: &mut Self, x: R| s.ri(IOp::Srli, x, 31);
        let (r, ovf) = match i {
            Intr::UAddOv => {
                let r = self.add64(a, b);
                (r, self.ltu64(r, a))
            }
            Intr::USubOv => (self.sub64(a, b), self.ltu64(a, b)),
            // 有符号加减：结果与两个操作数的符号关系（高半的符号位）
            Intr::SAddOv => {
                let r = self.add64(a, b);
                let t = self.sign_of_and(r.1, a.1, r.1, b.1);
                (r, t)
            }
            Intr::SSubOv => {
                let r = self.sub64(a, b);
                let t = self.sign_of_and(a.1, b.1, a.1, r.1);
                (r, t)
            }
            Intr::UMulOv => {
                let r = self.mul64(a, b)?;
                (r, self.umul64_overflow(a, b))
            }
            _ => {
                // 有符号乘：两边取绝对值做无符号乘；积放不进 63 位就溢出，⚠ 积为负时 2⁶³ 本身还放得下
                let r = self.mul64(a, b)?;
                let (sa, sb) = (self.ri(IOp::Srai, a.1, 31), self.ri(IOp::Srai, b.1, 31));
                let abs = |s: &mut Self, (l, h): (R, R), m: R| {
                    let (l, h) = (s.rr(IOp::Xor, l, m), s.rr(IOp::Xor, h, m));
                    s.sub64((l, h), (m, m))
                };
                let (ua, ub) = (abs(self, a, sa), abs(self, b, sb));
                let wide = self.umul64_overflow(ua, ub);
                let p = self.mul64(ua, ub)?;
                let neg = self.rr(IOp::Xor, sa, sb);
                let top = sign(self, p.1);
                // p == 2⁶³：高半是 0x80000000、低半是 0
                let k = self.li(i32::MIN);
                let d = self.rr(IOp::Xor, p.1, k);
                let d = self.rr(IOp::Or, d, p.0);
                let exact = self.ri(IOp::Sltiu, d, 1);
                let allowed = self.rr(IOp::And, exact, neg);
                let allowed = self.ri(IOp::Andi, allowed, 1);
                let lost = self.rr(IOp::Sub, top, allowed);
                let lost = self.rr(IOp::Sltu, R::ZERO, lost);
                (r, self.rr(IOp::Or, wide, lost))
            }
        };
        Ok(vec![r.0, r.1, ovf])
    }

    /// 无符号 64 × 64 的积放不进 64 位 ⇒ 1：两个高半都非零，或交叉项的高半非零，或高半累加进位。
    fn umul64_overflow(&mut self, (al, ah): (R, R), (bl, bh): (R, R)) -> R {
        let (na, nb) = (self.rr(IOp::Sltu, R::ZERO, ah), self.rr(IOp::Sltu, R::ZERO, bh));
        let both = self.rr(IOp::And, na, nb);
        let h1 = self.rr(Zmmul::Mulhu, ah, bl);
        let h2 = self.rr(Zmmul::Mulhu, al, bh);
        let h = self.rr(IOp::Or, h1, h2);
        let cross = self.rr(IOp::Sltu, R::ZERO, h);
        // 交叉项的低半与 mulhu(al, bl) 相加：高半进位
        let (m1, m2) = (self.rr(Zmmul::Mul, ah, bl), self.rr(Zmmul::Mul, al, bh));
        let t = self.rr(IOp::Add, m1, m2);
        let c1 = self.rr(IOp::Sltu, t, m1);
        let h0 = self.rr(Zmmul::Mulhu, al, bl);
        let hi = self.rr(IOp::Add, h0, t);
        let c2 = self.rr(IOp::Sltu, hi, t);
        let c = self.rr(IOp::Or, c1, c2);
        let o = self.rr(IOp::Or, both, cross);
        self.rr(IOp::Or, o, c)
    }

    /// 32 位的溢出位（`(x ^ y) & (x ^ z)` 的符号位）⇒ 0 / 1。
    fn sign_of_and(&mut self, a: R, b: R, c: R, d: R) -> R {
        let x = self.rr(IOp::Xor, a, b);
        let y = self.rr(IOp::Xor, c, d);
        let t = self.rr(IOp::And, x, y);
        self.ri(IOp::Srli, t, 31)
    }

    /// 二元 intrinsic 的两个窄整数操作数（≤ 32 位；有符号的先扩展）。
    fn two(&mut self, args: &[ValId], signed: bool) -> Result<(R, R, u32), Error> {
        let w = self.bits_of(args[0]);
        if w > 32 {
            return Self::bad(format!("i{w} 的这个 intrinsic 还没做"));
        }
        let (a, b) = (self.get1(args[0])?, self.get1(args[1])?);
        Ok(if signed { (self.sext(a, w), self.sext(b, w), w) } else { (a, b, w) })
    }

    #[allow(clippy::too_many_lines, reason = "一个 intrinsic 一支")]
    pub(super) fn intrinsic(&mut self, i: &Intr, args: &[ValId], rt: Option<Ty>) -> Result<Vec<R>, Error> {
        let first_double = args.first().is_some_and(|a| matches!(self.kind(self.ty(*a)), Kind::Double));
        // F 没开时的 float：一个整数部件，按位做 / 调 libm
        let soft_float = args.first().is_some_and(|a| self.soft(self.ty(*a)) == Some("sf"));
        // 向量的位操作还没逐 lane 做：⛔ 只算第一条 lane
        if matches!(i, Intr::Ctlz | Intr::Cttz | Intr::Ctpop | Intr::Bswap | Intr::Bitreverse | Intr::Abs | Intr::Fshl | Intr::Fshr)
            && let Some(a) = args.first()
            && matches!(self.kind(self.ty(*a)), Kind::Vector(..))
        {
            return Self::bad(format!("向量的 {i:?} 还没做"));
        }
        Ok(match i {
            Intr::Nop | Intr::VaEnd => Vec::new(),
            Intr::Expect => self.get(args[0])?,
            Intr::Ctlz | Intr::Cttz | Intr::Ctpop => {
                let w = self.bits_of(args[0]);
                if w > 32 {
                    let (lo, hi) = self.pair(args[0])?;
                    let r = match i {
                        Intr::Ctlz => {
                            let ch = self.ctlz32(hi);
                            let cl = self.ctlz32(lo);
                            let hz = self.ri(IOp::Sltiu, hi, 1);
                            let m = self.rr(IOp::Sub, R::ZERO, hz);
                            let t = self.rr(IOp::And, cl, m);
                            self.rr(IOp::Add, ch, t)
                        }
                        Intr::Cttz => {
                            let cl = self.cttz32(lo);
                            let ch = self.cttz32(hi);
                            let lz = self.ri(IOp::Sltiu, lo, 1);
                            let m = self.rr(IOp::Sub, R::ZERO, lz);
                            let t = self.rr(IOp::And, ch, m);
                            self.rr(IOp::Add, cl, t)
                        }
                        _ => {
                            let a = self.pop32(lo);
                            let b = self.pop32(hi);
                            self.rr(IOp::Add, a, b)
                        }
                    };
                    vec![r, R::ZERO]
                } else {
                    let x = self.get1(args[0])?;
                    vec![match i {
                        Intr::Ctlz => {
                            let c = self.ctlz32(x);
                            if w < 32 { self.ri(IOp::Addi, c, -(32 - w as i32)) } else { c }
                        }
                        Intr::Cttz => {
                            let x = if w < 32 {
                                let top = self.li(1 << w);
                                self.rr(IOp::Or, x, top)
                            } else {
                                x
                            };
                            self.cttz32(x)
                        }
                        _ => self.pop32(x),
                    }]
                }
            }
            Intr::Bswap => match self.bits_of(args[0]) {
                16 => {
                    let x = self.get1(args[0])?;
                    let a = self.ri(IOp::Andi, x, 0xff);
                    let a = self.ri(IOp::Slli, a, 8);
                    let b = self.ri(IOp::Srli, x, 8);
                    vec![self.rr(IOp::Or, a, b)]
                }
                32 => {
                    let x = self.get1(args[0])?;
                    vec![self.bswap32(x)]
                }
                64 => {
                    let (lo, hi) = self.pair(args[0])?;
                    vec![self.bswap32(hi), self.bswap32(lo)]
                }
                w => return Self::bad(format!("bswap.i{w}")),
            },
            Intr::Abs => {
                let w = self.bits_of(args[0]);
                if w > 32 {
                    let (lo, hi) = self.pair(args[0])?;
                    let m = self.ri(IOp::Srai, hi, 31);
                    let l1 = self.rr(IOp::Xor, lo, m);
                    let h1 = self.rr(IOp::Xor, hi, m);
                    let c = self.rr(IOp::Sub, R::ZERO, m);
                    let l2 = self.rr(IOp::Add, l1, c);
                    let carry = self.rr(IOp::Sltu, l2, c);
                    vec![l2, self.rr(IOp::Add, h1, carry)]
                } else {
                    let x = self.get1(args[0])?;
                    let s = self.sext(x, w);
                    let m = self.ri(IOp::Srai, s, 31);
                    let t = self.rr(IOp::Xor, s, m);
                    let r = self.rr(IOp::Sub, t, m);
                    vec![self.mask(r, w)]
                }
            }
            Intr::SMax | Intr::SMin | Intr::UMax | Intr::UMin => {
                let pred = match i {
                    Intr::SMax => IPred::Sgt,
                    Intr::SMin => IPred::Slt,
                    Intr::UMax => IPred::Ugt,
                    _ => IPred::Ult,
                };
                let c = self.icmp(pred, args[0], args[1])?;
                let (a, b) = (self.get(args[0])?, self.get(args[1])?);
                self.pick(c, &a, &b)
            }
            Intr::SAddSat | Intr::SSubSat | Intr::UAddSat | Intr::USubSat if self.bits_of(args[0]) == 64 => self.sat64(i, args)?,
            Intr::SAddSat | Intr::SSubSat => {
                let (a, b, w) = self.two(args, true)?;
                let sub = *i == Intr::SSubSat;
                let r = self.rr(if sub { IOp::Sub } else { IOp::Add }, a, b);
                if w == 32 {
                    let ovf = if sub { self.sign_of_and(a, b, a, r) } else { self.sign_of_and(r, a, r, b) };
                    let s = self.ri(IOp::Srai, a, 31);
                    let k = self.li(i32::MAX);
                    let sat = self.rr(IOp::Xor, s, k);
                    self.pick(ovf, &[sat], &[r])
                } else {
                    let (hi, lo) = (self.li((1 << (w - 1)) - 1), self.li(-(1 << (w - 1))));
                    let over = self.rr(IOp::Slt, hi, r);
                    let r = self.pick(over, &[hi], &[r])[0];
                    let under = self.rr(IOp::Slt, r, lo);
                    let r = self.pick(under, &[lo], &[r])[0];
                    vec![self.mask(r, w)]
                }
            }
            Intr::UAddSat => {
                let (a, b, w) = self.two(args, false)?;
                let r = self.rr(IOp::Add, a, b);
                if w == 32 {
                    let c = self.rr(IOp::Sltu, r, a);
                    let m = self.rr(IOp::Sub, R::ZERO, c);
                    vec![self.rr(IOp::Or, r, m)]
                } else {
                    let max = self.li((1 << w) - 1);
                    let over = self.rr(IOp::Sltu, max, r);
                    self.pick(over, &[max], &[r])
                }
            }
            Intr::USubSat => {
                let (a, b, _) = self.two(args, false)?;
                let r = self.rr(IOp::Sub, a, b);
                let under = self.rr(IOp::Sltu, a, b);
                let keep = self.ri(IOp::Addi, under, -1);
                vec![self.rr(IOp::And, r, keep)]
            }
            Intr::SAddOv | Intr::SSubOv | Intr::UAddOv | Intr::USubOv | Intr::SMulOv | Intr::UMulOv => {
                let signed = matches!(i, Intr::SAddOv | Intr::SSubOv | Intr::SMulOv);
                match self.bits_of(args[0]) {
                    64 if matches!(i, Intr::SMulOv | Intr::UMulOv) && !Zmmul::Mul.enabled() => return Self::bad(format!("{i:?}.i64 没有 Zmmul 还没做")),
                    64 => return self.overflow64(i, args),
                    w if w > 32 => return Self::bad(format!("{i:?}.i{w} 还没做")),
                    _ => {}
                }
                let (a, b, w) = self.two(args, signed)?;
                let (r, ovf) = match i {
                    Intr::UAddOv => {
                        let s = self.rr(IOp::Add, a, b);
                        let ovf = if w == 32 { self.rr(IOp::Sltu, s, a) } else { self.ri(IOp::Srli, s, w as i32) };
                        (s, ovf)
                    }
                    Intr::USubOv => (self.rr(IOp::Sub, a, b), self.rr(IOp::Sltu, a, b)),
                    Intr::UMulOv => {
                        let p = self.rr(Zmmul::Mul, a, b);
                        let h = self.rr(Zmmul::Mulhu, a, b);
                        let ovf = if w == 32 {
                            h
                        } else {
                            let t = self.ri(IOp::Srli, p, w as i32);
                            self.rr(IOp::Or, t, h)
                        };
                        (p, self.rr(IOp::Sltu, R::ZERO, ovf))
                    }
                    _ => {
                        let op: Opcode = match i {
                            Intr::SAddOv => IOp::Add.into(),
                            Intr::SSubOv => IOp::Sub.into(),
                            _ => Zmmul::Mul.into(),
                        };
                        let s = self.rr(op, a, b);
                        let ovf = if w == 32 {
                            match i {
                                Intr::SAddOv => self.sign_of_and(s, a, s, b),
                                Intr::SSubOv => self.sign_of_and(a, b, a, s),
                                _ => {
                                    let h = self.rr(Zmmul::Mulh, a, b);
                                    let sg = self.ri(IOp::Srai, s, 31);
                                    let d = self.rr(IOp::Xor, h, sg);
                                    self.rr(IOp::Sltu, R::ZERO, d)
                                }
                            }
                        } else if *i == Intr::SMulOv && w > 16 {
                            return Self::bad(format!("smul.with.overflow.i{w} 还没做"));
                        } else {
                            let m = self.mask(s, w);
                            let t = self.sext(m, w);
                            let d = self.rr(IOp::Xor, t, s);
                            self.rr(IOp::Sltu, R::ZERO, d)
                        };
                        (s, ovf)
                    }
                };
                vec![self.mask(r, w), ovf]
            }
            Intr::Fshl | Intr::Fshr => {
                let w = self.bits_of(args[0]);
                let left = *i == Intr::Fshl;
                if w == 64 {
                    return self.funnel64(left, args);
                }
                if w != 32 {
                    return Self::bad(format!("{i:?}.i{w} 还没做"));
                }
                let (a, b) = (self.get1(args[0])?, self.get1(args[1])?);
                match self.const_i32(args[2]).map(|s| s & 31) {
                    Some(0) => vec![if left { a } else { b }],
                    Some(s) => {
                        let (x, y) = if left { (self.ri(IOp::Slli, a, s), self.ri(IOp::Srli, b, 32 - s)) } else { (self.ri(IOp::Srli, b, s), self.ri(IOp::Slli, a, 32 - s)) };
                        vec![self.rr(IOp::Or, x, y)]
                    }
                    None => {
                        let s = self.get1(args[2])?;
                        let inv = self.ri(IOp::Xori, s, 31);
                        let (x, y) = if left {
                            let x = self.rr(IOp::Sll, a, s);
                            let t = self.ri(IOp::Srli, b, 1);
                            (x, self.rr(IOp::Srl, t, inv))
                        } else {
                            let x = self.rr(IOp::Srl, b, s);
                            let t = self.ri(IOp::Slli, a, 1);
                            (x, self.rr(IOp::Sll, t, inv))
                        };
                        vec![self.rr(IOp::Or, x, y)]
                    }
                }
            }
            Intr::Fabs if soft_float => {
                let x = self.get1(args[0])?;
                let t = self.ri(IOp::Slli, x, 1);
                vec![self.ri(IOp::Srli, t, 1)]
            }
            Intr::Copysign if soft_float => {
                let (a, b) = (self.get1(args[0])?, self.get1(args[1])?);
                let t = self.ri(IOp::Slli, a, 1);
                let mag = self.ri(IOp::Srli, t, 1);
                let s = self.ri(IOp::Srli, b, 31);
                let s = self.ri(IOp::Slli, s, 31);
                vec![self.rr(IOp::Or, mag, s)]
            }
            Intr::Fma | Intr::FMulAdd | Intr::Sqrt | Intr::MinNum | Intr::MaxNum if soft_float => {
                let ps = args.iter().map(|a| Ok((self.get(*a)?, vec![Part::X]))).collect::<Result<Vec<_>, Error>>()?;
                match i {
                    // 软浮点下 fmuladd = 先乘后加（同 LLVM，⛔ 不是 fma）
                    Intr::FMulAdd => {
                        let p = self.libcall("__mulsf3", &ps[..2], &[Part::X])?;
                        self.libcall("__addsf3", &[(p, vec![Part::X]), ps[2].clone()], &[Part::X])?
                    }
                    _ => {
                        let name = match i {
                            Intr::Fma => "fmaf",
                            Intr::Sqrt => "sqrtf",
                            Intr::MinNum => "fminf",
                            _ => "fmaxf",
                        };
                        self.libcall(name, &ps, &[Part::X])?
                    }
                }
            }
            Intr::Fabs if first_double => {
                let (lo, hi) = self.pair(args[0])?;
                let t = self.ri(IOp::Slli, hi, 1);
                vec![lo, self.ri(IOp::Srli, t, 1)]
            }
            Intr::Fabs => {
                let x = self.get1(args[0])?;
                vec![self.fop(Float::FsgnjxS, vec![x, x])]
            }
            Intr::Copysign if first_double => {
                let (lo, hi) = self.pair(args[0])?;
                let (_, bh) = self.pair(args[1])?;
                let t = self.ri(IOp::Slli, hi, 1);
                let mag = self.ri(IOp::Srli, t, 1);
                let s = self.ri(IOp::Srli, bh, 31);
                let s = self.ri(IOp::Slli, s, 31);
                vec![lo, self.rr(IOp::Or, mag, s)]
            }
            Intr::Copysign => {
                let (a, b) = (self.get1(args[0])?, self.get1(args[1])?);
                vec![self.fop(Float::FsgnjS, vec![a, b])]
            }
            Intr::Fma | Intr::FMulAdd if !first_double => {
                let (a, b, c) = (self.get1(args[0])?, self.get1(args[1])?, self.get1(args[2])?);
                vec![self.fop(Float::FmaddS, vec![a, b, c])]
            }
            Intr::Fma => {
                let ps = args.iter().map(|a| Ok((self.get(*a)?, PAIR.to_vec()))).collect::<Result<Vec<_>, Error>>()?;
                self.libcall("fma", &ps, &PAIR)?
            }
            Intr::FMulAdd => {
                // 软浮点下 fmuladd = 先乘后加（同 LLVM，⛔ 不是 fma）
                let (a, b, c) = (self.get(args[0])?, self.get(args[1])?, self.get(args[2])?);
                let p = self.libcall("__muldf3", &[(a, PAIR.to_vec()), (b, PAIR.to_vec())], &PAIR)?;
                self.libcall("__adddf3", &[(p, PAIR.to_vec()), (c, PAIR.to_vec())], &PAIR)?
            }
            Intr::Sqrt if !first_double => {
                let x = self.get1(args[0])?;
                vec![self.fop(Float::FsqrtS, vec![x])]
            }
            Intr::MinNum | Intr::MaxNum if !first_double => {
                let (a, b) = (self.get1(args[0])?, self.get1(args[1])?);
                vec![self.fop(if *i == Intr::MinNum { Float::FminS } else { Float::FmaxS }, vec![a, b])]
            }
            Intr::Sqrt | Intr::MinNum | Intr::MaxNum => {
                let name = match i {
                    Intr::Sqrt => "sqrt",
                    Intr::MinNum => "fmin",
                    _ => "fmax",
                };
                let ps = args.iter().map(|a| Ok((self.get(*a)?, PAIR.to_vec()))).collect::<Result<Vec<_>, Error>>()?;
                self.libcall(name, &ps, &PAIR)?
            }
            Intr::IsFpClass(mask) => vec![self.fpclass(args[0], *mask)?],
            Intr::Memcpy | Intr::Memmove | Intr::Memset => {
                let name = match i {
                    Intr::Memcpy => "memcpy",
                    Intr::Memmove => "memmove",
                    _ => "memset",
                };
                let dst = self.get1(args[0])?;
                let src = self.get1(args[1])?;
                // 长度可能是 i64（`llvm.memcpy.p0.p0.i64`）：size_t 32 位，只看低半（同 llc）
                let len = self.low(args[2])?;
                self.libcall(name, &[(vec![dst], vec![Part::X]), (vec![src], vec![Part::X]), (vec![len], vec![Part::X])], &[Part::X])?;
                Vec::new()
            }
            Intr::Trap | Intr::DebugTrap => {
                self.emit(if *i == Intr::Trap { MOp::Trap } else { MOp::Break }, &[], &[]);
                Vec::new()
            }
            Intr::StackSave => {
                self.dynamic_sp = true;
                let d = self.xr();
                self.emit(MOp::SpSave, &[d], &[]);
                vec![d]
            }
            Intr::StackRestore => {
                self.dynamic_sp = true;
                let p = self.get1(args[0])?;
                self.emit(MOp::SpRestore, &[], &[p]);
                Vec::new()
            }
            Intr::VaStart => {
                let first = self.varargs.ok_or_else(|| Error::Select(String::from("va_start 在非可变参数函数里")))?;
                // 没被具名参数占的 a 寄存器在序言里存在入参区正下方，第一个可变参数就在那里
                let k = i32::from(18 - first);
                let off = if k > 0 { -4 * k } else { self.varargs_stack };
                let d = self.xr();
                self.emit(MOp::Addr(Base::Incoming, off), &[d], &[]);
                let (b, o) = self.address(args[0])?;
                let o = i32::try_from(o).unwrap_or(0);
                let mut uses = vec![d];
                if let Base::Reg(r) = b {
                    uses.push(r);
                }
                self.emit(MOp::Store(IOp::Sw.into(), b, o), &[], &uses);
                Vec::new()
            }
            Intr::VaCopy => {
                let (sb, so) = self.address(args[1])?;
                let v = self.xr();
                let mut uses = Vec::new();
                if let Base::Reg(r) = sb {
                    uses.push(r);
                }
                self.emit(MOp::Load(IOp::Lw.into(), sb, i32::try_from(so).unwrap_or(0)), &[v], &uses);
                let (db, doff) = self.address(args[0])?;
                let mut uses = vec![v];
                if let Base::Reg(r) = db {
                    uses.push(r);
                }
                self.emit(MOp::Store(IOp::Sw.into(), db, i32::try_from(doff).unwrap_or(0)), &[], &uses);
                Vec::new()
            }
            Intr::Libm(name) => {
                let mut ps = Vec::new();
                for a in args {
                    let t = self.ty(*a);
                    ps.push((self.get(*a)?, self.parts(t)?));
                }
                let ret = rt.map(|t| self.parts(t)).transpose()?.unwrap_or_default();
                self.libcall(name, &ps, &ret)?
            }
            Intr::Bitreverse => match self.bits_of(args[0]) {
                64 => {
                    let (lo, hi) = self.pair(args[0])?;
                    vec![self.rev32(hi), self.rev32(lo)]
                }
                w @ (8 | 16 | 32) => {
                    let x = self.get1(args[0])?;
                    let r = self.rev32(x);
                    vec![if w == 32 { r } else { self.ri(IOp::Srli, r, 32 - w.cast_signed()) }]
                }
                w => return Self::bad(format!("bitreverse.i{w}")),
            },
            Intr::PtrMask => {
                let (p, m) = (self.get1(args[0])?, self.get1(args[1])?);
                vec![self.rr(IOp::And, p, m)]
            }
        })
    }

    /// 64 位漏斗移位：`fshl(a, b, s) = a << s | b >> 1 >> (63 − s)`；`fshr(a, b, s) = b >> s | a << 1 << (63 − s)`（s 取模 64）。
    fn funnel64(&mut self, left: bool, args: &[ValId]) -> Result<Vec<R>, Error> {
        let (al, ah) = self.pair(args[0])?;
        let (bl, bh) = self.pair(args[1])?;
        let (s, inv) = match self.const_i32(args[2]) {
            Some(c) => (self.li(c & 63), self.li(63 - (c & 63))),
            None => {
                let s = self.low(args[2])?;
                let s = self.ri(IOp::Andi, s, 63);
                (s, self.ri(IOp::Xori, s, 63))
            }
        };
        let ((xl, xh), (yl, yh)) = if left {
            let main = self.shift64_var(crate::ir::BinOp::Shl, al, ah, s);
            let (l1, h1) = self.shr1(bl, bh);
            (main, self.shift64_var(crate::ir::BinOp::LShr, l1, h1, inv))
        } else {
            let main = self.shift64_var(crate::ir::BinOp::LShr, bl, bh, s);
            let (l1, h1) = self.shl1(al, ah);
            (main, self.shift64_var(crate::ir::BinOp::Shl, l1, h1, inv))
        };
        Ok(vec![self.rr(IOp::Or, xl, yl), self.rr(IOp::Or, xh, yh)])
    }

    /// 64 位逻辑右移 1。
    fn shr1(&mut self, lo: R, hi: R) -> (R, R) {
        let l = self.ri(IOp::Srli, lo, 1);
        let c = self.ri(IOp::Slli, hi, 31);
        (self.rr(IOp::Or, l, c), self.ri(IOp::Srli, hi, 1))
    }

    /// 64 位左移 1。
    fn shl1(&mut self, lo: R, hi: R) -> (R, R) {
        let h = self.ri(IOp::Slli, hi, 1);
        let c = self.ri(IOp::Srli, lo, 31);
        (self.ri(IOp::Slli, lo, 1), self.rr(IOp::Or, h, c))
    }

    /// 结果是浮点寄存器的 F 指令（舍入 dyn）。
    fn fop(&mut self, op: impl Into<Opcode>, uses: Vec<R>) -> R {
        let op: Opcode = op.into();
        let d = self.fr();
        self.emit(MOp::Reg(op, Rm::Dyn as u8), &[d], &uses);
        d
    }

    /// `is.fpclass`：LLVM 的类别位（0 sNaN 1 qNaN 2 −inf 3 −normal 4 −subnormal 5 −0 6 +0 7 +subnormal 8 +normal 9 +inf）。
    fn fpclass(&mut self, a: ValId, mask: u32) -> Result<R, Error> {
        if matches!(self.kind(self.ty(a)), Kind::Float) && crate::feature::Float::ENABLED {
            // RISC-V fclass：0 −inf 1 −normal 2 −subnormal 3 −0 4 +0 5 +subnormal 6 +normal 7 +inf 8 sNaN 9 qNaN
            const MAP: [u32; 10] = [8, 9, 0, 1, 2, 3, 4, 5, 6, 7];
            let m = (0..10).filter(|b| mask & (1 << b) != 0).fold(0, |acc, b| acc | (1 << MAP[b as usize]));
            let x = self.get1(a)?;
            let c = self.xr();
            self.emit(MOp::Reg(Float::FclassS.into(), 7), &[c], &[x]);
            let t = self.ri(IOp::Andi, c, m);
            return Ok(self.rr(IOp::Sltu, R::ZERO, t));
        }
        // 拆位判：double（指数 11 位）；F 没开时的 float（指数 8 位）
        let single = matches!(self.kind(self.ty(a)), Kind::Float);
        let (lo, hi) = if single { (R::ZERO, self.get1(a)?) } else { self.pair(a)? };
        let (ebits, mbits) = if single { (8, 23) } else { (11, 20) };
        let sign = self.ri(IOp::Srli, hi, 31);
        let e = self.ri(IOp::Slli, hi, 1);
        let exp = self.ri(IOp::Srli, e, 32 - ebits);
        let mh = self.ri(IOp::Slli, hi, 32 - mbits);
        let mant = self.rr(IOp::Or, mh, lo);
        let mant_nz = self.rr(IOp::Sltu, R::ZERO, mant);
        let max = self.li((1 << ebits) - 1);
        let dexp = self.rr(IOp::Xor, exp, max);
        let exp_max = self.ri(IOp::Sltiu, dexp, 1);
        let exp_zero = self.ri(IOp::Sltiu, exp, 1);
        let quiet = self.ri(IOp::Srli, hi, mbits - 1);
        let quiet = self.ri(IOp::Andi, quiet, 1);
        let not = |s: &mut Self, r: R| s.ri(IOp::Xori, r, 1);
        let and = |s: &mut Self, a: R, b: R| s.rr(IOp::And, a, b);
        let pos = not(self, sign);
        let mant_z = not(self, mant_nz);
        let mut acc = R::ZERO;
        for bit in 0..10 {
            if mask & (1 << bit) == 0 {
                continue;
            }
            let c = match bit {
                0 | 1 => {
                    let nan = and(self, exp_max, mant_nz);
                    let q = if bit == 1 { quiet } else { not(self, quiet) };
                    and(self, nan, q)
                }
                2 | 9 => {
                    let inf = and(self, exp_max, mant_z);
                    and(self, inf, if bit == 9 { pos } else { sign })
                }
                3 | 8 => {
                    let nz = not(self, exp_zero);
                    let nm = not(self, exp_max);
                    let n = and(self, nz, nm);
                    and(self, n, if bit == 8 { pos } else { sign })
                }
                4 | 7 => {
                    let s = and(self, exp_zero, mant_nz);
                    and(self, s, if bit == 7 { pos } else { sign })
                }
                _ => {
                    let z = and(self, exp_zero, mant_z);
                    and(self, z, if bit == 6 { pos } else { sign })
                }
            };
            acc = if acc == R::ZERO { c } else { self.rr(IOp::Or, acc, c) };
        }
        Ok(acc)
    }
}
