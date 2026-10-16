## Check if STO_RISCV_VARIANT_CC is kept on symbol st_other for both undef,
## local, and hidden visibility.
.text
.global func_global_def, func_global_undef, func_global_hidden
.global ifunc_global_def, ifunc_global_hidden
.local func_local

.hidden func_global_hidden, ifunc_global_hidden

.type ifunc_global_def, %gnu_indirect_function
.type ifunc_global_hidden, %gnu_indirect_function
.type ifunc_local, %gnu_indirect_function

.variant_cc func_global_def
.variant_cc func_global_undef
.variant_cc func_global_hidden
.variant_cc func_local
.variant_cc ifunc_global_def
.variant_cc ifunc_global_hidden
.variant_cc ifunc_local

func_global_def:
func_global_hidden:
func_local:
ifunc_global_def:
ifunc_global_hidden:
ifunc_local:
  ret
