// 位操作：popcount / clz / ctz / ffs（32 与 64 位）、bswap、循环移位、位反转、提取位段。
#include <stdint.h>

static uint32_t rev32(uint32_t x) {
    x = (x >> 1 & 0x55555555u) | (x & 0x55555555u) << 1;
    x = (x >> 2 & 0x33333333u) | (x & 0x33333333u) << 2;
    x = (x >> 4 & 0x0f0f0f0fu) | (x & 0x0f0f0f0fu) << 4;
    return __builtin_bswap32(x);
}

static uint32_t rotr(uint32_t x, unsigned r) { return x >> (r & 31) | x << (-r & 31); }

int main(void) {
    uint32_t h = 0, x = 0xdeadbeef;
    uint64_t y = 0x0123456789abcdefull;
    for (int i = 0; i < 500; i++) {
        x = x * 69069u + 1;
        y = y * 6364136223846793005ull + 1442695040888963407ull;
        uint32_t v = x >> (i % 32);
        uint64_t w = y >> (i % 64);
        h += (uint32_t)__builtin_popcount(v) + (uint32_t)__builtin_popcountll(w) * 3u;
        h += v ? (uint32_t)__builtin_clz(v) : 32u;
        h += w ? (uint32_t)__builtin_ctzll(w) * 5u : 64u;
        h += (uint32_t)__builtin_ffs((int)v) + (uint32_t)__builtin_ffsll((long long)w);
        h ^= __builtin_bswap32(v) + (uint32_t)(__builtin_bswap64(w) >> 17);
        h += rotr(v, (unsigned)i) ^ rev32(v);
        h += (v >> 7 & 0x3ff) | (uint32_t)(w >> 40 & 0xfff) << 10;
        h = h << 1 | h >> 31;
    }
    return (int)h;
}
