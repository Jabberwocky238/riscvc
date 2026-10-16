# UNSUPPORTED: target={{.*-windows.*}}
# RUN: not llvm-mc -triple=riscv64 -M no-aliases < %s -o /dev/null 2>&1 | FileCheck %s
# RUN: not llvm-mc -triple=riscv64 < %s 2>&1 -o /dev/null | FileCheck %s

# riscvc-fixtures: li t5, 0x10000000000000000 # CHECK: :[[@LINE]]:8: error: unknown operand
# riscvc-fixtures: li t4, foo                 # CHECK: :[[@LINE]]:8: error: operand must be a constant 64-bit integer

# riscvc-fixtures: la t5, 0x10000000000000000 # CHECK: :[[@LINE]]:8: error: unknown operand
# riscvc-fixtures: la x1, %pcrel_hi(1234) # CHECK: :[[@LINE]]:8: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: la x1, %pcrel_lo(1234) # CHECK: :[[@LINE]]:8: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: la x1, %pcrel_hi(foo) # CHECK: :[[@LINE]]:8: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: la x1, %pcrel_lo(foo) # CHECK: :[[@LINE]]:8: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: la x1, %hi(1234) # CHECK: :[[@LINE]]:8: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: la x1, %lo(1234) # CHECK: :[[@LINE]]:8: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: la x1, %hi(foo) # CHECK: :[[@LINE]]:8: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: la x1, %lo(foo) # CHECK: :[[@LINE]]:8: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: la a1, foo+foo # CHECK: :[[@LINE]]:8: error: operand either must be a constant 64-bit integer or a bare symbol name

# riscvc-fixtures: lla t5, 0x10000000000000000 # CHECK: :[[@LINE]]:9: error: unknown operand
# riscvc-fixtures: lla x1, %pcrel_hi(1234) # CHECK: :[[@LINE]]:9: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: lla x1, %pcrel_lo(1234) # CHECK: :[[@LINE]]:9: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: lla x1, %pcrel_hi(foo) # CHECK: :[[@LINE]]:9: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: lla x1, %pcrel_lo(foo) # CHECK: :[[@LINE]]:9: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: lla x1, %hi(1234) # CHECK: :[[@LINE]]:9: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: lla x1, %lo(1234) # CHECK: :[[@LINE]]:9: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: lla x1, %hi(foo) # CHECK: :[[@LINE]]:9: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: lla x1, %lo(foo) # CHECK: :[[@LINE]]:9: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: lla a1, foo+foo # CHECK: :[[@LINE]]:9: error: operand either must be a constant 64-bit integer or a bare symbol name
# riscvc-fixtures: lla a2, foo@plt # CHECK: :[[@LINE]]:12: error: unexpected token

rdinstreth x29 # CHECK: :[[@LINE]]:1: error: instruction requires the following: RV32I Base Instruction Set{{$}}
rdcycleh x27   # CHECK: :[[@LINE]]:1: error: instruction requires the following: RV32I Base Instruction Set{{$}}
rdtimeh x28    # CHECK: :[[@LINE]]:1: error: instruction requires the following: RV32I Base Instruction Set{{$}}

# riscvc-fixtures: sll x2, x3, 64  # CHECK: :[[@LINE]]:13: error: immediate must be an integer in the range [0, 63]
# riscvc-fixtures: srl x2, x3, 64  # CHECK: :[[@LINE]]:13: error: immediate must be an integer in the range [0, 63]
# riscvc-fixtures: sra x2, x3, 64  # CHECK: :[[@LINE]]:13: error: immediate must be an integer in the range [0, 63]

# riscvc-fixtures: sll x2, x3, -1  # CHECK: :[[@LINE]]:13: error: immediate must be an integer in the range [0, 63]
# riscvc-fixtures: srl x2, x3, -2  # CHECK: :[[@LINE]]:13: error: immediate must be an integer in the range [0, 63]
# riscvc-fixtures: sra x2, x3, -3  # CHECK: :[[@LINE]]:13: error: immediate must be an integer in the range [0, 63]

# riscvc-fixtures: sllw x2, x3, 32  # CHECK: :[[@LINE]]:14: error: immediate must be an integer in the range [0, 31]
# riscvc-fixtures: srlw x2, x3, 32  # CHECK: :[[@LINE]]:14: error: immediate must be an integer in the range [0, 31]
# riscvc-fixtures: sraw x2, x3, 32  # CHECK: :[[@LINE]]:14: error: immediate must be an integer in the range [0, 31]

# riscvc-fixtures: sllw x2, x3, -1  # CHECK: :[[@LINE]]:14: error: immediate must be an integer in the range [0, 31]
# riscvc-fixtures: srlw x2, x3, -2  # CHECK: :[[@LINE]]:14: error: immediate must be an integer in the range [0, 31]
# riscvc-fixtures: sraw x2, x3, -3  # CHECK: :[[@LINE]]:14: error: immediate must be an integer in the range [0, 31]

foo:
  .space 8
