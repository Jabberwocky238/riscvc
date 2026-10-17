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

    fails
}
