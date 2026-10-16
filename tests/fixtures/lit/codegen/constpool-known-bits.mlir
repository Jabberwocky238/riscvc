"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef, llvm.signext}, {llvm.noundef, llvm.signext}], function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = -9191740941672644608 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 4096 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 8192 : i64}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = 16384 : i64}> : () -> i64
    %4 = "llvm.mlir.constant"() <{value = 127 : i64}> : () -> i64
    %5 = "llvm.or"(%0, %1) : (i64, i64) -> i64
    %6 = "llvm.or"(%0, %2) : (i64, i64) -> i64
    %7 = "llvm.or"(%0, %3) : (i64, i64) -> i64
    %8 = "llvm.zext"(%arg0) : (i32) -> i64
    %9 = "llvm.zext"(%arg1) : (i32) -> i64
    %10 = "llvm.mul"(%5, %8) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %11 = "llvm.mul"(%6, %9) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %12 = "llvm.mul"(%7, %8) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %13 = "llvm.add"(%10, %11) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %14 = "llvm.add"(%13, %12) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %15 = "llvm.or"(%12, %4) : (i64, i64) -> i64
    %16 = "llvm.mul"(%10, %15) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %17 = "llvm.add"(%0, %16) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %18 = "llvm.add"(%17, %8) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%18) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

