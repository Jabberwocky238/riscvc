//! 单核裸机的 `__atomic_*`（GCC / LLVM 的 libatomic 接口，`size_t` 版的不要）：没有 A 扩展时 riscvc（同 llc）把
//! 原子操作编成这些调用。单核、不开中断 ⇒ 一次普通的读 / 写 / 读改写就是原子的；内存序参数不用。
//! ⚠ 多核或开中断的场合不能用：那要 A 扩展，或者关中断包住。
//! ⛔ 这里面的读写不能再是原子操作（会递归调回自己）：一律经 `read_volatile` / `write_volatile`。
#![no_std]

/// 每个宽度一组：load / store / exchange / compare_exchange / fetch_{add,sub,and,or,xor,nand}。
macro_rules! atomics {
    ($($n:literal $t:ty),* $(,)?) => {$(
        const _: () = {
            #[unsafe(export_name = concat!("__atomic_load_", $n))]
            unsafe extern "C" fn load(p: *const $t, _order: i32) -> $t {
                unsafe { p.read_volatile() }
            }

            #[unsafe(export_name = concat!("__atomic_store_", $n))]
            unsafe extern "C" fn store(p: *mut $t, v: $t, _order: i32) {
                unsafe { p.write_volatile(v) }
            }

            #[unsafe(export_name = concat!("__atomic_exchange_", $n))]
            unsafe extern "C" fn exchange(p: *mut $t, v: $t, _order: i32) -> $t {
                unsafe {
                    let old = p.read_volatile();
                    p.write_volatile(v);
                    old
                }
            }

            /// `*p == *expected` ⇒ 写 `desired`、回 true；否则 `*expected = *p`、回 false。
            #[unsafe(export_name = concat!("__atomic_compare_exchange_", $n))]
            unsafe extern "C" fn compare_exchange(p: *mut $t, expected: *mut $t, desired: $t, _success: i32, _failure: i32) -> bool {
                unsafe {
                    let cur = p.read_volatile();
                    if cur == expected.read_volatile() {
                        p.write_volatile(desired);
                        true
                    } else {
                        expected.write_volatile(cur);
                        false
                    }
                }
            }

            rmw!($n $t; fetch_add |a: $t, b: $t| a.wrapping_add(b));
            rmw!($n $t; fetch_sub |a: $t, b: $t| a.wrapping_sub(b));
            rmw!($n $t; fetch_and |a: $t, b: $t| a & b);
            rmw!($n $t; fetch_or |a: $t, b: $t| a | b);
            rmw!($n $t; fetch_xor |a: $t, b: $t| a ^ b);
            rmw!($n $t; fetch_nand |a: $t, b: $t| !(a & b));
        };
    )*};
}

/// 读改写：回旧值。
macro_rules! rmw {
    ($n:literal $t:ty; $name:ident $f:expr) => {
        #[unsafe(export_name = concat!("__atomic_", stringify!($name), "_", $n))]
        unsafe extern "C" fn $name(p: *mut $t, v: $t, _order: i32) -> $t {
            unsafe {
                let old = p.read_volatile();
                p.write_volatile($f(old, v));
                old
            }
        }
    };
}

atomics!(1 u8, 2 u16, 4 u32, 8 u64);
