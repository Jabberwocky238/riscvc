"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "insb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32, %arg15: i32):
    %43 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %45 = "llvm.shl"(%arg15, %43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %46 = "llvm.and"(%arg14, %44) : (i32, i32) -> i32
    %47 = "llvm.xor"(%45, %46) : (i32, i32) -> i32
    %48 = "llvm.xor"(%arg14, %47) : (i32, i32) -> i32
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "insb_and_multiple", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32):
    %36 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %38 = "llvm.shl"(%arg13, %36) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %39 = "llvm.and"(%arg12, %37) : (i32, i32) -> i32
    %40 = "llvm.xor"(%38, %39) : (i32, i32) -> i32
    %41 = "llvm.xor"(%arg12, %40) : (i32, i32) -> i32
    %42 = "llvm.add"(%41, %39) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%42) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "insb_xor_multiple", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32, %arg11: i32):
    %29 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %31 = "llvm.shl"(%arg11, %29) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %32 = "llvm.and"(%arg10, %30) : (i32, i32) -> i32
    %33 = "llvm.xor"(%31, %32) : (i32, i32) -> i32
    %34 = "llvm.xor"(%arg10, %33) : (i32, i32) -> i32
    %35 = "llvm.add"(%34, %33) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "insb_shl_multiple", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32):
    %22 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %24 = "llvm.shl"(%arg9, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %25 = "llvm.and"(%arg8, %23) : (i32, i32) -> i32
    %26 = "llvm.xor"(%24, %25) : (i32, i32) -> i32
    %27 = "llvm.xor"(%arg8, %26) : (i32, i32) -> i32
    %28 = "llvm.add"(%27, %24) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%28) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "insb_comm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32):
    %16 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %18 = "llvm.shl"(%arg7, %16) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %19 = "llvm.and"(%arg6, %17) : (i32, i32) -> i32
    %20 = "llvm.xor"(%19, %18) : (i32, i32) -> i32
    %21 = "llvm.xor"(%arg6, %20) : (i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "insb_comm1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %10 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %12 = "llvm.shl"(%arg5, %10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %13 = "llvm.and"(%arg4, %11) : (i32, i32) -> i32
    %14 = "llvm.xor"(%13, %12) : (i32, i32) -> i32
    %15 = "llvm.xor"(%14, %arg4) : (i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "insb_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: i64):
    %4 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = -2 : i64}> : () -> i64
    %6 = "llvm.shl"(%arg3, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %7 = "llvm.and"(%arg2, %5) : (i64, i64) -> i64
    %8 = "llvm.xor"(%7, %6) : (i64, i64) -> i64
    %9 = "llvm.xor"(%8, %arg2) : (i64, i64) -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "tgt2_insb_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i8, %arg1: i8):
    %0 = "llvm.mlir.constant"() <{value = -2 : i8}> : () -> i8
    %1 = "llvm.and"(%arg0, %0) : (i8, i8) -> i8
    %2 = "llvm.xor"(%1, %arg1) : (i8, i8) -> i8
    %3 = "llvm.xor"(%arg0, %2) : (i8, i8) -> i8
    "llvm.return"(%3) : (i8) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

