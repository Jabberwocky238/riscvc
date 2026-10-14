# RUN: not llvm-mc -triple=riscv32 -mattr=+c < %s 2>&1 \
# RUN:     | FileCheck %s
# RUN: not llvm-mc -triple=riscv32 -mattr=+zca < %s 2>&1 \
# RUN:     | FileCheck %s

## GPRC
.LBB:
# riscvc-fixtures: c.lw  ra, 4(sp) # CHECK: :[[@LINE]]:7: error: invalid operand for instruction
# riscvc-fixtures: c.sw  sp, 4(sp) # CHECK: :[[@LINE]]:7: error: invalid operand for instruction
# riscvc-fixtures: c.beqz  t0, .LBB # CHECK: :[[@LINE]]:9: error: invalid operand for instruction
# riscvc-fixtures: c.bnez  s8, .LBB # CHECK: :[[@LINE]]:9: error: invalid operand for instruction
# riscvc-fixtures: c.addi4spn  s4, sp, 12 # CHECK: :[[@LINE]]:13: error: invalid operand for instruction
# riscvc-fixtures: c.srli  s7, 12 # CHECK: :[[@LINE]]:9: error: invalid operand for instruction
# riscvc-fixtures: c.srai  t0, 12 # CHECK: :[[@LINE]]:9: error: invalid operand for instruction
# riscvc-fixtures: c.andi  t1, 12 # CHECK: :[[@LINE]]:9: error: invalid operand for instruction
# riscvc-fixtures: c.and  t1, a0 # CHECK: :[[@LINE]]:8: error: invalid operand for instruction
# riscvc-fixtures: c.or   a0, s8 # CHECK: :[[@LINE]]:12: error: invalid operand for instruction
# riscvc-fixtures: c.xor  t2, a0 # CHECK: :[[@LINE]]:8: error: invalid operand for instruction
# riscvc-fixtures: c.sub  a0, s8 # CHECK: :[[@LINE]]:12: error: invalid operand for instruction

## GPRNoX0
# riscvc-fixtures: c.lwsp  x0, 4(sp) # CHECK: :[[@LINE]]:9: error: register must be a GPR excluding zero (x0)
# riscvc-fixtures: c.lwsp  zero, 4(sp) # CHECK: :[[@LINE]]:9: error: register must be a GPR excluding zero (x0)
# riscvc-fixtures: c.jr  x0 # CHECK: :[[@LINE]]:7: error: register must be a GPR excluding zero (x0)
# riscvc-fixtures: c.jalr  zero # CHECK: :[[@LINE]]:9: error: register must be a GPR excluding zero (x0)
# riscvc-fixtures: c.mv  ra, x0 # CHECK: :[[@LINE]]:11: error: register must be a GPR excluding zero (x0)
# riscvc-fixtures: c.add  ra, ra, x0 # CHECK: :[[@LINE]]:16: error: invalid operand for instruction

## GPRNoX2
# riscvc-fixtures: c.lui x2, 4 # CHECK: :[[@LINE]]:7: error: register must be a GPR excluding sp (x2){{$}}

## SP
# riscvc-fixtures: c.addi4spn  a0, a0, 12 # CHECK: :[[@LINE]]:17: error: register must be sp (x2)
# riscvc-fixtures: c.addi16sp  t0, 16 # CHECK: :[[@LINE]]:13: error: register must be sp (x2)

# Out of range immediates

## uimmlog2xlenn
# riscvc-fixtures: c.slli t0, 64 # CHECK: :[[@LINE]]:12: error: immediate must be an integer in the range [0, 31]
# riscvc-fixtures: c.srli a0, 32 # CHECK: :[[@LINE]]:12: error: immediate must be an integer in the range [0, 31]

