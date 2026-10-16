"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<2x!llvm.ptr>)>, linkage = #llvm.linkage<external>, sym_name = "shufflevector_crash", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: vector<2x!llvm.ptr>):
    %0 = "llvm.mlir.undef"() : () -> vector<2x!llvm.ptr>
    %1 = "llvm.shufflevector"(%arg0, %0) <{mask = array<i32: 1, 0>}> : (vector<2x!llvm.ptr>, vector<2x!llvm.ptr>) -> vector<2x!llvm.ptr>
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

