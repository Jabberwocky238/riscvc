# RUN: llvm-mc %s -triple=riscv32 -mattr=+m,+zbb,+zba,+zcb -M no-aliases -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-ASM,CHECK-ASM-AND-OBJ %s
# RUN: llvm-mc -filetype=obj -triple=riscv32 -mattr=+m,+zbb,+zba,+zcb < %s \
# RUN:     | llvm-objdump --mattr=+m,+zbb,+zba,+zcb --no-print-imm-hex -M no-aliases -d -r - \
# RUN:     | FileCheck --check-prefixes=CHECK-ASM-AND-OBJ %s
# RUN: llvm-mc %s -triple=riscv64 -mattr=+m,+zbb,+zba,+zcb -M no-aliases -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-ASM,CHECK-ASM-AND-OBJ %s
# RUN: llvm-mc -filetype=obj -triple=riscv64 -mattr=+m,+zbb,+zba,+zcb < %s \
# RUN:     | llvm-objdump --mattr=+m,+zbb,+zba,zcb --no-print-imm-hex -M no-aliases -d -r - \
# RUN:     | FileCheck --check-prefixes=CHECK-ASM-AND-OBJ %s
#
# RUN: not llvm-mc -triple riscv32 \
# RUN:     -M no-aliases -show-encoding < %s 2>&1 \
# RUN:     | FileCheck -check-prefixes=CHECK-NO-EXT %s
# RUN: not llvm-mc -triple riscv64 \
# RUN:     -M no-aliases -show-encoding < %s 2>&1 \
# RUN:     | FileCheck -check-prefixes=CHECK-NO-EXT %s

# CHECK-ASM-AND-OBJ: c.zext.b s0
# CHECK-ASM: encoding: [0x61,0x9c]
# CHECK-NO-EXT: error: instruction requires the following: 'Zcb' (Compressed basic bit manipulation instructions){{$}}
# riscvc-fixtures: c.zext.b s0

# CHECK-ASM-AND-OBJ: c.sext.b s0
# CHECK-ASM: encoding: [0x65,0x9c]
# CHECK-NO-EXT: error: instruction requires the following: 'Zbb' (Basic Bit-Manipulation), 'Zcb' (Compressed basic bit manipulation instructions){{$}}
# riscvc-fixtures: c.sext.b s0

# CHECK-ASM-AND-OBJ: c.zext.h s0
# CHECK-ASM: encoding: [0x69,0x9c]
# CHECK-NO-EXT: error: instruction requires the following: 'Zbb' (Basic Bit-Manipulation), 'Zcb' (Compressed basic bit manipulation instructions){{$}}
# riscvc-fixtures: c.zext.h s0

# CHECK-ASM-AND-OBJ: c.sext.h s0
# CHECK-ASM: encoding: [0x6d,0x9c]
# CHECK-NO-EXT: error: instruction requires the following: 'Zbb' (Basic Bit-Manipulation), 'Zcb' (Compressed basic bit manipulation instructions){{$}}
# riscvc-fixtures: c.sext.h s0

# CHECK-ASM-AND-OBJ: c.not s0
# CHECK-ASM: encoding: [0x75,0x9c]
# CHECK-NO-EXT: error: instruction requires the following: 'Zcb' (Compressed basic bit manipulation instructions){{$}}
# riscvc-fixtures: c.not s0

# CHECK-ASM-AND-OBJ: c.mul s0, s1
# CHECK-ASM: encoding: [0x45,0x9c]
# CHECK-NO-EXT: error: instruction requires the following: 'Zcb' (Compressed basic bit manipulation instructions), 'Zmmul' (Integer Multiplication)
# riscvc-fixtures: c.mul s0, s1

# CHECK-ASM-AND-OBJ: c.lbu a5, 2(a4)
# CHECK-ASM: encoding: [0x3c,0x83]
# CHECK-NO-EXT: error: instruction requires the following: 'Zcb' (Compressed basic bit manipulation instructions){{$}}
# riscvc-fixtures: c.lbu a5, 2(a4)

