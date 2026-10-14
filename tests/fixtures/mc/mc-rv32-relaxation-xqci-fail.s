

EXT_JUMP_NEGATIVE:
# riscvc-fixtures:   c.nop
.space 0x100000
.space 0x1000

# riscvc-fixtures:   jal t1, EXT_JUMP
# ERROR: [[@LINE-1]]:11: error: fixup value out of range
# riscvc-fixtures:   jal t1, EXT_JUMP_NEGATIVE
# ERROR: [[@LINE-1]]:11: error: fixup value out of range

.space 0x1000
.space 0x100000
EXT_JUMP:
# riscvc-fixtures:   c.nop
