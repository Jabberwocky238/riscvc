.global _start, _start_end
_start:
  tail a@plt
  jump a, t0
.balign 16
  call a          # rv32c: c.jal; rv64c: jal
  call bar        # PLT call can be relaxed. rv32c: c.jal; rv64c: jal

a:
  ret
.size _start, . - _start
_start_end:

.section .mid,"ax",@progbits
  call _start@plt # rv32c: c.jal; rv64c: jal
  call _start@plt

.section .mid2,"ax",@progbits
  call _start@plt

.section .high,"ax",@progbits
  call _start@plt # relaxable for %t/32c
  call _start@plt # not relaxed

