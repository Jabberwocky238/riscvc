// 大数：32 位一节的加、乘、除以小数、转十进制；算 50! 与 2^200，按十进制位哈希。
#include <stdint.h>

#define W 24
typedef struct { uint32_t d[W]; } Big;

static void mul_small(Big *a, uint32_t k) {
    uint64_t c = 0;
    for (int i = 0; i < W; i++) { c += (uint64_t)a->d[i] * k; a->d[i] = (uint32_t)c; c >>= 32; }
}

static void add(Big *a, const Big *b) {
    uint64_t c = 0;
    for (int i = 0; i < W; i++) { c += (uint64_t)a->d[i] + b->d[i]; a->d[i] = (uint32_t)c; c >>= 32; }
}

static uint32_t div_small(Big *a, uint32_t k) {
    uint64_t r = 0;
    for (int i = W - 1; i >= 0; i--) { r = r << 32 | a->d[i]; a->d[i] = (uint32_t)(r / k); r %= k; }
    return (uint32_t)r;
}

static int zero(const Big *a) { for (int i = 0; i < W; i++) if (a->d[i]) return 0; return 1; }

static uint32_t digits(Big a) {
    uint32_t h = 0;
    int n = 0;
    while (!zero(&a)) { h = h * 10 + div_small(&a, 10); n++; }
    return h * 1000u + (uint32_t)n;
}

int main(void) {
    Big f = {{1}}, p = {{1}}, s = {{0}};
    for (uint32_t k = 2; k <= 50; k++) mul_small(&f, k);
    for (int k = 0; k < 200; k++) mul_small(&p, 2);
    s = f;
    add(&s, &p);
    return (int)(digits(f) ^ digits(p) * 3u ^ digits(s) * 5u);
}
