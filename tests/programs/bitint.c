// 宽整数（_BitInt：i128，还有 i48 / i96 / i112 这类顶字不满的）：加减乘除余（有符号 / 无符号，就地展开）、
// 常数与变量移位（i128 经栈）、比较、截断 / 扩展；跨函数传（比 2×XLEN 宽的按引用、返回走 sret）。
// ⚠ clang 在 riscv32 上 _BitInt 最宽 128；更宽的（i256、i322）由 lit 的 fixture 覆盖。
#include <stdint.h>

typedef unsigned _BitInt(128) u128;
typedef signed _BitInt(128) s128;
typedef unsigned _BitInt(112) u112;
typedef signed _BitInt(112) s112;
typedef unsigned _BitInt(96) u96;
typedef signed _BitInt(96) s96;
typedef unsigned _BitInt(48) u48;
typedef signed _BitInt(48) s48;

static uint64_t s = 0x9e3779b97f4a7c15ull;
static uint64_t next(void) { s ^= s << 13; s ^= s >> 7; s ^= s << 17; return s; }

static u128 make128(void) { return (u128)next() << 64 | next(); }

__attribute__((noinline)) u128 mix128(u128 a, u128 b, int sh) {
    return (a * b) ^ (a << sh) ^ (b >> (127 - sh)) ^ (a + b) ^ (a - b) ^ (a << 37) ^ (b >> 70) ^ (u128)((s128)a >> sh);
}

__attribute__((noinline)) s128 sdiv128(s128 a, s128 b) { return (s128)((u128)(a / b) + (u128)(a % b)); }
__attribute__((noinline)) u128 udiv128(u128 a, u128 b) { return a / b ^ a % b; }

__attribute__((noinline)) s112 mix112(s112 a, s112 b, int sh) {
    return (s112)((u112)a * (u112)b + (u112)(a >> sh) - ((u112)b << (sh / 2))) + a / (b >> 60 | 1) + a % (b | 1);
}

__attribute__((noinline)) s96 mix96(s96 a, s96 b) { return (s96)((u96)a * (u96)b - (u96)(a >> 50)) + a / (b | 1); }

__attribute__((noinline)) u48 mix48(u48 a, s48 b, int sh) { return a * (u48)b + (u48)(b >> sh) + a / ((u48)b | 1) + (u48)(b % 1000); }

static uint32_t fold(u128 v) {
    uint32_t h = 0;
    for (int i = 0; i < 4; i++) {
        h = h * 31 + (uint32_t)v;
        v >>= 32;
    }
    return h;
}

int main(void) {
    uint32_t h = 0;
    for (int i = 0; i < 40; i++) {
        u128 a = make128(), b = make128() | 1;
        int sh = (int)(next() % 128);
        h = h * 33 + fold(mix128(a, b, sh));
        h = h * 33 + fold((u128)sdiv128((s128)a, (s128)(b >> (i * 3)) | 1));
        h = h * 33 + fold(udiv128(a, b >> (i * 3) | 1));
        s112 c = (s112)a, d = (s112)(b >> (i * 2));
        h = h * 33 + fold((u128)mix112(c, d, sh % 112));
        h = h * 33 + fold((u128)mix96((s96)a, (s96)b));
        h = h * 33 + (uint32_t)mix48((u48)a, (s48)b, sh % 48);
        h += (a < b) + ((s128)a < (s128)b) * 2 + (c >= d) * 4 + ((s96)a > (s96)b) * 8 + (uint32_t)(int8_t)((s128)a >> 120);
        h += (uint32_t)(u48)(c >> 64) + (uint32_t)(s48)(s128)d;
    }
    return (int)h;
}
