// 可变参数：求和（int / long long / double 混着来）、自己写的小 printf 拼到缓冲区。
#include <stdarg.h>
#include <stdint.h>

static int sum(int n, ...) {
    va_list ap;
    va_start(ap, n);
    int s = 0;
    for (int i = 0; i < n; i++) s += va_arg(ap, int) * (i + 1);
    va_end(ap);
    return s;
}

static long long mixed(int n, ...) {
    va_list ap;
    va_start(ap, n);
    long long s = 0;
    for (int i = 0; i < n; i++) {
        switch (i % 3) {
        case 0: s += va_arg(ap, int); break;
        case 1: s ^= va_arg(ap, long long); break;
        default: s += (long long)(va_arg(ap, double) * 100.0); break;
        }
    }
    va_end(ap);
    return s;
}

static char buf[256];

static int fmt(char *out, const char *f, ...) {
    va_list ap;
    va_start(ap, f);
    int n = 0;
    for (; *f; f++) {
        if (*f != '%') { out[n++] = *f; continue; }
        f++;
        if (*f == 'd') {
            int v = va_arg(ap, int);
            unsigned u = v < 0 ? 0u - (unsigned)v : (unsigned)v;
            char t[12]; int k = 0;
            do { t[k++] = (char)('0' + u % 10); u /= 10; } while (u);
            if (v < 0) out[n++] = '-';
            while (k) out[n++] = t[--k];
        } else if (*f == 's') {
            for (const char *s = va_arg(ap, const char *); *s; s++) out[n++] = *s;
        } else if (*f == 'c') {
            out[n++] = (char)va_arg(ap, int);
        }
    }
    va_end(ap);
    out[n] = 0;
    return n;
}

int main(void) {
    uint32_t h = (uint32_t)sum(5, 1, 2, 3, 4, 5) + (uint32_t)sum(9, 9, -8, 7, -6, 5, -4, 3, -2, 1) * 3u;
    long long m = mixed(7, 10, 0x123456789ll, 2.5, -3, -1ll, 0.125, 99);
    h += (uint32_t)m ^ (uint32_t)(m >> 32);
    int n = fmt(buf, "x=%d y=%d %s%c|%d", 42, -2147483647 - 1, "abc", '!', 0);
    for (int i = 0; i < n; i++) h = h * 37 + (uint8_t)buf[i];
    return (int)h;
}
