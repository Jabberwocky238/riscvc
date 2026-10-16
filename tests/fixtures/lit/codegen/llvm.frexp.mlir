"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f16, i32)> (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_f16_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f16):
    %24 = "llvm.intr.frexp"(%arg14) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> !llvm.struct<(f16, i32)>
    "llvm.return"(%24) : (!llvm.struct<(f16, i32)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_f16_i32_only_use_fract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: f16):
    %22 = "llvm.intr.frexp"(%arg13) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> !llvm.struct<(f16, i32)>
    %23 = "llvm.extractvalue"(%22) <{position = array<i64: 0>}> : (!llvm.struct<(f16, i32)>) -> f16
    "llvm.return"(%23) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_f16_i32_only_use_exp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f16):
    %20 = "llvm.intr.frexp"(%arg12) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> !llvm.struct<(f16, i32)>
    %21 = "llvm.extractvalue"(%20) <{position = array<i64: 1>}> : (!llvm.struct<(f16, i32)>) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f32, i32)> (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_f32_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f32):
    %19 = "llvm.intr.frexp"(%arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> !llvm.struct<(f32, i32)>
    "llvm.return"(%19) : (!llvm.struct<(f32, i32)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_f32_i32_only_use_fract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f32):
    %17 = "llvm.intr.frexp"(%arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> !llvm.struct<(f32, i32)>
    %18 = "llvm.extractvalue"(%17) <{position = array<i64: 0>}> : (!llvm.struct<(f32, i32)>) -> f32
    "llvm.return"(%18) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_f32_i32_only_use_exp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f32):
    %15 = "llvm.intr.frexp"(%arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> !llvm.struct<(f32, i32)>
    %16 = "llvm.extractvalue"(%15) <{position = array<i64: 1>}> : (!llvm.struct<(f32, i32)>) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(vector<4xf32>, vector<4xi32>)> (vector<4xf32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_v4f32_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: vector<4xf32>):
    %14 = "llvm.intr.frexp"(%arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xf32>) -> !llvm.struct<(vector<4xf32>, vector<4xi32>)>
    "llvm.return"(%14) : (!llvm.struct<(vector<4xf32>, vector<4xi32>)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xf32> (vector<4xf32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_v4f32_v4i32_only_use_fract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: vector<4xf32>):
    %12 = "llvm.intr.frexp"(%arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xf32>) -> !llvm.struct<(vector<4xf32>, vector<4xi32>)>
    %13 = "llvm.extractvalue"(%12) <{position = array<i64: 0>}> : (!llvm.struct<(vector<4xf32>, vector<4xi32>)>) -> vector<4xf32>
    "llvm.return"(%13) : (vector<4xf32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xi32> (vector<4xf32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_v4f32_v4i32_only_use_exp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: vector<4xf32>):
    %10 = "llvm.intr.frexp"(%arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xf32>) -> !llvm.struct<(vector<4xf32>, vector<4xi32>)>
    %11 = "llvm.extractvalue"(%10) <{position = array<i64: 1>}> : (!llvm.struct<(vector<4xf32>, vector<4xi32>)>) -> vector<4xi32>
    "llvm.return"(%11) : (vector<4xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f64, i32)> (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_f64_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f64):
    %9 = "llvm.intr.frexp"(%arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> !llvm.struct<(f64, i32)>
    "llvm.return"(%9) : (!llvm.struct<(f64, i32)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_f64_i32_only_use_fract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f64):
    %7 = "llvm.intr.frexp"(%arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> !llvm.struct<(f64, i32)>
    %8 = "llvm.extractvalue"(%7) <{position = array<i64: 0>}> : (!llvm.struct<(f64, i32)>) -> f64
    "llvm.return"(%8) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_f64_i32_only_use_exp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f64):
    %5 = "llvm.intr.frexp"(%arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> !llvm.struct<(f64, i32)>
    %6 = "llvm.extractvalue"(%5) <{position = array<i64: 1>}> : (!llvm.struct<(f64, i32)>) -> i32
    "llvm.return"(%6) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f128, i32)> (f128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_f128_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f128):
    %4 = "llvm.intr.frexp"(%arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f128) -> !llvm.struct<(f128, i32)>
    "llvm.return"(%4) : (!llvm.struct<(f128, i32)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f128 (f128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_f128_i32_only_use_fract", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f128):
    %2 = "llvm.intr.frexp"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f128) -> !llvm.struct<(f128, i32)>
    %3 = "llvm.extractvalue"(%2) <{position = array<i64: 0>}> : (!llvm.struct<(f128, i32)>) -> f128
    "llvm.return"(%3) : (f128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_frexp_f128_i32_only_use_exp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f128):
    %0 = "llvm.intr.frexp"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f128) -> !llvm.struct<(f128, i32)>
    %1 = "llvm.extractvalue"(%0) <{position = array<i64: 1>}> : (!llvm.struct<(f128, i32)>) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

