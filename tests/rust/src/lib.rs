//! Rust 作前端的对拍程序：每个 `extern "C"` 入口是一个标量签名（对拍框架 tests/llvm/call.rs 只测这种），
//! 里面用 Rust 的惯用写法 —— 迭代器、Option / Result、match、切片、排序、格式化、泛型与 trait、u128、
//! checked / wrapping / saturating、闭包、按值传 / 返回的结构体（经内部函数，⛔ 内联：`#[inline(never)]`）。
//! 指针实参由对拍框架给 512 字节的随机缓冲区（指向它的四分之一处），长度一律截到 64 以内。
#![no_std]
#![feature(core_intrinsics)]
#![allow(internal_features)]

use core::fmt::Write;

#[panic_handler]
fn panic(_: &core::panic::PanicInfo) -> ! {
    // llvm.trap（两边都是 unimp，对拍里同一个陷入）；⛔ asm!：前端不收 llvm.inline_asm
    core::intrinsics::abort()
}

/// 缓冲区里的切片（长度截到 64）。
fn slice<'a, T>(p: *const T, n: usize) -> &'a [T] {
    unsafe { core::slice::from_raw_parts(p, n % 64) }
}

fn slice_mut<'a, T>(p: *mut T, n: usize) -> &'a mut [T] {
    unsafe { core::slice::from_raw_parts_mut(p, n % 64) }
}

// ---- 迭代器、闭包 ----------------------------------------------------------------------

#[unsafe(no_mangle)]
pub extern "C" fn sum(p: *const u32, n: usize) -> u32 {
    slice(p, n).iter().fold(0u32, |a, &x| a.wrapping_add(x))
}

#[unsafe(no_mangle)]
pub extern "C" fn find(p: *const i32, n: usize, k: i32) -> i32 {
    slice(p, n).iter().position(|&x| x == k).map_or(-1, |i| i as i32)
}

#[unsafe(no_mangle)]
pub extern "C" fn evens_squared(p: *const u16, n: usize) -> u64 {
    slice(p, n).iter().filter(|&&x| x % 2 == 0).map(|&x| u64::from(x) * u64::from(x)).sum()
}

#[unsafe(no_mangle)]
pub extern "C" fn max_window(p: *const i16, n: usize) -> i32 {
    slice(p, n).windows(3).map(|w| w.iter().map(|&x| i32::from(x)).sum::<i32>()).max().unwrap_or(i32::MIN)
}

#[unsafe(no_mangle)]
pub extern "C" fn zip_dot(a: *const i32, b: *const i32, n: usize) -> i64 {
    slice(a, n).iter().zip(slice(b, n)).map(|(&x, &y)| i64::from(x) * i64::from(y)).sum()
}

#[unsafe(no_mangle)]
pub extern "C" fn chunk_xor(p: *const u8, n: usize) -> u32 {
    slice(p, n).chunks(4).enumerate().fold(0u32, |acc, (i, c)| acc ^ (c.iter().fold(0u32, |a, &b| a << 8 | u32::from(b)) .rotate_left(i as u32)))
}

// ---- 排序、二分、去重 ------------------------------------------------------------------

#[unsafe(no_mangle)]
pub extern "C" fn sort_u16(p: *mut u16, n: usize) {
    slice_mut(p, n).sort_unstable();
}

#[unsafe(no_mangle)]
pub extern "C" fn sort_by_key_desc(p: *mut i32, n: usize) {
    slice_mut(p, n).sort_unstable_by_key(|&x| core::cmp::Reverse(x.wrapping_abs()));
}

#[unsafe(no_mangle)]
pub extern "C" fn search(p: *mut u32, n: usize, k: u32) -> i32 {
    let s = slice_mut(p, n);
    s.sort_unstable();
    match s.binary_search(&k) {
        Ok(i) => i as i32,
        Err(i) => -1 - i as i32,
    }
}

#[unsafe(no_mangle)]
pub extern "C" fn dedup_count(p: *mut u8, n: usize) -> u32 {
    let s = slice_mut(p, n);
    for x in s.iter_mut() {
        *x &= 7;
    }
    s.sort_unstable();
    s.windows(2).filter(|w| w[0] != w[1]).count() as u32 + u32::from(!s.is_empty())
}

// ---- 整数：checked / wrapping / saturating、u128、位运算 --------------------------------

