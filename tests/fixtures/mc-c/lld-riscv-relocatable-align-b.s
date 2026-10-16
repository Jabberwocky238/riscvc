## Needs synthesized ALIGN
.option push
.option norelax
.balign 8
b0:
  addi a0, a1, 1

.section .text1,"ax"
.balign 8
  addi a0, a1, 1

.option pop

