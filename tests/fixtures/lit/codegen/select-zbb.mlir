"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_umin_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i1, %arg38: i32, %arg39: i32):
    %38 = "llvm.intr.umin"(%arg38, %arg39) : (i32, i32) -> i32
    %39 = "llvm.select"(%arg37, %38, %arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_umin_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i1, %arg35: i32, %arg36: i32):
    %36 = "llvm.intr.umin"(%arg35, %arg36) : (i32, i32) -> i32
    %37 = "llvm.select"(%arg34, %arg35, %36) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_umin_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i1, %arg33: i32):
    %33 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %34 = "llvm.intr.umin"(%arg33, %33) : (i32, i32) -> i32
    %35 = "llvm.select"(%arg32, %arg33, %34) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_umin_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i1, %arg31: i32):
    %30 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %31 = "llvm.intr.umin"(%arg31, %30) : (i32, i32) -> i32
    %32 = "llvm.select"(%arg30, %30, %31) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_umax_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i1, %arg28: i32, %arg29: i32):
    %28 = "llvm.intr.umax"(%arg28, %arg29) : (i32, i32) -> i32
    %29 = "llvm.select"(%arg27, %28, %arg29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_umax_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i1, %arg25: i32, %arg26: i32):
    %26 = "llvm.intr.umax"(%arg25, %arg26) : (i32, i32) -> i32
    %27 = "llvm.select"(%arg24, %arg25, %26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_umax_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i1, %arg23: i32):
    %23 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %24 = "llvm.intr.umax"(%arg23, %23) : (i32, i32) -> i32
    %25 = "llvm.select"(%arg22, %arg23, %24) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_umax_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i1, %arg21: i32):
    %20 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %21 = "llvm.intr.umax"(%arg21, %20) : (i32, i32) -> i32
    %22 = "llvm.select"(%arg20, %20, %21) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_smin_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i1, %arg18: i32, %arg19: i32):
    %18 = "llvm.intr.smin"(%arg18, %arg19) : (i32, i32) -> i32
    %19 = "llvm.select"(%arg17, %18, %arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_smin_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i1, %arg15: i32, %arg16: i32):
    %16 = "llvm.intr.smin"(%arg15, %arg16) : (i32, i32) -> i32
    %17 = "llvm.select"(%arg14, %arg15, %16) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_smin_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i1, %arg13: i32):
    %13 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %14 = "llvm.intr.smin"(%arg13, %13) : (i32, i32) -> i32
    %15 = "llvm.select"(%arg12, %arg13, %14) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_smin_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i1, %arg11: i32):
    %10 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %11 = "llvm.intr.smin"(%arg11, %10) : (i32, i32) -> i32
    %12 = "llvm.select"(%arg10, %10, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%12) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_smax_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i1, %arg8: i32, %arg9: i32):
    %8 = "llvm.intr.smax"(%arg8, %arg9) : (i32, i32) -> i32
    %9 = "llvm.select"(%arg7, %8, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (i1, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_smax_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i1, %arg5: i32, %arg6: i32):
    %6 = "llvm.intr.smax"(%arg5, %arg6) : (i32, i32) -> i32
    %7 = "llvm.select"(%arg4, %arg5, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_smax_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i1, %arg3: i32):
    %3 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %4 = "llvm.intr.smax"(%arg3, %3) : (i32, i32) -> i32
    %5 = "llvm.select"(%arg2, %arg3, %4) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_smax_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i1, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %1 = "llvm.intr.smax"(%arg1, %0) : (i32, i32) -> i32
    %2 = "llvm.select"(%arg0, %0, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

