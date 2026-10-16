"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "promoteTwoOne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32, %arg10: !llvm.ptr, %arg11: !llvm.ptr):
    %18 = "llvm.add"(%arg8, %arg9) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %19 = "llvm.sext"(%18) : (i32) -> i64
    %20 = "llvm.getelementptr"(%arg10, %19) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%19, %20) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %21 = "llvm.sext"(%arg8) : (i32) -> i64
    %22 = "llvm.getelementptr"(%arg11, %21) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%21, %22) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, i32, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "promoteTwoTwo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: i32, %arg5: i32, %arg6: !llvm.ptr, %arg7: !llvm.ptr):
    %12 = "llvm.add"(%arg4, %arg3) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %13 = "llvm.sext"(%12) : (i32) -> i64
    %14 = "llvm.getelementptr"(%arg6, %13) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%13, %14) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %15 = "llvm.add"(%arg4, %arg5) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %16 = "llvm.sext"(%15) : (i32) -> i64
    %17 = "llvm.getelementptr"(%arg7, %16) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%16, %17) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i1, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "promoteGEPSunk", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i1, %arg1: !llvm.ptr, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %3 = "llvm.add"(%arg2, %0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %4 = "llvm.sext"(%3) : (i32) -> i64
    %5 = "llvm.getelementptr"(%arg1, %4) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %6 = "llvm.add"(%arg2, %1) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %7 = "llvm.sext"(%6) : (i32) -> i64
    %8 = "llvm.getelementptr"(%arg1, %7) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.cond_br"(%arg0)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %9 = "llvm.load"(%5) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %10 = "llvm.load"(%8) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %11 = "llvm.add"(%9, %10) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%2) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<i64 = dense<64> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>, llvm.module_asm = [], llvm.target_triple = "riscv64"} : () -> ()

