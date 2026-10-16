// 排序：快排（递归、划分）、插入排序、堆排序，结果互相核对后回校验和。
#include <stdint.h>

static uint32_t seed = 12345;
static uint32_t next(void) { seed ^= seed << 13; seed ^= seed >> 17; seed ^= seed << 5; return seed; }

static void quick(int *a, int lo, int hi) {
    while (lo < hi) {
        int p = a[(lo + hi) / 2], i = lo, j = hi;
        while (i <= j) {
            while (a[i] < p) i++;
            while (a[j] > p) j--;
            if (i <= j) { int t = a[i]; a[i] = a[j]; a[j] = t; i++; j--; }
        }
        if (j - lo < hi - i) { quick(a, lo, j); lo = i; } else { quick(a, i, hi); hi = j; }
    }
}

static void insertion(int *a, int n) {
    for (int i = 1; i < n; i++) {
        int v = a[i], j = i - 1;
        while (j >= 0 && a[j] > v) { a[j + 1] = a[j]; j--; }
        a[j + 1] = v;
    }
}

static void sift(int *a, int i, int n) {
    for (;;) {
        int l = 2 * i + 1, m = i;
        if (l < n && a[l] > a[m]) m = l;
        if (l + 1 < n && a[l + 1] > a[m]) m = l + 1;
        if (m == i) return;
        int t = a[i]; a[i] = a[m]; a[m] = t; i = m;
    }
}

static void heap(int *a, int n) {
    for (int i = n / 2 - 1; i >= 0; i--) sift(a, i, n);
    for (int k = n - 1; k > 0; k--) { int t = a[0]; a[0] = a[k]; a[k] = t; sift(a, 0, k); }
}

#define N 300
static int x[N], y[N], z[N];

int main(void) {
    for (int i = 0; i < N; i++) x[i] = y[i] = z[i] = (int)(next() % 2001) - 1000;
    quick(x, 0, N - 1);
    insertion(y, N);
    heap(z, N);
    uint32_t h = 0;
    for (int i = 0; i < N; i++) {
        if (x[i] != y[i] || y[i] != z[i]) return 1000 + i;
        if (i && x[i - 1] > x[i]) return 2000 + i;
        h = h * 31 + (uint32_t)x[i];
    }
    return (int)h;
}
