#di_basic_type = #llvm.di_basic_type<tag = DW_TAG_base_type, name = "integer", sizeInBits = 64, encoding = DW_ATE_signed>
#di_file = #llvm.di_file<"test.f90" in "existence">
#di_compile_unit = #llvm.di_compile_unit<id = distinct[0]<>, sourceLanguage = DW_LANG_Fortran95, file = #di_file, producer = "MLIR", isOptimized = true, emissionKind = Full>
#di_module = #llvm.di_module<file = #di_file, scope = #di_compile_unit, name = "module2", line = 120>
#di_global_variable = #llvm.di_global_variable<scope = #di_module, name = "module_global", linkageName = "module_global", file = #di_file, line = 121, type = #di_basic_type, isDefined = true>
#di_global_variable_expression = #llvm.di_global_variable_expression<var = #di_global_variable, expr = <>>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, dbg_exprs = [#di_global_variable_expression], global_type = i64, linkage = #llvm.linkage<external>, sym_name = "module_global", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

