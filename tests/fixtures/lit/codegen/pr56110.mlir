"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture, llvm.noundef}, {llvm.noundef}], function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "foo_set", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 24 : i96}> : () -> i96
    %2 = "llvm.mlir.constant"() <{value = -1099494850561 : i96}> : () -> i96
    %3 = "llvm.load"(%arg0) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i96
    %4 = "llvm.and"(%arg1, %0) : (i32, i32) -> i32
    %5 = "llvm.zext"(%4) : (i32) -> i96
    %6 = "llvm.shl"(%5, %1) <{overflowFlags = 3 : i32}> : (i96, i96) -> i96
    %7 = "llvm.and"(%3, %2) : (i96, i96) -> i96
    %8 = "llvm.or"(%7, %6) : (i96, i96) -> i96
    "llvm.store"(%8, %arg0) <{alignment = 1 : i64, ordering = 0 : i64}> : (i96, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

