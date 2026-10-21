//! 自检程序：启动代码（tools/rust-build.sh 的 crt：设栈、调 `check`、`ebreak`）把返回值（失败的检查个数）留在 a0。
//! 每条检查的期望值都是手算 / 常识（⛔ 拿 riscvc 的输出当期望）。
#![no_std]
#![feature(core_intrinsics)]
#![allow(internal_features)]

use core::fmt::Write;

#[panic_handler]
fn panic(_: &core::panic::PanicInfo) -> ! {
    core::intrinsics::abort()
}


/// 不让优化器把检查折成常数（实参从这里过一道）。
#[inline(never)]
fn id<T>(x: T) -> T {
    core::hint::black_box(x)
}

struct Buf {
    data: [u8; 128],
    len: usize,
}

impl Write for Buf {
    fn write_str(&mut self, s: &str) -> core::fmt::Result {
        let end = self.len + s.len();
        self.data.get_mut(self.len..end).ok_or(core::fmt::Error)?.copy_from_slice(s.as_bytes());
        self.len = end;
        Ok(())
    }
}

#[derive(Debug, Clone, Copy, PartialEq)]
enum Token {
    Num(i64),
    Op(u8),
}

/// 逆波兰表达式求值（切片、match、Option、栈）。
fn rpn(tokens: &[Token]) -> Option<i64> {
    let mut stack = [0i64; 16];
    let mut sp = 0;
    for t in tokens {
        match *t {
            Token::Num(n) => {
                *stack.get_mut(sp)? = n;
                sp += 1;
            }
            Token::Op(op) => {
                let b = stack[sp.checked_sub(1)?];
                let a = stack[sp.checked_sub(2)?];
                sp -= 2;
                stack[sp] = match op {
                    b'+' => a.checked_add(b)?,
                    b'-' => a.checked_sub(b)?,
                    b'*' => a.checked_mul(b)?,
                    b'/' => a.checked_div(b)?,
                    _ => return None,
                };
                sp += 1;
            }
        }
    }
    (sp == 1).then(|| stack[0])
}