#[unsafe(no_mangle)]
pub extern "C" fn checked(a: i32, b: i32) -> i32 {
    a.checked_mul(b).and_then(|m| m.checked_add(b)).unwrap_or(i32::MIN)
}

#[unsafe(no_mangle)]
pub extern "C" fn sat(a: u8, b: u8, c: i16) -> i32 {
    i32::from(a.saturating_add(b)) + i32::from(c.saturating_sub(i16::from(a)).saturating_mul(3))
}

#[unsafe(no_mangle)]
pub extern "C" fn mulhi(a: u64, b: u64) -> u64 {
    ((u128::from(a) * u128::from(b)) >> 64) as u64
}

#[unsafe(no_mangle)]
pub extern "C" fn divmod128(a: u64, b: u64, c: u32) -> u64 {
    let x = u128::from(a) << 40 | u128::from(b);
    let d = u128::from(c | 1);
    ((x / d) as u64) ^ ((x % d) as u64)
}

#[unsafe(no_mangle)]
pub extern "C" fn bits(x: u64) -> u32 {
    x.count_ones() + x.leading_zeros() * 3 + x.trailing_zeros() * 7 + (x.reverse_bits() >> 60) as u32 + x.swap_bytes() as u32 % 13
}

#[unsafe(no_mangle)]
pub extern "C" fn isqrt(x: u64) -> u32 {
    x.isqrt() as u32
}

#[unsafe(no_mangle)]
pub extern "C" fn gcd(mut a: u64, mut b: u64) -> u64 {
    while b != 0 {
        (a, b) = (b, a % b);
    }
    a
}

#[unsafe(no_mangle)]
pub extern "C" fn digits(mut x: u64) -> u32 {
    let mut n = 0;
    while x > 0 {
        x /= 10;
        n += 1;
    }
    n
}

#[unsafe(no_mangle)]
pub extern "C" fn pow_mod(b: u32, mut e: u32, m: u32) -> u32 {
    let m = u64::from(m | 1);
    let (mut r, mut b) = (1u64, u64::from(b) % m);
    while e > 0 {
        if e & 1 == 1 {
            r = r * b % m;
        }
        b = b * b % m;
        e >>= 1;
    }
    r as u32
}

// ---- 浮点 ------------------------------------------------------------------------------

#[unsafe(no_mangle)]
pub extern "C" fn fmix(a: f32, b: f32) -> f32 {
    (a * b + 1.5).max(a - b).min(1e30)
}

#[unsafe(no_mangle)]
pub extern "C" fn dpoly(x: f64) -> f64 {
    [1.0, -0.5, 0.25, -0.125, 0.0625].iter().rev().fold(0.0, |acc, &c| acc * x + c)
}

#[unsafe(no_mangle)]
pub extern "C" fn to_int(x: f32, y: f64) -> i64 {
    i64::from(x as i32) + (y as i64) + i64::from(x as u8) + (y as u16) as i64
}

#[unsafe(no_mangle)]
pub extern "C" fn fclass(x: f64) -> u32 {
    match x.classify() {
        core::num::FpCategory::Nan => 1,
        core::num::FpCategory::Infinite => 2 + u32::from(x.is_sign_negative()),
        core::num::FpCategory::Zero => 4,
        core::num::FpCategory::Subnormal => 5,
        core::num::FpCategory::Normal => 6 + u32::from(x.abs() > 1.0),
    }
}

#[unsafe(no_mangle)]
pub extern "C" fn fsum(p: *const f32, n: usize) -> f32 {
    slice(p, n).iter().copied().filter(|x| x.is_finite()).map(|x| x.clamp(-1e6, 1e6)).sum()
}

// ---- match、enum、Option / Result ------------------------------------------------------

#[derive(Clone, Copy)]
enum Shape {
    Circle(u32),
    Rect { w: u32, h: u32 },
    Tri(u16, u16, u16),
    Empty,
}

impl Shape {
    #[inline(never)]
    fn of(tag: u32, a: u32, b: u32) -> Self {
        match tag % 4 {
            0 => Self::Circle(a % 1000),
            1 => Self::Rect { w: a % 1000, h: b % 1000 },
            2 => Self::Tri(a as u16, b as u16, (a ^ b) as u16),
            _ => Self::Empty,
        }
    }

    #[inline(never)]
    fn area(self) -> u64 {
        match self {
            Self::Circle(r) => u64::from(r) * u64::from(r) * 314 / 100,
            Self::Rect { w, h } => u64::from(w) * u64::from(h),
            Self::Tri(a, b, c) => u64::from(a.max(b).max(c)) * 2,
            Self::Empty => 0,
        }
    }
}

