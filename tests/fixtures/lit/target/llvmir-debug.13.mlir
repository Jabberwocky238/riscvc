#di_composite_type = #llvm.di_composite_type<recId = distinct[0]<>, isRecSelf = true>
#di_composite_type1 = #llvm.di_composite_type<recId = distinct[1]<>, isRecSelf = true>
#di_file = #llvm.di_file<"test.mlir" in "/">
#di_subroutine_type = #llvm.di_subroutine_type<types = #di_composite_type>
#di_subroutine_type1 = #llvm.di_subroutine_type<types = #di_composite_type1>
#di_subprogram = #llvm.di_subprogram<scope = #di_file, file = #di_file, subprogramFlags = Optimized, type = #di_subroutine_type>
#di_subprogram1 = #llvm.di_subprogram<scope = #di_file, file = #di_file, subprogramFlags = Optimized, type = #di_subroutine_type1>
#di_composite_type2 = #llvm.di_composite_type<recId = distinct[0]<>, tag = DW_TAG_class_type, scope = #di_subprogram>
#di_composite_type3 = #llvm.di_composite_type<recId = distinct[1]<>, tag = DW_TAG_class_type, scope = #di_subprogram1>
#di_subroutine_type2 = #llvm.di_subroutine_type<types = #di_composite_type2, #di_composite_type3>
#di_global_variable = #llvm.di_global_variable<file = #di_file, line = 1, type = #di_subroutine_type2>
#di_global_variable_expression = #llvm.di_global_variable_expression<var = #di_global_variable, expr = <>>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, dbg_exprs = [#di_global_variable_expression], global_type = !llvm.struct<()>, linkage = #llvm.linkage<external>, sym_name = "global_variable", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

