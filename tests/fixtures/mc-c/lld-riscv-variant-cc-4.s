## An object with a variant_cc symbol and with a R_RISCV_IRELATIVE
## should not generate a DT_RISCV_VARIANT_CC.
.text
.global ifunc_global_def
.global func_global_def
.variant_cc ifunc_global_def
.type ifunc_global_def, %gnu_indirect_function

ifunc_global_def:
  call func_global_def

