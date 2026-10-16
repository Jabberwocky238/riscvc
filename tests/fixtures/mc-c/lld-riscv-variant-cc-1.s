## An object with a variant_pcs symbol but without a R_RISCV_JMP_SLOT
## should not generate a DT_RISCV_VARIANT_CC.
.text
.global func_global_def
.variant_cc func_global_def

func_global_def:
  ret

