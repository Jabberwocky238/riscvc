"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "callee2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "callee3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "t1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32, %arg14: i32, %arg15: i32):
    %23 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %25 = "llvm.shl"(%arg13, %23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %26 = "llvm.add"(%25, %24) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %27 = "llvm.add"(%26, %arg14) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %28 = "llvm.add"(%26, %arg15) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %29 = "llvm.call"(%27, %28) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @callee2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "t2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32):
    %15 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %17 = "llvm.shl"(%arg8, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %18 = "llvm.add"(%17, %16) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %19 = "llvm.add"(%18, %arg9) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %20 = "llvm.add"(%18, %arg10) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %21 = "llvm.add"(%18, %arg11) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %22 = "llvm.call"(%19, %20, %21) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @callee3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "t3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32):
    %7 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 45 : i32}> : () -> i32
    %9 = "llvm.shl"(%arg4, %7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %10 = "llvm.add"(%9, %8) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %11 = "llvm.add"(%10, %arg5) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %12 = "llvm.add"(%10, %arg6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %13 = "llvm.add"(%9, %arg7) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %14 = "llvm.call"(%11, %12, %13) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @callee3, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (i32, i32, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "t4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 45 : i32}> : () -> i32
    %2 = "llvm.shl"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %3 = "llvm.add"(%2, %1) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %4 = "llvm.add"(%3, %arg1) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %5 = "llvm.add"(%3, %arg2) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %6 = "llvm.call"(%4, %5) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @callee2, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

