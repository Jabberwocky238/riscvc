"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, sym_name = "multiple_floats", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f32, %arg10: f32):
    %28 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %29 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %30 = "llvm.fadd"(%arg9, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %31 = "llvm.fadd"(%arg10, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %32 = "llvm.fadd"(%30, %31) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%32) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, sym_name = "single_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f64):
    %26 = "llvm.mlir.constant"() <{value = 4.210000e+01 : f64}> : () -> f64
    %27 = "llvm.fadd"(%arg8, %26) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%27) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "multiple_doubles", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f64, %arg7: f64):
    %20 = "llvm.mlir.constant"() <{value = 2.718000e+00 : f64}> : () -> f64
    %21 = "llvm.mlir.constant"() <{value = 4.210000e+01 : f64}> : () -> f64
    %22 = "llvm.fadd"(%arg6, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %23 = "llvm.fadd"(%arg7, %21) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %24 = "llvm.fadd"(%22, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %25 = "llvm.fadd"(%23, %24) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%25) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "multiple_doubles_no_promote", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f64, %arg5: f64):
    %14 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %15 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %16 = "llvm.fadd"(%arg4, %14) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %17 = "llvm.fadd"(%arg5, %15) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %18 = "llvm.fadd"(%16, %14) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %19 = "llvm.fadd"(%17, %18) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%19) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, i1)>, linkage = #llvm.linkage<external>, sym_name = "multiple_doubles_multi_bb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f64, %arg3: i1):
    %5 = "llvm.mlir.constant"() <{value = 1.230000e+00 : f64}> : () -> f64
    %6 = "llvm.mlir.constant"() <{value = 4.560000e+00 : f64}> : () -> f64
    "llvm.cond_br"(%arg3)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %7 = "llvm.fadd"(%arg2, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %8 = "llvm.fmul"(%7, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %9 = "llvm.fsub"(%8, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%9)[^bb3] : (f64) -> ()
  ^bb2:  // pred: ^bb0
    %10 = "llvm.fadd"(%arg2, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %11 = "llvm.fmul"(%10, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %12 = "llvm.fsub"(%11, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%12)[^bb3] : (f64) -> ()
  ^bb3(%13: f64):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%13) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, i1)>, linkage = #llvm.linkage<external>, sym_name = "multiple_doubles_phi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f64, %arg1: i1):
    %0 = "llvm.mlir.constant"() <{value = 1.230000e+00 : f64}> : () -> f64
    %1 = "llvm.mlir.constant"() <{value = 4.560000e+00 : f64}> : () -> f64
    "llvm.cond_br"(%arg1, %arg0)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, f64) -> ()
  ^bb1:  // pred: ^bb0
    %2 = "llvm.fmul"(%arg0, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%0)[^bb2] : (f64) -> ()
  ^bb2(%3: f64):  // 2 preds: ^bb0, ^bb1
    %4 = "llvm.fadd"(%3, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%4) : (f64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