#[unsafe(no_mangle)]
pub extern "C" fn shape(tag: u32, a: u32, b: u32) -> u64 {
    Shape::of(tag, a, b).area()
}

#[unsafe(no_mangle)]
pub extern "C" fn classify(x: u32) -> u32 {
    match x % 7 {
        0 => 10,
        1 | 2 => 20,
        3 => x.wrapping_mul(3),
        4 => 99,
        _ => x.rotate_left(5),
    }
}

#[unsafe(no_mangle)]
pub extern "C" fn dense_switch(x: u8) -> u32 {
    // 连续的 case：llc 出跳转表
    match x {
        0 => 7,
        1 => 13,
        2 => 2,
        3 => 99,
        4 => 41,
        5 => 1000,
        6 => 3,
        7 => 77,
        8 => 12345,
        9 => 6,
        _ => u32::from(x) * 2,
    }
}

fn parse_digit(c: u8) -> Result<u32, u8> {
    match c {
        b'0'..=b'9' => Ok(u32::from(c - b'0')),
        b'a'..=b'f' => Ok(u32::from(c - b'a') + 10),
        _ => Err(c),
    }
}

#[unsafe(no_mangle)]
pub extern "C" fn parse_hex(p: *const u8, n: usize) -> i64 {
    let r: Result<u64, u8> = slice(p, n % 12).iter().try_fold(0u64, |acc, &c| Ok(acc * 16 + u64::from(parse_digit(c | 0x20)?)));
    match r {
        Ok(v) => v as i64,
        Err(c) => -i64::from(c),
    }
}

// ---- 结构体按值传 / 返回（sret、byval）---------------------------------------------------

#[derive(Clone, Copy)]
pub struct Big {
    a: u64,
    b: u32,
    c: [u16; 5],
    d: f64,
}

#[inline(never)]
fn make_big(x: u32) -> Big {
    Big { a: u64::from(x) << 20 | 7, b: x ^ 0x5a5a, c: [x as u16, 1, 2, (x >> 16) as u16, 9], d: f64::from(x) * 0.5 }
}

#[inline(never)]
fn digest(v: Big) -> u64 {
    v.a ^ u64::from(v.b) ^ v.c.iter().map(|&x| u64::from(x)).sum::<u64>() ^ (v.d as u64)
}

#[unsafe(no_mangle)]
pub extern "C" fn big_roundtrip(x: u32) -> u64 {
    digest(make_big(x))
}

#[derive(Clone, Copy)]
struct Pair(u32, u32);

#[inline(never)]
fn swap(p: Pair) -> Pair {
    Pair(p.1, p.0.wrapping_add(1))
}

#[unsafe(no_mangle)]
pub extern "C" fn pair(a: u32, b: u32) -> u64 {
    let p = swap(swap(Pair(a, b)));
    u64::from(p.0) << 32 | u64::from(p.1)
}

// ---- 泛型、trait、动态分发 ---------------------------------------------------------------

trait Op {
    fn apply(&self, x: i64) -> i64;
}

struct Add(i64);
struct Mul(i64);
struct Neg;

impl Op for Add {
    fn apply(&self, x: i64) -> i64 {
        x.wrapping_add(self.0)
    }
}

impl Op for Mul {
    fn apply(&self, x: i64) -> i64 {
        x.wrapping_mul(self.0)
    }
}

impl Op for Neg {
    fn apply(&self, x: i64) -> i64 {
        x.wrapping_neg()
    }
}

#[unsafe(no_mangle)]
pub extern "C" fn dyn_chain(x: i64, sel: u32) -> i64 {
    let ops: [&dyn Op; 4] = [&Add(3), &Mul(-7), &Neg, &Add(i64::MAX)];
    (0..8).fold(x, |acc, i| ops[((sel >> (2 * i)) & 3) as usize].apply(acc))
}

fn generic_max<T: PartialOrd + Copy>(s: &[T], init: T) -> T {
    s.iter().copied().fold(init, |m, x| if x > m { x } else { m })
}

#[unsafe(no_mangle)]
pub extern "C" fn gmax(p: *const u8, n: usize, q: *const i64, m: usize) -> i64 {
    i64::from(generic_max(slice(p, n), 0)) + generic_max(slice(q, m), i64::MIN / 2)
}

// ---- 格式化（core::fmt：大量间接调用与 trait 对象）---------------------------------------

