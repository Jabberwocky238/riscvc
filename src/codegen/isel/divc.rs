//! 除以常数（≤ 32 位）：不出除法指令（同 LLVM 的 BuildUDIV / BuildSDIV / BuildSDIVPow2）。
//!
//! | 除数 | 商 | 余数 |
//! | --- | --- | --- |
//! | 无符号 2ᵏ | `srli x, k` | `andi x, 2ᵏ − 1` |
//! | 有符号 ±2ᵏ | `(x + 偏置) >> k`，偏置 = 负数时的 `2ᵏ − 1`（再取负） | `x − ((x + 偏置) & −2ᵏ)` |
//! | 其他 | `mulhu` / `mulh` 乘魔数 + 移位（魔数同 LLVM 的 `{Uns,S}ignedDivisionByConstantInfo`） | `x − 商 · c` |
//!
//! 魔数要 `mulhu` / `mulh`（Zmmul）；没有就只做 2 的幂。
use super::{Isel, R};
use crate::feature::Zmmul;
use crate::ir::BinOp;
use crate::isa::{Rv32i as IOp, Table};

/// 无符号除以 `d` 的魔数（[`Udiv::new`]）。
struct Udiv {
    magic: u32,
    pre: u32,
    post: u32,
    add: bool,
}

impl Udiv {
    /// 同 LLVM 的 `UnsignedDivisionByConstantInfo::get`（Hacker's Delight 的 magicu2）：被除数的高 `lz` 位已知是 0。
    fn new(d: u32, lz: u32) -> Self {
        let all = if lz == 0 { u32::MAX } else { u32::MAX >> lz };
        let (min, max) = (1u32 << 31, u32::MAX >> 1);
        let nc = all.wrapping_sub(all.wrapping_add(1).wrapping_sub(d) % d);
        let mut p = 31;
        let (mut q1, mut r1) = (min / nc, min % nc);
        let (mut q2, mut r2) = (max / d, max % d);
        let mut add = false;
        loop {
            p += 1;
            if r1 >= nc - r1 {
                q1 = q1.wrapping_shl(1).wrapping_add(1);
                r1 = r1.wrapping_shl(1).wrapping_sub(nc);
            } else {
                q1 = q1.wrapping_shl(1);
                r1 = r1.wrapping_shl(1);
            }
            if r2.wrapping_add(1) >= d - r2 {
                add |= q2 >= max;
                q2 = q2.wrapping_shl(1).wrapping_add(1);
                r2 = r2.wrapping_shl(1).wrapping_add(1).wrapping_sub(d);
            } else {
                add |= q2 >= min;
                q2 = q2.wrapping_shl(1);
                r2 = r2.wrapping_shl(1).wrapping_add(1);
            }
            let delta = d - 1 - r2;
            if !(p < 64 && (q1 < delta || (q1 == delta && r1 == 0))) {
                break;
            }
        }
        // 要加法修正、除数又是偶数 ⇒ 先把除数的 2 的幂移掉再算（结果不再要修正）
        if add && d & 1 == 0 {
            let pre = d.trailing_zeros();
            return Self { pre, ..Self::new(d >> pre, lz + pre) };
        }
        let post = p - 32;
        Self { magic: q2.wrapping_add(1), pre: 0, post: if add { post - 1 } else { post }, add }
    }
}

/// 有符号除以 `d` 的魔数与移位（[`Sdiv::new`]）。
struct Sdiv {
    magic: i32,
    shift: u32,
}

impl Sdiv {
    /// 同 LLVM 的 `SignedDivisionByConstantInfo::get`。
    fn new(d: i32) -> Self {
        let ad = d.unsigned_abs();
        let min = 1u32 << 31;
        let t = min + (d.cast_unsigned() >> 31);
        let anc = t - 1 - t % ad;
        let mut p = 31;
        let (mut q1, mut r1) = (min / anc, min % anc);
        let (mut q2, mut r2) = (min / ad, min % ad);
        loop {
            p += 1;
            q1 = q1.wrapping_shl(1);
            r1 = r1.wrapping_shl(1);
            if r1 >= anc {
                q1 = q1.wrapping_add(1);
                r1 = r1.wrapping_sub(anc);
            }
            q2 = q2.wrapping_shl(1);
            r2 = r2.wrapping_shl(1);
            if r2 >= ad {
                q2 = q2.wrapping_add(1);
                r2 = r2.wrapping_sub(ad);
            }
            let delta = ad - r2;
            if !(q1 < delta || (q1 == delta && r1 == 0)) {
                break;
            }
        }
        let magic = q2.wrapping_add(1).cast_signed();
        Self { magic: if d < 0 { magic.wrapping_neg() } else { magic }, shift: p - 32 }
    }
}