# CHECK-ASM-AND-OBJ: c.lhu a5, 2(a4)
# CHECK-ASM: encoding: [0x3c,0x87]
# CHECK-NO-EXT: error: instruction requires the following: 'Zcb' (Compressed basic bit manipulation instructions){{$}}
# riscvc-fixtures: c.lhu a5, 2(a4)

# CHECK-ASM-AND-OBJ: c.lh a5, 2(a4)
# CHECK-ASM: encoding: [0x7c,0x87]
# CHECK-NO-EXT: error: instruction requires the following: 'Zcb' (Compressed basic bit manipulation instructions){{$}}
# riscvc-fixtures: c.lh a5, 2(a4)

# CHECK-ASM-AND-OBJ: c.sb a5, 2(a4)
# CHECK-ASM: encoding: [0x3c,0x8b]
# CHECK-NO-EXT: error: instruction requires the following: 'Zcb' (Compressed basic bit manipulation instructions){{$}}
# riscvc-fixtures: c.sb a5, 2(a4)

# CHECK-ASM-AND-OBJ: c.sh a5, 2(a4)
# CHECK-ASM: encoding: [0x3c,0x8f]
# CHECK-NO-EXT: error: instruction requires the following: 'Zcb' (Compressed basic bit manipulation instructions){{$}}
# riscvc-fixtures: c.sh a5, 2(a4)

# CHECK-ASM-AND-OBJ: c.mul s0, s1
# CHECK-ASM: encoding: [0x45,0x9c]
mul s0, s1, s0

# CHECK-ASM-AND-OBJ: c.mul s0, s1
# CHECK-ASM: encoding: [0x45,0x9c]
mul s0, s0, s1

# CHECK-ASM-AND-OBJ: c.sext.b s0
# CHECK-ASM: encoding: [0x65,0x9c]
sext.b s0, s0

# CHECK-ASM-AND-OBJ: c.sext.h s0
# CHECK-ASM: encoding: [0x6d,0x9c]
sext.h s0, s0

# CHECK-ASM-AND-OBJ: c.zext.h s0
# CHECK-ASM: encoding: [0x69,0x9c]
zext.h s0, s0

# CHECK-ASM-AND-OBJ: c.zext.b s0
# CHECK-ASM: encoding: [0x61,0x9c]
andi s0, s0, 255

# CHECK-ASM-AND-OBJ: c.not s0
# CHECK-ASM: encoding: [0x75,0x9c]
xori s0, s0, -1

# CHECK-ASM-AND-OBJ: c.lh a5, 2(a4)
# CHECK-ASM: encoding: [0x7c,0x87]
lh a5, 2(a4)

# CHECK-ASM-AND-OBJ: c.lbu a5, 2(a4)
# CHECK-ASM: encoding: [0x3c,0x83]
lbu a5, 2(a4)

# CHECK-ASM-AND-OBJ: c.lhu a5, 2(a4)
# CHECK-ASM: encoding: [0x3c,0x87]
lhu a5, 2(a4)

# CHECK-ASM-AND-OBJ: c.sb a5, 2(a4)
# CHECK-ASM: encoding: [0x3c,0x8b]
sb a5, 2(a4)

# CHECK-ASM-AND-OBJ: c.sh a5, 2(a4)
# CHECK-ASM: encoding: [0x3c,0x8f]
sh a5, 2(a4)

# CHECK-ASM-AND-OBJ: c.lbu s0, 0(s1)
# CHECK-ASM: encoding: [0x80,0x80]
# riscvc-fixtures: c.lbu s0, (s1)

# CHECK-ASM-AND-OBJ: c.lhu s0, 0(s1)
# CHECK-ASM: encoding: [0x80,0x84]
# riscvc-fixtures: c.lhu s0, (s1)

# CHECK-ASM-AND-OBJ: c.lh s0, 0(s1)
# CHECK-ASM: encoding: [0xc0,0x84]
# riscvc-fixtures: c.lh s0, (s1)

# CHECK-ASM-AND-OBJ: c.sb s0, 0(s1)
# CHECK-ASM: encoding: [0x80,0x88]
# riscvc-fixtures: c.sb s0, (s1)

# CHECK-ASM-AND-OBJ: c.sh s0, 0(s1)
# CHECK-ASM: encoding: [0x80,0x8c]
# riscvc-fixtures: c.sh s0, (s1)
