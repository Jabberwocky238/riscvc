// 结构体：按值传参（寄存器放得下的、放不下的走 byval）、小结构体返回、数组成员、嵌套、位域。
#include <stdint.h>

typedef struct { int16_t x, y; } P16;
typedef struct { int x, y; } P32;
typedef struct { float re, im; } Cf;
typedef struct { int v[6]; char tag; } Big;
typedef struct { unsigned a : 3, b : 7, c : 12, d : 10; } Bits;
typedef struct { P32 lo, hi; } Box;

static P32 add(P32 a, P32 b) { return (P32){a.x + b.x, a.y + b.y}; }
static P16 swap16(P16 p) { return (P16){p.y, p.x}; }
static Cf cmul(Cf a, Cf b) { return (Cf){a.re * b.re - a.im * b.im, a.re * b.im + a.im * b.re}; }
static int area(Box b) { return (b.hi.x - b.lo.x) * (b.hi.y - b.lo.y); }

static int sum_big(Big b) {
    int s = b.tag;
    for (int i = 0; i < 6; i++) s += b.v[i] * (i + 1);
    return s;
}

static void scale(Big *b, int k) {
    for (int i = 0; i < 6; i++) b->v[i] *= k;
}

static uint32_t pack(Bits b) { return b.a | b.b << 3 | b.c << 10 | (uint32_t)b.d << 22; }

int main(void) {
    P32 acc = {0, 0};
    P16 q = {3, -7};
    Cf z = {1.0f, 0.5f}, w = {0.75f, -0.25f};
    Big big = {{1, 2, 3, 4, 5, 6}, 'k'};
    Bits bits = {5, 100, 3000, 700};
    uint32_t h = 0;
    for (int i = 0; i < 20; i++) {
        acc = add(acc, (P32){i, -2 * i});
        q = swap16(q);
        z = cmul(z, w);
        Box box = {{i, -i}, {3 * i + 1, i + 5}};
        h = h * 17 + (uint32_t)area(box);
        scale(&big, i % 3 == 0 ? -1 : 1);
        h += (uint32_t)sum_big(big);
        bits.b = (bits.b + 13) & 127;
        bits.c ^= (unsigned)i * 37;
        h ^= pack(bits);
    }
    union { float f; uint32_t u; } re = {z.re}, im = {z.im};
    return (int)(h + (uint32_t)acc.x * 3u + (uint32_t)acc.y + (uint32_t)q.x * 5u + (uint32_t)q.y + (re.u >> 7) + (im.u >> 9));
}