impl Isel<'_> {
    /// 无符号的商（`x` 的高 `lz` 位已知是 0）。
    fn udiv_const(&mut self, x: R, d: u32, lz: u32) -> Option<R> {
        match d {
            0 => None,
            1 => Some(x),
            d if d.is_power_of_two() => Some(self.ri(IOp::Srli, x, d.trailing_zeros().cast_signed())),
            // 被除数比除数小（高位已知是 0）⇒ 商是 0 或 1
            d if !Zmmul::Mulhu.enabled() || d >= 1 << 31 => {
                let k = self.li(d.cast_signed());
                let lt = self.rr(IOp::Sltu, x, k);
                (d >= 1 << 31).then(|| self.ri(IOp::Xori, lt, 1))
            }
            d => {
                let u = Udiv::new(d, lz);
                let q = if u.pre > 0 { self.ri(IOp::Srli, x, u.pre.cast_signed()) } else { x };
                let m = self.li(u.magic.cast_signed());
                let mut q = self.rr(Zmmul::Mulhu, q, m);
                if u.add {
                    let npq = self.rr(IOp::Sub, x, q);
                    let npq = self.ri(IOp::Srli, npq, 1);
                    q = self.rr(IOp::Add, npq, q);
                }
                Some(if u.post > 0 { self.ri(IOp::Srli, q, u.post.cast_signed()) } else { q })
            }
        }
    }

    /// 有符号的商（`x` 已符号扩展到 32 位）。
    fn sdiv_const(&mut self, x: R, d: i32) -> Option<R> {
        match d {
            0 | i32::MIN => None,
            1 => Some(x),
            -1 => Some(self.rr(IOp::Sub, R::ZERO, x)),
            d if d.unsigned_abs().is_power_of_two() => {
                let k = d.unsigned_abs().trailing_zeros().cast_signed();
                let biased = self.sdiv_bias(x, k);
                let q = self.ri(IOp::Srai, biased, k);
                Some(if d < 0 { self.rr(IOp::Sub, R::ZERO, q) } else { q })
            }
            _ if !Zmmul::Mulh.enabled() => None,
            d => {
                let Sdiv { magic, shift } = Sdiv::new(d);
                let m = self.li(magic);
                let mut q = self.rr(Zmmul::Mulh, x, m);
                if d > 0 && magic < 0 {
                    q = self.rr(IOp::Add, q, x);
                } else if d < 0 && magic > 0 {
                    q = self.rr(IOp::Sub, q, x);
                }
                if shift > 0 {
                    q = self.ri(IOp::Srai, q, shift.cast_signed());
                }
                let t = self.ri(IOp::Srli, q, 31);
                Some(self.rr(IOp::Add, q, t))
            }
        }
    }

    /// `x + 偏置`：负数加 `2ᵏ − 1`（让算术右移向零取整）。
    fn sdiv_bias(&mut self, x: R, k: i32) -> R {
        let s = if k == 1 { x } else { self.ri(IOp::Srai, x, 31) };
        let t = self.ri(IOp::Srli, s, 32 - k);
        self.rr(IOp::Add, x, t)
    }

    /// `x − q · d`。
    fn remainder(&mut self, x: R, q: R, d: i32) -> R {
        let qd = match d.cast_unsigned() {
            d if d.is_power_of_two() => self.ri(IOp::Slli, q, d.trailing_zeros().cast_signed()),
            _ => {
                let k = self.li(d);
                self.rr(Zmmul::Mul, q, k)
            }
        };
        self.rr(IOp::Sub, x, qd)
    }

    /// ⭐ `op x, d`（`d` 常数，`x` 是 `w` 位：无符号的已零扩展、有符号的已符号扩展）⇒ 不用除法的序列；不划算 / 不认 ⇒ `None`。
    pub(super) fn div_by_const(&mut self, op: BinOp, x: R, d: i32, w: u32) -> Option<R> {
        match op {
            BinOp::UDiv => {
                let d = if w < 32 { d.cast_unsigned() & ((1 << w) - 1) } else { d.cast_unsigned() };
                self.udiv_const(x, d, 32 - w)
            }
            BinOp::URem => {
                let d = if w < 32 { d.cast_unsigned() & ((1 << w) - 1) } else { d.cast_unsigned() };
                if d.is_power_of_two() {
                    let m = (d - 1).cast_signed();
                    return Some(if (-2048..2048).contains(&m) { self.ri(IOp::Andi, x, m) } else {
                        let k = self.li(m);
                        self.rr(IOp::And, x, k)
                    });
                }
                if !Zmmul::Mul.enabled() {
                    return None;
                }
                let q = self.udiv_const(x, d, 32 - w)?;
                Some(self.remainder(x, q, d.cast_signed()))
            }
            BinOp::SDiv => self.sdiv_const(x, d),
            BinOp::SRem => match d {
                0 | i32::MIN => None,
                1 | -1 => Some(R::ZERO),
                d if d.unsigned_abs().is_power_of_two() => {
                    let k = d.unsigned_abs().trailing_zeros().cast_signed();
                    let biased = self.sdiv_bias(x, k);
                    let m = -(1i32 << k);
                    let t = if (-2048..2048).contains(&m) { self.ri(IOp::Andi, biased, m) } else {
                        let km = self.li(m);
                        self.rr(IOp::And, biased, km)
                    };
                    Some(self.rr(IOp::Sub, x, t))
                }
                _ if !Zmmul::Mul.enabled() => None,
                d => {
                    let q = self.sdiv_const(x, d)?;
                    Some(self.remainder(x, q, d))
                }
            },
            _ => None,
        }
    }
}
