        .globl  _start
        .type   _start,@function
_start:
        call    test
	ret
end:
        .size   _start, end-_start
        .section        ".note.GNU-split-stack","",@progbits


