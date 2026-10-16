"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "narrow_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 8191 : i16}> : () -> i16
    %1 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %2 = "llvm.load"(%arg0) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %3 = "llvm.and"(%2, %0) : (i16, i16) -> i16
    %4 = "llvm.xor"(%3, %1) : (i16, i16) -> i16
    %5 = "llvm.zext"(%4) : (i16) -> i32
    "llvm.store"(%5, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %6 = "llvm.load"(%arg0) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %7 = "llvm.and"(%6, %0) : (i16, i16) -> i16
    "llvm.return"(%7) : (i16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

