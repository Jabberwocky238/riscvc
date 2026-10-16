"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (i1, f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_f32_i1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i1, %arg17: f32, %arg18: f32):
    %12 = "llvm.select"(%arg16, %arg17, %arg18) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%12) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (i1, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_f64_i1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i1, %arg14: f64, %arg15: f64):
    %11 = "llvm.select"(%arg13, %arg14, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    "llvm.return"(%11) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_f64_fcmp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f64, %arg10: f64, %arg11: f64, %arg12: f64):
    %9 = "llvm.fcmp"(%arg9, %arg10) <{fastmathFlags = #llvm.fastmath<none>, predicate = 2 : i64}> : (f64, f64) -> i1
    %10 = "llvm.select"(%9, %arg11, %arg12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    "llvm.return"(%10) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<f16 (i1, f16, f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.noundef}], sym_name = "select_half_i1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i1, %arg7: f16, %arg8: f16):
    %8 = "llvm.select"(%arg6, %arg7, %arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f16, f16) -> f16
    "llvm.return"(%8) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<f32 (i1, f32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.noundef}], sym_name = "select_i1_f32_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i1, %arg5: f32):
    %6 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %7 = "llvm.select"(%arg4, %arg5, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%7) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<f16 (i1, f16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.noundef}], sym_name = "select_i1_half_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i1, %arg3: f16):
    %4 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %5 = "llvm.select"(%arg2, %arg3, %4) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f16, f16) -> f16
    "llvm.return"(%5) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (i1, f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_i1_half_0_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i1, %arg1: f16):
    %0 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %1 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
    %2 = "llvm.select"(%arg0, %arg1, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f16, f16) -> f16
    %3 = "llvm.fadd"(%2, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%3) : (f16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

