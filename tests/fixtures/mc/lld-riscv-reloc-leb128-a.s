# riscvc-scope: .cfi_startproc
# riscvc-scope: .cfi_lsda 0x1b,.LLSDA0
# riscvc-scope: .cfi_endproc

.section .text.w,"axR"
w1:
  call foo    # 4 bytes after relaxation
w2:

.section .text.x,"ax"
x1:
  call foo    # 4 bytes after relaxation
x2:

.section .gcc_except_table,"a"
.LLSDA0:
.reloc ., R_RISCV_SET_ULEB128, w1+130
.reloc ., R_RISCV_SUB_ULEB128, w2-1  # non-zero addend for SUB
.byte 0x7b
.uleb128 w2-w1+120                   # initial value: 0x0180
.uleb128 w1-w2+137                   # initial value: 0x0181
.uleb128 w2-w1+16376                 # initial value: 0x018080
.uleb128 w1-w2+16393                 # initial value: 0x018081
.uleb128 w2-w1+2097144               # initial value: 0x01808080
.uleb128 w1-w2+2097161               # initial value: 0x01808081

.section .debug_rnglists
.reloc ., R_RISCV_SET_ULEB128, w1+130
.reloc ., R_RISCV_SUB_ULEB128, w2-1  # non-zero addend for SUB
.byte 0x7b
.uleb128 w2-w1+120                   # initial value: 0x0180
.uleb128 w1-w2+137                   # initial value: 0x0181
.uleb128 w2-w1+16376                 # initial value: 0x018080
.uleb128 w1-w2+16393                 # initial value: 0x018081
.uleb128 w2-w1+2097144               # initial value: 0x01808080
.uleb128 w1-w2+2097161               # initial value: 0x01808081

.section .debug_loclists
.reloc ., R_RISCV_SET_ULEB128, w2+3
.reloc ., R_RISCV_SUB_ULEB128, w1+4  # SUB with a non-zero addend
.byte 0
.uleb128 x2-x1                       # references discarded symbols

