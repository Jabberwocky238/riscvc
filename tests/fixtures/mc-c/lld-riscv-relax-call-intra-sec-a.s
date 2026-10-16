.global _start
_start:
  call _start
  call _start

a:
  ret
b:
  .space 2048
## Relaxed to jal. If we don't compute the precise value of a, we may consider
## a reachable by c.j.
  tail a
## Relaxed to jal. c.j is unreachable.
  tail c      # c.j
## Relaxed to c.j. If we don't compute the precise value of c, we may consider
## c.j unreachable.
  tail c      # c.j
  .space 2042
c:
  ret
