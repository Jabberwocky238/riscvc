// 函数指针：回调、分发表、高阶函数（map / fold）、指向静态函数与递归的指针。
#include <stdint.h>

typedef int (*unop)(int);
typedef int (*binop)(int, int);

static int sq(int x) { return x * x; }
static int neg(int x) { return -x; }
static int half(int x) { return x / 2; }
static int inc(int x) { return x + 1; }
static int add(int a, int b) { return a + b; }
static int mx(int a, int b) { return a > b ? a : b; }
static int mix(int a, int b) { return a * 31 ^ b; }

static const unop unops[] = {sq, neg, half, inc};
static binop binops[] = {add, mx, mix};

static void map(int *a, int n, unop f) { for (int i = 0; i < n; i++) a[i] = f(a[i]); }
static int fold(const int *a, int n, int init, binop f) { for (int i = 0; i < n; i++) init = f(init, a[i]); return init; }

static int compose(const unop *fs, int n, int x) { for (int i = 0; i < n; i++) x = fs[i](x); return x; }

static int fib(int n);
static int (*volatile fibp)(int) = fib;
static int fib(int n) { return n < 2 ? n : fibp(n - 1) + fibp(n - 2); }

int main(void) {
    int a[16];
    uint32_t h = 0;
    for (int round = 0; round < 8; round++) {
        for (int i = 0; i < 16; i++) a[i] = i * 7 - 40 + round;
        map(a, 16, unops[round % 4]);
        h = h * 13 + (uint32_t)fold(a, 16, round, binops[round % 3]);
        h += (uint32_t)compose(unops, 4, round * 5 - 9);
    }
    binops[0] = mix;
    h ^= (uint32_t)fold(a, 16, 1, binops[0]);
    return (int)(h + (uint32_t)fib(15));
}
