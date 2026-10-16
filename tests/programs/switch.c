// switch：稠密（跳转表）、稀疏（比较链 / 二分）、带 fallthrough；稠密的那个跑一个寄存器式小字节码机。
#include <stdint.h>

enum { LI, ADD, SUB, MUL, XOR, SHL, JNZ, DEC, HALT, AND, SHR, MOV };

// 指令：LI d k8 | ADD/SUB/MUL/XOR/SHL/AND/SHR d a b | MOV d a | JNZ r off8（相对下一条）| DEC r | HALT r
static int run(const uint8_t *code) {
    int r[8] = {0};
    int pc = 0;
    for (int steps = 0; steps < 100000; steps++) {
        const uint8_t *c = code + pc;
        switch (c[0]) {
        case LI: r[c[1]] = (int8_t)c[2]; pc += 3; break;
        case ADD: r[c[1]] = r[c[2]] + r[c[3]]; pc += 4; break;
        case SUB: r[c[1]] = r[c[2]] - r[c[3]]; pc += 4; break;
        case MUL: r[c[1]] = (int)((uint32_t)r[c[2]] * (uint32_t)r[c[3]]); pc += 4; break;
        case XOR: r[c[1]] = r[c[2]] ^ r[c[3]]; pc += 4; break;
        case SHL: r[c[1]] = (int)((uint32_t)r[c[2]] << (r[c[3]] & 31)); pc += 4; break;
        case AND: r[c[1]] = r[c[2]] & r[c[3]]; pc += 4; break;
        case SHR: r[c[1]] = (int)((uint32_t)r[c[2]] >> (r[c[3]] & 31)); pc += 4; break;
        case MOV: r[c[1]] = r[c[2]]; pc += 3; break;
        case JNZ: pc += 3; if (r[c[1]]) pc += (int8_t)c[2]; break;
        case DEC: r[c[1]]--; pc += 2; break;
        case HALT: return r[c[1]];
        default: return -2;
        }
    }
    return -1;
}

// 10!
static const uint8_t fact[] = {
    LI, 0, 1,       // 0
    LI, 1, 10,      // 3
    MUL, 0, 0, 1,   // 6
    DEC, 1,         // 10
    JNZ, 1, (uint8_t)-9, // 12 ⇒ 6
    HALT, 0,        // 15
};

// Σ i²（i = 20..1）每步再异或 i，最后左移 3
static const uint8_t squares[] = {
    LI, 0, 0,       // 0
    LI, 1, 20,      // 3
    MUL, 2, 1, 1,   // 6
    ADD, 0, 0, 2,   // 10
    XOR, 0, 0, 1,   // 14
    DEC, 1,         // 18
    JNZ, 1, (uint8_t)-17, // 20 ⇒ 6
    LI, 3, 3,       // 23
    SHL, 0, 0, 3,   // 26
    HALT, 0,        // 30
};

// 27 的 Collatz 步数（偶数折半，奇数 3n+1）
static const uint8_t collatz[] = {
    LI, 0, 27,      // 0  n
    LI, 1, 0,       // 3  steps
    LI, 2, 1,       // 6  常数 1
    LI, 3, 3,       // 9  常数 3
    SUB, 4, 0, 2,   // 12 n - 1
    JNZ, 4, 2,      // 16 n ≠ 1 ⇒ 跳过下一条 HALT（⇒ 21）
    HALT, 1,        // 19
    ADD, 1, 1, 2,   // 21 steps++
    AND, 5, 0, 2,   // 25 n & 1
    JNZ, 5, 7,      // 29 奇数 ⇒ 39
    SHR, 0, 0, 2,   // 32 n >>= 1
    JNZ, 2, (uint8_t)-27, // 36 ⇒ 12
    MUL, 0, 0, 3,   // 39 n *= 3
    ADD, 0, 0, 2,   // 43 n += 1
    JNZ, 2, (uint8_t)-38, // 47 ⇒ 12
};

static int sparse(int k) {
    switch (k) {
    case -1000: return 1;
    case -7: return 2;
    case 0: return 3;
    case 13: return 4;
    case 99: case 100: return 5;
    case 4096: return 6;
    case 65537: return 7;
    case 1 << 30: return 8;
    default: return k & 3;
    }
}

static int fall(int k) {
    int r = 0;
    switch (k % 6) {
    case 0: r += 1; // fallthrough
    case 1: r += 10; // fallthrough
    case 2: r += 100; break;
    case 3: r -= 5; // fallthrough
    case 4: r *= 3; break;
    default: r = 77;
    }
    return r;
}

int main(void) {
    uint32_t h = (uint32_t)run(fact) * 7u + (uint32_t)run(squares) * 11u + (uint32_t)run(collatz) * 13u;
    for (int k = -1200; k < 1200; k += 7) h = h * 3 + (uint32_t)sparse(k) + (uint32_t)fall(k + 1200);
    h += (uint32_t)sparse(4096) + (uint32_t)sparse(65537) + (uint32_t)sparse(1 << 30) + (uint32_t)sparse(100);
    return (int)h;
}
