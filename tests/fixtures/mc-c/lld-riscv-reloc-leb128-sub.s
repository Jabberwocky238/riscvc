w1: call foo; w2:
.section .debug_rnglists
.quad 0;
.reloc ., R_RISCV_SUB_ULEB128, w2+120
.byte 0x7f

