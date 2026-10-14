## An object with a variant_cc symbol and with a R_RISCV_JMP_SLOT
## should generate a DT_RISCV_VARIANT_CC.
.text
.global func_global_def
.variant_cc func_global_def

func_global_def:
  call func_global_def

