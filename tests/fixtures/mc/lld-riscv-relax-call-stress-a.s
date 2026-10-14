## At the beginning of state1, low-_start = 0x800-2, reachable by a c.j.
## This increases high-jump_high from 0x100000-2 to 0x100000, unreachable by a jal.
## In the next iteration, low-_start increases to 0x800, unreachable by a c.j.
.global _start
_start:
  jump low, t0    # state0: 4 bytes; state1: 2 bytes
jump_high:
  jump high, t0   # state0: 4 bytes; state1: 8 bytes

  .space 0x800-10
low:
  ret

.section .high,"ax",@progbits
  nop
high:
  call jump_high
  call jump_high

