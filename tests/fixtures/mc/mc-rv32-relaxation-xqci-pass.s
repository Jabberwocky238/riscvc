
EXT_JUMP_NEGATIVE:
# riscvc-fixtures:   c.nop
.space 0x100000

FAR_JUMP_NEGATIVE:
# riscvc-fixtures:   c.nop
.space 0x1000

NEAR_NEGATIVE:
# riscvc-fixtures:   c.nop

start:
# riscvc-fixtures:   c.j NEAR
# CHECK: c.j {{0x[0-9a-f]+}} <NEAR>
# riscvc-fixtures:   c.j NEAR_NEGATIVE
# CHECK: c.j {{0x[0-9a-f]+}} <NEAR_NEGATIVE>
# riscvc-fixtures:   c.j FAR_JUMP
# CHECK: jal zero, {{0x[0-9a-f]+}} <FAR_JUMP>
# riscvc-fixtures:   c.j FAR_JUMP_NEGATIVE
# CHECK: jal zero, {{0x[0-9a-f]+}} <FAR_JUMP_NEGATIVE>
# riscvc-fixtures:   c.j EXT_JUMP
# CHECK: qc.e.j {{0x[0-9a-f]+}} <EXT_JUMP>
# riscvc-fixtures:   c.j EXT_JUMP_NEGATIVE
# CHECK: qc.e.j {{0x[0-9a-f]+}} <EXT_JUMP_NEGATIVE>
# riscvc-fixtures:   c.j undef
# CHECK: qc.e.j {{0x[0-9a-f]+}} <start+{{0x[0-9a-f]+}}>
# CHECK: R_RISCV_QC_E_CALL_PLT undef

# riscvc-fixtures:   c.jal NEAR
# CHECK: c.jal {{0x[0-9a-f]+}} <NEAR>
# riscvc-fixtures:   c.jal NEAR_NEGATIVE
# CHECK: c.jal {{0x[0-9a-f]+}} <NEAR_NEGATIVE>
# riscvc-fixtures:   c.jal FAR_JUMP
# CHECK: jal ra, {{0x[0-9a-f]+}} <FAR_JUMP>
# riscvc-fixtures:   c.jal FAR_JUMP_NEGATIVE
# CHECK: jal ra, {{0x[0-9a-f]+}} <FAR_JUMP_NEGATIVE>
# riscvc-fixtures:   c.jal EXT_JUMP
# CHECK: qc.e.jal {{0x[0-9a-f]+}} <EXT_JUMP>
# riscvc-fixtures:   c.jal EXT_JUMP_NEGATIVE
# CHECK: qc.e.jal {{0x[0-9a-f]+}} <EXT_JUMP_NEGATIVE>
# riscvc-fixtures:   c.jal undef
# CHECK: qc.e.jal {{0x[0-9a-f]+}} <start+{{0x[0-9a-f]+}}>
# CHECK: R_RISCV_QC_E_CALL_PLT undef

  jal zero, NEAR
# CHECK: c.j {{0x[0-9a-f]+}} <NEAR>
  jal zero, NEAR_NEGATIVE
# CHECK: c.j {{0x[0-9a-f]+}} <NEAR_NEGATIVE>
  jal zero, FAR_JUMP
# CHECK: jal zero, {{0x[0-9a-f]+}} <FAR_JUMP>
  jal zero, FAR_JUMP_NEGATIVE
# CHECK: jal zero, {{0x[0-9a-f]+}} <FAR_JUMP_NEGATIVE>
# riscvc-fixtures:   jal zero, EXT_JUMP
# CHECK: qc.e.j {{0x[0-9a-f]+}} <EXT_JUMP>
# riscvc-fixtures:   jal zero, EXT_JUMP_NEGATIVE
# CHECK: qc.e.j {{0x[0-9a-f]+}} <EXT_JUMP_NEGATIVE>
  jal zero, undef
# CHECK: qc.e.j {{0x[0-9a-f]+}} <start+{{0x[0-9a-f]+}}>
# CHECK: R_RISCV_QC_E_CALL_PLT undef

  jal ra, NEAR
# CHECK: c.jal {{0x[0-9a-f]+}} <NEAR>
  jal ra, NEAR_NEGATIVE
# CHECK: c.jal {{0x[0-9a-f]+}} <NEAR_NEGATIVE>
  jal ra, FAR_JUMP
# CHECK: jal ra, {{0x[0-9a-f]+}} <FAR_JUMP>
  jal ra, FAR_JUMP_NEGATIVE
