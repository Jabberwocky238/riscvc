"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i8, i32)>, linkage = #llvm.linkage<external>, sym_name = "test", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i8, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %1 = "llvm.zext"(%arg0) : (i8) -> i32
    %2 = "llvm.trunc"(%arg1) <{overflowFlags = 0 : i32}> : (i32) -> i16
    %3 = "llvm.icmp"(%2, %0) <{predicate = 0 : i64}> : (i16, i16) -> i1
    %4 = "llvm.trunc"(%1) <{overflowFlags = 0 : i32}> : (i32) -> i8
    %5 = "llvm.zext"(%4) : (i8) -> i16
    %6 = "llvm.xor"(%5, %2) : (i16, i16) -> i16
    "llvm.return"(%6) : (i16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

