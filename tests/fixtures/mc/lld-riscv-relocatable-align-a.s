.globl _start
_start:
  call foo

.section .text1,"ax"
.globl foo
foo:
  call foo

