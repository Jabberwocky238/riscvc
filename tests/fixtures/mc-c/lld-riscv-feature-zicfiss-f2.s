.text
.globl f2
.type f2,@function
f2:
  .globl f3
  .type f3, @function
  call f3
  ret

