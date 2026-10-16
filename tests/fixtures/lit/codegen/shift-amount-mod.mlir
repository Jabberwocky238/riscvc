"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "shl_by_complemented_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %31 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %32 = "llvm.sub"(%31, %arg9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %33 = "llvm.shl"(%arg9, %32) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "shl_by_complemented_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %28 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %29 = "llvm.sub"(%28, %arg8) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %30 = "llvm.shl"(%arg8, %29) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%30) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "lshr_by_complemented_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %25 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %26 = "llvm.sub"(%25, %arg7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %27 = "llvm.lshr"(%arg7, %26) : (i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "lshr_by_complemented_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %22 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %23 = "llvm.sub"(%22, %arg6) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %24 = "llvm.lshr"(%arg6, %23) : (i64, i64) -> i64
    "llvm.return"(%24) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "ashr_by_complemented_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %19 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %20 = "llvm.sub"(%19, %arg5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %21 = "llvm.ashr"(%arg5, %20) : (i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "ashr_by_complemented_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %16 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %17 = "llvm.sub"(%16, %arg4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %18 = "llvm.ashr"(%arg4, %17) : (i64, i64) -> i64
    "llvm.return"(%18) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "shl_by_masked_complemented_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %12 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %13 = "llvm.sub"(%12, %arg3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %14 = "llvm.and"(%13, %12) : (i32, i32) -> i32
    %15 = "llvm.shl"(%arg3, %14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "shl_by_masked_complemented_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %8 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %9 = "llvm.sub"(%8, %arg2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %10 = "llvm.and"(%9, %8) : (i64, i64) -> i64
    %11 = "llvm.shl"(%arg2, %10) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "lshr_by_masked_complemented_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64):
    %4 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %5 = "llvm.sub"(%4, %arg1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %6 = "llvm.and"(%5, %4) : (i64, i64) -> i64
    %7 = "llvm.lshr"(%arg1, %6) : (i64, i64) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "ashr_by_masked_complemented_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %1 = "llvm.sub"(%0, %arg0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %2 = "llvm.and"(%1, %0) : (i64, i64) -> i64
    %3 = "llvm.ashr"(%arg0, %2) : (i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