#[unsafe(no_mangle)]
pub extern "C" fn check() -> u32 {
    let mut fails = 0u32;
    let mut expect = |ok: bool| fails += u32::from(!ok);

    // 整数、u128、checked / wrapping
    expect(id(7u32).pow(3) == 343);
    expect(u128::from(id(u64::MAX)) * u128::from(id(u64::MAX)) == 0xffff_ffff_ffff_fffe_0000_0000_0000_0001);
    expect(id(i32::MAX).checked_add(1).is_none());
    expect(id(200u8).wrapping_add(100) == 44);
    expect(id(-17i64).rem_euclid(5) == 3);
    expect(id(0x1234_5678u32).swap_bytes() == 0x7856_3412);
    expect(id(1u64 << 40).leading_zeros() == 23);

    // 浮点
    expect(id(1.5f32) * id(2.0) == 3.0);
    // 牛顿法开方（core 没有 sqrt）：√2 ∈ (1.41421, 1.41422)
    let r = (0..6).fold(id(1.0f64), |x, _| 0.5 * (x + 2.0 / x));
    expect(r > 1.41421 && r < 1.41422);
    expect(id(-7.9f32) as i32 == -7);
    expect(id(f64::NAN).max(1.0) == 1.0);

    // 切片、迭代器、排序
    let mut v = [id(5u32), 3, 9, 1, 7, 3, 8];
    v.sort_unstable();
    expect(v == [1, 3, 3, 5, 7, 8, 9]);
    expect(v.binary_search(&7) == Ok(4));
    expect(v.iter().rev().skip(1).step_by(2).sum::<u32>() == 8 + 5 + 3);
    expect(v.windows(2).filter(|w| w[0] == w[1]).count() == 1);

    // enum、match、Option
    let prog = [Token::Num(id(3)), Token::Num(4), Token::Op(b'+'), Token::Num(5), Token::Op(b'*')];
    expect(rpn(&prog) == Some(35));
    expect(rpn(&[Token::Num(1), Token::Op(b'+')]).is_none());
    expect(rpn(&[Token::Num(i64::MAX), Token::Num(2), Token::Op(b'*')]).is_none());

    // 格式化
    let mut b = Buf { data: [0; 128], len: 0 };
    let _ = write!(b, "{}-{:x}-{:>4}|{:?}", id(-42i32), id(255u8), id(7u16), Token::Op(b'+'));
    expect(&b.data[..b.len] == b"-42-ff-   7|Op(43)");

    // double（有 D：fa 寄存器里的硬件运算；没有：软浮点）。期望值都是手算 / 常识
    {
        let (x, y) = (id(1.0e300f64), id(-2.5f64));
        expect(x * y == -2.5e300 && (x * y * 1.0e10).is_infinite());
        expect(core::intrinsics::sqrtf64(id(2.25)) == 1.5);
        expect(core::intrinsics::fmaf64(id(2.0), id(3.0), id(0.5)) == 6.5);
        expect(id(-7.9f64) as i64 == -7 && id(3_000_000_000.7f64) as u32 == 3_000_000_000 && id(-1.0f64) as u32 == 0);
        expect(id(i64::MIN) as f64 == -9.223_372_036_854_775_808e18 && id(u64::MAX) as f64 == 1.844_674_407_370_955_2e19);
        expect(id(16_777_217i32) as f32 as f64 == 16_777_216.0 && f64::from(id(0.1f32)) != 0.1);
        expect(id(f64::NAN) != id(f64::NAN) && id(-0.0f64) == 0.0 && id(-0.0f64).is_sign_negative());
        expect(id(0.1f64) + 0.2 != 0.3 && (id(0.1f64) + 0.2 - 0.3).abs() < 1e-16);
        expect(id(1.5f64).to_bits() == 0x3ff8_0000_0000_0000 && f64::from_bits(id(0x4009_21fb_5444_2d18)) > 3.14159);
        expect(id(2.0f64).max(f64::NAN) == 2.0 && id(-3.0f64).min(-0.0) == -3.0 && id(-2.5f64).abs() == 2.5);
        let sum = (1..=20).map(|k| 1.0 / f64::from(id(k))).sum::<f64>();
        expect(sum > 3.597_739 && sum < 3.597_740);
        let mut b = Buf { data: [0; 128], len: 0 };
        let _ = write!(b, "{:.3} {} {:e} {:e}", id(core::f64::consts::PI), id(0.1f64) + 0.2, id(1.0e-7f64), id(-1.5e300f64));
        expect(&b.data[..b.len] == b"3.142 0.30000000000000004 1e-7 -1.5e300");
    }

    // 原子操作（A：amo / LR-SC）。⚠ 没有 A 时 rustc 自己的 LLVM 选不了子字原子（Cannot select AtomicLoadAnd）⇒ 只在开了 A 时编
    // 期望值都是手算的
    #[cfg(target_feature = "a")]
    {
        use core::sync::atomic::{AtomicBool, AtomicI16, AtomicI8, AtomicPtr, AtomicU16, AtomicU32, AtomicU8, Ordering::*};
        let a8 = AtomicU8::new(id(0xf0));
        expect(a8.fetch_add(0x20, SeqCst) == 0xf0 && a8.load(Acquire) == 0x10);
        expect(a8.fetch_nand(0x18, AcqRel) == 0x10 && a8.load(Relaxed) == 0xef);
        expect(a8.fetch_max(0xf0, SeqCst) == 0xef && a8.fetch_min(0x07, SeqCst) == 0xf0 && a8.load(SeqCst) == 0x07);
        expect(a8.compare_exchange(0x07, 0x99, AcqRel, Acquire) == Ok(0x07));
        expect(a8.compare_exchange(0x07, 0x11, SeqCst, Relaxed) == Err(0x99));
        let s8 = AtomicI8::new(id(-3));
        expect(s8.fetch_max(5, SeqCst) == -3 && s8.fetch_min(-100, SeqCst) == 5 && s8.load(SeqCst) == -100);
        let a16 = AtomicU16::new(id(0xfff0));
        expect(a16.fetch_add(0x20, SeqCst) == 0xfff0 && a16.swap(0xabcd, Release) == 0x0010);
        expect(a16.fetch_and(0x0ff0, SeqCst) == 0xabcd && a16.fetch_or(0x8001, SeqCst) == 0x0bc0 && a16.fetch_xor(0xffff, SeqCst) == 0x8bc1);
        let s16 = AtomicI16::new(id(-300));
        expect(s16.fetch_max(-5, SeqCst) == -300 && s16.load(SeqCst) == -5);
        let a32 = AtomicU32::new(id(1000));
        expect(a32.fetch_sub(2000, SeqCst) == 1000 && a32.load(SeqCst) == 1000u32.wrapping_sub(2000));
        expect(a32.fetch_update(SeqCst, SeqCst, |x| Some(x.rotate_left(4))) == Ok(1000u32.wrapping_sub(2000)));
        expect(a32.fetch_umax_check() == 0xffff_c18f);
        let flag = AtomicBool::new(id(false));
        expect(!flag.fetch_or(true, SeqCst) && flag.fetch_and(false, SeqCst) && !flag.load(SeqCst));
        let mut cells = [id(1u32), 2, 3];
        let p = AtomicPtr::new(&raw mut cells[0]);
        let next = &raw mut cells[2];
        expect(p.compare_exchange(&raw mut cells[0], next, SeqCst, SeqCst).is_ok() && unsafe { *p.load(Acquire) } == 3);
        core::sync::atomic::fence(SeqCst);
        core::sync::atomic::compiler_fence(SeqCst);
    }

    fails
}

#[cfg(target_feature = "a")]
/// `fetch_max` 的无符号版：`u32::fetch_max` 走 amomaxu。读回调整后的值（rotate 后是 0xffffc18f，与 0x10 取大不变）。
trait UMaxCheck {
    fn fetch_umax_check(&self) -> u32;
}

#[cfg(target_feature = "a")]
impl UMaxCheck for core::sync::atomic::AtomicU32 {
    fn fetch_umax_check(&self) -> u32 {
        self.fetch_max(id(0x10), core::sync::atomic::Ordering::SeqCst);
        self.load(core::sync::atomic::Ordering::SeqCst)
    }
}
