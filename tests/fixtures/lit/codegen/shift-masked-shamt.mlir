"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sll_redundant_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32):
    %45 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %46 = "llvm.and"(%arg23, %45) : (i32, i32) -> i32
    %47 = "llvm.shl"(%arg22, %46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sll_non_redundant_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32):
    %42 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %43 = "llvm.and"(%arg21, %42) : (i32, i32) -> i32
    %44 = "llvm.shl"(%arg20, %43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%44) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srl_redundant_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32, %arg19: i32):
    %39 = "llvm.mlir.constant"() <{value = 4095 : i32}> : () -> i32
    %40 = "llvm.and"(%arg19, %39) : (i32, i32) -> i32
    %41 = "llvm.lshr"(%arg18, %40) : (i32, i32) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srl_non_redundant_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32, %arg17: i32):
    %36 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %37 = "llvm.and"(%arg17, %36) : (i32, i32) -> i32
    %38 = "llvm.lshr"(%arg16, %37) : (i32, i32) -> i32
    "llvm.return"(%38) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sra_redundant_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32, %arg15: i32):
    %33 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %34 = "llvm.and"(%arg15, %33) : (i32, i32) -> i32
    %35 = "llvm.ashr"(%arg14, %34) : (i32, i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sra_non_redundant_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32):
    %30 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %31 = "llvm.and"(%arg13, %30) : (i32, i32) -> i32
    %32 = "llvm.ashr"(%arg12, %31) : (i32, i32) -> i32
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sll_redundant_mask_zeros", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32, %arg11: i32):
    %25 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 30 : i32}> : () -> i32
    %27 = "llvm.shl"(%arg11, %25) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %28 = "llvm.and"(%27, %26) : (i32, i32) -> i32
    %29 = "llvm.shl"(%arg10, %28) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srl_redundant_mask_zeros", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32):
    %20 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 28 : i32}> : () -> i32
    %22 = "llvm.shl"(%arg9, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %23 = "llvm.and"(%22, %21) : (i32, i32) -> i32
    %24 = "llvm.lshr"(%arg8, %23) : (i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sra_redundant_mask_zeros", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32):
    %15 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %17 = "llvm.shl"(%arg7, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %18 = "llvm.and"(%17, %16) : (i32, i32) -> i32
    %19 = "llvm.ashr"(%arg6, %18) : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sll_redundant_mask_zeros_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64, %arg5: i64):
    %10 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = 60 : i64}> : () -> i64
    %12 = "llvm.shl"(%arg5, %10) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %13 = "llvm.and"(%12, %11) : (i64, i64) -> i64
    %14 = "llvm.shl"(%arg4, %13) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%14) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srl_redundant_mask_zeros_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: i64):
    %5 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 56 : i64}> : () -> i64
    %7 = "llvm.shl"(%arg3, %5) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %8 = "llvm.and"(%7, %6) : (i64, i64) -> i64
    %9 = "llvm.lshr"(%arg2, %8) : (i64, i64) -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sra_redundant_mask_zeros_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 48 : i64}> : () -> i64
    %2 = "llvm.shl"(%arg1, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %3 = "llvm.and"(%2, %1) : (i64, i64) -> i64
    %4 = "llvm.ashr"(%arg0, %3) : (i64, i64) -> i64
    "llvm.return"(%4) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

