"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "and_select_all_ones_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i1, %arg40: i32, %arg41: i32):
    %47 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %48 = "llvm.select"(%arg39, %arg40, %47) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %49 = "llvm.and"(%48, %arg41) : (i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "and_select_all_ones_i32_cmp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32, %arg37: i32, %arg38: i32):
    %42 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %44 = "llvm.icmp"(%arg38, %42) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %45 = "llvm.select"(%44, %arg36, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %46 = "llvm.and"(%45, %arg37) : (i32, i32) -> i32
    "llvm.return"(%46) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "and_select_all_ones_i32_cmp2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32, %arg34: i32, %arg35: i32):
    %37 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %38 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %39 = "llvm.icmp"(%arg35, %37) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %40 = "llvm.select"(%39, %arg33, %38) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %41 = "llvm.and"(%40, %arg34) : (i32, i32) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "and_select_all_ones_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i1, %arg31: i64, %arg32: i64):
    %34 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %35 = "llvm.select"(%arg30, %34, %arg31) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %36 = "llvm.and"(%arg32, %35) : (i64, i64) -> i64
    "llvm.return"(%36) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "and_select_all_ones_i64_cmp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i64, %arg28: i64, %arg29: i64):
    %29 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %30 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %31 = "llvm.icmp"(%arg29, %29) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %32 = "llvm.select"(%31, %arg27, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %33 = "llvm.and"(%32, %arg28) : (i64, i64) -> i64
    "llvm.return"(%33) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "and_select_all_ones_i64_cmp2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i64, %arg25: i64, %arg26: i64):
    %24 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %25 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %26 = "llvm.icmp"(%arg26, %24) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %27 = "llvm.select"(%26, %arg24, %25) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %28 = "llvm.and"(%27, %arg25) : (i64, i64) -> i64
    "llvm.return"(%28) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "or_select_all_zeros_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i1, %arg22: i32, %arg23: i32):
    %21 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %22 = "llvm.select"(%arg21, %arg22, %21) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %23 = "llvm.or"(%arg23, %22) : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "or_select_all_zeros_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i1, %arg19: i64, %arg20: i64):
    %18 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %19 = "llvm.select"(%arg18, %18, %arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %20 = "llvm.or"(%19, %arg20) : (i64, i64) -> i64
    "llvm.return"(%20) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "xor_select_all_zeros_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i1, %arg16: i32, %arg17: i32):
    %15 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %16 = "llvm.select"(%arg15, %15, %arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %17 = "llvm.xor"(%arg17, %16) : (i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "xor_select_all_zeros_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i1, %arg13: i64, %arg14: i64):
    %12 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %13 = "llvm.select"(%arg12, %arg13, %12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %14 = "llvm.xor"(%13, %arg14) : (i64, i64) -> i64
    "llvm.return"(%14) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "add_select_all_zeros_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i1, %arg10: i32, %arg11: i32):
    %9 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %10 = "llvm.select"(%arg9, %9, %arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %11 = "llvm.add"(%arg11, %10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "add_select_all_zeros_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i1, %arg7: i64, %arg8: i64):
    %6 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %7 = "llvm.select"(%arg6, %arg7, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %8 = "llvm.add"(%7, %arg8) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "sub_select_all_zeros_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i1, %arg4: i32, %arg5: i32):
    %3 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "llvm.select"(%arg3, %3, %arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %5 = "llvm.sub"(%arg5, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (i1, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sub_select_all_zeros_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i1, %arg1: i64, %arg2: i64):
    %0 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "llvm.select"(%arg0, %arg1, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %2 = "llvm.sub"(%arg2, %1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%2) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

