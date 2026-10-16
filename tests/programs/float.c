// 单精度：四则、开方、fma、比较（含 NaN）、与整数互转（截断、无符号、饱和外的边界）、牛顿迭代、级数。
#include <stdint.h>

static uint32_t bits(float f) { union { float f; uint32_t u; } u = {f}; return u.u; }

static float newton_sqrt(float x) {
    float g = x > 1 ? x / 2 : 1;
    for (int i = 0; i < 20; i++) g = 0.5f * (g + x / g);
    return g;
}

static float poly(float x) { return ((0.1f * x - 0.3f) * x + 1.7f) * x - 2.0f; }

int main(void) {
    uint32_t h = 0;
    float acc = 0;
    const float nan = __builtin_nanf("");
    for (int i = -50; i < 50; i++) {
        float x = (float)i * 0.37f + 0.01f;
        float y = (float)(i * i) / 7.0f - 3.0f;
        acc += x * y - x / (y == 0 ? 1 : y);
        h += bits(__builtin_sqrtf(__builtin_fabsf(x)));
        h ^= bits(__builtin_fmaf(x, y, acc));
        h += (uint32_t)(x < y) + (uint32_t)(x <= y) * 2 + (uint32_t)(x == y) * 4 + (uint32_t)(nan < x) * 8 + (uint32_t)(nan != x) * 16;
        h += (uint32_t)(int)(x * 1000.0f) + (uint32_t)(unsigned)(__builtin_fabsf(y) * 100.0f);
        h += bits((float)(int)(y * 3.0f)) + bits((float)(unsigned)(i + 50) * 1.5f);
        h += bits(__builtin_fminf(x, y)) ^ bits(__builtin_fmaxf(x, nan));
        h += bits(poly(x)) >> 3;
        h = h << 3 | h >> 29;
    }
    float e = 1, term = 1;
    for (int k = 1; k < 15; k++) { term /= (float)k; e += term; }
    h += bits(e) + bits(newton_sqrt(2.0f)) + bits(acc);
    return (int)h;
}
