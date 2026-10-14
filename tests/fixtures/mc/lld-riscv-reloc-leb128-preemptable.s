.globl w1, w2
w1: call foo; w2:
.section .alloc,"a"
.uleb128 w2-w1
.section .debug_rnglists
.uleb128 w2-w1
