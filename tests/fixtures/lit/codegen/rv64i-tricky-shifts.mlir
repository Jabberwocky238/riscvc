"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "tricky_shl", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64, %arg5: i64):
    %7 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %8 = "llvm.shl"(%arg4, %arg5) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %9 = "llvm.shl"(%8, %7) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %10 = "llvm.ashr"(%9, %7) : (i64, i64) -> i64
    "llvm.return"(%10) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "tricky_lshr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: i64):
    %4 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %5 = "llvm.and"(%arg2, %4) : (i64, i64) -> i64
    %6 = "llvm.lshr"(%5, %arg3) : (i64, i64) -> i64
    "llvm.return"(%6) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "tricky_ashr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "llvm.shl"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %2 = "llvm.ashr"(%1, %0) : (i64, i64) -> i64
    %3 = "llvm.ashr"(%2, %arg1) : (i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

