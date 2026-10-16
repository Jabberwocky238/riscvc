"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: f16):
    %20 = "llvm.call_intrinsic"(%arg16) <{fastmathFlags = #llvm.fastmath<nnan>, intrin = "llvm.canonicalize.f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f16) -> f16
    "llvm.return"(%20) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xf16> (vector<2xf16>)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_v2f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: vector<2xf16>):
    %19 = "llvm.call_intrinsic"(%arg15) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.canonicalize.v2f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (vector<2xf16>) -> vector<2xf16>
    "llvm.return"(%19) : (vector<2xf16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xf16> (vector<2xf16>)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_v2f16_nnan", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: vector<2xf16>):
    %18 = "llvm.call_intrinsic"(%arg14) <{fastmathFlags = #llvm.fastmath<nnan>, intrin = "llvm.canonicalize.v2f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (vector<2xf16>) -> vector<2xf16>
    "llvm.return"(%18) : (vector<2xf16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xf16> (vector<4xf16>)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_v4f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: vector<4xf16>):
    %17 = "llvm.call_intrinsic"(%arg13) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.canonicalize.v4f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (vector<4xf16>) -> vector<4xf16>
    "llvm.return"(%17) : (vector<4xf16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xf16> (vector<4xf16>)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_v4f16_nnan", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: vector<4xf16>):
    %16 = "llvm.call_intrinsic"(%arg12) <{fastmathFlags = #llvm.fastmath<nnan>, intrin = "llvm.canonicalize.v4f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (vector<4xf16>) -> vector<4xf16>
    "llvm.return"(%16) : (vector<4xf16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<8xf16> (vector<8xf16>)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_v8f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: vector<8xf16>):
    %15 = "llvm.call_intrinsic"(%arg11) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.canonicalize.v8f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (vector<8xf16>) -> vector<8xf16>
    "llvm.return"(%15) : (vector<8xf16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<8xf16> (vector<8xf16>)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_v8f16_nnan", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: vector<8xf16>):
    %14 = "llvm.call_intrinsic"(%arg10) <{fastmathFlags = #llvm.fastmath<nnan>, intrin = "llvm.canonicalize.v8f16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (vector<8xf16>) -> vector<8xf16>
    "llvm.return"(%14) : (vector<8xf16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f32):
    %13 = "llvm.call_intrinsic"(%arg9) <{fastmathFlags = #llvm.fastmath<nnan>, intrin = "llvm.canonicalize.f32", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f32) -> f32
    "llvm.return"(%13) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xf32> (vector<2xf32>)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_v2f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: vector<2xf32>):
    %12 = "llvm.call_intrinsic"(%arg8) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.canonicalize.v2f32", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (vector<2xf32>) -> vector<2xf32>
    "llvm.return"(%12) : (vector<2xf32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xf32> (vector<2xf32>)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_v2f32_nnan", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: vector<2xf32>):
    %11 = "llvm.call_intrinsic"(%arg7) <{fastmathFlags = #llvm.fastmath<nnan>, intrin = "llvm.canonicalize.v2f32", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (vector<2xf32>) -> vector<2xf32>
    "llvm.return"(%11) : (vector<2xf32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xf32> (vector<4xf32>)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_v4f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: vector<4xf32>):
    %10 = "llvm.call_intrinsic"(%arg6) <{fastmathFlags = #llvm.fastmath<nnan>, intrin = "llvm.canonicalize.v4f32", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (vector<4xf32>) -> vector<4xf32>
    "llvm.return"(%10) : (vector<4xf32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f64):
    %9 = "llvm.call_intrinsic"(%arg5) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.canonicalize.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> f64
    "llvm.return"(%9) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_f64_nnan", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f64):
    %8 = "llvm.call_intrinsic"(%arg4) <{fastmathFlags = #llvm.fastmath<nnan>, intrin = "llvm.canonicalize.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> f64
    "llvm.return"(%8) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xf64> (vector<2xf64>)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_v2f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: vector<2xf64>):
    %7 = "llvm.call_intrinsic"(%arg3) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.canonicalize.v2f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (vector<2xf64>) -> vector<2xf64>
    "llvm.return"(%7) : (vector<2xf64>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xf64> (vector<2xf64>)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_v2f64_nnan", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: vector<2xf64>):
    %6 = "llvm.call_intrinsic"(%arg2) <{fastmathFlags = #llvm.fastmath<nnan>, intrin = "llvm.canonicalize.v2f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (vector<2xf64>) -> vector<2xf64>
    "llvm.return"(%6) : (vector<2xf64>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, sym_name = "fcanonicalize_softfloat", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f64, %arg1: f64):
    %0 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %1 = "llvm.fcmp"(%arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 4 : i64}> : (f64, f64) -> i1
    %2 = "llvm.fcmp"(%arg0, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %3 = "llvm.or"(%2, %1) : (i1, i1) -> i1
    %4 = "llvm.select"(%3, %arg1, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %5 = "llvm.call_intrinsic"(%4) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.canonicalize.f64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> f64
    "llvm.return"(%5) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.canonicalize.f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.canonicalize.f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.canonicalize.f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xf16> (vector<2xf16>)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.canonicalize.v2f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xf32> (vector<2xf32>)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.canonicalize.v2f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xf64> (vector<2xf64>)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.canonicalize.v2f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xf16> (vector<4xf16>)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.canonicalize.v4f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xf32> (vector<4xf32>)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.canonicalize.v4f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<8xf16> (vector<8xf16>)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.canonicalize.v8f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

