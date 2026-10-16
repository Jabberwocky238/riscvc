"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32, i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_example_smax", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32, %arg29: i32, %arg30: i1, %arg31: i32):
    %14 = "llvm.intr.smax"(%arg28, %arg31) : (i32, i32) -> i32
    %15 = "llvm.select"(%arg30, %14, %arg29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32, i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_example_smin", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i32, %arg26: i1, %arg27: i32):
    %12 = "llvm.intr.smin"(%arg24, %arg27) : (i32, i32) -> i32
    %13 = "llvm.select"(%arg26, %12, %arg25) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32, i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_example_umax", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32, %arg22: i1, %arg23: i32):
    %10 = "llvm.intr.umax"(%arg20, %arg23) : (i32, i32) -> i32
    %11 = "llvm.select"(%arg22, %10, %arg21) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32, i1, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_example_umin", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32, %arg17: i32, %arg18: i1, %arg19: i32):
    %8 = "llvm.intr.umin"(%arg16, %arg19) : (i32, i32) -> i32
    %9 = "llvm.select"(%arg18, %8, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (i64, i64, i1, i64)>, linkage = #llvm.linkage<external>, sym_name = "select_example_smax_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64, %arg13: i64, %arg14: i1, %arg15: i64):
    %6 = "llvm.intr.smax"(%arg12, %arg15) : (i64, i64) -> i64
    %7 = "llvm.select"(%arg14, %6, %arg13) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (i64, i64, i1, i64)>, linkage = #llvm.linkage<external>, sym_name = "select_example_smin_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64, %arg9: i64, %arg10: i1, %arg11: i64):
    %4 = "llvm.intr.smin"(%arg8, %arg11) : (i64, i64) -> i64
    %5 = "llvm.select"(%arg10, %4, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (i64, i64, i1, i64)>, linkage = #llvm.linkage<external>, sym_name = "select_example_umax_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64, %arg5: i64, %arg6: i1, %arg7: i64):
    %2 = "llvm.intr.umax"(%arg4, %arg7) : (i64, i64) -> i64
    %3 = "llvm.select"(%arg6, %2, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (i64, i64, i1, i64)>, linkage = #llvm.linkage<external>, sym_name = "select_example_umin_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i1, %arg3: i64):
    %0 = "llvm.intr.umin"(%arg0, %arg3) : (i64, i64) -> i64
    %1 = "llvm.select"(%arg2, %0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