# CHECK: jal ra, {{0x[0-9a-f]+}} <FAR_JUMP_NEGATIVE>
# riscvc-fixtures:   jal ra, EXT_JUMP
# CHECK: qc.e.jal {{0x[0-9a-f]+}} <EXT_JUMP>
# riscvc-fixtures:   jal ra, EXT_JUMP_NEGATIVE
# CHECK: qc.e.jal {{0x[0-9a-f]+}} <EXT_JUMP_NEGATIVE>
  jal ra, undef
# CHECK: qc.e.jal {{0x[0-9a-f]+}} <start+{{0x[0-9a-f]+}}>
# CHECK: R_RISCV_QC_E_CALL_PLT undef

# riscvc-fixtures:   qc.e.j NEAR
# CHECK: c.j {{0x[0-9a-f]+}} <NEAR>
# riscvc-fixtures:   qc.e.j NEAR_NEGATIVE
# CHECK: c.j {{0x[0-9a-f]+}} <NEAR_NEGATIVE>
# riscvc-fixtures:   qc.e.j FAR_JUMP
# CHECK: jal zero, {{0x[0-9a-f]+}} <FAR_JUMP>
# riscvc-fixtures:   qc.e.j FAR_JUMP_NEGATIVE
# CHECK: jal zero, {{0x[0-9a-f]+}} <FAR_JUMP_NEGATIVE>
# riscvc-fixtures:   qc.e.j EXT_JUMP
# CHECK: qc.e.j {{0x[0-9a-f]+}} <EXT_JUMP>
# riscvc-fixtures:   qc.e.j EXT_JUMP_NEGATIVE
# CHECK: qc.e.j {{0x[0-9a-f]+}} <EXT_JUMP_NEGATIVE>
# riscvc-fixtures:   qc.e.j undef
# CHECK: qc.e.j {{0x[0-9a-f]+}} <start+{{0x[0-9a-f]+}}>
# CHECK: R_RISCV_QC_E_CALL_PLT undef

# riscvc-fixtures:   qc.e.jal NEAR
# CHECK: c.jal {{0x[0-9a-f]+}} <NEAR>
# riscvc-fixtures:   qc.e.jal NEAR_NEGATIVE
# CHECK: c.jal {{0x[0-9a-f]+}} <NEAR_NEGATIVE>
# riscvc-fixtures:   qc.e.jal FAR_JUMP
# CHECK: jal ra, {{0x[0-9a-f]+}} <FAR_JUMP>
# riscvc-fixtures:   qc.e.jal FAR_JUMP_NEGATIVE
# CHECK: jal ra, {{0x[0-9a-f]+}} <FAR_JUMP_NEGATIVE>
# riscvc-fixtures:   qc.e.jal EXT_JUMP
# CHECK: qc.e.jal {{0x[0-9a-f]+}} <EXT_JUMP>
# riscvc-fixtures:   qc.e.jal EXT_JUMP_NEGATIVE
# CHECK: qc.e.jal {{0x[0-9a-f]+}} <EXT_JUMP_NEGATIVE>
# riscvc-fixtures:   qc.e.jal undef
# CHECK: qc.e.jal {{0x[0-9a-f]+}} <start+{{0x[0-9a-f]+}}>
# CHECK: R_RISCV_QC_E_CALL_PLT undef



  jal t1, NEAR
# CHECK: jal t1, {{0x[0-9a-f]+}} <NEAR>
  jal t1, NEAR_NEGATIVE
# CHECK: jal t1, {{0x[0-9a-f]+}} <NEAR_NEGATIVE>
  jal t1, FAR_JUMP
# CHECK: jal t1, {{0x[0-9a-f]+}} <FAR_JUMP>
  jal t1, FAR_JUMP_NEGATIVE
# CHECK: jal t1, {{0x[0-9a-f]+}} <FAR_JUMP_NEGATIVE>

## The two cases with EXT_JUMP and EXT_JUMP_NEGATIVE are
## in fail.s, below.

  jal t1, undef
# CHECK: jal t1, {{0x[0-9a-f]+}} <start+{{0x[0-9a-f]+}}>
# CHECK: R_RISCV_JAL undef


NEAR:
# riscvc-fixtures:   c.nop
.space 0x1000
FAR_JUMP:
# riscvc-fixtures:   c.nop
.space 0x100000
EXT_JUMP:
# riscvc-fixtures:   c.nop


