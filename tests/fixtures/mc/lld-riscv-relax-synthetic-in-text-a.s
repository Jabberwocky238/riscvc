.global _start
_start:
1:
  auipc a0, %got_pcrel_hi(sym)
# riscvc-fixtures:   ld a0, %pcrel_lo(1b)(a0)

.data
sym:
  .word 0

