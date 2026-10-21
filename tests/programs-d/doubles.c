// D 扩展（ilp32d）：double 的运算、比较（含 NaN）、转换、调用约定（fa 用完落到整数对、再上栈；可变参数；结构体）、
// 寄存器压力下的溢出与被调方保存；main 回校验和（判据是 riscvc 与 llc 两边相同）。
#include <stdarg.h>
typedef unsigned u32;
typedef unsigned long long u64;

static u32 mix(u32 h, u32 v) {
    return (h ^ v) * 0x01000193u + 0x9e3779b9u;
}

static u32 bits(double d) {
    union { double d; u64 u; } x = {d};
    return (u32)x.u ^ (u32)(x.u >> 32);
}

static volatile double vz = 0.0;

__attribute__((noinline)) static double sum10(double a0, double a1, double a2, double a3, double a4, double a5, double a6, double a7,
                                              double a8, double a9, int k, double a10, float f) {
    return a0 - a1 + a2 * a3 - a4 / a5 + a6 + a7 * 0.5 + a8 - a9 + k + a10 * 3 + f;
}

__attribute__((noinline)) static double vsum(int n, ...) {
    va_list ap;
    va_start(ap, n);
    double s = 0;
    for (int i = 0; i < n; ++i) {
        s += (i & 1) ? (double)va_arg(ap, int) : va_arg(ap, double);
    }
    va_end(ap);
    return s;
}

struct dd { double a, b; };
struct di { double a; int b; };
struct big { double a, b, c; };

__attribute__((noinline)) static struct dd swapdd(struct dd x) {
    return (struct dd){x.b * 2, x.a - 1};
}

__attribute__((noinline)) static struct di mkdi(double a, int b) {
    return (struct di){a / 3, b + 1};
}

__attribute__((noinline)) static struct big scale(struct big x, double k) {
    return (struct big){x.a * k, x.b * k, x.c * k};
}

__attribute__((noinline)) static double keep(double x, double (*f)(double)) {
    double a = f(x), b = f(a), c = f(b);
    return a + b * 2 + c * 3 + x;
}

static double halve(double x) {
    return x * 0.5 + 1;
}

__attribute__((noinline)) static double pressure(const double *v, int n) {
    double a = 0, b = 1, c = 2, d = 3, e = 4, f = 5, g = 6, h = 7, i = 8, j = 9, k = 10, l = 11, m = 12, o = 13, p = 14, q = 15,
           r = 16, s = 17, t = 18, u = 19, w = 20, x = 21, y = 22, z = 23, aa = 24, bb = 25, cc = 26, dd = 27, ee = 28, ff = 29, gg = 30, hh = 31, ii = 32, jj = 33;
    for (int it = 0; it < n; ++it) {
        double q0 = v[it];
        a += q0; b *= 1.0001; c -= q0; d += b; e += c * 0.1; f -= d * 0.01; g += e; h -= f; i += g * 0.5; j -= h * 0.5;
        k += i; l += j; m += k * 0.25; o -= l * 0.25; p += m; q -= o; r += p; s -= q; t += r * 0.125; u -= s * 0.125;
        w += t; x -= u; y += w; z -= x; aa += y; bb -= z; cc += aa; dd -= bb; ee += cc; ff -= dd; gg += ee; hh -= ff; ii += gg; jj -= hh;
    }
    return a + b + c + d + e + f + g + h + i + j + k + l + m + o + p + q + r + s + t + u + w + x + y + z + aa + bb + cc + dd + ee + ff + gg + hh + ii + jj;
}

int main(void) {
    u32 h = 0x811c9dc5u;
    double nan = vz / vz, inf = 1.0 / vz, one = vz + 1.0;
    double xs[] = {1.5, -2.25, 1e300, -1e-300, 3.0, 0.1, -0.0, 7.75, 123456789.125, -9.5};
    for (int i = 0; i < 10; ++i) {
        double a = xs[i], b = xs[(i * 7 + 3) % 10];
        h = mix(h, bits(a + b));
        h = mix(h, bits(a - b));
        h = mix(h, bits(a * b));
        h = mix(h, bits(a / (b == 0 ? 1 : b)));
        h = mix(h, bits(__builtin_sqrt(__builtin_fabs(a))));
        h = mix(h, bits(__builtin_fma(a, b, one)));
        h = mix(h, bits(__builtin_copysign(a, b)));
        h = mix(h, bits(__builtin_fmin(a, b)));
        h = mix(h, bits(__builtin_fmax(a, nan)));
        h = mix(h, (u32)(a < b) | (u32)(a <= b) << 1 | (u32)(a == b) << 2 | (u32)(a != b) << 3 | (u32)(a > nan) << 4 |
                       (u32)__builtin_isunordered(a, nan) << 5 | (u32)__builtin_isgreaterequal(b, a) << 6 | (u32)__builtin_islessgreater(a, b) << 7);
        h = mix(h, (u32)(int)(a / 1e290));
        h = mix(h, (u32)(long long)(b * 1000));
        h = mix(h, (u32)((unsigned long long)__builtin_fabs(a * 1e3) >> 3));
        h = mix(h, bits((double)(int)(i * -77)));
        h = mix(h, bits((double)(unsigned)(i * 0x9e3779b9u)));
        h = mix(h, bits((double)(long long)i * 0x123456789ll));
        float fa = (float)a;
        h = mix(h, *(u32 *)&fa);
        h = mix(h, bits((double)fa * 3));
        h = mix(h, (u32)__builtin_isnan(a * inf) | (u32)__builtin_isinf(a * inf) << 1 | (u32)__builtin_isfinite(a) << 2);
    }
    h = mix(h, bits(sum10(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13.5f)));
    h = mix(h, bits(vsum(6, 1.25, 7, -3.5, 9, 1e10, 11)));
    struct dd p = swapdd((struct dd){3.5, -8});
    h = mix(h, bits(p.a) ^ bits(p.b));
    struct di q = mkdi(10, 41);
    h = mix(h, bits(q.a) ^ (u32)q.b);
    struct big r = scale((struct big){1, 2, 3}, 2.5);
    h = mix(h, bits(r.a + r.b + r.c));
    h = mix(h, bits(keep(100, halve)));
    double arr[64];
    for (int i = 0; i < 64; ++i) {
        arr[i] = i * 0.37 - 5;
    }
    h = mix(h, bits(pressure(arr, 64)));
    // 未对齐的 double（packed）
    struct __attribute__((packed)) { char c; double d; } pk = {1, 2.5};
    volatile char *pc = (volatile char *)&pk;
    pc[0] = 3;
    pk.d = pk.d * 3 + pk.c;
    h = mix(h, bits(pk.d));
    return (int)h;
}
