# riscvc-fixtures: ; RUN: llvm-mc -triple riscv32-apple-macho %s -o - | FileCheck %s
# riscvc-fixtures: ; RUN: llvm-mc -triple riscv32-apple-macho -filetype=obj %s -o %t.o
# riscvc-fixtures: ; RUN: llvm-objdump -d %t.o | FileCheck %s --check-prefix=CHECK-DIS
# riscvc-fixtures: ; RUN: llvm-nm %t.o | FileCheck %s --check-prefix=CHECK-SYMS

        nop
        .half 42
        .word 42
Lfoo:
lfoo:
foo:

; CHECK: nop
# riscvc-fixtures: ; CHECK: .half 42
# riscvc-fixtures: ; CHECK: .word 42

# riscvc-fixtures: ; CHECK-DIS: file format mach-o 32-bit risc-v
# riscvc-fixtures: ; CHECK-DIS: Disassembly of section __TEXT,__text:
# riscvc-fixtures: ; CHECK-DIS: nop
# riscvc-fixtures: ; CHECK-DIS: 002a <unknown>
# riscvc-fixtures: ; CHECK-DIS: 002a <unknown>
# riscvc-fixtures: ; CHECK-DIS: 0000 <unknown>

# riscvc-fixtures: ; CHECK-SYMS-NOT: Lfoo
# riscvc-fixtures: ; CHECK-SYMS: foo
# riscvc-fixtures: ; CHECK-SYMS: lfoo
