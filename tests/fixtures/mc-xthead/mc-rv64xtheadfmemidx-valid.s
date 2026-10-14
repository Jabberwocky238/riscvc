# RUN: llvm-mc %s -triple=riscv64 -mattr=+d -mattr=+xtheadfmemidx -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-ASM,CHECK-ASM-AND-OBJ %s
# RUN: llvm-mc -filetype=obj -triple=riscv64 -mattr=+d -mattr=+xtheadfmemidx < %s \
# RUN:     | llvm-objdump --mattr=+d --mattr=+xtheadfmemidx --no-print-imm-hex -d -r - \
# RUN:     | FileCheck --check-prefix=CHECK-ASM-AND-OBJ %s

# CHECK-ASM-AND-OBJ: th.flrd fa0, a1, a2, 0
# CHECK-ASM: encoding: [0x0b,0xe5,0xc5,0x60]
# riscvc-fixtures: th.flrd fa0, a1, a2, 0

# CHECK-ASM-AND-OBJ: th.flrd fa0, a1, a2, 3
# CHECK-ASM: encoding: [0x0b,0xe5,0xc5,0x66]
# riscvc-fixtures: th.flrd fa0, a1, a2, 3

# CHECK-ASM-AND-OBJ: th.flrw fa0, a1, a2, 0
# CHECK-ASM: encoding: [0x0b,0xe5,0xc5,0x40]
th.flrw fa0, a1, a2, 0

# CHECK-ASM-AND-OBJ: th.flrw fa0, a1, a2, 3
# CHECK-ASM: encoding: [0x0b,0xe5,0xc5,0x46]
th.flrw fa0, a1, a2, 3

# CHECK-ASM-AND-OBJ: th.flurd fa0, a1, a2, 0
# CHECK-ASM: encoding: [0x0b,0xe5,0xc5,0x70]
# riscvc-fixtures: th.flurd fa0, a1, a2, 0

# CHECK-ASM-AND-OBJ: th.flurd fa0, a1, a2, 3
# CHECK-ASM: encoding: [0x0b,0xe5,0xc5,0x76]
# riscvc-fixtures: th.flurd fa0, a1, a2, 3

# CHECK-ASM-AND-OBJ: th.flurw fa0, a1, a2, 0
# CHECK-ASM: encoding: [0x0b,0xe5,0xc5,0x50]
# riscvc-fixtures: th.flurw fa0, a1, a2, 0

# CHECK-ASM-AND-OBJ: th.flurw fa0, a1, a2, 3
# CHECK-ASM: encoding: [0x0b,0xe5,0xc5,0x56]
# riscvc-fixtures: th.flurw fa0, a1, a2, 3

# CHECK-ASM-AND-OBJ: th.fsrd fa0, a1, a2, 0
# CHECK-ASM: encoding: [0x0b,0xf5,0xc5,0x60]
# riscvc-fixtures: th.fsrd fa0, a1, a2, 0

# CHECK-ASM-AND-OBJ: th.fsrd fa0, a1, a2, 3
# CHECK-ASM: encoding: [0x0b,0xf5,0xc5,0x66]
# riscvc-fixtures: th.fsrd fa0, a1, a2, 3

# CHECK-ASM-AND-OBJ: th.fsrw fa0, a1, a2, 0
# CHECK-ASM: encoding: [0x0b,0xf5,0xc5,0x40]
th.fsrw fa0, a1, a2, 0

# CHECK-ASM-AND-OBJ: th.fsrw fa0, a1, a2, 3
# CHECK-ASM: encoding: [0x0b,0xf5,0xc5,0x46]
th.fsrw fa0, a1, a2, 3

# CHECK-ASM-AND-OBJ: th.fsurd fa0, a1, a2, 0
# CHECK-ASM: encoding: [0x0b,0xf5,0xc5,0x70]
# riscvc-fixtures: th.fsurd fa0, a1, a2, 0

# CHECK-ASM-AND-OBJ: th.fsurd fa0, a1, a2, 3
# CHECK-ASM: encoding: [0x0b,0xf5,0xc5,0x76]
# riscvc-fixtures: th.fsurd fa0, a1, a2, 3

# CHECK-ASM-AND-OBJ: th.fsurw fa0, a1, a2, 0
# CHECK-ASM: encoding: [0x0b,0xf5,0xc5,0x50]
# riscvc-fixtures: th.fsurw fa0, a1, a2, 0

# CHECK-ASM-AND-OBJ: th.fsurw fa0, a1, a2, 3
# CHECK-ASM: encoding: [0x0b,0xf5,0xc5,0x56]
# riscvc-fixtures: th.fsurw fa0, a1, a2, 3
