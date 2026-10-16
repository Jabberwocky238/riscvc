// 全局数据：初始化的表（const / 可写）、指针数组、二维表、字符串表、static 局部变量、指针运算与跨数组下标。
#include <stdint.h>

static const int primes[] = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47};
static int counts[16] = {[3] = 7, [9] = -2};
static const char *const names[] = {"zero", "one", "two", "three", "four", "five"};
static const int16_t grid[4][5] = {{1, 2, 3, 4, 5}, {-1, -2, -3}, {[4] = 9}, {7}};
static int *const where = &counts[5];
static struct { char c; int i; short s; } mixed[3] = {{'a', 1, 2}, {'b', -3, 4}, {'c', 5, -6}};

static int tick(void) { static int n = 100; return n++; }

int main(void) {
    uint32_t h = 0;
    for (unsigned i = 0; i < sizeof primes / sizeof *primes; i++) {
        counts[primes[i] % 16] += primes[i];
        h = h * 7 + (uint32_t)primes[i];
    }
    *where += 1000;
    for (int i = 0; i < 16; i++) h ^= (uint32_t)counts[i] << (i % 8);
    for (int i = 0; i < 6; i++)
        for (const char *p = names[i]; *p; p++) h = h * 31 + (uint8_t)*p;
    for (int r = 0; r < 4; r++)
        for (int c = 0; c < 5; c++) h += (uint32_t)(grid[r][c] * (r + 1) * (c + 2));
    const int16_t *flat = &grid[0][0];
    h += (uint32_t)flat[7] + (uint32_t)flat[14] * 3u;
    for (int i = 0; i < 3; i++) h += (uint32_t)mixed[i].c + (uint32_t)mixed[i].i * 11u + (uint32_t)mixed[i].s * 13u;
    for (int i = 0; i < 5; i++) h += (uint32_t)tick();
    return (int)h;
}
