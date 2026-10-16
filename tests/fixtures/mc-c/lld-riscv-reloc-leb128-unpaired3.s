w1: call foo; w2:
.section .alloc,"a"
.quad 0
.reloc ., R_RISCV_SET_ULEB128, w2+120
.reloc ., R_RISCV_SUB64, w1
.byte 0x7f
.section .debug_rnglists
.quad 0
.reloc ., R_RISCV_SET_ULEB128, w2+120
.reloc ., R_RISCV_SUB64, w1
.byte 0x7f

