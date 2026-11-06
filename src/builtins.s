// 64 位整数的除与余（compiler-rt 的 `__udivdi3` / `__divdi3` / `__umoddi3` / `__moddi3`）：代码生成在 rv32 上把 i64 的
// udiv / sdiv / urem / srem 落成这几个调用（`codegen/isel/wide.rs`），compiler-rt 不在手边时链这一份。只用 RV32I。
// 语义同 C：截断，余数随被除数的符号；除以 0、INT64_MIN / −1 是无效输入（不 trap，结果照恢复除法：商全 1、余数 = 被除数）。
// 参数 a0:a1 = 被除数（低 : 高）、a2:a3 = 除数，结果 a0:a1。

    .text
    .p2align 2

// 无符号恢复除法：出 a0:a1 = 商、a2:a3 = 余数。只动 t0–t6。
    .type __riscvc_udivmod64, @function
__riscvc_udivmod64:
    mv t0, a0
    mv t1, a1
    li t2, 0
    li t3, 0
    li t4, 64
1:
    slli t5, t3, 1
    srli t6, t2, 31
    or t3, t5, t6
    slli t5, t2, 1
    srli t6, t1, 31
    or t2, t5, t6
    slli t5, t1, 1
    srli t6, t0, 31
    or t1, t5, t6
    slli t0, t0, 1
    bltu t3, a3, 2f
    bne t3, a3, 3f
    bltu t2, a2, 2f
3:
    sltu t5, t2, a2
    sub t2, t2, a2
    sub t3, t3, a3
    sub t3, t3, t5
    ori t0, t0, 1
2:
    addi t4, t4, -1
    bnez t4, 1b
    mv a0, t0
    mv a1, t1
    mv a2, t2
    mv a3, t3
    ret
    .size __riscvc_udivmod64, .-__riscvc_udivmod64

    .globl __udivdi3
    .type __udivdi3, @function
__udivdi3:
    j __riscvc_udivmod64
    .size __udivdi3, .-__udivdi3

    .globl __umoddi3
    .type __umoddi3, @function
__umoddi3:
    addi sp, sp, -16
    sw ra, 12(sp)
    call __riscvc_udivmod64
    mv a0, a2
    mv a1, a3
    lw ra, 12(sp)
    addi sp, sp, 16
    ret
    .size __umoddi3, .-__umoddi3

// 有符号：两边取绝对值做无符号的，商按两边符号的异或取负、余数按被除数的符号取负。
    .globl __divdi3
    .type __divdi3, @function
__divdi3:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    xor s0, a1, a3
    bgez a1, 1f
    snez t5, a0
    neg a0, a0
    neg a1, a1
    sub a1, a1, t5
1:
    bgez a3, 2f
    snez t5, a2
    neg a2, a2
    neg a3, a3
    sub a3, a3, t5
2:
    call __riscvc_udivmod64
    bgez s0, 3f
    snez t5, a0
    neg a0, a0
    neg a1, a1
    sub a1, a1, t5
3:
    lw s0, 8(sp)
    lw ra, 12(sp)
    addi sp, sp, 16
    ret
    .size __divdi3, .-__divdi3

    .globl __moddi3
    .type __moddi3, @function
__moddi3:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    mv s0, a1
    bgez a1, 1f
    snez t5, a0
    neg a0, a0
    neg a1, a1
    sub a1, a1, t5
1:
    bgez a3, 2f
    snez t5, a2
    neg a2, a2
    neg a3, a3
    sub a3, a3, t5
2:
    call __riscvc_udivmod64
    mv a0, a2
    mv a1, a3
    bgez s0, 3f
    snez t5, a0
    neg a0, a0
    neg a1, a1
    sub a1, a1, t5
3:
    lw s0, 8(sp)
    lw ra, 12(sp)
    addi sp, sp, 16
    ret
    .size __moddi3, .-__moddi3