## simm6
# riscvc-fixtures: c.li t0, 128 # CHECK: :[[@LINE]]:10: error: immediate must be an integer in the range [-32, 31]
# riscvc-fixtures: c.li t0, foo # CHECK: :[[@LINE]]:10: error: immediate must be an integer in the range [-32, 31]
# riscvc-fixtures: c.li t0, %lo(foo) # CHECK: :[[@LINE]]:10: error: immediate must be an integer in the range [-32, 31]
# riscvc-fixtures: c.li t0, %hi(foo) # CHECK: :[[@LINE]]:10: error: immediate must be an integer in the range [-32, 31]
# riscvc-fixtures: c.andi a0, -33 # CHECK: :[[@LINE]]:12: error: immediate must be an integer in the range [-32, 31]
# riscvc-fixtures: c.andi a0, foo # CHECK: :[[@LINE]]:12: error: immediate must be an integer in the range [-32, 31]
# riscvc-fixtures: c.andi a0, %lo(foo) # CHECK: :[[@LINE]]:12: error: immediate must be an integer in the range [-32, 31]
# riscvc-fixtures: c.andi a0, %hi(foo) # CHECK: :[[@LINE]]:12: error: immediate must be an integer in the range [-32, 31]
# riscvc-fixtures: c.addi t0, -33 # CHECK: :[[@LINE]]:12: error: immediate must be an integer in the range [-32, 31]
# riscvc-fixtures: c.addi t0, 32 # CHECK: :[[@LINE]]:12: error: immediate must be an integer in the range [-32, 31]
# riscvc-fixtures: c.addi t0, foo # CHECK: :[[@LINE]]:12: error: immediate must be an integer in the range [-32, 31]
# riscvc-fixtures: c.addi t0, %lo(foo) # CHECK: :[[@LINE]]:12: error: immediate must be an integer in the range [-32, 31]
# riscvc-fixtures: c.addi t0, %hi(foo) # CHECK: :[[@LINE]]:12: error: immediate must be an integer in the range [-32, 31]

## simm6nonzero
# riscvc-fixtures: c.nop 32 # CHECK: :[[@LINE]]:7: error: immediate must be non-zero in the range [-32, 31]

## c_lui_imm
# riscvc-fixtures: c.lui t0, 0 # CHECK: :[[@LINE]]:11: error: immediate must be in [0xfffe0, 0xfffff] or [1, 31]
# riscvc-fixtures: c.lui t0, 32 # CHECK: :[[@LINE]]:11: error: immediate must be in [0xfffe0, 0xfffff] or [1, 31]
# riscvc-fixtures: c.lui t0, 0xffffdf # CHECK: :[[@LINE]]:11: error: immediate must be in [0xfffe0, 0xfffff] or [1, 31]
# riscvc-fixtures: c.lui t0, 0x1000000 # CHECK: :[[@LINE]]:11: error: immediate must be in [0xfffe0, 0xfffff] or [1, 31]
# riscvc-fixtures: c.lui t0, foo # CHECK: [[@LINE]]:11: error: immediate must be in [0xfffe0, 0xfffff] or [1, 31]

## uimm8_lsb00
# riscvc-fixtures: c.lwsp  ra, 256(sp) # CHECK: :[[@LINE]]:13: error: immediate must be a multiple of 4 bytes in the range [0, 252]
# riscvc-fixtures: c.swsp  ra, -4(sp) # CHECK: :[[@LINE]]:13: error: immediate must be a multiple of 4 bytes in the range [0, 252]
## uimm7_lsb00
# riscvc-fixtures: c.lw  s0, -4(sp) # CHECK: :[[@LINE]]:11: error: immediate must be a multiple of 4 bytes in the range [0, 124]
# riscvc-fixtures: c.sw  s0, 128(sp) # CHECK: :[[@LINE]]:11: error: immediate must be a multiple of 4 bytes in the range [0, 124]

## simm9_lsb0
# riscvc-fixtures: c.bnez  s1, -258 # CHECK: :[[@LINE]]:13: error: immediate must be a multiple of 2 bytes in the range [-256, 254]
# riscvc-fixtures: c.beqz  a0, 256 # CHECK: :[[@LINE]]:13: error: immediate must be a multiple of 2 bytes in the range [-256, 254]

## simm12_lsb0
# riscvc-fixtures: c.j 2048 # CHECK: :[[@LINE]]:5: error: immediate must be a multiple of 2 bytes in the range [-2048, 2046]
# riscvc-fixtures: c.jal -2050 # CHECK: :[[@LINE]]:7: error: immediate must be a multiple of 2 bytes in the range [-2048, 2046]

## uimm10_lsb00nonzero
# riscvc-fixtures: c.addi4spn  a0, sp, 0 # CHECK: :[[@LINE]]:21: error: immediate must be a multiple of 4 bytes in the range [4, 1020]
# riscvc-fixtures: c.addi4spn  a0, sp, 1024 # CHECK: :[[@LINE]]:21: error: immediate must be a multiple of 4 bytes in the range [4, 1020]

## simm10_lsb0000nonzero
# riscvc-fixtures: c.addi16sp  sp, -528 # CHECK: :[[@LINE]]:17: error: immediate must be a multiple of 16 bytes and non-zero in the range [-512, 496]
# riscvc-fixtures: c.addi16sp  sp, 512 # CHECK: :[[@LINE]]:17: error: immediate must be a multiple of 16 bytes and non-zero in the range [-512, 496]
# riscvc-fixtures: c.addi16sp  sp, 0 # CHECK: :[[@LINE]]:17: error: immediate must be a multiple of 16 bytes and non-zero in the range [-512, 496]
