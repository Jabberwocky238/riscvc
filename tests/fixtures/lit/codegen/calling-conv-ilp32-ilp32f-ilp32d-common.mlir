"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_i64_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i32, %arg36: i64):
    %121 = "llvm.trunc"(%arg36) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %122 = "llvm.add"(%arg35, %121) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%122) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_i64_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %118 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %119 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %120 = "llvm.call"(%118, %119) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_i64_in_regs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i64) -> i32
    "llvm.return"(%120) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8, i16, i32, i64, i32, i32, i64, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_many_scalars", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i8, %arg28: i16, %arg29: i32, %arg30: i64, %arg31: i32, %arg32: i32, %arg33: i64, %arg34: i32):
    %108 = "llvm.zext"(%arg27) : (i8) -> i32
    %109 = "llvm.zext"(%arg28) : (i16) -> i32
    %110 = "llvm.add"(%108, %109) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %111 = "llvm.add"(%110, %arg29) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %112 = "llvm.icmp"(%arg30, %arg33) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %113 = "llvm.zext"(%112) : (i1) -> i32
    %114 = "llvm.add"(%113, %111) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %115 = "llvm.add"(%114, %arg31) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %116 = "llvm.add"(%115, %arg32) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %117 = "llvm.add"(%116, %arg34) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%117) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_many_scalars", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %99 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %100 = "llvm.mlir.constant"() <{value = 2 : i16}> : () -> i16
    %101 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %102 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %103 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %104 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %105 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %106 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %107 = "llvm.call"(%99, %100, %101, %102, %103, %104, %105, %106) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_many_scalars, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 8, 0>}> : (i8, i16, i32, i64, i32, i32, i64, i32) -> i32
    "llvm.return"(%107) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i128, f128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_large_scalars", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i128, %arg26: f128):
    %96 = "llvm.bitcast"(%arg26) : (f128) -> i128
    %97 = "llvm.icmp"(%arg25, %96) <{predicate = 0 : i64}> : (i128, i128) -> i1
    %98 = "llvm.zext"(%97) : (i1) -> i32
    "llvm.return"(%98) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_large_scalars", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %93 = "llvm.mlir.constant"() <{value = 1 : i128}> : () -> i128
    %94 = "llvm.mlir.constant"() <{value = 0x7FFF0000000000000000000000000000 : f128}> : () -> f128
    %95 = "llvm.call"(%93, %94) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_large_scalars, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i128, f128) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32, i32, i32, i32, i128, i32, f128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_large_scalars_exhausted_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i128, %arg23: i32, %arg24: f128):
    %90 = "llvm.bitcast"(%arg24) : (f128) -> i128
    %91 = "llvm.icmp"(%arg22, %90) <{predicate = 0 : i64}> : (i128, i128) -> i1
    %92 = "llvm.zext"(%91) : (i1) -> i32
    "llvm.return"(%92) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_large_scalars_exhausted_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %79 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %80 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %81 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %82 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %83 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %84 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %85 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %86 = "llvm.mlir.constant"() <{value = 8 : i128}> : () -> i128
    %87 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %88 = "llvm.mlir.constant"() <{value = 0x7FFF0000000000000000000000000000 : f128}> : () -> f128
    %89 = "llvm.call"(%79, %80, %81, %82, %83, %84, %85, %86, %87, %88) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_large_scalars_exhausted_regs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 10, 0>}> : (i32, i32, i32, i32, i32, i32, i32, i128, i32, f128) -> i32
    "llvm.return"(%89) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_mixed_scalar_libcalls", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64):
    %76 = "llvm.sitofp"(%arg14) : (i64) -> f128
    %77 = "llvm.bitcast"(%76) : (f128) -> i128
    %78 = "llvm.trunc"(%77) <{overflowFlags = 0 : i32}> : (i128) -> i32
    "llvm.return"(%78) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (array<2 x i32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_small_coerced_struct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: !llvm.array<2 x i32>):
    %72 = "llvm.extractvalue"(%arg13) <{position = array<i64: 0>}> : (!llvm.array<2 x i32>) -> i32
    %73 = "llvm.extractvalue"(%arg13) <{position = array<i64: 1>}> : (!llvm.array<2 x i32>) -> i32
    %74 = "llvm.icmp"(%72, %73) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %75 = "llvm.zext"(%74) : (i1) -> i32
    "llvm.return"(%75) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_small_coerced_struct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %70 = "llvm.mlir.constant"() <{value = dense<[1, 2]> : tensor<2xi32>}> : () -> !llvm.array<2 x i32>
    %71 = "llvm.call"(%70) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_small_coerced_struct, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.array<2 x i32>) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 4 : i64, llvm.byval = !llvm.struct<"struct.large", (i32, i32, i32, i32)>}], function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_large_struct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr):
    %64 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %65 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %66 = "llvm.getelementptr"(%arg12, %64) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %67 = "llvm.load"(%arg12) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %68 = "llvm.load"(%66) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %69 = "llvm.add"(%67, %68) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_large_struct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %54 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %55 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %58 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %59 = "llvm.alloca"(%54) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>}> : (i32) -> !llvm.ptr
    "llvm.store"(%54, %59) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %60 = "llvm.getelementptr"(%59, %55) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%56, %60) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %61 = "llvm.getelementptr"(%59, %55) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%57, %61) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %62 = "llvm.getelementptr"(%59, %55) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%58, %62) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %63 = "llvm.call"(%59) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 4 : i64, llvm.byval = !llvm.struct<"struct.large", (i32, i32, i32, i32)>}], callee = @callee_large_struct, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, f128, i32, i32, i64, i32, i32, i64, i32, array<2 x i32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_aligned_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32, %arg2: i32, %arg3: f128, %arg4: i32, %arg5: i32, %arg6: i64, %arg7: i32, %arg8: i32, %arg9: i64, %arg10: i32, %arg11: !llvm.array<2 x i32>):
    %45 = "llvm.bitcast"(%arg3) : (f128) -> i128
    %46 = "llvm.trunc"(%45) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %47 = "llvm.add"(%46, %arg7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %48 = "llvm.add"(%47, %arg8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %49 = "llvm.trunc"(%arg9) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %50 = "llvm.add"(%48, %49) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %51 = "llvm.add"(%50, %arg10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %52 = "llvm.extractvalue"(%arg11) <{position = array<i64: 0>}> : (!llvm.array<2 x i32>) -> i32
    %53 = "llvm.add"(%51, %52) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_aligned_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %33 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %34 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %35 = "llvm.mlir.constant"() <{value = 3.14000000000000012434497875801753253 : f128}> : () -> f128
    %36 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %38 = "llvm.mlir.constant"() <{value = 20000000000 : i64}> : () -> i64
    %39 = "llvm.mlir.constant"() <{value = 14 : i32}> : () -> i32
    %40 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %41 = "llvm.mlir.constant"() <{value = 16 : i64}> : () -> i64
    %42 = "llvm.mlir.constant"() <{value = 17 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = dense<[18, 19]> : tensor<2xi32>}> : () -> !llvm.array<2 x i32>
    %44 = "llvm.call"(%33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_aligned_stack, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 11, 0>}> : (i32, i32, f128, i32, i32, i64, i32, i32, i64, i32, !llvm.array<2 x i32>) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_small_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %32 = "llvm.mlir.constant"() <{value = 1234567898765 : i64}> : () -> i64
    "llvm.return"(%32) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_small_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %28 = "llvm.mlir.constant"() <{value = 987654321234567 : i64}> : () -> i64
    %29 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_small_scalar_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> i64
    %30 = "llvm.icmp"(%28, %29) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %31 = "llvm.zext"(%30) : (i1) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<"struct.small", (i32, ptr)> ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_small_struct_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %23 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %24 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %25 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.small", (i32, ptr)>
    %26 = "llvm.insertvalue"(%25, %24) <{position = array<i64: 0>}> : (!llvm.struct<"struct.small", (i32, ptr)>, i32) -> !llvm.struct<"struct.small", (i32, ptr)>
    %27 = "llvm.insertvalue"(%26, %23) <{position = array<i64: 1>}> : (!llvm.struct<"struct.small", (i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.small", (i32, ptr)>
    "llvm.return"(%27) : (!llvm.struct<"struct.small", (i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_small_struct_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %18 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_small_struct_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> !llvm.struct<"struct.small", (i32, ptr)>
    %19 = "llvm.extractvalue"(%18) <{position = array<i64: 0>}> : (!llvm.struct<"struct.small", (i32, ptr)>) -> i32
    %20 = "llvm.extractvalue"(%18) <{position = array<i64: 1>}> : (!llvm.struct<"struct.small", (i32, ptr)>) -> !llvm.ptr
    %21 = "llvm.ptrtoint"(%20) : (!llvm.ptr) -> i32
    %22 = "llvm.add"(%19, %21) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f128 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_large_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %17 = "llvm.mlir.constant"() <{value = 0x7FFF0000000000000000000000000000 : f128}> : () -> f128
    "llvm.return"(%17) : (f128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_large_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %16 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_large_scalar_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> f128
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias, llvm.sret = !llvm.struct<"struct.large", (i32, i32, i32, i32)>}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee_large_struct_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %8 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    "llvm.store"(%8, %arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %13 = "llvm.getelementptr"(%arg0, %9) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%10, %13) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %14 = "llvm.getelementptr"(%arg0, %9) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%11, %14) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %15 = "llvm.getelementptr"(%arg0, %9) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%12, %15) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller_large_struct_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>}> : (i32) -> !llvm.ptr
    "llvm.call"(%3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.sret = !llvm.struct<"struct.large", (i32, i32, i32, i32)>}], callee = @callee_large_struct_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %4 = "llvm.load"(%3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %5 = "llvm.getelementptr"(%3, %1) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %6 = "llvm.load"(%5) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %7 = "llvm.add"(%4, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

