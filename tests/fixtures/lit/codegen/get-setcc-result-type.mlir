"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "getSetCCResultType", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = dense<0> : vector<4xi32>}> : () -> vector<4xi32>
    %2 = "llvm.load"(%arg0) <{alignment = 16 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi32>
    %3 = "llvm.icmp"(%2, %1) <{predicate = 0 : i64}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi1>
    %4 = "llvm.sext"(%3) : (vector<4xi1>) -> vector<4xi32>
    "llvm.store"(%4, %arg0) <{alignment = 16 : i64, ordering = 0 : i64}> : (vector<4xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

