"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i8, i16)>, linkage = #llvm.linkage<external>, sym_name = "not_invert_signbit_splat_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i8, %arg3: i16):
    %6 = "llvm.mlir.constant"() <{value = 6 : i8}> : () -> i8
    %7 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %8 = "llvm.ashr"(%arg2, %6) : (i8, i8) -> i8
    %9 = "llvm.xor"(%8, %7) : (i8, i8) -> i8
    %10 = "llvm.sext"(%9) : (i8) -> i16
    %11 = "llvm.and"(%10, %arg3) : (i16, i16) -> i16
    "llvm.return"(%11) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i8, i16)>, linkage = #llvm.linkage<external>, sym_name = "sra_xor_sra_overflow", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i8, %arg1: i16):
    %0 = "llvm.mlir.constant"() <{value = 10 : i8}> : () -> i8
    %1 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %2 = "llvm.ashr"(%arg0, %0) : (i8, i8) -> i8
    %3 = "llvm.xor"(%2, %1) : (i8, i8) -> i8
    %4 = "llvm.sext"(%3) : (i8) -> i16
    %5 = "llvm.and"(%4, %arg1) : (i16, i16) -> i16
    "llvm.return"(%5) : (i16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

