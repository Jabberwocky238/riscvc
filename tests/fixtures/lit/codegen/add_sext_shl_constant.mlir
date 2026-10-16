"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "add_sext_shl_moreOneUse_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: !llvm.ptr, %arg26: i32, %arg27: i32):
    %92 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %93 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %94 = "llvm.mlir.constant"() <{value = 35 : i32}> : () -> i32
    %95 = "llvm.add"(%arg26, %92) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %96 = "llvm.sext"(%95) : (i32) -> i64
    %97 = "llvm.getelementptr"(%arg25, %96) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%arg27, %97) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %98 = "llvm.add"(%arg26, %93) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %99 = "llvm.sext"(%98) : (i32) -> i64
    %100 = "llvm.getelementptr"(%arg25, %99) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%arg27, %100) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %101 = "llvm.add"(%arg26, %94) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %102 = "llvm.sext"(%101) : (i32) -> i64
    %103 = "llvm.getelementptr"(%arg25, %102) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%95, %103) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "add_sext_shl_moreOneUse_addexceedsign12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: !llvm.ptr, %arg23: i32, %arg24: i32):
    %82 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %83 = "llvm.mlir.constant"() <{value = 8196 : i64}> : () -> i64
    %84 = "llvm.mlir.constant"() <{value = 8312 : i64}> : () -> i64
    %85 = "llvm.add"(%arg23, %82) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %86 = "llvm.sext"(%85) : (i32) -> i64
    %87 = "llvm.getelementptr"(%arg22, %86) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%arg24, %87) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %88 = "llvm.sext"(%arg23) : (i32) -> i64
    %89 = "llvm.getelementptr"(%arg22, %88) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %90 = "llvm.getelementptr"(%89, %83) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%85, %90) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %91 = "llvm.getelementptr"(%89, %84) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%arg24, %91) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "add_sext_shl_moreOneUse_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: !llvm.ptr, %arg20: i32, %arg21: i32):
    %70 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %71 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %72 = "llvm.mlir.constant"() <{value = 35 : i32}> : () -> i32
    %73 = "llvm.add"(%arg20, %70) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %74 = "llvm.sext"(%73) : (i32) -> i64
    %75 = "llvm.getelementptr"(%arg19, %74) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%arg21, %75) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %76 = "llvm.add"(%arg20, %71) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %77 = "llvm.sext"(%76) : (i32) -> i64
    %78 = "llvm.getelementptr"(%arg19, %77) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%arg21, %78) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %79 = "llvm.add"(%arg20, %72) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %80 = "llvm.sext"(%79) : (i32) -> i64
    %81 = "llvm.getelementptr"(%arg19, %80) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%74, %81) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {}, {llvm.signext}], function_type = !llvm.func<void (ptr, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "add_sext_shl_moreOneUse_add_inSelect", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr, %arg16: i32, %arg17: i32, %arg18: i32):
    %55 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %58 = "llvm.mlir.constant"() <{value = 35 : i32}> : () -> i32
    %59 = "llvm.add"(%arg16, %55) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %60 = "llvm.icmp"(%arg18, %56) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %61 = "llvm.sext"(%59) : (i32) -> i64
    %62 = "llvm.getelementptr"(%arg15, %61) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %63 = "llvm.select"(%60, %59, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.store"(%63, %62) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %64 = "llvm.add"(%arg16, %57) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %65 = "llvm.sext"(%64) : (i32) -> i64
    %66 = "llvm.getelementptr"(%arg15, %65) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%63, %66) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %67 = "llvm.add"(%arg16, %58) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %68 = "llvm.sext"(%67) : (i32) -> i64
    %69 = "llvm.getelementptr"(%arg15, %68) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%59, %69) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {}, {llvm.signext}], function_type = !llvm.func<void (ptr, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "add_sext_shl_moreOneUse_add_inSelect_addexceedsign12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: !llvm.ptr, %arg12: i32, %arg13: i32, %arg14: i32):
    %42 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = 8196 : i64}> : () -> i64
    %45 = "llvm.mlir.constant"() <{value = 8312 : i64}> : () -> i64
    %46 = "llvm.add"(%arg12, %42) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %47 = "llvm.icmp"(%arg14, %43) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %48 = "llvm.sext"(%46) : (i32) -> i64
    %49 = "llvm.getelementptr"(%arg11, %48) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %50 = "llvm.select"(%47, %46, %arg13) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.store"(%50, %49) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %51 = "llvm.sext"(%arg12) : (i32) -> i64
    %52 = "llvm.getelementptr"(%arg11, %51) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %53 = "llvm.getelementptr"(%52, %44) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%50, %53) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %54 = "llvm.getelementptr"(%52, %45) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%46, %54) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_inSelect", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr, %arg8: i64, %arg9: i64, %arg10: i64):
    %30 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %31 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %32 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %33 = "llvm.mlir.constant"() <{value = 35 : i64}> : () -> i64
    %34 = "llvm.add"(%arg8, %30) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %35 = "llvm.icmp"(%arg10, %31) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %36 = "llvm.select"(%35, %34, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %37 = "llvm.getelementptr"(%arg7, %34) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%36, %37) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %38 = "llvm.add"(%arg8, %32) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %39 = "llvm.getelementptr"(%arg7, %38) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%36, %39) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %40 = "llvm.add"(%arg8, %33) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %41 = "llvm.getelementptr"(%arg7, %40) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%34, %41) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_sh1add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %26 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %27 = "llvm.or"(%arg6, %26) : (i64, i64) -> i64
    %28 = "llvm.shl"(%27, %26) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %29 = "llvm.add"(%28, %27) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%29) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64):
    %21 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %22 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %23 = "llvm.or"(%arg5, %21) : (i64, i64) -> i64
    %24 = "llvm.shl"(%23, %22) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %25 = "llvm.add"(%24, %23) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %16 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %18 = "llvm.or"(%arg4, %16) : (i64, i64) -> i64
    %19 = "llvm.shl"(%18, %17) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %20 = "llvm.add"(%19, %18) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%20) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %12 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %13 = "llvm.add"(%arg3, %12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %14 = "llvm.shl"(%13, %arg3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %15 = "llvm.sext"(%14) : (i32) -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_sh4add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %7 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %8 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %9 = "llvm.or"(%arg2, %7) : (i64, i64) -> i64
    %10 = "llvm.shl"(%9, %8) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %11 = "llvm.add"(%10, %9) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_rhs_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = -8 : i64}> : () -> i64
    %3 = "llvm.add"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %4 = "llvm.add"(%arg1, %3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %5 = "llvm.shl"(%4, %1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %6 = "llvm.add"(%5, %2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%6) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

