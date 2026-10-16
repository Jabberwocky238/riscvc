"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 ()>, linkage = #llvm.linkage<external>, sym_name = "foo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %1 = "llvm.mlir.constant"() <{value = dense<0> : vector<4xi16>}> : () -> vector<4xi16>
    %2 = "llvm.mlir.constant"() <{value = 2 : i16}> : () -> i16
    %3 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %4 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %5 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %6 = "llvm.mlir.constant"() <{value = dense<[true, false, false, false]> : vector<4xi1>}> : () -> vector<4xi1>
    %7 = "llvm.insertelement"(%1, %2, %3) : (vector<4xi16>, i16, i64) -> vector<4xi16>
    %8 = "llvm.shufflevector"(%7, %1) <{mask = array<i32: 0, 0, 0, 0>}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %9 = "llvm.select"(%6, %1, %8) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xi1>, vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %10 = "llvm.intr.vector.reduce.mul"(%9) : (vector<4xi16>) -> i16
    "llvm.return"(%10) : (i16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

