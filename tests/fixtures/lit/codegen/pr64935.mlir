"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 ()>, linkage = #llvm.linkage<external>, sym_name = "f", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 4294967296 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %4 = "llvm.shl"(%0, %1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %5 = "llvm.sub"(%2, %1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %6 = "llvm.icmp"(%5, %4) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %7 = "llvm.sub"(%3, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%6) : (i1) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

