"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, sym_name = "PR94145", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i16):
    %0 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %1 = "llvm.lshr"(%arg0, %0) : (i16, i16) -> i16
    %2 = "llvm.and"(%1, %0) : (i16, i16) -> i16
    %3 = "llvm.xor"(%2, %0) : (i16, i16) -> i16
    %4 = "llvm.shl"(%0, %3) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %5 = "llvm.freeze"(%4) : (i16) -> i16
    %6 = "llvm.zext"(%5) : (i16) -> i32
    "llvm.return"(%6) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

