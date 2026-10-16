"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "neg_sel_constants", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %50 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %52 = "llvm.icmp"(%arg17, %50) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %53 = "llvm.select"(%52, %51, %50) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "neg_sel_special_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %46 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %47 = "llvm.mlir.constant"() <{value = 512 : i32}> : () -> i32
    %48 = "llvm.icmp"(%arg16, %46) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %49 = "llvm.select"(%48, %47, %46) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "neg_sel_variable_and_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32, %arg15: i32):
    %43 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %44 = "llvm.icmp"(%arg14, %43) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %45 = "llvm.select"(%44, %arg15, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "not_pos_sel_same_variable", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %39 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %40 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %41 = "llvm.icmp"(%arg13, %39) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %42 = "llvm.select"(%41, %arg13, %40) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%42) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "pos_sel_constants", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %34 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %35 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %37 = "llvm.icmp"(%arg12, %34) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %38 = "llvm.select"(%37, %35, %36) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%38) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "pos_sel_special_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %29 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = 512 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %32 = "llvm.icmp"(%arg11, %29) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %33 = "llvm.select"(%32, %30, %31) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "pos_sel_variable_and_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32, %arg10: i32):
    %25 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %27 = "llvm.icmp"(%arg9, %25) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %28 = "llvm.select"(%27, %arg10, %26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%28) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "not_neg_sel_same_variable", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %22 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %23 = "llvm.icmp"(%arg8, %22) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %24 = "llvm.select"(%23, %arg8, %22) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sub_clamp_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32):
    %18 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %19 = "llvm.sub"(%arg6, %arg7) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %20 = "llvm.icmp"(%19, %18) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %21 = "llvm.select"(%20, %19, %18) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i1)>, linkage = #llvm.linkage<external>, sym_name = "sel_shift_bool_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i1):
    %15 = "llvm.mlir.constant"() <{value = -128 : i8}> : () -> i8
    %16 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %17 = "llvm.select"(%arg5, %15, %16) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    "llvm.return"(%17) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i1)>, linkage = #llvm.linkage<external>, sym_name = "sel_shift_bool_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i1):
    %12 = "llvm.mlir.constant"() <{value = 128 : i16}> : () -> i16
    %13 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %14 = "llvm.select"(%arg4, %12, %13) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%14) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "sel_shift_bool_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i1):
    %9 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %11 = "llvm.select"(%arg3, %9, %10) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i1)>, linkage = #llvm.linkage<external>, sym_name = "sel_shift_bool_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i1):
    %6 = "llvm.mlir.constant"() <{value = 65536 : i64}> : () -> i64
    %7 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %8 = "llvm.select"(%arg2, %6, %7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sraiw_andi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %3 = "llvm.add"(%arg0, %arg1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %4 = "llvm.icmp"(%3, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %5 = "llvm.select"(%4, %1, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