struct Buf {
    data: [u8; 96],
    len: usize,
}

impl Write for Buf {
    fn write_str(&mut self, s: &str) -> core::fmt::Result {
        let room = self.data.len() - self.len;
        let n = s.len().min(room);
        self.data[self.len..self.len + n].copy_from_slice(&s.as_bytes()[..n]);
        self.len += n;
        if n < s.len() { Err(core::fmt::Error) } else { Ok(()) }
    }
}

#[unsafe(no_mangle)]
pub extern "C" fn fmt_hash(a: u32, b: i64, c: u8) -> u64 {
    let mut buf = Buf { data: [0; 96], len: 0 };
    let _ = write!(buf, "{a}|{b:x}|{:08b}|{:>6}|{:?}", c, a % 1000, (c, b < 0));
    buf.data[..buf.len].iter().fold(0xcbf2_9ce4_8422_2325u64, |h, &x| (h ^ u64::from(x)).wrapping_mul(0x100_0000_01b3)) ^ buf.len as u64
}

#[unsafe(no_mangle)]
pub extern "C" fn fmt_into(p: *mut u8, x: i32) -> u32 {
    let out = slice_mut(p, 60);
    let mut buf = Buf { data: [0; 96], len: 0 };
    let _ = write!(buf, "{x}:{:e}", x as f32 / 7.0);
    let n = buf.len.min(out.len());
    out[..n].copy_from_slice(&buf.data[..n]);
    n as u32
}

// ---- panic 路径（越界、溢出：两边都停在 panic_handler 的 unimp）---------------------------

#[unsafe(no_mangle)]
pub extern "C" fn index(p: *const u32, n: usize, i: usize) -> u32 {
    slice(p, n)[i % 80]
}

#[unsafe(no_mangle)]
pub extern "C" fn divide(a: i32, b: i32) -> i32 {
    a / b
}

// ---- double：多个 double 实参（ilp32d 放进 fa*）、比较、与整数 / float 的转换、取整 ----------------------------

#[unsafe(no_mangle)]
pub extern "C" fn dmix(a: f64, b: f64, k: i32, c: f64, d: f64) -> f64 {
    let m = if a < b { core::intrinsics::fmaf64(a, c, d) } else { (b - c) / (d.abs() + 1.0) };
    m + f64::from(k) * 0.25 + if a.is_nan() || b.is_nan() { 1.0 } else { 0.0 }
}

#[unsafe(no_mangle)]
pub extern "C" fn dcmp(a: f64, b: f64) -> u32 {
    u32::from(a < b) | u32::from(a <= b) << 1 | u32::from(a == b) << 2 | u32::from(a != b) << 3 | u32::from(a > b) << 4 | u32::from(a >= b) << 5 | u32::from(a.partial_cmp(&b).is_none()) << 6 | u32::from(a.total_cmp(&b).is_lt()) << 7
}

#[unsafe(no_mangle)]
pub extern "C" fn dconv(x: i64, y: u32, f: f32) -> f64 {
    x as f64 * 0.5 + f64::from(y) - f64::from(f) + (x as u64 as f64).sqrt_approx()
}

#[unsafe(no_mangle)]
pub extern "C" fn dtrunc(x: f64) -> i32 {
    (x as i32).wrapping_add(x as u32 as i32).wrapping_add((x * 1e-3) as i16 as i32).wrapping_add(x.to_bits() as i32)
}

#[unsafe(no_mangle)]
pub extern "C" fn dsum(p: *const f64, n: usize, scale: f64) -> f64 {
    // 缓冲区按 8 对齐（框架给 4 对齐的起点 ⇒ 往上取整）
    let p = ((p as usize + 7) & !7) as *const f64;
    slice(p, n % 32).iter().filter(|x| x.is_finite()).map(|x| x * scale).sum()
}

#[unsafe(no_mangle)]
pub extern "C" fn dret(a: f32, b: f64, c: f64) -> f32 {
    (f64::from(a) * b - c) as f32
}

/// 牛顿法开方（core 没有 sqrt）：给 `dconv` 用，⛔ 内联。
trait SqrtApprox {
    fn sqrt_approx(self) -> Self;
}

impl SqrtApprox for f64 {
    #[inline(never)]
    fn sqrt_approx(self) -> f64 {
        if !(self > 0.0) || self.is_infinite() {
            return 0.0;
        }
        (0..8).fold(self.max(1.0), |x, _| 0.5 * (x + self / x))
    }
}

