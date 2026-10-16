"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bitcast_and", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f32, %arg11: f32):
    %30 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %31 = "llvm.fadd"(%arg10, %arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %32 = "llvm.bitcast"(%31) : (f32) -> i32
    %33 = "llvm.and"(%32, %30) : (i32, i32) -> i32
    %34 = "llvm.bitcast"(%33) : (i32) -> f32
    %35 = "llvm.fadd"(%arg10, %34) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%35) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bitcast_double_and", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f64, %arg9: f64):
    %24 = "llvm.mlir.constant"() <{value = 9223372036854775807 : i64}> : () -> i64
    %25 = "llvm.fadd"(%arg8, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %26 = "llvm.bitcast"(%25) : (f64) -> i64
    %27 = "llvm.and"(%26, %24) : (i64, i64) -> i64
    %28 = "llvm.bitcast"(%27) : (i64) -> f64
    %29 = "llvm.fadd"(%arg8, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%29) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bitcast_xor", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f32, %arg7: f32):
    %18 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %19 = "llvm.fmul"(%arg6, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %20 = "llvm.bitcast"(%19) : (f32) -> i32
    %21 = "llvm.xor"(%20, %18) : (i32, i32) -> i32
    %22 = "llvm.bitcast"(%21) : (i32) -> f32
    %23 = "llvm.fmul"(%arg6, %22) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%23) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bitcast_double_xor", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f64, %arg5: f64):
    %12 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %13 = "llvm.fmul"(%arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %14 = "llvm.bitcast"(%13) : (f64) -> i64
    %15 = "llvm.xor"(%14, %12) : (i64, i64) -> i64
    %16 = "llvm.bitcast"(%15) : (i64) -> f64
    %17 = "llvm.fmul"(%arg4, %16) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%17) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bitcast_or", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f32, %arg3: f32):
    %6 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %7 = "llvm.fmul"(%arg2, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %8 = "llvm.bitcast"(%7) : (f32) -> i32
    %9 = "llvm.or"(%8, %6) : (i32, i32) -> i32
    %10 = "llvm.bitcast"(%9) : (i32) -> f32
    %11 = "llvm.fmul"(%arg2, %10) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%11) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bitcast_double_or", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f64, %arg1: f64):
    %0 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %1 = "llvm.fmul"(%arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %2 = "llvm.bitcast"(%1) : (f64) -> i64
    %3 = "llvm.or"(%2, %0) : (i64, i64) -> i64
    %4 = "llvm.bitcast"(%3) : (i64) -> f64
    %5 = "llvm.fmul"(%arg0, %4) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%5) : (f64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

