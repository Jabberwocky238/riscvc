"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr, %arg8: i128):
    %5 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    "llvm.call_intrinsic"(%arg7, %arg8, %5, %6) <{arg_attrs = [{llvm.align = 8 : i64}, {}, {}, {}], fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.experimental.memset.pattern.p0.i128.i64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (!llvm.ptr, i128, i64, i1) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_1_noalign", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: !llvm.ptr, %arg6: i128):
    %3 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %4 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    "llvm.call_intrinsic"(%arg5, %arg6, %3, %4) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.experimental.memset.pattern.p0.i128.i64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (!llvm.ptr, i128, i64, i1) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: i128):
    %1 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    "llvm.call_intrinsic"(%arg3, %arg4, %1, %2) <{arg_attrs = [{llvm.align = 8 : i64}, {}, {}, {}], fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.experimental.memset.pattern.p0.i128.i64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (!llvm.ptr, i128, i64, i1) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i128, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_x", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i128, %arg2: i64):
    %0 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    "llvm.call_intrinsic"(%arg0, %arg1, %arg2, %0) <{arg_attrs = [{llvm.align = 8 : i64}, {}, {}, {}], fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.experimental.memset.pattern.p0.i128.i64", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (!llvm.ptr, i128, i64, i1) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture, llvm.writeonly}, {}, {}, {}], function_type = !llvm.func<void (ptr, i128, i64, i1)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = write, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree"], sym_name = "llvm.experimental.memset.pattern.p0.i128.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

