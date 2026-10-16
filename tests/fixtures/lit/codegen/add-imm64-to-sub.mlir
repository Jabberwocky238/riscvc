"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_b31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64):
    %11 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %12 = "llvm.add"(%arg5, %11) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%12) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_b32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %9 = "llvm.mlir.constant"() <{value = -4294967296 : i64}> : () -> i64
    %10 = "llvm.add"(%arg4, %9) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%10) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sub_0xffffffffff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %7 = "llvm.mlir.constant"() <{value = 1099511627775 : i64}> : () -> i64
    %8 = "llvm.sub"(%arg3, %7) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_multiuse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %4 = "llvm.mlir.constant"() <{value = -1099511627775 : i64}> : () -> i64
    %5 = "llvm.add"(%arg2, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %6 = "llvm.and"(%5, %4) : (i64, i64) -> i64
    "llvm.return"(%6) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "add_multiuse_const", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = -1099511627775 : i64}> : () -> i64
    %1 = "llvm.add"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %2 = "llvm.add"(%arg1, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %3 = "llvm.xor"(%1, %2) : (i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

