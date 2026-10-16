"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i24 (i32)>, linkage = #llvm.linkage<external>, sym_name = "aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = -256 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %2 = "llvm.and"(%arg0, %0) : (i32, i32) -> i32
    %3 = "llvm.lshr"(%2, %1) <{isExact}> : (i32, i32) -> i32
    %4 = "llvm.trunc"(%3) <{overflowFlags = 0 : i32}> : (i32) -> i24
    "llvm.return"(%4) : (i24) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

