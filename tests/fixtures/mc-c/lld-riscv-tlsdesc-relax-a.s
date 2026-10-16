.globl _start
_start:
.balign 16
  call foo

foo:
.Ltlsdesc_hi0:
.option norelax
## All 4 instructions have an R_RISCV_RELAX.
## Check that optimization/relaxation are not affected by irrelevant instructions.
  auipc a2, %tlsdesc_hi(b)
  .reloc .-4, R_RISCV_RELAX, 0
  c.add a7, a7
# riscvc-fixtures:   ld    a3, %tlsdesc_load_lo(.Ltlsdesc_hi0)(a2)
  .reloc .-4, R_RISCV_RELAX, 0
  c.add a7, a7
  addi  a0, a2, %tlsdesc_add_lo(.Ltlsdesc_hi0)
  .reloc .-4, R_RISCV_RELAX, 0
  c.add a7, a7
  jalr  t0, 0(a3), %tlsdesc_call(.Ltlsdesc_hi0)
  .reloc .-4, R_RISCV_RELAX, 0
  add   a0, a0, tp
# riscvc-scope: .option relax

  call foo

.Ltlsdesc_hi1:
.option norelax
## AUIPC has an R_RISCV_RELAX. We perform relaxation, ignoring whether other
## instructions have R_RISCV_RELAX.
  auipc a4, %tlsdesc_hi(b)
  .reloc .-4, R_RISCV_RELAX, 0
# riscvc-fixtures:   ld    a5, %tlsdesc_load_lo(.Ltlsdesc_hi1)(a4)
  addi  a0, a4, %tlsdesc_add_lo(.Ltlsdesc_hi1)
  jalr  t0, 0(a5), %tlsdesc_call(.Ltlsdesc_hi1)
  add   a0, a0, tp
# riscvc-scope: .option relax

.Ltlsdesc_hi2:
.option norelax
## AUIPC does not have R_RISCV_RELAX. No relaxation.
  auipc a6, %tlsdesc_hi(b)
# riscvc-fixtures:   ld    a7, %tlsdesc_load_lo(.Ltlsdesc_hi2)(a6)
  .reloc .-4, R_RISCV_RELAX, 0
  addi  a0, a6, %tlsdesc_add_lo(.Ltlsdesc_hi2)
  .reloc .-4, R_RISCV_RELAX, 0
  jalr  t0, 0(a7), %tlsdesc_call(.Ltlsdesc_hi2)
  add   a0, a0, tp
# riscvc-scope: .option relax

.section .tbss
.globl a
.zero 8
a:
# riscvc-fixtures: .zero 2039+PAD  ## Place b at 0x7ff+PAD

