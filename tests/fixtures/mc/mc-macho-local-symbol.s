# riscvc-fixtures: ;; RUN:  llvm-mc -triple riscv32-apple-macho %s -filetype=obj -o - | \
# riscvc-fixtures: ;; RUN:  llvm-objdump - -d  | FileCheck %s
	
Ltmp0:	
        addi a0, a0, 1

# riscvc-fixtures: 	;; CHECK: 00000000 <ltmp0>:
