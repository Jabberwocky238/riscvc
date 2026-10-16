# RUN: not llvm-mc -triple riscv32 < %s 2>&1 | FileCheck %s

# Too many operands
# riscvc-fixtures: .insn i  0x13,  0,  a0, a1, 13, 14 # CHECK: :[[@LINE]]:33: error: invalid operand for instruction
# riscvc-fixtures: .insn r  0x43,  0,  0, fa0, fa1, fa2, fa3, fa4 # CHECK: :[[@LINE]]:44: error: invalid operand for instruction

# Too few operands
# riscvc-fixtures: .insn r  0x33,  0,  0, a0, a1 # CHECK: :[[@LINE]]:1: error: too few operands for instruction
# riscvc-fixtures: .insn i  0x13,  0,  a0, a1 # CHECK: :[[@LINE]]:1: error: too few operands for instruction

# riscvc-fixtures: .insn r  0x33,  0,  0, a0, 13 # CHECK: :[[@LINE]]:28: error: invalid operand for instruction
# riscvc-fixtures: .insn i  0x13,  0, a0, a1, a2 # CHECK: :[[@LINE]]:28: error: operand must be a symbol with %lo/%pcrel_lo/%tprel_lo specifier or an integer in the range [-2048, 2047]

# riscvc-fixtures: .insn q  0x13,  0,  a0, a1, 13, 14 # CHECK: :[[@LINE]]:7: error: invalid instruction format

# Invalid immediate
# riscvc-fixtures: .insn i  0x99,  0, a0, 4(a1) # CHECK: :[[@LINE]]:10: error: opcode must be a valid opcode name or an immediate in the range [0, 127]
# riscvc-fixtures: .insn r  0x33,  8,  0, a0, a1, a2 # CHECK: :[[@LINE]]:17: error: immediate must be an integer in the range [0, 7]
# riscvc-fixtures: .insn r4 0x43,  0,  4, fa0, fa1, fa2, fa3 # CHECK: :[[@LINE]]:21: error: immediate must be an integer in the range [0, 3]

# Unrecognized opcode name
# riscvc-fixtures: .insn r UNKNOWN, 0, a1, a2, a3 # CHECK: :[[@LINE]]:9: error: opcode must be a valid opcode name or an immediate in the range [0, 127]

# Make fake mnemonics we use to match these in the tablegened asm match table isn't exposed.
# riscvc-fixtures: .insn_i  0x13,  0,  a0, a1, 13, 14 # CHECK: :[[@LINE]]:1: error: unknown directive

# riscvc-fixtures: .insn . # CHECK: :[[@LINE]]:7: error: expected absolute expression
# riscvc-fixtures: .insn 0x2, # CHECK: :[[@LINE]]:12: error: unknown token in expression

# riscvc-fixtures: .insn 0x4, 0x13, 0 # CHECK: :[[@LINE]]:16: error: invalid operand for instruction

# riscvc-fixtures: .insn 0x2, 0xffff # CHECK: :[[@LINE]]:7: error: instruction length does not match the encoding
# riscvc-fixtures: .insn 0x2, 0xffffffff # CHECK: :[[@LINE]]:7: error: instruction length does not match the encoding
# riscvc-fixtures: .insn 0xffffffffff # CHECK: :[[@LINE]]:7: error: encoding value does not fit into instruction

# riscvc-fixtures: .insn 0x0, 0x0 # CHECK: :[[@LINE]]:7: error: instruction lengths must be a non-zero multiple of two
# riscvc-fixtures: .insn 0x1, 0xff # CHECK: :[[@LINE]]:7: error: instruction lengths must be a non-zero multiple of two
# riscvc-fixtures: .insn 10, 0x000007f # CHECK: :[[@LINE]]:7: error: instruction lengths over 64 bits are not supported

# riscvc-fixtures: .insn 0x2, 0x03 # CHECK: :[[@LINE]]:7: error: instruction length does not match the encoding
# riscvc-fixtures: .insn 0x2, 0x1f # CHECK: :[[@LINE]]:7: error: instruction length does not match the encoding
# riscvc-fixtures: .insn 0x2, 0x3f # CHECK: :[[@LINE]]:7: error: instruction length does not match the encoding

# riscvc-fixtures: .insn 0x4, 0x00000001 # CHECK: :[[@LINE]]:7: error: instruction length does not match the encoding

.insn 0x6, 0x000000000001 # CHECK: :[[@LINE]]:7: error: compressed instructions are not allowed
.insn 0x8, 0x0000000000000001 # CHECK: :[[@LINE]]:7: error: compressed instructions are not allowed

# riscvc-fixtures: .insn 0x2, 0x10001 # CHECK: :[[@LINE]]:7: error: encoding value does not fit into instruction
# riscvc-fixtures: .insn 0x4, 0x100000003 # CHECK: :[[@LINE]]:7: error: encoding value does not fit into instruction
# riscvc-fixtures: .insn 0x6, 0x100000000001f # CHECK: :[[@LINE]]:7: error: encoding value does not fit into instruction
# riscvc-fixtures: .insn 0x8, 0x1000000000000003f # CHECK: :[[@LINE]]:12: error: literal value out of range for directive

.insn 0x0010 # CHECK: :[[@LINE]]:7: error: compressed instructions are not allowed
.insn 0x2, 0x0001 # CHECK: :[[@LINE]]:7: error: compressed instructions are not allowed

# riscvc-fixtures: .insn 0x2 + 0x2, 0x3 | (31 # CHECK: :[[@LINE]]:28: error: expected ')'
# riscvc-fixtures: .insn 0x4 * , 0xbf | (31 << 59) # CHECK: :[[@LINE]]:13: error: unknown token in expression
