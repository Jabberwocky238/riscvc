//! 宽整数（33 位以上）：低字在前的 32 位字，i64 两个、i128 四个、i322 十一个。顶字 `w mod 32` 以上的位恒为 0
//! （同窄整数的零扩展不变式），要有符号语义的地方现场把顶字符号扩展（[`Isel::sext_top`]）。
//!
//! | 运算 | 做法（同 LLVM 类型合法化的 ExpandIntegerResult） |
//! | --- | --- |
//! | 加减 | 逐字带进位 / 借位（`sltu` 求） |
//! | 乘 | 逐字竖式（`mul` / `mulhu`），只留低 n 字；没有 Zmmul 的 i64 整个调 `__muldi3` |
//! | 常数移位 | 按字平移再拼 |
//! | 变量移位 | i64：无分支的掩码；更宽：经栈（值存进加宽的栈槽、按 `s / 8` 字节偏移读回 n 字、再按 `s mod 32` 拼位） |
//! | 除 / 余 | i64：`__divdi3` 一类；更宽：逐位的恢复除法循环（rv32 的 compiler-rt 没有 `__udivti3`，LLVM 同样就地展开） |
//! | 比较 | 从低字往高字：高字相等才看低字 |
use super::{Error, Isel, Part, R};
use crate::codegen::mir::{Base, MOp};
use crate::feature::Zmmul;
use crate::ir::{BinOp, IPred, ValId};
use crate::isa::Rv32i as IOp;
use crate::regalloc::VReg;

