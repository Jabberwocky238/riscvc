"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i4 (i4, i4)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmul_i4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i4, %arg29: i4):
    %68 = "llvm.call_intrinsic"(%arg28, %arg29) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i4", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i4, i4) -> i4
    "llvm.return"(%68) : (i4) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmul_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i8, %arg27: i8):
    %67 = "llvm.call_intrinsic"(%arg26, %arg27) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i8", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i8, i8) -> i8
    "llvm.return"(%67) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmul_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i16, %arg25: i16):
    %66 = "llvm.call_intrinsic"(%arg24, %arg25) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i16, i16) -> i16
    "llvm.return"(%66) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmul_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32):
    %65 = "llvm.call_intrinsic"(%arg22, %arg23) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i32", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.return"(%65) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmul_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i64, %arg21: i64):
    %64 = "llvm.call_intrinsic"(%arg20, %arg21) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i64, i64) -> i64
    "llvm.return"(%64) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i4 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmul_constfold_i4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %61 = "llvm.mlir.constant"() <{value = 1 : i4}> : () -> i4
    %62 = "llvm.mlir.constant"() <{value = 2 : i4}> : () -> i4
    %63 = "llvm.call_intrinsic"(%61, %62) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i4", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i4, i4) -> i4
    "llvm.return"(%63) : (i4) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmul_constfold_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %58 = "llvm.mlir.constant"() <{value = -2 : i16}> : () -> i16
    %59 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %60 = "llvm.call_intrinsic"(%58, %59) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i16, i16) -> i16
    "llvm.return"(%60) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i4 (i4, i4)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmulr_i4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i4, %arg19: i4):
    %52 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %53 = "llvm.zext"(%arg18) : (i4) -> i8
    %54 = "llvm.zext"(%arg19) : (i4) -> i8
    %55 = "llvm.call_intrinsic"(%53, %54) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i8", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i8, i8) -> i8
    %56 = "llvm.lshr"(%55, %52) : (i8, i8) -> i8
    %57 = "llvm.trunc"(%56) <{overflowFlags = 0 : i32}> : (i8) -> i4
    "llvm.return"(%57) : (i4) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i4 (i4, i4)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmulr_i4_bitreverse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i4, %arg17: i4):
    %48 = "llvm.intr.bitreverse"(%arg16) : (i4) -> i4
    %49 = "llvm.intr.bitreverse"(%arg17) : (i4) -> i4
    %50 = "llvm.call_intrinsic"(%48, %49) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i4", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i4, i4) -> i4
    %51 = "llvm.intr.bitreverse"(%50) : (i4) -> i4
    "llvm.return"(%51) : (i4) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmulr_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i8, %arg15: i8):
    %42 = "llvm.mlir.constant"() <{value = 7 : i16}> : () -> i16
    %43 = "llvm.zext"(%arg14) : (i8) -> i16
    %44 = "llvm.zext"(%arg15) : (i8) -> i16
    %45 = "llvm.call_intrinsic"(%43, %44) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i16, i16) -> i16
    %46 = "llvm.lshr"(%45, %42) : (i16, i16) -> i16
    %47 = "llvm.trunc"(%46) <{overflowFlags = 0 : i32}> : (i16) -> i8
    "llvm.return"(%47) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmulr_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i16, %arg13: i16):
    %36 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %37 = "llvm.zext"(%arg12) : (i16) -> i32
    %38 = "llvm.zext"(%arg13) : (i16) -> i32
    %39 = "llvm.call_intrinsic"(%37, %38) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i32", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %40 = "llvm.lshr"(%39, %36) : (i32, i32) -> i32
    %41 = "llvm.trunc"(%40) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%41) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmulr_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32, %arg11: i32):
    %30 = "llvm.mlir.constant"() <{value = 31 : i64}> : () -> i64
    %31 = "llvm.zext"(%arg10) : (i32) -> i64
    %32 = "llvm.zext"(%arg11) : (i32) -> i64
    %33 = "llvm.call_intrinsic"(%31, %32) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i64, i64) -> i64
    %34 = "llvm.lshr"(%33, %30) : (i64, i64) -> i64
    %35 = "llvm.trunc"(%34) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i4 (i4, i4)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmulh_i4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i4, %arg9: i4):
    %24 = "llvm.mlir.constant"() <{value = 4 : i8}> : () -> i8
    %25 = "llvm.zext"(%arg8) : (i4) -> i8
    %26 = "llvm.zext"(%arg9) : (i4) -> i8
    %27 = "llvm.call_intrinsic"(%25, %26) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i8", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i8, i8) -> i8
    %28 = "llvm.lshr"(%27, %24) : (i8, i8) -> i8
    %29 = "llvm.trunc"(%28) <{overflowFlags = 0 : i32}> : (i8) -> i4
    "llvm.return"(%29) : (i4) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i4 (i4, i4)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmulh_i4_bitreverse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i4, %arg7: i4):
    %18 = "llvm.mlir.constant"() <{value = 1 : i4}> : () -> i4
    %19 = "llvm.intr.bitreverse"(%arg6) : (i4) -> i4
    %20 = "llvm.intr.bitreverse"(%arg7) : (i4) -> i4
    %21 = "llvm.call_intrinsic"(%19, %20) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i4", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i4, i4) -> i4
    %22 = "llvm.intr.bitreverse"(%21) : (i4) -> i4
    %23 = "llvm.lshr"(%22, %18) : (i4, i4) -> i4
    "llvm.return"(%23) : (i4) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmulh_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i8, %arg5: i8):
    %12 = "llvm.mlir.constant"() <{value = 8 : i16}> : () -> i16
    %13 = "llvm.zext"(%arg4) : (i8) -> i16
    %14 = "llvm.zext"(%arg5) : (i8) -> i16
    %15 = "llvm.call_intrinsic"(%13, %14) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i16", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i16, i16) -> i16
    %16 = "llvm.lshr"(%15, %12) : (i16, i16) -> i16
    %17 = "llvm.trunc"(%16) <{overflowFlags = 0 : i32}> : (i16) -> i8
    "llvm.return"(%17) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmulh_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i16, %arg3: i16):
    %6 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %7 = "llvm.zext"(%arg2) : (i16) -> i32
    %8 = "llvm.zext"(%arg3) : (i16) -> i32
    %9 = "llvm.call_intrinsic"(%7, %8) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i32", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    %10 = "llvm.lshr"(%9, %6) : (i32, i32) -> i32
    %11 = "llvm.trunc"(%10) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%11) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "clmulh_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "llvm.zext"(%arg0) : (i32) -> i64
    %2 = "llvm.zext"(%arg1) : (i32) -> i64
    %3 = "llvm.call_intrinsic"(%1, %2) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.clmul.i64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i64, i64) -> i64
    %4 = "llvm.lshr"(%3, %0) : (i64, i64) -> i64
    %5 = "llvm.trunc"(%4) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.clmul.i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.clmul.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i4 (i4, i4)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.clmul.i4", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.clmul.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nocreateundeforpoison", "nofree", "nosync", "speculatable"], sym_name = "llvm.clmul.i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

