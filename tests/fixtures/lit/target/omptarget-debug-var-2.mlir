#di_basic_type = #llvm.di_basic_type<tag = DW_TAG_base_type, name = "integer", sizeInBits = 32, encoding = DW_ATE_signed>
#di_basic_type1 = #llvm.di_basic_type<tag = DW_TAG_base_type, name = "real", sizeInBits = 32, encoding = DW_ATE_float>
#di_file = #llvm.di_file<"target.f90" in "">
#di_null_type = #llvm.di_null_type
#di_compile_unit = #llvm.di_compile_unit<id = distinct[0]<>, sourceLanguage = DW_LANG_Fortran95, file = #di_file, isOptimized = false, emissionKind = Full>
#di_composite_type = #llvm.di_composite_type<tag = DW_TAG_array_type, baseType = #di_basic_type, elements = #llvm.di_subrange<count = 10 : i64>>
#di_subroutine_type = #llvm.di_subroutine_type<callingConvention = DW_CC_program, types = #di_null_type>
#di_global_variable = #llvm.di_global_variable<scope = #di_compile_unit, name = "arr", linkageName = "arr", file = #di_file, line = 4, type = #di_composite_type, isDefined = true>
#di_subprogram = #llvm.di_subprogram<id = distinct[1]<>, compileUnit = #di_compile_unit, scope = #di_file, name = "target", file = #di_file, subprogramFlags = Definition, type = #di_subroutine_type>
#di_global_variable_expression = #llvm.di_global_variable_expression<var = #di_global_variable, expr = <>>
#di_local_variable = #llvm.di_local_variable<scope = #di_subprogram, name = "i", file = #di_file, line = 13, arg = 3, type = #di_basic_type>
#di_local_variable1 = #llvm.di_local_variable<scope = #di_subprogram, name = "arr", file = #di_file, line = 4, arg = 2, type = #di_composite_type>
#di_local_variable2 = #llvm.di_local_variable<scope = #di_subprogram, name = "x", file = #di_file, line = 12, arg = 1, type = #di_basic_type1>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, dbg_exprs = [#di_global_variable_expression], dso_local, global_type = !llvm.array<10 x i32>, linkage = #llvm.linkage<internal>, sym_name = "_QFEarr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %4 = "llvm.mlir.undef"() : () -> !llvm.array<10 x i32>
    "llvm.return"(%4) : (!llvm.array<10 x i32>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<68 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_0", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-debug-var-2.in;unknown;41;11;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<68 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_1", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-debug-var-2.in;unknown;43;11;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<68 x i8>, linkage = #llvm.linkage<private>, sym_name = "mlir.llvm.nameless_global_2", unnamed_addr = 2 : i64, value = ";tests/fixtures/lit/target/omptarget-debug-var-2.in;unknown;44;11;;\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "test", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.mlir.addressof"() <{global_name = @_QFEarr}> : () -> !llvm.ptr
    %2 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = f32}> : (i64) -> !llvm.ptr
    %3 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i64) -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%2, %1, %3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__omp_offloading_deadf17e_2f5c7f65_test_l11, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<internal>, sym_name = "__omp_offloading_deadf17e_2f5c7f65_test_l11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr):
    "llvm.intr.dbg.declare"(%arg2) <{locationExpr = #llvm.di_expression<>, varInfo = #di_local_variable}> : (!llvm.ptr) -> ()
    "llvm.intr.dbg.declare"(%arg1) <{locationExpr = #llvm.di_expression<>, varInfo = #di_local_variable1}> : (!llvm.ptr) -> ()
    "llvm.intr.dbg.declare"(%arg0) <{locationExpr = #llvm.di_expression<>, varInfo = #di_local_variable2}> : (!llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // pred: ^bb1
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // pred: ^bb3
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

