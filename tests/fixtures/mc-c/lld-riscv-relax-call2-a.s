.global _start, ifunc
_start:
  jump abs, t2
  jump abs, t3
  call abs
  tail abs       # not relaxed

.section .mid,"ax",@progbits
.balign 16
  tail ifunc@plt # not relaxed
  tail ifunc@plt

.type ifunc, @gnu_indirect_function
ifunc:
  ret

