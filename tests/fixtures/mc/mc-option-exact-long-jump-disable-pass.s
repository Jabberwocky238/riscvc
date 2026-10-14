  .option exact

  .text
test_undefined:
## Branches to undefined symbols should not be relaxed
# CHECK:      bne a0, a1, {{.*}}
# CHECK-NEXT: R_RISCV_BRANCH foo
   bne a0, a1, foo
# CHECK:      c.beqz a0, {{.*}}
# CHECK-NEXT: R_RISCV_RVC_BRANCH foo
# riscvc-fixtures:    c.beqz a0, foo
# CHECK:      c.j {{.*}}
# CHECK-NEXT: R_RISCV_RVC_JUMP foo
# riscvc-fixtures:    c.j foo

## Branches to defined in-range symbols should work normally
test_defined_in_range:
# CHECK:      bne a0, a1, {{.*}} <bar>
  bne a0, a1, bar
# CHECK:      c.beqz a0, {{.*}} <bar>
# riscvc-fixtures:    c.beqz a0, bar
# CHECK:      c.j {{.*}} <bar>
# riscvc-fixtures:    c.j bar
bar:

