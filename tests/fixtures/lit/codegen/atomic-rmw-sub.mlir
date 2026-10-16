"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i32_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr):
    %6 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "llvm.atomicrmw"(%arg7, %6) <{alignment = 4 : i64, bin_op = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i64_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr):
    %4 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %5 = "llvm.atomicrmw"(%arg6, %4) <{alignment = 8 : i64, bin_op = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i32_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: i32, %arg5: i32):
    %2 = "llvm.sub"(%arg4, %arg5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %3 = "llvm.atomicrmw"(%arg3, %2) <{alignment = 4 : i64, bin_op = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i64_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i64, %arg2: i64):
    %0 = "llvm.sub"(%arg1, %arg2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %1 = "llvm.atomicrmw"(%arg0, %0) <{alignment = 8 : i64, bin_op = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

