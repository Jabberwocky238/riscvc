"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "addiw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %11 = "llvm.mlir.constant"() <{value = 4095 : i32}> : () -> i32
    %12 = "llvm.add"(%arg5, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%12) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: i32):
    %8 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %9 = "llvm.add"(%arg3, %arg4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %10 = "llvm.add"(%9, %8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%10) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "mulw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32, %arg2: i32):
    %4 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %5 = "llvm.mul"(%arg1, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %6 = "llvm.mul"(%arg1, %5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %7 = "llvm.add"(%6, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "slliw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %2 = "llvm.shl"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %3 = "llvm.add"(%2, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

