"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i1, ptr)>, linkage = #llvm.linkage<external>, sym_name = "pr90730", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i1, %arg2: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 31817 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 31808 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.zext"(%arg1) : (i1) -> i32
    %4 = "llvm.xor"(%3, %0) : (i32, i32) -> i32
    %5 = "llvm.and"(%4, %arg0) : (i32, i32) -> i32
    "llvm.store"(%5, %arg2) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %6 = "llvm.load"(%arg2) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %7 = "llvm.and"(%6, %1) : (i32, i32) -> i32
    %8 = "llvm.xor"(%7, %1) : (i32, i32) -> i32
    "llvm.store"(%2, %arg2) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

