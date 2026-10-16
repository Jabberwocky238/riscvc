// 64 位整数：加减乘除余（有符号 / 无符号，走 __divdi3 一类）、移位（跨 32 位）、比较、溢出检查、转换。
#include <stdint.h>

static uint64_t s = 0x123456789abcdef0ull;
static uint64_t next(void) { s ^= s << 7; s ^= s >> 9; return s; }

int main(void) {
    uint64_t h = 0;
    for (int i = 0; i < 200; i++) {
        uint64_t a = next(), b = next() | 1;
        int64_t x = (int64_t)a, y = (int64_t)(b >> (i % 40)) | 1;
        int sh = i % 64;
        h += a * b;
        h ^= a / b + a % b;
        h += (uint64_t)(x / y) ^ (uint64_t)(x % y);
        h += (a << sh) ^ (a >> sh) ^ (uint64_t)(x >> sh);
        h += (uint64_t)((a < b) + (x < y) * 2 + (x == y) * 4 + (a >= b) * 8);
        int64_t r;
        h += (uint64_t)__builtin_mul_overflow(x, y, &r) + (uint64_t)r;
        h += (uint64_t)__builtin_add_overflow(x, y, &r) * 3 + (uint64_t)r;
        h += (uint64_t)(int32_t)(a >> 32) + (uint64_t)(uint16_t)b + (uint64_t)(int8_t)a;
        h = (h << 13) | (h >> 51);
    }
    return (int)(h ^ (h >> 32));
}