impl Isel<'_> {
    /// `w` 位整数顶字里的位数（1..=32）。
    pub(super) const fn top_bits(w: u32) -> u32 {
        w - 32 * ((w - 1) / 32)
    }

    /// 顶字符号扩展到 32 位（有符号运算之前）。
    pub(super) fn sext_top(&mut self, mut x: Vec<R>, w: u32) -> Vec<R> {
        if let Some(t) = x.last_mut() {
            *t = self.sext(*t, Self::top_bits(w));
        }
        x
    }

    /// 顶字回到零扩展（会把位推过 `w` 的运算之后）。
    pub(super) fn mask_top(&mut self, mut x: Vec<R>, w: u32) -> Vec<R> {
        if let Some(t) = x.last_mut() {
            *t = self.mask(*t, Self::top_bits(w));
        }
        x
    }

    /// 常数 `v`（`w` 位）的字。⚠ 前端的整数常量是 128 位：更宽的按第 127 位符号扩展。
    pub(super) fn int_words(&mut self, v: u128, w: u32) -> Vec<R> {
        let fill = if w > 128 && v >> 127 == 1 { u32::MAX } else { 0 };
        (0..w.div_ceil(32)).map(|i| self.li(if i < 4 { (v >> (32 * i)) as u32 } else { fill }.cast_signed())).collect()
    }

    // ---- 带 `zero` 折叠的单条运算 ---------------------------------------------------------------

    pub(super) fn add0(&mut self, a: R, b: R) -> R {
        if a == R::ZERO { b } else if b == R::ZERO { a } else { self.rr(IOp::Add, a, b) }
    }

    fn or0(&mut self, a: R, b: R) -> R {
        if a == R::ZERO { b } else if b == R::ZERO { a } else { self.rr(IOp::Or, a, b) }
    }

    fn xor0(&mut self, a: R, b: R) -> R {
        if a == R::ZERO { b } else if b == R::ZERO { a } else { self.rr(IOp::Xor, a, b) }
    }

    /// `op x, k`（`x` 是 `zero` ⇒ `zero`，`k` 是 0 ⇒ `x`）。
    fn imm0(&mut self, op: IOp, x: R, k: i32) -> R {
        if x == R::ZERO || k == 0 { x } else { self.ri(op, x, k) }
    }

    /// `a + b` 与进位（0 / 1）。
    fn addc(&mut self, a: R, b: R) -> (R, R) {
        if a == R::ZERO || b == R::ZERO {
            return (self.add0(a, b), R::ZERO);
        }
        let s = self.rr(IOp::Add, a, b);
        (s, self.rr(IOp::Sltu, s, a))
    }

    // ---- 逐字运算（`a`、`b` 同样多字）------------------------------------------------------------

    pub(super) fn wide_add(&mut self, a: &[R], b: &[R]) -> Vec<R> {
        let mut carry = R::ZERO;
        let mut out = Vec::with_capacity(a.len());
        for (i, (&x, &y)) in a.iter().zip(b).enumerate() {
            if i + 1 == a.len() {
                let s = self.add0(x, y);
                out.push(self.add0(s, carry));
                break;
            }
            let (s, c1) = self.addc(x, y);
            let (s, c2) = self.addc(s, carry);
            // 两个进位不会同时是 1
            carry = self.or0(c1, c2);
            out.push(s);
        }
        out
    }

    pub(super) fn wide_sub(&mut self, a: &[R], b: &[R]) -> Vec<R> {
        let mut borrow = R::ZERO;
        let mut out = Vec::with_capacity(a.len());
        for (i, (&x, &y)) in a.iter().zip(b).enumerate() {
            let d = if y == R::ZERO { x } else { self.rr(IOp::Sub, x, y) };
            if i + 1 == a.len() {
                out.push(if borrow == R::ZERO { d } else { self.rr(IOp::Sub, d, borrow) });
                break;
            }
            let b1 = if y == R::ZERO { R::ZERO } else { self.rr(IOp::Sltu, x, y) };
            let (r, b2) = if borrow == R::ZERO { (d, R::ZERO) } else { (self.rr(IOp::Sub, d, borrow), self.rr(IOp::Sltu, d, borrow)) };
            borrow = self.or0(b1, b2);
            out.push(r);
        }
        out
    }

    /// 低 n 字的积：逐行竖式，`a[i] · b[j]` 的低半加到第 `i + j` 字、高半随进位进下一字。
    pub(super) fn wide_mul(&mut self, a: &[R], b: &[R]) -> Result<Vec<R>, Error> {
        let n = a.len();
        if n == 2 && !self.has(&Zmmul::Mul) {
            let pair = vec![Part::Lo, Part::Hi];
            return self.libcall("__muldi3", &[(a.to_vec(), pair.clone()), (b.to_vec(), pair.clone())], &pair);
        }
        let mut r = vec![R::ZERO; n];
        for (i, &x) in a.iter().enumerate().filter(|(_, x)| **x != R::ZERO) {
            let mut carry = R::ZERO;
            for (j, &y) in b[..n - i].iter().enumerate() {
                let k = i + j;
                let lo = if y == R::ZERO { R::ZERO } else { self.rr(Zmmul::Mul, x, y) };
                if k + 1 == n {
                    let t = self.add0(r[k], lo);
                    r[k] = self.add0(t, carry);
                    break;
                }
                // 积 + 本字 + 进位 ≤ (2³² − 1)² + 2 (2³² − 1) = 2⁶⁴ − 1：新进位放得进一个字
                let hi = if y == R::ZERO { R::ZERO } else { self.rr(Zmmul::Mulhu, x, y) };
                let (t, c1) = self.addc(r[k], lo);
                let (t, c2) = self.addc(t, carry);
                r[k] = t;
                let h = self.add0(hi, c1);
                carry = self.add0(h, c2);
            }
        }
        Ok(r)
    }

    /// `a < b` ⇒ 0 / 1（`signed`：顶字按有符号比，调用方已 [`Self::sext_top`]）。
    pub(super) fn wide_lt(&mut self, signed: bool, a: &[R], b: &[R]) -> R {
        let n = a.len();
        let mut lt = self.rr(if signed && n == 1 { IOp::Slt } else { IOp::Sltu }, a[0], b[0]);
        for i in 1..n {
            let hi = self.rr(if signed && i + 1 == n { IOp::Slt } else { IOp::Sltu }, a[i], b[i]);
            let d = self.xor0(a[i], b[i]);
            let eq = self.ri(IOp::Sltiu, d, 1);
            let t = self.rr(IOp::And, eq, lt);
            lt = self.rr(IOp::Or, hi, t);
        }
        lt
    }

    /// 各字异或再或起来：0 ⇔ `a == b`。
    pub(super) fn wide_diff(&mut self, a: &[R], b: &[R]) -> R {
        let mut t = R::ZERO;
        for (&x, &y) in a.iter().zip(b) {
            let d = self.xor0(x, y);
            t = self.or0(t, d);
        }
        t
    }

    /// `(v ^ m) − m`：`m` 全 1 ⇒ 取负，全 0 ⇒ 原样。
    pub(super) fn negate_if(&mut self, v: &[R], m: R) -> Vec<R> {
        if m == R::ZERO {
            return v.to_vec();
        }
        let x: Vec<R> = v.iter().map(|&r| self.rr(IOp::Xor, r, m)).collect();
        self.wide_sub(&x, &vec![m; v.len()])
    }

    // ---- 移位 --------------------------------------------------------------------------------

    /// 常数移位（`c` < 32n）：结果字 `i` 由源字 `i ∓ ⌊c/32⌋` 和它的邻字拼成。有符号右移的 `x` 已 [`Self::sext_top`]。
    pub(super) fn wide_shift_const(&mut self, op: BinOp, x: &[R], c: u32) -> Vec<R> {
        let n = x.len();
        let (q, s) = ((c / 32) as usize, (c % 32).cast_signed());
        let fill = if op == BinOp::AShr && q > 0 { self.ri(IOp::Srai, x[n - 1], 31) } else { R::ZERO };
        let mut out = Vec::with_capacity(n);
        for i in 0..n {
            let r = if op == BinOp::Shl {
                match i.checked_sub(q) {
                    None => R::ZERO,
                    Some(j) => {
                        let h = self.imm0(IOp::Slli, x[j], s);
                        let l = if s == 0 || j == 0 { R::ZERO } else { self.imm0(IOp::Srli, x[j - 1], 32 - s) };
                        self.or0(h, l)
                    }
                }
            } else {
                match i + q {
                    j if j >= n => fill,
                    j if j + 1 == n => self.imm0(if op == BinOp::AShr { IOp::Srai } else { IOp::Srli }, x[j], s),
                    j => {
                        let l = self.imm0(IOp::Srli, x[j], s);
                        let h = if s == 0 { R::ZERO } else { self.imm0(IOp::Slli, x[j + 1], 32 - s) };
                        self.or0(l, h)
                    }
                }
            };
            out.push(r);
        }
        out
    }

    /// 变量移位（i64 以上，同 LLVM 的经栈移位）：左移时槽里是「p 个 0 字 + x」，右移时是「x + p 个填充字」
    /// （p = n 向上取 2 的幂，超过位宽的 poison 移位量按 p 取模也不出槽）；从 `x` 处挪 `⌊s/32⌋` 个字读回 n 字，再拼位。
    pub(super) fn wide_shift_mem(&mut self, op: BinOp, x: &[R], s: R) -> Vec<R> {
        let n = x.len();
        let p = n.next_power_of_two();
        let obj = self.stack_slot(4 * (n + p) as u64, 4);
        let fill = if op == BinOp::AShr { self.ri(IOp::Srai, x[n - 1], 31) } else { R::ZERO };
        let (pad, at) = if op == BinOp::Shl { (0, 4 * p) } else { (4 * n, 0) };
        let word = |i: usize| i32::try_from(i).unwrap_or(0);
        for k in 0..p {
            self.emit(MOp::Store(IOp::Sw.into(), Base::Frame(obj), word(pad + 4 * k)), &[], &[fill]);
        }
        for (k, &r) in x.iter().enumerate() {
            self.emit(MOp::Store(IOp::Sw.into(), Base::Frame(obj), word(at + 4 * k)), &[], &[r]);
        }
        let base = self.xr();
        self.emit(MOp::Addr(Base::Frame(obj), word(at)), &[base], &[]);
        let bytes = self.ri(IOp::Srli, s, 3);
        let bytes = self.ri(IOp::Andi, bytes, word(4 * p - 4));
        let base = self.rr(if op == BinOp::Shl { IOp::Sub } else { IOp::Add }, base, bytes);
        let w: Vec<R> = (0..n)
            .map(|k| {
                let d = self.xr();
                self.emit(MOp::Load(IOp::Lw.into(), Base::Reg(base), word(4 * k)), &[d], &[base]);
                d
            })
            .collect();
        // 移位指令只看低 5 位：`inv` 的低 5 位 = 31 − s mod 32，邻字先挪 1 位再挪 inv（s mod 32 = 0 时整个挪掉）
        let inv = self.ri(IOp::Xori, s, 31);
        (0..n)
            .map(|i| match op {
                BinOp::Shl => {
                    let h = self.rr(IOp::Sll, w[i], s);
                    if i == 0 {
                        return h;
                    }
                    let l = self.ri(IOp::Srli, w[i - 1], 1);
                    let l = self.rr(IOp::Srl, l, inv);
                    self.rr(IOp::Or, h, l)
                }
                _ if i + 1 == n => self.rr(if op == BinOp::AShr { IOp::Sra } else { IOp::Srl }, w[i], s),
                _ => {
                    let l = self.rr(IOp::Srl, w[i], s);
                    let h = self.ri(IOp::Slli, w[i + 1], 1);
                    let h = self.rr(IOp::Sll, h, inv);
                    self.rr(IOp::Or, l, h)
                }
            })
            .collect()
    }

    /// i64 的变量移位（0..=63），无分支：按 `s ≥ 32` 做掩码选两种结果。
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

    // ---- 除法 --------------------------------------------------------------------------------

    /// 无符号的商与余数（逐位恢复除法，32n 轮）：
    /// ```text
    /// 本块：            ⇒ 循环(q = x, r = 0, k = 32n)
    /// 循环(q, r, k)：[r:q] 左移一位；够减（r ≥ y）就 r −= y、q 的最低位记 1；k −= 1  ⇒ k ≠ 0 ? 循环 : 出口(q, r)
    /// ```
    fn wide_udivrem(&mut self, x: &[R], y: &[R]) -> (Vec<R>, Vec<R>) {
        let n = x.len();
        let virt = |s: &mut Self, rs: &[R]| rs.iter().map(|&r| s.virt(r)).collect::<Vec<VReg>>();
        let fresh = |s: &mut Self, k: usize| (0..k).map(|_| s.xr()).collect::<Vec<R>>();
        let vregs = |rs: &[R]| rs.iter().map(|r| if let R::V(v) = r { *v } else { unreachable!("块参数是虚拟寄存器") }).collect::<Vec<VReg>>();
        let (head, done) = (self.new_block(), self.new_block());
        let (state, out) = (fresh(self, 2 * n + 1), fresh(self, 2 * n));
        self.blocks[head].params = vregs(&state);
        self.blocks[done].params = vregs(&out);
        let k0 = self.li(i32::try_from(32 * n).unwrap_or(0));
        let mut init = x.to_vec();
        init.extend(vec![R::ZERO; n]);
        init.push(k0);
        let args = virt(self, &init);
        self.jump(head, args);
        self.cur = head;
        let (q, r, k) = (&state[..n], &state[n..2 * n], state[2 * n]);
        // [r:q] <<= 1：每字左移一位、并入下一个低字的最高位
        let shl1 = |s: &mut Self, v: &[R], low: R| -> Vec<R> {
            (0..v.len())
                .map(|i| {
                    let h = s.ri(IOp::Slli, v[i], 1);
                    let l = if i == 0 { low } else { s.ri(IOp::Srli, v[i - 1], 31) };
                    s.or0(h, l)
                })
                .collect()
        };
        let carry = self.ri(IOp::Srli, q[n - 1], 31);
        // 余数左移挤出的最高位：是 1 ⇒ 真值 ≥ 2³²ⁿ > y，一定够减（减法按 2³²ⁿ 取模照样对）
        let out_bit = self.ri(IOp::Srli, r[n - 1], 31);
        let mut q2 = shl1(self, q, R::ZERO);
        let r2 = shl1(self, r, carry);
        let lt = self.wide_lt(false, &r2, y);
        let ge = self.ri(IOp::Xori, lt, 1);
        let ge = self.rr(IOp::Or, ge, out_bit);
        let m = self.rr(IOp::Sub, R::ZERO, ge);
        let ym: Vec<R> = y.iter().map(|&v| if v == R::ZERO { R::ZERO } else { self.rr(IOp::And, v, m) }).collect();
        let r3 = self.wide_sub(&r2, &ym);
        q2[0] = self.rr(IOp::Or, q2[0], ge);
        let k2 = self.ri(IOp::Addi, k, -1);
        let (to_done, to_loop) = (self.new_block(), self.new_block());
        self.branch(IOp::Beq, k2, R::ZERO, to_done, to_loop);
        let mut next = q2.clone();
        next.extend(r3.iter().copied());
        let qr = virt(self, &next);
        self.cur = to_done;
        self.jump(done, qr.clone());
        next.push(k2);
        let looped = virt(self, &next);
        self.cur = to_loop;
        self.jump(head, looped);
        self.cur = done;
        (out[..n].to_vec(), out[n..].to_vec())
    }

    /// i64 以上的除 / 余：有符号的先取绝对值（`x`、`y` 已 [`Self::sext_top`]），商的符号是两边符号之异或、余数的随被除数。
    fn wide_divrem(&mut self, op: BinOp, x: &[R], y: &[R]) -> Vec<R> {
        let n = x.len();
        let signed = matches!(op, BinOp::SDiv | BinOp::SRem);
        let (sx, sy) = if signed { (self.ri(IOp::Srai, x[n - 1], 31), self.ri(IOp::Srai, y[n - 1], 31)) } else { (R::ZERO, R::ZERO) };
        let (ux, uy) = (self.negate_if(x, sx), self.negate_if(y, sy));
        let (q, r) = self.wide_udivrem(&ux, &uy);
        match op {
            BinOp::UDiv => q,
            BinOp::URem => r,
            BinOp::SDiv => {
                let s = self.rr(IOp::Xor, sx, sy);
                self.negate_if(&q, s)
            }
            _ => self.negate_if(&r, sx),
        }
    }

    // ---- IR 运算 -----------------------------------------------------------------------------

    /// 33 位以上的二元运算。
    pub(super) fn wide_binary(&mut self, op: BinOp, a: ValId, b: ValId, w: u32) -> Result<Vec<R>, Error> {
        let signed = matches!(op, BinOp::AShr | BinOp::SDiv | BinOp::SRem);
        let x = self.get(a)?;
        let x = if signed { self.sext_top(x, w) } else { x };
        let n = x.len();
        let r = match op {
            BinOp::And | BinOp::Or | BinOp::Xor => {
                let y = self.get(b)?;
                let iop = match op {
                    BinOp::And => IOp::And,
                    BinOp::Or => IOp::Or,
                    _ => IOp::Xor,
                };
                x.iter().zip(&y).map(|(&p, &q)| self.rr(iop, p, q)).collect()
            }
            BinOp::Add => {
                let y = self.get(b)?;
                self.wide_add(&x, &y)
            }
            BinOp::Sub => {
                let y = self.get(b)?;
                self.wide_sub(&x, &y)
            }
            BinOp::Mul => {
                let y = self.get(b)?;
                self.wide_mul(&x, &y)?
            }
            BinOp::Shl | BinOp::LShr | BinOp::AShr => match self.const_i32(b) {
                Some(c) => self.wide_shift_const(op, &x, c.cast_unsigned() % (32 * u32::try_from(n).unwrap_or(1))),
                None => {
                    let s = self.low(b)?;
                    if n == 2 {
                        let (lo, hi) = self.shift64_var(op, x[0], x[1], s);
                        vec![lo, hi]
                    } else {
                        self.wide_shift_mem(op, &x, s)
                    }
                }
            },
            BinOp::UDiv | BinOp::SDiv | BinOp::URem | BinOp::SRem => {
                let y = self.get(b)?;
                let y = if signed { self.sext_top(y, w) } else { y };
                if n == 2 {
                    let name = match op {
                        BinOp::UDiv => "__udivdi3",
                        BinOp::SDiv => "__divdi3",
                        BinOp::URem => "__umoddi3",
                        _ => "__moddi3",
                    };
                    let pair = vec![Part::Lo, Part::Hi];
                    self.libcall(name, &[(x, pair.clone()), (y, pair.clone())], &pair)?
                } else {
                    self.wide_divrem(op, &x, &y)
                }
            }
            _ => return Self::bad(format!("i{w} 不支持 {op:?}")),
        };
        Ok(if matches!(op, BinOp::Add | BinOp::Sub | BinOp::Mul | BinOp::Shl | BinOp::AShr | BinOp::SDiv | BinOp::SRem) { self.mask_top(r, w) } else { r })
    }

    /// 33 位以上的比较 ⇒ 0 / 1。
    pub(super) fn wide_icmp(&mut self, p: IPred, a: ValId, b: ValId, w: u32) -> Result<R, Error> {
        let signed = Self::signed(p);
        let (x, y) = (self.get(a)?, self.get(b)?);
        let (x, y) = if signed { (self.sext_top(x, w), self.sext_top(y, w)) } else { (x, y) };
        Ok(match p {
            IPred::Eq | IPred::Ne => {
                let t = self.wide_diff(&x, &y);
                if p == IPred::Eq { self.ri(IOp::Sltiu, t, 1) } else { self.rr(IOp::Sltu, R::ZERO, t) }
            }
            IPred::Slt | IPred::Ult => self.wide_lt(signed, &x, &y),
            IPred::Sgt | IPred::Ugt => self.wide_lt(signed, &y, &x),
            IPred::Sge | IPred::Uge => {
                let t = self.wide_lt(signed, &x, &y);
                self.ri(IOp::Xori, t, 1)
            }
            IPred::Sle | IPred::Ule => {
                let t = self.wide_lt(signed, &y, &x);
                self.ri(IOp::Xori, t, 1)
            }
        })
    }

    // ---- 64 位（两半）的便捷形式：溢出检测、饱和运算、原子循环用 -----------------------------------

    pub(super) fn add64(&mut self, (al, ah): (R, R), (bl, bh): (R, R)) -> (R, R) {
        let r = self.wide_add(&[al, ah], &[bl, bh]);
        (r[0], r[1])
    }

    pub(super) fn sub64(&mut self, (al, ah): (R, R), (bl, bh): (R, R)) -> (R, R) {
        let r = self.wide_sub(&[al, ah], &[bl, bh]);
        (r[0], r[1])
    }

    pub(super) fn mul64(&mut self, (al, ah): (R, R), (bl, bh): (R, R)) -> Result<(R, R), Error> {
        let r = self.wide_mul(&[al, ah], &[bl, bh])?;
        Ok((r[0], r[1]))
    }

    /// `a <u b`（64 位）⇒ 0 / 1。
    pub(super) fn ltu64(&mut self, (al, ah): (R, R), (bl, bh): (R, R)) -> R {
        self.wide_lt(false, &[al, ah], &[bl, bh])
    }

    /// 64 位值的两半（指针等单字的高半是 0）。
    pub(super) fn pair(&mut self, v: ValId) -> Result<(R, R), Error> {
        match self.get(v)?[..] {
            [lo, hi] => Ok((lo, hi)),
            [lo] => Ok((lo, R::ZERO)),
            _ => Self::bad("不是 64 位值"),
        }
    }
}