// ---- 原子操作（只在开了 A 时编：没有 A 时 rustc 自己的 LLVM 选不了子字原子）---------------------------------

#[cfg(target_feature = "a")]
mod atomics {
    use core::sync::atomic::{AtomicI16, AtomicI8, AtomicPtr, AtomicU16, AtomicU32, AtomicU8, Ordering::*};

    /// 缓冲区里按 4 对齐的一处。
    fn at<T>(p: *mut u8, off: usize) -> &'static T {
        unsafe { &*(((p as usize + 3) & !3) as *const u8).add(off % 64).cast::<T>() }
    }

    #[unsafe(no_mangle)]
    pub extern "C" fn amo32(p: *mut u8, v: u32, w: u32) -> u32 {
        let a: &AtomicU32 = at(p, 0);
        let mut h = a.fetch_add(v, SeqCst) ^ a.fetch_sub(w, Acquire).rotate_left(3);
        h ^= a.fetch_and(v | 0x0f0f, Release) ^ a.fetch_or(w, Relaxed) ^ a.fetch_xor(v, AcqRel) ^ a.fetch_nand(w, SeqCst);
        h ^= a.fetch_max(v, SeqCst) ^ a.fetch_min(w, SeqCst) ^ a.swap(v ^ w, SeqCst);
        h ^ match a.compare_exchange(v ^ w, h, AcqRel, Acquire) {
            Ok(x) => x,
            Err(x) => !x,
        } ^ a.load(SeqCst)
    }

    #[unsafe(no_mangle)]
    pub extern "C" fn amo8(p: *mut u8, k: usize, v: u8) -> u32 {
        let a: &AtomicU8 = at(p, k % 4);
        let s: &AtomicI8 = at(p, 8 + k % 4);
        let mut h = u32::from(a.fetch_add(v, SeqCst)) | u32::from(a.fetch_nand(v, Relaxed)) << 8 | u32::from(a.fetch_xor(v, Acquire)) << 16;
        h ^= u32::from(a.fetch_and(v | 1, Release)) ^ u32::from(a.fetch_or(v >> 1, SeqCst)) << 4 ^ u32::from(a.fetch_max(v, SeqCst)) << 12;
        h ^= u32::from(a.fetch_min(v, SeqCst)) << 20 ^ s.fetch_max(v as i8, SeqCst) as u32 ^ (s.fetch_min(-(v as i8 >> 1), AcqRel) as u32) << 7;
        h ^ match a.compare_exchange(v, !v, SeqCst, Relaxed) {
            Ok(x) => u32::from(x),
            Err(x) => u32::from(x) << 24,
        } ^ u32::from(a.swap(v, Release)) ^ u32::from(a.load(Acquire)) << 9
    }

    #[unsafe(no_mangle)]
    pub extern "C" fn amo16(p: *mut u8, k: usize, v: u16) -> u32 {
        let a: &AtomicU16 = at(p, 2 * (k % 2));
        let s: &AtomicI16 = at(p, 12 + 2 * (k % 2));
        let mut h = u32::from(a.fetch_sub(v, SeqCst)) ^ u32::from(a.fetch_max(v, Acquire)) << 16 ^ u32::from(a.fetch_min(v >> 3, Release)) << 3;
        h ^= s.fetch_max(v as i16, SeqCst) as u32 ^ (s.fetch_min(v as i16 ^ -1, SeqCst) as u32) << 5;
        h ^ match a.compare_exchange_weak(v, v.wrapping_mul(3), SeqCst, SeqCst) {
            Ok(x) | Err(x) => u32::from(x),
        } ^ u32::from(a.fetch_nand(v, AcqRel)) << 1
    }

    #[unsafe(no_mangle)]
    pub extern "C" fn amoptr(p: *mut u8, k: usize) -> u32 {
        let slot: &AtomicPtr<u8> = at(p, 16);
        let base = ((p as usize + 3) & !3) as *mut u8;
        slot.store(base, Release);
        let want = unsafe { base.add(k % 32) };
        let swapped = slot.compare_exchange(base, want, SeqCst, SeqCst).is_ok();
        let got = slot.fetch_update(SeqCst, SeqCst, |q| Some(unsafe { q.add(1) })).unwrap_or(base);
        u32::from(swapped) | ((got as usize - base as usize) as u32) << 1 | ((slot.load(Acquire) as usize - base as usize) as u32) << 8
    }
}
