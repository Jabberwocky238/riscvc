.globl abs
abs = 0x200001

.global _start
_start:
  lui a0, %hi(abs)
  addi a0, a0, %lo(abs)
  .reloc ., R_RISCV_HI20, abs
  lui a0, 0
  .reloc ., R_RISCV_LO12_I, abs
  addi a0, a0, 0

  lw a0, %lo(abs)(a0)
  sw a0, %lo(abs)(a0)

