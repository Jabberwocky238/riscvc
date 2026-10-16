"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "f", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i1, %arg10: i32, %arg11: !llvm.ptr):
    %18 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 16779265 : i32}> : () -> i32
    %21 = "llvm.select"(%arg9, %18, %19) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %22 = "llvm.mul"(%arg10, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %23 = "llvm.or"(%20, %21) : (i32, i32) -> i32
    "llvm.store"(%22, %arg11) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "g", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i1, %arg7: i32, %arg8: !llvm.ptr):
    %12 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 16779265 : i32}> : () -> i32
    %15 = "llvm.select"(%arg6, %12, %13) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %16 = "llvm.mul"(%arg7, %14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %17 = "llvm.or"(%14, %15) : (i32, i32) -> i32
    "llvm.store"(%16, %arg8) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i1, %arg4: i32, %arg5: !llvm.ptr):
    %6 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 16779265 : i32}> : () -> i32
    %9 = "llvm.select"(%arg3, %6, %7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %10 = "llvm.mul"(%arg4, %8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.and"(%8, %9) : (i32, i32) -> i32
    "llvm.store"(%10, %arg5) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "i", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i1, %arg1: i32, %arg2: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 16779265 : i32}> : () -> i32
    %3 = "llvm.select"(%arg0, %0, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %4 = "llvm.mul"(%arg1, %2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %5 = "llvm.and"(%2, %3) : (i32, i32) -> i32
    "llvm.store"(%4, %arg2) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

