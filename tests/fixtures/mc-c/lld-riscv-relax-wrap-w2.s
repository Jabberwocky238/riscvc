.globl _start, __wrap_foo
_start:
  call call_foo

__wrap_foo:
  ret

