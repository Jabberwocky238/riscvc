## Same as before, but targeting a GNU IFUNC.
.text
.global ifunc_global_def
.global func_global_def
.variant_cc ifunc_global_def
.type ifunc_global_def, %gnu_indirect_function

func_global_def:
  call ifunc_global_def

