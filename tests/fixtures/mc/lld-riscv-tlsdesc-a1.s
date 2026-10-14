## a.s without TLS definitions.
.Ltlsdesc_hi2:
  auipc a4, %tlsdesc_hi(c)
# riscvc-fixtures:   ld    a5, %tlsdesc_load_lo(.Ltlsdesc_hi2)(a4)
  addi  a0, a4, %tlsdesc_add_lo(.Ltlsdesc_hi2)
  jalr  t0, 0(a5), %tlsdesc_call(.Ltlsdesc_hi2)
  add   a0, a0, tp

