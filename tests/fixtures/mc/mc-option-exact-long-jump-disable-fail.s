  .option exact

  .text
## Branches to defined out-of-range symbols should report an error
test_defined_out_of_range:
# riscvc-fixtures:   bne a0, a1, 1f # CHECK: :[[#@LINE]]:15: error: fixup value out of range
  .skip (1 << 12)
1:
# riscvc-fixtures:   c.beqz a0, 1f # CHECK: :[[#@LINE]]:14: error: fixup value out of range
  .skip (1 << 8)
1:
# riscvc-fixtures:   c.j 1f # CHECK: :[[#@LINE]]:7: error: fixup value out of range
  .skip (1 << 11)
1:
