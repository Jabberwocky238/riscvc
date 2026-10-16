"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<8xi16> (vector<8xi32>)>, linkage = #llvm.linkage<external>, sym_name = "PR94265", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: vector<8xi32>):
    %0 = "llvm.mlir.constant"() <{value = dense<64> : vector<8xi32>}> : () -> vector<8xi32>
    %1 = "llvm.mlir.constant"() <{value = dense<10> : vector<8xi16>}> : () -> vector<8xi16>
    %2 = "llvm.sdiv"(%arg0, %0) : (vector<8xi32>, vector<8xi32>) -> vector<8xi32>
    %3 = "llvm.trunc"(%2) <{overflowFlags = 0 : i32}> : (vector<8xi32>) -> vector<8xi16>
    %4 = "llvm.shl"(%3, %1) <{overflowFlags = 0 : i32}> : (vector<8xi16>, vector<8xi16>) -> vector<8xi16>
    "llvm.return"(%4) : (vector<8xi16>) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

