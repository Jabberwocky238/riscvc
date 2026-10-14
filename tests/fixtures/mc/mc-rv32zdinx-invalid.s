# RUN: not llvm-mc -triple riscv32 -mattr=+zdinx %s 2>&1 | FileCheck %s

# Unsupport Odd Registers in RV32
# riscvc-fixtures: fadd.d a0, a1, a2 # CHECK: :[[@LINE]]:12: error: double precision floating point operands must use even numbered X register

# Not support float registers
flw fa4, 12(sp) # CHECK: :[[@LINE]]:1: error: instruction requires the following: 'F' (Single-Precision Floating-Point){{$}}
# riscvc-fixtures: fadd.d fa0, fa1, fa2 # CHECK: :[[@LINE]]:1: error: instruction requires the following: 'D' (Double-Precision Floating-Point){{$}}

# Invalid instructions
# riscvc-fixtures: fsw a5, 12(sp) # CHECK: :[[@LINE]]:5: error: invalid operand for instruction
# riscvc-fixtures: fmv.x.w s0, s1 # CHECK: :[[@LINE]]:13: error: invalid operand for instruction

# Invalid register names
# riscvc-fixtures: fadd.d a100, a2, a4 # CHECK: :[[@LINE]]:8: error: invalid operand for instruction
# riscvc-fixtures: fsgnjn.d a100, a2, a4 # CHECK: :[[@LINE]]:10: error: invalid operand for instruction

# Rounding mode when a register is expected
# riscvc-fixtures: fmadd.d x10, x12, x14, ree # CHECK: :[[@LINE]]:24: error: invalid operand for instruction

# Invalid rounding modes
# riscvc-fixtures: fmadd.d x10, x12, x14, x16, ree # CHECK: :[[@LINE]]:29: error: operand must be a valid floating point rounding mode mnemonic
# riscvc-fixtures: fmsub.d x10, x12, x14, x16, 0 # CHECK: :[[@LINE]]:29: error: operand must be a valid floating point rounding mode mnemonic
# riscvc-fixtures: fnmsub.d x10, x12, x14, x16, 0b111 # CHECK: :[[@LINE]]:30: error: operand must be a valid floating point rounding mode mnemonic

# FP registers where integer regs are expected
# riscvc-fixtures: fcvt.wu.d ft2, a2 # CHECK: :[[@LINE]]:11: error: invalid operand for instruction
