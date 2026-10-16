"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (vector<4xf32>, vector<4xf32>)>, linkage = #llvm.linkage<external>, sym_name = "add_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: vector<4xf32>, %arg29: vector<4xf32>):
    %47 = "llvm.mlir.constant"() <{value = -0.000000e+00 : f32}> : () -> f32
    %48 = "llvm.intr.vector.reduce.fadd"(%47, %arg28) <{fastmathFlags = #llvm.fastmath<fast>}> : (f32, vector<4xf32>) -> f32
    %49 = "llvm.intr.vector.reduce.fadd"(%47, %arg29) <{fastmathFlags = #llvm.fastmath<fast>}> : (f32, vector<4xf32>) -> f32
    %50 = "llvm.fadd"(%48, %49) <{fastmathFlags = #llvm.fastmath<fast>}> : (f32, f32) -> f32
    "llvm.return"(%50) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (vector<4xf32>, vector<4xf32>)>, linkage = #llvm.linkage<external>, sym_name = "fmul_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: vector<4xf32>, %arg27: vector<4xf32>):
    %43 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %44 = "llvm.intr.vector.reduce.fmul"(%43, %arg26) <{fastmathFlags = #llvm.fastmath<fast>}> : (f32, vector<4xf32>) -> f32
    %45 = "llvm.intr.vector.reduce.fmul"(%43, %arg27) <{fastmathFlags = #llvm.fastmath<fast>}> : (f32, vector<4xf32>) -> f32
    %46 = "llvm.fmul"(%44, %45) <{fastmathFlags = #llvm.fastmath<fast>}> : (f32, f32) -> f32
    "llvm.return"(%46) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (vector<4xf32>, vector<4xf32>)>, linkage = #llvm.linkage<external>, sym_name = "fmin_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: vector<4xf32>, %arg25: vector<4xf32>):
    %40 = "llvm.intr.vector.reduce.fmin"(%arg24) <{fastmathFlags = #llvm.fastmath<fast>}> : (vector<4xf32>) -> f32
    %41 = "llvm.intr.vector.reduce.fmin"(%arg25) <{fastmathFlags = #llvm.fastmath<fast>}> : (vector<4xf32>) -> f32
    %42 = "llvm.intr.minnum"(%40, %41) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%42) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (vector<4xf32>, vector<4xf32>)>, linkage = #llvm.linkage<external>, sym_name = "fmax_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: vector<4xf32>, %arg23: vector<4xf32>):
    %37 = "llvm.intr.vector.reduce.fmax"(%arg22) <{fastmathFlags = #llvm.fastmath<fast>}> : (vector<4xf32>) -> f32
    %38 = "llvm.intr.vector.reduce.fmax"(%arg23) <{fastmathFlags = #llvm.fastmath<fast>}> : (vector<4xf32>) -> f32
    %39 = "llvm.intr.maxnum"(%37, %38) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%39) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<4xi32>, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "add_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: vector<4xi32>, %arg21: vector<4xi32>):
    %34 = "llvm.intr.vector.reduce.add"(%arg20) : (vector<4xi32>) -> i32
    %35 = "llvm.intr.vector.reduce.add"(%arg21) : (vector<4xi32>) -> i32
    %36 = "llvm.add"(%34, %35) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%36) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (vector<16xi8>, vector<16xi8>)>, linkage = #llvm.linkage<external>, sym_name = "add_ext_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: vector<16xi8>, %arg19: vector<16xi8>):
    %29 = "llvm.zext"(%arg18) : (vector<16xi8>) -> vector<16xi16>
    %30 = "llvm.zext"(%arg19) : (vector<16xi8>) -> vector<16xi16>
    %31 = "llvm.intr.vector.reduce.add"(%29) : (vector<16xi16>) -> i16
    %32 = "llvm.intr.vector.reduce.add"(%30) : (vector<16xi16>) -> i16
    %33 = "llvm.add"(%31, %32) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%33) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (vector<32xi8>, vector<16xi8>)>, linkage = #llvm.linkage<external>, sym_name = "add_ext_v32i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: vector<32xi8>, %arg17: vector<16xi8>):
    %24 = "llvm.zext"(%arg16) : (vector<32xi8>) -> vector<32xi16>
    %25 = "llvm.zext"(%arg17) : (vector<16xi8>) -> vector<16xi16>
    %26 = "llvm.intr.vector.reduce.add"(%24) : (vector<32xi16>) -> i16
    %27 = "llvm.intr.vector.reduce.add"(%25) : (vector<16xi16>) -> i16
    %28 = "llvm.add"(%26, %27) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%28) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<4xi32>, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "mul_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: vector<4xi32>, %arg15: vector<4xi32>):
    %21 = "llvm.intr.vector.reduce.mul"(%arg14) : (vector<4xi32>) -> i32
    %22 = "llvm.intr.vector.reduce.mul"(%arg15) : (vector<4xi32>) -> i32
    %23 = "llvm.mul"(%21, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<4xi32>, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "and_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: vector<4xi32>, %arg13: vector<4xi32>):
    %18 = "llvm.intr.vector.reduce.and"(%arg12) : (vector<4xi32>) -> i32
    %19 = "llvm.intr.vector.reduce.and"(%arg13) : (vector<4xi32>) -> i32
    %20 = "llvm.and"(%18, %19) : (i32, i32) -> i32
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<4xi32>, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "or_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: vector<4xi32>, %arg11: vector<4xi32>):
    %15 = "llvm.intr.vector.reduce.or"(%arg10) : (vector<4xi32>) -> i32
    %16 = "llvm.intr.vector.reduce.or"(%arg11) : (vector<4xi32>) -> i32
    %17 = "llvm.or"(%15, %16) : (i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<4xi32>, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "xor_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: vector<4xi32>, %arg9: vector<4xi32>):
    %12 = "llvm.intr.vector.reduce.xor"(%arg8) : (vector<4xi32>) -> i32
    %13 = "llvm.intr.vector.reduce.xor"(%arg9) : (vector<4xi32>) -> i32
    %14 = "llvm.xor"(%12, %13) : (i32, i32) -> i32
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<4xi32>, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "umin_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: vector<4xi32>, %arg7: vector<4xi32>):
    %9 = "llvm.intr.vector.reduce.umin"(%arg6) : (vector<4xi32>) -> i32
    %10 = "llvm.intr.vector.reduce.umin"(%arg7) : (vector<4xi32>) -> i32
    %11 = "llvm.intr.umin"(%9, %10) : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<4xi32>, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "umax_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: vector<4xi32>, %arg5: vector<4xi32>):
    %6 = "llvm.intr.vector.reduce.umax"(%arg4) : (vector<4xi32>) -> i32
    %7 = "llvm.intr.vector.reduce.umax"(%arg5) : (vector<4xi32>) -> i32
    %8 = "llvm.intr.umax"(%6, %7) : (i32, i32) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<4xi32>, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "smin_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: vector<4xi32>, %arg3: vector<4xi32>):
    %3 = "llvm.intr.vector.reduce.smin"(%arg2) : (vector<4xi32>) -> i32
    %4 = "llvm.intr.vector.reduce.smin"(%arg3) : (vector<4xi32>) -> i32
    %5 = "llvm.intr.smin"(%3, %4) : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (vector<4xi32>, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "smax_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: vector<4xi32>, %arg1: vector<4xi32>):
    %0 = "llvm.intr.vector.reduce.smax"(%arg0) : (vector<4xi32>) -> i32
    %1 = "llvm.intr.vector.reduce.smax"(%arg1) : (vector<4xi32>) -> i32
    %2 = "llvm.intr.smax"(%0, %1) : (i32, i32) -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

