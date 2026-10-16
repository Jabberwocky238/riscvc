// 递归：Ackermann、斐波那契、汉诺塔计数、互相递归（偶 / 奇）、八皇后、组合数（记忆化）。
#include <stdint.h>

static int ack(int m, int n) { return m == 0 ? n + 1 : n == 0 ? ack(m - 1, 1) : ack(m - 1, ack(m, n - 1)); }
static int fib(int n) { return n < 2 ? n : fib(n - 1) + fib(n - 2); }
static int hanoi(int n, int from, int to, int via) { return n == 0 ? 0 : hanoi(n - 1, from, via, to) + 1 + hanoi(n - 1, via, to, from); }
static int is_odd(unsigned n);
static int is_even(unsigned n) { return n == 0 ? 1 : is_odd(n - 1); }
static int is_odd(unsigned n) { return n == 0 ? 0 : is_even(n - 1); }

static int cols[8];
static int queens(int row) {
    if (row == 8) return 1;
    int n = 0;
    for (int c = 0; c < 8; c++) {
        int ok = 1;
        for (int r = 0; r < row && ok; r++) ok = cols[r] != c && cols[r] - c != row - r && c - cols[r] != row - r;
        if (ok) { cols[row] = c; n += queens(row + 1); }
    }
    return n;
}

static uint32_t memo[32][32];
static uint32_t choose(int n, int k) {
    if (k == 0 || k == n) return 1;
    if (memo[n][k]) return memo[n][k];
    return memo[n][k] = choose(n - 1, k - 1) + choose(n - 1, k);
}

int main(void) {
    uint32_t h = (uint32_t)ack(2, 3) * 1000u + (uint32_t)ack(3, 3);
    h = h * 31 + (uint32_t)fib(20);
    h = h * 31 + (uint32_t)hanoi(12, 1, 3, 2);
    h = h * 31 + (uint32_t)is_even(301) * 2u + (uint32_t)is_odd(77);
    h = h * 31 + (uint32_t)queens(0);
    h = h * 31 + choose(30, 15);
    return (int)h;
}
