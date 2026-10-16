"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_shl_oneUse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32, %arg19: i32):
    %57 = "llvm.mlir.constant"() <{value = 123 : i32}> : () -> i32
    %58 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %59 = "llvm.add"(%arg18, %57) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %60 = "llvm.shl"(%59, %58) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %61 = "llvm.add"(%60, %arg19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_inStore", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr, %arg16: i32, %arg17: i32):
    %49 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = 140 : i32}> : () -> i32
    %52 = "llvm.add"(%arg16, %49) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %53 = "llvm.getelementptr"(%arg15, %52) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg17, %53) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %54 = "llvm.getelementptr"(%arg15, %arg16) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %55 = "llvm.getelementptr"(%54, %50) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg17, %55) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %56 = "llvm.getelementptr"(%54, %51) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%52, %56) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_inStore_addexceedsign12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: i32, %arg14: i32):
    %41 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %42 = "llvm.mlir.constant"() <{value = 8196 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 8312 : i32}> : () -> i32
    %44 = "llvm.add"(%arg13, %41) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %45 = "llvm.getelementptr"(%arg12, %44) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg14, %45) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %46 = "llvm.getelementptr"(%arg12, %arg13) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %47 = "llvm.getelementptr"(%46, %42) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%44, %47) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %48 = "llvm.getelementptr"(%46, %43) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg14, %48) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_inSelect", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: i32, %arg10: i32, %arg11: i32):
    %30 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %33 = "llvm.mlir.constant"() <{value = 35 : i32}> : () -> i32
    %34 = "llvm.add"(%arg9, %30) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %35 = "llvm.icmp"(%arg11, %31) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %36 = "llvm.select"(%35, %34, %arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %37 = "llvm.getelementptr"(%arg8, %34) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%36, %37) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %38 = "llvm.getelementptr"(%arg8, %arg9) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %39 = "llvm.getelementptr"(%38, %32) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%36, %39) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %40 = "llvm.getelementptr"(%38, %33) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%34, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_inSelect_addexceedsign12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: i32, %arg6: i32, %arg7: i32):
    %19 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 8196 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 8312 : i32}> : () -> i32
    %23 = "llvm.add"(%arg5, %19) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %24 = "llvm.icmp"(%arg7, %20) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %25 = "llvm.select"(%24, %23, %arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %26 = "llvm.getelementptr"(%arg4, %23) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%25, %26) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %27 = "llvm.getelementptr"(%arg4, %arg5) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %28 = "llvm.getelementptr"(%27, %21) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%25, %28) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %29 = "llvm.getelementptr"(%27, %22) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%23, %29) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_sh1add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %15 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %16 = "llvm.or"(%arg3, %15) : (i32, i32) -> i32
    %17 = "llvm.shl"(%16, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %18 = "llvm.add"(%17, %16) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %10 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %12 = "llvm.or"(%arg2, %10) : (i32, i32) -> i32
    %13 = "llvm.shl"(%12, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %14 = "llvm.add"(%13, %12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %5 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %7 = "llvm.or"(%arg1, %5) : (i32, i32) -> i32
    %8 = "llvm.shl"(%7, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %9 = "llvm.add"(%8, %7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_sh4add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %2 = "llvm.or"(%arg0, %0) : (i32, i32) -> i32
    %3 = "llvm.shl"(%2, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %4 = "llvm.add"(%3, %2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

