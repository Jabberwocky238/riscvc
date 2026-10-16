"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "narrow_to_lbu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: !llvm.ptr):
    %13 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %14 = "llvm.mlir.constant"() <{value = 510 : i16}> : () -> i16
    %15 = "llvm.load"(%arg4) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %16 = "llvm.shl"(%15, %13) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %17 = "llvm.and"(%16, %14) : (i16, i16) -> i16
    %18 = "llvm.zext"(%17) <{nonNeg}> : (i16) -> i64
    %19 = "llvm.getelementptr"(%arg5, %18) <{elem_type = f64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%19) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "narrow_to_lhu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: !llvm.ptr):
    %6 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 131070 : i32}> : () -> i32
    %8 = "llvm.load"(%arg2) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %9 = "llvm.shl"(%8, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %10 = "llvm.and"(%9, %7) : (i32, i32) -> i32
    %11 = "llvm.zext"(%10) <{nonNeg}> : (i32) -> i64
    %12 = "llvm.getelementptr"(%arg3, %11) <{elem_type = f64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%12) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "narrow_to_lwu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 8589934590 : i64}> : () -> i64
    %2 = "llvm.load"(%arg0) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %3 = "llvm.shl"(%2, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %4 = "llvm.and"(%3, %1) : (i64, i64) -> i64
    %5 = "llvm.getelementptr"(%arg1, %4) <{elem_type = f64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%5) : (!llvm.ptr) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

