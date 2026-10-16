	.text
	.attribute	4, 16
# riscvc-scope: 	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0_zifencei2p0"
	.p2align	5
	.type	foo,@function
foo:
    tail    foo
    # Pick a non-canonical nop to ensure test output can't be confused
    # with riscv_align padding
    sub zero, zero, zero
