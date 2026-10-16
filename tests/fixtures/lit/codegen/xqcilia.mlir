"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32):
    %21 = "llvm.mlir.constant"() <{value = 268435456 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 2345678 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %24 = "llvm.add"(%arg6, %21) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %25 = "llvm.add"(%arg7, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %26 = "llvm.and"(%25, %24) : (i32, i32) -> i32
    %27 = "llvm.add"(%26, %23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "and", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %14 = "llvm.mlir.constant"() <{value = 268435456 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 2345678 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %17 = "llvm.and"(%arg4, %14) : (i32, i32) -> i32
    %18 = "llvm.and"(%arg5, %15) : (i32, i32) -> i32
    %19 = "llvm.lshr"(%18, %17) : (i32, i32) -> i32
    %20 = "llvm.and"(%19, %16) : (i32, i32) -> i32
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "or", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %7 = "llvm.mlir.constant"() <{value = 268435456 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 2345678 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %10 = "llvm.or"(%arg2, %7) : (i32, i32) -> i32
    %11 = "llvm.or"(%arg3, %8) : (i32, i32) -> i32
    %12 = "llvm.add"(%11, %10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %13 = "llvm.or"(%12, %9) : (i32, i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "xor", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 268435456 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 2345678 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %3 = "llvm.xor"(%arg0, %0) : (i32, i32) -> i32
    %4 = "llvm.xor"(%arg1, %1) : (i32, i32) -> i32
    %5 = "llvm.add"(%4, %3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %6 = "llvm.xor"(%5, %2) : (i32, i32) -> i32
    "llvm.return"(%6) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

