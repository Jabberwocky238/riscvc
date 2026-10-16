"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "signed", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: !llvm.ptr):
    %9 = "llvm.mlir.constant"() <{value = 256 : i32}> : () -> i32
    %10 = "llvm.srem"(%arg6, %9) : (i32, i32) -> i32
    "llvm.store"(%10, %arg7) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %11 = "llvm.sdiv"(%arg6, %9) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "unsigned", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: !llvm.ptr):
    %6 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %7 = "llvm.urem"(%arg4, %6) : (i32, i32) -> i32
    "llvm.store"(%7, %arg5) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %8 = "llvm.udiv"(%arg4, %6) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "signed_div_first", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32, %arg3: !llvm.ptr):
    %3 = "llvm.mlir.constant"() <{value = 256 : i32}> : () -> i32
    %4 = "llvm.sdiv"(%arg2, %3) <{isExact}> : (i32, i32) -> i32
    %5 = "llvm.srem"(%arg2, %3) : (i32, i32) -> i32
    "llvm.store"(%5, %arg3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "unsigned_div_first", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %1 = "llvm.udiv"(%arg0, %0) <{isExact}> : (i32, i32) -> i32
    %2 = "llvm.urem"(%arg0, %0) : (i32, i32) -> i32
    "llvm.store"(%2, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

