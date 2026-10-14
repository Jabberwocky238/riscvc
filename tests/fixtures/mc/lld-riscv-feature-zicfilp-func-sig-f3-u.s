.section ".note.gnu.property", "a"
.balign 8
.4byte 4
.4byte (ndesc_end - ndesc_begin)
.4byte 0x5        // NT_GNU_PROPERTY_TYPE_0
.asciz "GNU"
ndesc_begin:
.balign 8
.4byte 0xc0000000 // GNU_PROPERTY_RISCV_FEATURE_1_AND
.4byte 4
.4byte 1          // GNU_PROPERTY_RISCV_FEATURE_1_CFI_LP_UNLABELED
.balign 8
ndesc_end:

.text
.globl f3
.type f3,@function
f3:
  ret
