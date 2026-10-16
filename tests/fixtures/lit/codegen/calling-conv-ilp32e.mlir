"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, f32)>, linkage = #llvm.linkage<external>, sym_name = "callee_float_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32, %arg45: f32):
    %147 = "llvm.fptosi"(%arg45) : (f32) -> i32
    %148 = "llvm.add"(%arg44, %147) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%148) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "caller_float_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %144 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %145 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %146 = "llvm.call"(%144, %145) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_float_in_regs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, f32) -> i32
    "llvm.return"(%146) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, i64, i64, i64, f32)>, linkage = #llvm.linkage<external>, sym_name = "callee_float_on_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: f32):
    %141 = "llvm.trunc"(%arg42) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %142 = "llvm.bitcast"(%arg43) : (f32) -> i32
    %143 = "llvm.add"(%141, %142) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%143) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "caller_float_on_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %135 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %136 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %137 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %138 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %139 = "llvm.mlir.constant"() <{value = 5.000000e+00 : f32}> : () -> f32
    %140 = "llvm.call"(%135, %136, %137, %138, %139) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_float_on_stack, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 5, 0>}> : (i64, i64, i64, i64, f32) -> i32
    "llvm.return"(%140) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 ()>, linkage = #llvm.linkage<external>, sym_name = "callee_tiny_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %134 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    "llvm.return"(%134) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "caller_tiny_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %132 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_tiny_scalar_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> f32
    %133 = "llvm.bitcast"(%132) : (f32) -> i32
    "llvm.return"(%133) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, f64)>, linkage = #llvm.linkage<external>, sym_name = "callee_double_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32, %arg38: f64):
    %130 = "llvm.fptosi"(%arg38) : (f64) -> i32
    %131 = "llvm.add"(%arg37, %130) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%131) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "caller_double_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %127 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %128 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %129 = "llvm.call"(%127, %128) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_double_in_regs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, f64) -> i32
    "llvm.return"(%129) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, f128, i32, i32, i64, i32, i32, f64, i32, array<2 x i32>)>, linkage = #llvm.linkage<external>, sym_name = "callee_aligned_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32, %arg27: i32, %arg28: f128, %arg29: i32, %arg30: i32, %arg31: i64, %arg32: i32, %arg33: i32, %arg34: f64, %arg35: i32, %arg36: !llvm.array<2 x i32>):
    %117 = "llvm.bitcast"(%arg28) : (f128) -> i128
    %118 = "llvm.trunc"(%117) <{overflowFlags = 0 : i32}> : (i128) -> i32
    %119 = "llvm.add"(%118, %arg32) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %120 = "llvm.add"(%119, %arg33) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %121 = "llvm.bitcast"(%arg34) : (f64) -> i64
    %122 = "llvm.trunc"(%121) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %123 = "llvm.add"(%120, %122) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %124 = "llvm.add"(%123, %arg35) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %125 = "llvm.extractvalue"(%arg36) <{position = array<i64: 0>}> : (!llvm.array<2 x i32>) -> i32
    %126 = "llvm.add"(%124, %125) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%126) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "caller_aligned_stack", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %105 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %106 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %107 = "llvm.mlir.constant"() <{value = 3.14000000000000012434497875801753253 : f128}> : () -> f128
    %108 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %109 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %110 = "llvm.mlir.constant"() <{value = 20000000000 : i64}> : () -> i64
    %111 = "llvm.mlir.constant"() <{value = 14 : i32}> : () -> i32
    %112 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %113 = "llvm.mlir.constant"() <{value = 2.720000e+00 : f64}> : () -> f64
    %114 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %115 = "llvm.mlir.constant"() <{value = dense<[17, 18]> : tensor<2xi32>}> : () -> !llvm.array<2 x i32>
    %116 = "llvm.call"(%105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_aligned_stack, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 11, 0>}> : (i32, i32, f128, i32, i32, i64, i32, i32, f64, i32, !llvm.array<2 x i32>) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 ()>, linkage = #llvm.linkage<external>, sym_name = "callee_small_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %104 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    "llvm.return"(%104) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "caller_small_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %102 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_small_scalar_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> f64
    %103 = "llvm.bitcast"(%102) : (f64) -> i64
    "llvm.return"(%103) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i64)>, linkage = #llvm.linkage<external>, sym_name = "callee_i64_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i64):
    %100 = "llvm.trunc"(%arg25) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %101 = "llvm.add"(%arg24, %100) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%101) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "caller_i64_in_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %97 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %98 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %99 = "llvm.call"(%97, %98) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_i64_in_regs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i64) -> i32
    "llvm.return"(%99) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8, i16, i32, i64, i32, i32, i64, i32)>, linkage = #llvm.linkage<external>, sym_name = "callee_many_scalars", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i8, %arg17: i16, %arg18: i32, %arg19: i64, %arg20: i32, %arg21: i32, %arg22: i64, %arg23: i32):
    %87 = "llvm.zext"(%arg16) : (i8) -> i32
    %88 = "llvm.zext"(%arg17) : (i16) -> i32
    %89 = "llvm.add"(%87, %88) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %90 = "llvm.add"(%89, %arg18) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %91 = "llvm.icmp"(%arg19, %arg22) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %92 = "llvm.zext"(%91) : (i1) -> i32
    %93 = "llvm.add"(%92, %90) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %94 = "llvm.add"(%93, %arg20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %95 = "llvm.add"(%94, %arg21) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %96 = "llvm.add"(%95, %arg23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%96) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "caller_many_scalars", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %78 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %79 = "llvm.mlir.constant"() <{value = 2 : i16}> : () -> i16
    %80 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %81 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %82 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %83 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %84 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %85 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %86 = "llvm.call"(%78, %79, %80, %81, %82, %83, %84, %85) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_many_scalars, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 8, 0>}> : (i8, i16, i32, i64, i32, i32, i64, i32) -> i32
    "llvm.return"(%86) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i128, f128)>, linkage = #llvm.linkage<external>, sym_name = "callee_large_scalars", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i128, %arg15: f128):
    %75 = "llvm.bitcast"(%arg15) : (f128) -> i128
    %76 = "llvm.icmp"(%arg14, %75) <{predicate = 0 : i64}> : (i128, i128) -> i1
    %77 = "llvm.zext"(%76) : (i1) -> i32
    "llvm.return"(%77) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "caller_large_scalars", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %72 = "llvm.mlir.constant"() <{value = 1 : i128}> : () -> i128
    %73 = "llvm.mlir.constant"() <{value = 0x7FFF0000000000000000000000000000 : f128}> : () -> f128
    %74 = "llvm.call"(%72, %73) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_large_scalars, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i128, f128) -> i32
    "llvm.return"(%74) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32, i32, i32, i32, i128, i32, f128)>, linkage = #llvm.linkage<external>, sym_name = "callee_large_scalars_exhausted_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i128, %arg12: i32, %arg13: f128):
    %69 = "llvm.bitcast"(%arg13) : (f128) -> i128
    %70 = "llvm.icmp"(%arg11, %69) <{predicate = 0 : i64}> : (i128, i128) -> i1
    %71 = "llvm.zext"(%70) : (i1) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "caller_large_scalars_exhausted_regs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %58 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %59 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %60 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %61 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %62 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %63 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %64 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %65 = "llvm.mlir.constant"() <{value = 8 : i128}> : () -> i128
    %66 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %67 = "llvm.mlir.constant"() <{value = 0x7FFF0000000000000000000000000000 : f128}> : () -> f128
    %68 = "llvm.call"(%58, %59, %60, %61, %62, %63, %64, %65, %66, %67) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_large_scalars_exhausted_regs, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 10, 0>}> : (i32, i32, i32, i32, i32, i32, i32, i128, i32, f128) -> i32
    "llvm.return"(%68) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, sym_name = "caller_mixed_scalar_libcalls", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %55 = "llvm.sitofp"(%arg3) : (i64) -> f128
    %56 = "llvm.bitcast"(%55) : (f128) -> i128
    %57 = "llvm.trunc"(%56) <{overflowFlags = 0 : i32}> : (i128) -> i32
    "llvm.return"(%57) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (array<2 x i32>)>, linkage = #llvm.linkage<external>, sym_name = "callee_small_coerced_struct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.array<2 x i32>):
    %51 = "llvm.extractvalue"(%arg2) <{position = array<i64: 0>}> : (!llvm.array<2 x i32>) -> i32
    %52 = "llvm.extractvalue"(%arg2) <{position = array<i64: 1>}> : (!llvm.array<2 x i32>) -> i32
    %53 = "llvm.icmp"(%51, %52) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %54 = "llvm.zext"(%53) : (i1) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "caller_small_coerced_struct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %49 = "llvm.mlir.constant"() <{value = dense<[1, 2]> : tensor<2xi32>}> : () -> !llvm.array<2 x i32>
    %50 = "llvm.call"(%49) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_small_coerced_struct, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.array<2 x i32>) -> i32
    "llvm.return"(%50) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 4 : i64, llvm.byval = !llvm.struct<"struct.large", (i32, i32, i32, i32)>}], function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "callee_large_struct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: !llvm.ptr):
    %42 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %44 = "llvm.getelementptr"(%arg1, %42) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %45 = "llvm.getelementptr"(%arg1, %42) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %46 = "llvm.load"(%44) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %47 = "llvm.load"(%45) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %48 = "llvm.add"(%46, %47) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "caller_large_struct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %30 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %33 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %34 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %35 = "llvm.alloca"(%30) <{alignment = 4 : i64, elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>}> : (i32) -> !llvm.ptr
    %36 = "llvm.bitcast"(%35) : (!llvm.ptr) -> !llvm.ptr
    %37 = "llvm.getelementptr"(%35, %31) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%30, %37) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %38 = "llvm.getelementptr"(%35, %31) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%32, %38) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %39 = "llvm.getelementptr"(%35, %31) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%33, %39) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %40 = "llvm.getelementptr"(%35, %31) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%34, %40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %41 = "llvm.call"(%35) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 4 : i64, llvm.byval = !llvm.struct<"struct.large", (i32, i32, i32, i32)>}], callee = @callee_large_struct, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<"struct.small", (i32, ptr)> ()>, linkage = #llvm.linkage<external>, sym_name = "callee_small_struct_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %25 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %26 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %27 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.small", (i32, ptr)>
    %28 = "llvm.insertvalue"(%27, %26) <{position = array<i64: 0>}> : (!llvm.struct<"struct.small", (i32, ptr)>, i32) -> !llvm.struct<"struct.small", (i32, ptr)>
    %29 = "llvm.insertvalue"(%28, %25) <{position = array<i64: 1>}> : (!llvm.struct<"struct.small", (i32, ptr)>, !llvm.ptr) -> !llvm.struct<"struct.small", (i32, ptr)>
    "llvm.return"(%29) : (!llvm.struct<"struct.small", (i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "caller_small_struct_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %20 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_small_struct_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> !llvm.struct<"struct.small", (i32, ptr)>
    %21 = "llvm.extractvalue"(%20) <{position = array<i64: 0>}> : (!llvm.struct<"struct.small", (i32, ptr)>) -> i32
    %22 = "llvm.extractvalue"(%20) <{position = array<i64: 1>}> : (!llvm.struct<"struct.small", (i32, ptr)>) -> !llvm.ptr
    %23 = "llvm.ptrtoint"(%22) : (!llvm.ptr) -> i32
    %24 = "llvm.add"(%21, %23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f128 ()>, linkage = #llvm.linkage<external>, sym_name = "callee_large_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %19 = "llvm.mlir.constant"() <{value = 0x7FFF0000000000000000000000000000 : f128}> : () -> f128
    "llvm.return"(%19) : (f128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "caller_large_scalar_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %18 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee_large_scalar_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> f128
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noalias, llvm.sret = !llvm.struct<"struct.large", (i32, i32, i32, i32)>}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "callee_large_struct_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %9 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %14 = "llvm.getelementptr"(%arg0, %9) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%10, %14) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %15 = "llvm.getelementptr"(%arg0, %9) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%11, %15) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %16 = "llvm.getelementptr"(%arg0, %9) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%12, %16) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %17 = "llvm.getelementptr"(%arg0, %9) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%13, %17) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "caller_large_struct_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>}> : (i32) -> !llvm.ptr
    "llvm.call"(%3) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.sret = !llvm.struct<"struct.large", (i32, i32, i32, i32)>}], callee = @callee_large_struct_ret, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> ()
    %4 = "llvm.getelementptr"(%3, %1) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %5 = "llvm.load"(%4) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %6 = "llvm.getelementptr"(%3, %1) <{elem_type = !llvm.struct<"struct.large", (i32, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %7 = "llvm.load"(%6) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %8 = "llvm.add"(%5, %7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

