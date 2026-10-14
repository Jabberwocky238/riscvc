.option push
.option norelax
  .reloc ., R_RISCV_ALIGN, 6
  addi x0, x0, 0
# riscvc-fixtures:   c.nop
.balign 8
b0:
  addi a0, a1, 1
.option pop

