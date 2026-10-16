// 双精度（软浮点：调用 compiler-rt 的 __adddf3 一类）：四则、比较、与 int / long long / float 互转、级数求 π。
#include <stdint.h>

static uint64_t bits(double d) { union { double d; uint64_t u; } u = {d}; return u.u; }

int main(void) {
    uint64_t h = 0;
    double pi = 0;
    for (int k = 0; k < 200; k++) pi += (k % 2 ? -4.0 : 4.0) / (2 * k + 1);
    for (int i = -20; i < 20; i++) {
        double x = i * 1.25 + 0.5, y = (double)(i * i * i) / 9.0;
        h += bits(x * y) ^ bits(x / (y == 0 ? 3.0 : y)) ^ bits(x - y);
        h += (uint64_t)(x < y) + (uint64_t)(x >= y) * 2 + (uint64_t)(x != y) * 4;
        h += (uint64_t)(long long)(y * 1e6) + (uint64_t)(int)x + (uint64_t)(unsigned)(i + 20);
        float f = (float)y;
        h += bits((double)f) + bits((double)(long long)(x * 1e9));
        h = h << 7 | h >> 57;
    }
    h += bits(pi);
    return (int)(h ^ h >> 32);
}
