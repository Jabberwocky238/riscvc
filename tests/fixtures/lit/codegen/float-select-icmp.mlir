"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}, {}], function_type = !llvm.func<f32 (i32, i32, f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "select_icmp_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32, %arg39: i32, %arg40: f32, %arg41: f32):
    %28 = "llvm.icmp"(%arg38, %arg39) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %29 = "llvm.select"(%28, %arg40, %arg41) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%29) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}, {}], function_type = !llvm.func<f32 (i32, i32, f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "select_icmp_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i32, %arg35: i32, %arg36: f32, %arg37: f32):
    %26 = "llvm.icmp"(%arg34, %arg35) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %27 = "llvm.select"(%26, %arg36, %arg37) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%27) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}, {}], function_type = !llvm.func<f32 (i32, i32, f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "select_icmp_ugt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32, %arg31: i32, %arg32: f32, %arg33: f32):
    %24 = "llvm.icmp"(%arg30, %arg31) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %25 = "llvm.select"(%24, %arg32, %arg33) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%25) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}, {}], function_type = !llvm.func<f32 (i32, i32, f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "select_icmp_uge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32, %arg27: i32, %arg28: f32, %arg29: f32):
    %22 = "llvm.icmp"(%arg26, %arg27) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %23 = "llvm.select"(%22, %arg28, %arg29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%23) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}, {}], function_type = !llvm.func<f32 (i32, i32, f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "select_icmp_ult", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32, %arg24: f32, %arg25: f32):
    %20 = "llvm.icmp"(%arg22, %arg23) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %21 = "llvm.select"(%20, %arg24, %arg25) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%21) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}, {}], function_type = !llvm.func<f32 (i32, i32, f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "select_icmp_ule", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32, %arg19: i32, %arg20: f32, %arg21: f32):
    %18 = "llvm.icmp"(%arg18, %arg19) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %19 = "llvm.select"(%18, %arg20, %arg21) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%19) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}, {}], function_type = !llvm.func<f32 (i32, i32, f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "select_icmp_sgt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32, %arg15: i32, %arg16: f32, %arg17: f32):
    %16 = "llvm.icmp"(%arg14, %arg15) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %17 = "llvm.select"(%16, %arg16, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%17) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}, {}], function_type = !llvm.func<f32 (i32, i32, f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "select_icmp_sge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32, %arg11: i32, %arg12: f32, %arg13: f32):
    %14 = "llvm.icmp"(%arg10, %arg11) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %15 = "llvm.select"(%14, %arg12, %arg13) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%15) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}, {}], function_type = !llvm.func<f32 (i32, i32, f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "select_icmp_slt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32, %arg8: f32, %arg9: f32):
    %12 = "llvm.icmp"(%arg6, %arg7) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %13 = "llvm.select"(%12, %arg8, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%13) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}, {}], function_type = !llvm.func<f32 (i32, i32, f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "select_icmp_sle", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32, %arg3: i32, %arg4: f32, %arg5: f32):
    %10 = "llvm.icmp"(%arg2, %arg3) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %11 = "llvm.select"(%10, %arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%11) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<f32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_icmp_slt_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %5 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %7 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %8 = "llvm.icmp"(%arg1, %5) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %9 = "llvm.select"(%8, %6, %7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%9) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<f32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_icmp_sgt_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %3 = "llvm.icmp"(%arg0, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %4 = "llvm.select"(%3, %1, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%4) : (f32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

