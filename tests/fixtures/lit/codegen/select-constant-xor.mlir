"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, sym_name = "xori64i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i64):
    %58 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %59 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %60 = "llvm.ashr"(%arg18, %58) : (i64, i64) -> i64
    %61 = "llvm.trunc"(%60) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %62 = "llvm.xor"(%61, %59) : (i32, i32) -> i32
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "selecti64i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i64):
    %53 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %54 = "llvm.mlir.constant"() <{value = 2147483647 : i64}> : () -> i64
    %55 = "llvm.mlir.constant"() <{value = -2147483648 : i64}> : () -> i64
    %56 = "llvm.icmp"(%arg17, %53) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %57 = "llvm.select"(%56, %54, %55) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%57) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, sym_name = "selecti64i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64):
    %48 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %49 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %51 = "llvm.icmp"(%arg16, %48) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %52 = "llvm.select"(%51, %49, %50) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%52) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "selecti32i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %43 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = 2147483647 : i64}> : () -> i64
    %45 = "llvm.mlir.constant"() <{value = -2147483648 : i64}> : () -> i64
    %46 = "llvm.icmp"(%arg15, %43) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %47 = "llvm.select"(%46, %44, %45) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%47) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i32)>, linkage = #llvm.linkage<external>, sym_name = "xori32i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %38 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %39 = "llvm.mlir.constant"() <{value = 84 : i8}> : () -> i8
    %40 = "llvm.ashr"(%arg14, %38) : (i32, i32) -> i32
    %41 = "llvm.trunc"(%40) <{overflowFlags = 0 : i32}> : (i32) -> i8
    %42 = "llvm.xor"(%41, %39) : (i8, i8) -> i8
    "llvm.return"(%42) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "selecti32i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %33 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %34 = "llvm.mlir.constant"() <{value = 84 : i32}> : () -> i32
    %35 = "llvm.mlir.constant"() <{value = -85 : i32}> : () -> i32
    %36 = "llvm.icmp"(%arg13, %33) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %37 = "llvm.select"(%36, %34, %35) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i32)>, linkage = #llvm.linkage<external>, sym_name = "selecti32i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %28 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = 84 : i8}> : () -> i8
    %30 = "llvm.mlir.constant"() <{value = -85 : i8}> : () -> i8
    %31 = "llvm.icmp"(%arg12, %28) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %32 = "llvm.select"(%31, %29, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    "llvm.return"(%32) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, sym_name = "selecti8i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i8):
    %23 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %24 = "llvm.mlir.constant"() <{value = 84 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = -85 : i32}> : () -> i32
    %26 = "llvm.icmp"(%arg11, %23) <{predicate = 4 : i64}> : (i8, i8) -> i1
    %27 = "llvm.select"(%26, %24, %25) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "icmpasreq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32, %arg10: i32):
    %18 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %20 = "llvm.ashr"(%arg8, %18) : (i32, i32) -> i32
    %21 = "llvm.icmp"(%20, %19) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %22 = "llvm.select"(%21, %arg9, %arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "icmpasrne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32, %arg6: i32, %arg7: i32):
    %13 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %15 = "llvm.ashr"(%arg5, %13) : (i32, i32) -> i32
    %16 = "llvm.icmp"(%15, %14) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %17 = "llvm.select"(%16, %arg6, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "oneusecmp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
    %6 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = -128 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 127 : i32}> : () -> i32
    %9 = "llvm.icmp"(%arg2, %6) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %10 = "llvm.select"(%9, %7, %8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %11 = "llvm.select"(%9, %arg4, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %12 = "llvm.add"(%10, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%12) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "xor_branch_imm_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %3 = "llvm.mlir.constant"() <{value = -1365 : i32}> : () -> i32
    %4 = "llvm.icmp"(%arg1, %3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%4)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %5 = "llvm.xor"(%arg1, %3) : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @abort, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.unreachable"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "xor_branch_ret", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %1 = "llvm.icmp"(%arg0, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%1)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %2 = "llvm.xor"(%arg0, %0) : (i32, i32) -> i32
    "llvm.return"(%2) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @abort, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.unreachable"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "abort", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

