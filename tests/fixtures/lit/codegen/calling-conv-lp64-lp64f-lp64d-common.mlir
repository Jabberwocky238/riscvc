"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_i128_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i64, %arg36: i128):
    %124 = "llvm.trunc"(%arg36) <{overflowFlags = 0 : i32}> : (i128) -> i64
    %125 = "llvm.add"(%arg35, %124) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%125) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_i128_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %121 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %122 = "llvm.mlir.constant"() <{value = 2 : i128}> : () -> i128
    %123 = "llvm.call"(%121, %122) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_i128_in_regs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i64, i128) -> i64
    "llvm.return"(%123) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8, i16, i32, i128, i32, i32, i128, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_many_scalars", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i8, %arg28: i16, %arg29: i32, %arg30: i128, %arg31: i32, %arg32: i32, %arg33: i128, %arg34: i32):
    %111 = "llvm.zext"(%arg27) : (i8) -> i32
    %112 = "llvm.zext"(%arg28) : (i16) -> i32
    %113 = "llvm.add"(%111, %112) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %114 = "llvm.add"(%113, %arg29) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %115 = "llvm.icmp"(%arg30, %arg33) <{predicate = 0 : i64}> : (i128, i128) -> i1
    %116 = "llvm.zext"(%115) : (i1) -> i32
    %117 = "llvm.add"(%116, %114) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %118 = "llvm.add"(%117, %arg31) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %119 = "llvm.add"(%118, %arg32) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %120 = "llvm.add"(%119, %arg34) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%120) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_many_scalars", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %102 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %103 = "llvm.mlir.constant"() <{value = 2 : i16}> : () -> i16
    %104 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %105 = "llvm.mlir.constant"() <{value = 4 : i128}> : () -> i128
    %106 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %107 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %108 = "llvm.mlir.constant"() <{value = 7 : i128}> : () -> i128
    %109 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %110 = "llvm.call"(%102, %103, %104, %105, %106, %107, %108, %109) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_many_scalars, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 8, 0>}> : (i8, i16, i32, i128, i32, i32, i128, i32) -> i32
    "llvm.return"(%110) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i256, i256)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_large_scalars", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i256, %arg26: i256):
    %100 = "llvm.icmp"(%arg25, %arg26) <{predicate = 0 : i64}> : (i256, i256) -> i1
    %101 = "llvm.zext"(%100) : (i1) -> i64
    "llvm.return"(%101) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_large_scalars", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %97 = "llvm.mlir.constant"() <{value = 1 : i256}> : () -> i256
    %98 = "llvm.mlir.constant"() <{value = 2 : i256}> : () -> i256
    %99 = "llvm.call"(%97, %98) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_large_scalars, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i256, i256) -> i64
    "llvm.return"(%99) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64, i64, i64, i64, i256, i64, i256)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_large_scalars_exhausted_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i256, %arg23: i64, %arg24: i256):
    %95 = "llvm.icmp"(%arg22, %arg24) <{predicate = 0 : i64}> : (i256, i256) -> i1
    %96 = "llvm.zext"(%95) : (i1) -> i64
    "llvm.return"(%96) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_large_scalars_exhausted_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %84 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %85 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %86 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %87 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %88 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %89 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %90 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %91 = "llvm.mlir.constant"() <{value = 8 : i256}> : () -> i256
    %92 = "llvm.mlir.constant"() <{value = 9 : i64}> : () -> i64
    %93 = "llvm.mlir.constant"() <{value = 10 : i256}> : () -> i256
    %94 = "llvm.call"(%84, %85, %86, %87, %88, %89, %90, %91, %92, %93) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_large_scalars_exhausted_regs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 10, 0>}> : (i64, i64, i64, i64, i64, i64, i64, i256, i64, i256) -> i64
    "llvm.return"(%94) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_mixed_scalar_libcalls", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64):
    %81 = "llvm.sitofp"(%arg14) : (i64) -> f128
    %82 = "llvm.bitcast"(%81) : (f128) -> i128
    %83 = "llvm.trunc"(%82) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%83) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (array<2 x i64>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_small_coerced_struct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: !llvm.array<2 x i64>):
    %77 = "llvm.extractvalue"(%arg13) <{position = array<i64: 0>}> : (!llvm.array<2 x i64>) -> i64
    %78 = "llvm.extractvalue"(%arg13) <{position = array<i64: 1>}> : (!llvm.array<2 x i64>) -> i64
    %79 = "llvm.icmp"(%77, %78) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %80 = "llvm.zext"(%79) : (i1) -> i64
    "llvm.return"(%80) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_small_coerced_struct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %75 = "llvm.mlir.constant"() <{value = dense<[1, 2]> : tensor<2xi64>}> : () -> !llvm.array<2 x i64>
    %76 = "llvm.call"(%75) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_small_coerced_struct, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.array<2 x i64>) -> i64
    "llvm.return"(%76) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.byval = !llvm.struct<"struct.large", (i64, i64, i64, i64)>}], function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_large_struct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr):
    %69 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %70 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %71 = "llvm.getelementptr"(%arg12, %69) <{elem_type = !llvm.struct<"struct.large", (i64, i64, i64, i64)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %72 = "llvm.load"(%arg12) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %73 = "llvm.load"(%71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %74 = "llvm.add"(%72, %73) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%74) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_large_struct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %56 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %58 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %59 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %60 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %61 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %62 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %63 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %64 = "llvm.alloca"(%56) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.large", (i64, i64, i64, i64)>}> : (i32) -> !llvm.ptr
    "llvm.store"(%57, %64) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %65 = "llvm.getelementptr"(%64, %58) <{elem_type = !llvm.struct<"struct.large", (i64, i64, i64, i64)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%59, %65) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %66 = "llvm.getelementptr"(%64, %58) <{elem_type = !llvm.struct<"struct.large", (i64, i64, i64, i64)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%61, %66) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %67 = "llvm.getelementptr"(%64, %58) <{elem_type = !llvm.struct<"struct.large", (i64, i64, i64, i64)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%63, %67) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %68 = "llvm.call"(%64) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.byval = !llvm.struct<"struct.large", (i64, i64, i64, i64)>}], callee = @callee_large_struct, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i64
    "llvm.return"(%68) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64, i64, i64, i128, i64, i64, i128, i64, array<2 x i64>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_aligned_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i128, %arg7: i64, %arg8: i64, %arg9: i128, %arg10: i64, %arg11: !llvm.array<2 x i64>):
    %48 = "llvm.trunc"(%arg6) <{overflowFlags = 0 : i32}> : (i128) -> i64
    %49 = "llvm.add"(%48, %arg7) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %50 = "llvm.add"(%49, %arg8) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %51 = "llvm.trunc"(%arg9) <{overflowFlags = 0 : i32}> : (i128) -> i64
    %52 = "llvm.add"(%50, %51) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %53 = "llvm.add"(%52, %arg10) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %54 = "llvm.extractvalue"(%arg11) <{position = array<i64: 0>}> : (!llvm.array<2 x i64>) -> i64
    %55 = "llvm.add"(%53, %54) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%55) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_aligned_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %36 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %37 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %38 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %39 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %40 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %41 = "llvm.mlir.constant"() <{value = 6 : i128}> : () -> i128
    %42 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %43 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %44 = "llvm.mlir.constant"() <{value = 9 : i128}> : () -> i128
    %45 = "llvm.mlir.constant"() <{value = 10 : i64}> : () -> i64
    %46 = "llvm.mlir.constant"() <{value = dense<[11, 12]> : tensor<2xi64>}> : () -> !llvm.array<2 x i64>
    %47 = "llvm.call"(%36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_aligned_stack, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 11, 0>}> : (i64, i64, i64, i64, i64, i128, i64, i64, i128, i64, !llvm.array<2 x i64>) -> i64
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_small_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %35 = "llvm.mlir.constant"() <{value = -1 : i128}> : () -> i128
    "llvm.return"(%35) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_small_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %31 = "llvm.mlir.constant"() <{value = -2 : i128}> : () -> i128
    %32 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_small_scalar_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> i128
    %33 = "llvm.icmp"(%31, %32) <{predicate = 0 : i64}> : (i128, i128) -> i1
    %34 = "llvm.zext"(%33) : (i1) -> i64
    "llvm.return"(%34) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<"struct.small", (i64, ptr)> ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_small_struct_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %26 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %27 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %28 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.small", (i64, ptr)>
    %29 = "llvm.insertvalue"(%28, %27) <{position = array<i64: 0>}> : (!llvm.struct<"struct.small", (i64, ptr)>, i64) -> !llvm.struct<"struct.small", (i64, ptr)>
    %30 = "llvm.insertvalue"(%29, %26) <{position = array<i64: 1>}> : (!llvm.struct<"struct.small", (i64, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.small", (i64, ptr)>
    "llvm.return"(%30) : (!llvm.struct<"struct.small", (i64, ptr)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_small_struct_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %21 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_small_struct_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> !llvm.struct<"struct.small", (i64, ptr)>
    %22 = "llvm.extractvalue"(%21) <{position = array<i64: 0>}> : (!llvm.struct<"struct.small", (i64, ptr)>) -> i64
    %23 = "llvm.extractvalue"(%21) <{position = array<i64: 1>}> : (!llvm.struct<"struct.small", (i64, ptr)>) -> !llvm.ptr
    %24 = "llvm.ptrtoint"(%23) : (!llvm.ptr) -> i64
    %25 = "llvm.add"(%22, %24) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i256 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_large_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %20 = "llvm.mlir.constant"() <{value = -123456789 : i256}> : () -> i256
    "llvm.return"(%20) : (i256) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_large_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %19 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_large_scalar_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> i256
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias, llvm.sret = !llvm.struct<"struct.large", (i64, i64, i64, i64)>}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_large_struct_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %8 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %12 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    "llvm.store"(%8, %arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %16 = "llvm.getelementptr"(%arg0, %9) <{elem_type = !llvm.struct<"struct.large", (i64, i64, i64, i64)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%11, %16) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %17 = "llvm.getelementptr"(%arg0, %9) <{elem_type = !llvm.struct<"struct.large", (i64, i64, i64, i64)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%13, %17) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %18 = "llvm.getelementptr"(%arg0, %9) <{elem_type = !llvm.struct<"struct.large", (i64, i64, i64, i64)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%15, %18) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_large_struct_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.large", (i64, i64, i64, i64)>}> : (i32) -> !llvm.ptr
    "llvm.call"(%3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.sret = !llvm.struct<"struct.large", (i64, i64, i64, i64)>}], callee = @callee_large_struct_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %4 = "llvm.load"(%3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %5 = "llvm.getelementptr"(%3, %1) <{elem_type = !llvm.struct<"struct.large", (i64, i64, i64, i64)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %6 = "llvm.load"(%5) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %7 = "llvm.add"(%4, %6) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

