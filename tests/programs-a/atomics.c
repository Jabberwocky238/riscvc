// A 扩展：各宽度、各操作、各内存序的原子操作；main 回校验和（判据是 riscvc 与 llc 两边相同）。
typedef unsigned u32;

static volatile unsigned char c8 = 0x7e;
static volatile signed char s8 = -3;
static volatile unsigned short c16 = 0xfff0;
static volatile short s16 = -300;
static volatile int i32 = 1000;
static volatile u32 u32v = 0xfffffff0u;
static volatile float f32 = 1.5f;
static int arr[4] = {1, 2, 3, 4};
static int *volatile ptr = &arr[0];

static u32 mix(u32 h, u32 v) {
    return (h ^ v) * 0x01000193u + 0x9e3779b9u;
}

int main(void) {
    u32 h = 0x811c9dc5u;
    // 8 位：每个操作、几种序
    h = mix(h, __atomic_fetch_add(&c8, 0x85, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_fetch_sub(&c8, 7, __ATOMIC_ACQUIRE));
    h = mix(h, __atomic_fetch_and(&c8, 0x3c, __ATOMIC_RELEASE));
    h = mix(h, __atomic_fetch_or(&c8, 0xc1, __ATOMIC_RELAXED));
    h = mix(h, __atomic_fetch_xor(&c8, 0x5a, __ATOMIC_ACQ_REL));
    h = mix(h, __atomic_fetch_nand(&c8, 0x0f, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_exchange_n(&c8, 0x99, __ATOMIC_SEQ_CST));
    h = mix(h, (u32)__atomic_fetch_max(&s8, 5, __ATOMIC_SEQ_CST));
    h = mix(h, (u32)__atomic_fetch_min(&s8, -100, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_fetch_max(&c8, 0xf0, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_fetch_min(&c8, 0x10, __ATOMIC_SEQ_CST));
    h = mix(h, c8);
    h = mix(h, (u32)s8);
    // 16 位
    h = mix(h, __atomic_fetch_add(&c16, 0x20, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_fetch_sub(&c16, 0x1234, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_fetch_and(&c16, 0xf0f0, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_fetch_or(&c16, 0x0303, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_fetch_xor(&c16, 0xffff, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_fetch_nand(&c16, 0x7777, __ATOMIC_SEQ_CST));
    h = mix(h, (u32)__atomic_fetch_max(&s16, -5, __ATOMIC_SEQ_CST));
    h = mix(h, (u32)__atomic_fetch_min(&s16, -30000, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_fetch_max(&c16, 0x8000, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_fetch_min(&c16, 0x0100, __ATOMIC_SEQ_CST));
    h = mix(h, c16);
    h = mix(h, (u32)s16);
    // 32 位
    h = mix(h, (u32)__atomic_fetch_add(&i32, 77, __ATOMIC_SEQ_CST));
    h = mix(h, (u32)__atomic_fetch_sub(&i32, 2000, __ATOMIC_ACQUIRE));
    h = mix(h, (u32)__atomic_fetch_and(&i32, 0x0ff0, __ATOMIC_RELEASE));
    h = mix(h, (u32)__atomic_fetch_or(&i32, 0x1001, __ATOMIC_RELAXED));
    h = mix(h, (u32)__atomic_fetch_xor(&i32, -1, __ATOMIC_ACQ_REL));
    h = mix(h, (u32)__atomic_fetch_nand(&i32, 0x00ff00ff, __ATOMIC_SEQ_CST));
    h = mix(h, (u32)__atomic_fetch_max(&i32, 12345, __ATOMIC_SEQ_CST));
    h = mix(h, (u32)__atomic_fetch_min(&i32, -12345, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_fetch_max(&u32v, 3u, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_fetch_min(&u32v, 0x80000000u, __ATOMIC_SEQ_CST));
    h = mix(h, (u32)__atomic_exchange_n(&i32, 42, __ATOMIC_RELEASE));
    // 比较并交换：成功、失败（读回的值写进 expected）
    unsigned char e8 = 0x99;
    h = mix(h, __atomic_compare_exchange_n(&c8, &e8, 0x11, 0, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST));
    h = mix(h, e8);
    e8 = 0x22;
    h = mix(h, __atomic_compare_exchange_n(&c8, &e8, 0x33, 0, __ATOMIC_ACQUIRE, __ATOMIC_RELAXED));
    h = mix(h, e8);
    unsigned short e16 = 0;
    h = mix(h, __atomic_compare_exchange_n(&c16, &e16, 0xabcd, 0, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST));
    h = mix(h, e16);
    h = mix(h, __atomic_compare_exchange_n(&c16, &e16, 0xabcd, 1, __ATOMIC_RELEASE, __ATOMIC_RELAXED));
    int e32 = 42;
    h = mix(h, __atomic_compare_exchange_n(&i32, &e32, -7, 0, __ATOMIC_ACQ_REL, __ATOMIC_ACQUIRE));
    h = mix(h, (u32)__atomic_compare_exchange_n(&i32, &e32, 8, 0, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST));
    h = mix(h, (u32)e32);
    int *ep = &arr[0];
    h = mix(h, __atomic_compare_exchange_n(&ptr, &ep, &arr[2], 0, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST));
    h = mix(h, (u32)*__atomic_load_n(&ptr, __ATOMIC_ACQUIRE));
    h = mix(h, (u32)*__atomic_exchange_n(&ptr, &arr[3], __ATOMIC_SEQ_CST));
    // 原子 load / store 与 fence
    __atomic_store_n(&i32, 5, __ATOMIC_SEQ_CST);
    __atomic_store_n(&c16, 6, __ATOMIC_RELEASE);
    __atomic_store_n(&c8, 7, __ATOMIC_RELAXED);
    __atomic_thread_fence(__ATOMIC_ACQUIRE);
    __atomic_thread_fence(__ATOMIC_RELEASE);
    __atomic_thread_fence(__ATOMIC_ACQ_REL);
    __atomic_thread_fence(__ATOMIC_SEQ_CST);
    __atomic_signal_fence(__ATOMIC_SEQ_CST);
    h = mix(h, (u32)__atomic_load_n(&i32, __ATOMIC_SEQ_CST));
    h = mix(h, __atomic_load_n(&c16, __ATOMIC_ACQUIRE));
    h = mix(h, __atomic_load_n(&c8, __ATOMIC_RELAXED));
    // float：xchg、CAS 循环（fadd 由前端展开成 cmpxchg 循环）
    float fo;
    __atomic_exchange(&f32, &(float){2.25f}, &fo, __ATOMIC_SEQ_CST);
    h = mix(h, (u32)(fo * 4));
    float fe = 2.25f;
    for (int k = 0; k < 3; ++k) {
        float want = fe + 0.5f;
        while (!__atomic_compare_exchange(&f32, &fe, &want, 0, __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST)) {
            want = fe + 0.5f;
        }
        fe = want;
    }
    h = mix(h, (u32)(f32 * 4));
    // 循环里的原子加：结果依赖每一次读回
    for (int k = 0; k < 50; ++k) {
        h = mix(h, (u32)__atomic_add_fetch(&arr[k & 3], k, __ATOMIC_SEQ_CST));
    }
    return (int)h;
}
