# RUN: not llvm-mc -triple riscv32 -mattr=+zfinx %s 2>&1 | FileCheck %s

# Not support float registers
flw fa4, 12(sp) # CHECK: :[[@LINE]]:1: error: instruction requires the following: 'F' (Single-Precision Floating-Point){{$}}
fadd.s fa0, fa1, fa2 # CHECK: :[[@LINE]]:1: error: instruction requires the following: 'F' (Single-Precision Floating-Point){{$}}

# Invalid instructions
# riscvc-fixtures: fsw a5, 12(sp) # CHECK: :[[@LINE]]:5: error: invalid operand for instruction
# riscvc-fixtures: fmv.x.w s0, s1 # CHECK: :[[@LINE]]:13: error: invalid operand for instruction
# riscvc-fixtures: fadd.d t1, t3, t5 # CHECK: :[[@LINE]]:1: error: instruction requires the following: 'Zdinx' (Double in Integer){{$}}

# Invalid register names
# riscvc-fixtures: fadd.s a100, a2, a3 # CHECK: :[[@LINE]]:8: error: invalid operand for instruction
# riscvc-fixtures: fsgnjn.s a100, a2, a3 # CHECK: :[[@LINE]]:10: error: invalid operand for instruction

# Rounding mode when a register is expected
# riscvc-fixtures: fmadd.s x10, x11, x12, ree # CHECK: :[[@LINE]]:24: error: invalid operand for instruction

# Invalid rounding modes
# riscvc-fixtures: fmadd.s x10, x11, x12, x13, ree # CHECK: :[[@LINE]]:29: error: operand must be a valid floating point rounding mode mnemonic
# riscvc-fixtures: fmsub.s x14, x15, x16, x17, 0 # CHECK: :[[@LINE]]:29: error: operand must be a valid floating point rounding mode mnemonic
# riscvc-fixtures: fnmsub.s x18, x19, x20, x21, 0b111 # CHECK: :[[@LINE]]:30: error: operand must be a valid floating point rounding mode mnemonic

# Using 'Zdinx' instructions for an 'Zfinx'-only target
# odd registers report incorrect registers
# riscvc-fixtures: fadd.d t0, t1, t2 # CHECK: :[[@LINE]]:8: error: double precision floating point operands must use even numbered X register
# even registers report the required extension
# riscvc-fixtures: fadd.d t3, t1, t5 # CHECK: :[[@LINE]]:1: error: instruction requires the following: 'Zdinx' (Double in Integer){{$}}
