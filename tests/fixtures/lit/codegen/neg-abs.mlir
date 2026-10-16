"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "neg_abs32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %49 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %50 = "llvm.intr.abs"(%arg15) <{is_int_min_poison = true}> : (i32) -> i32
    %51 = "llvm.sub"(%49, %50) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%51) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_neg_abs32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %45 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %46 = "llvm.icmp"(%arg14, %45) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %47 = "llvm.sub"(%45, %arg14) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %48 = "llvm.select"(%46, %arg14, %47) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "neg_abs64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64):
    %42 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %43 = "llvm.intr.abs"(%arg13) <{is_int_min_poison = true}> : (i64) -> i64
    %44 = "llvm.sub"(%42, %43) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%44) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "select_neg_abs64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %38 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %39 = "llvm.icmp"(%arg12, %38) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %40 = "llvm.sub"(%38, %arg12) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %41 = "llvm.select"(%39, %arg12, %40) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%41) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "neg_abs32_multiuse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32, %arg11: !llvm.ptr):
    %35 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %36 = "llvm.intr.abs"(%arg10) <{is_int_min_poison = true}> : (i32) -> i32
    "llvm.store"(%36, %arg11) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %37 = "llvm.sub"(%35, %36) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "neg_abs64_multiuse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64, %arg9: !llvm.ptr):
    %32 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %33 = "llvm.intr.abs"(%arg8) <{is_int_min_poison = true}> : (i64) -> i64
    "llvm.store"(%33, %arg9) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %34 = "llvm.sub"(%32, %33) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%34) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "expanded_neg_abs32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %28 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %29 = "llvm.sub"(%28, %arg7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %30 = "llvm.intr.smax"(%29, %arg7) : (i32, i32) -> i32
    %31 = "llvm.sub"(%28, %30) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "expanded_neg_abs32_unsigned", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %24 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %25 = "llvm.sub"(%24, %arg6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %26 = "llvm.intr.umax"(%25, %arg6) : (i32, i32) -> i32
    %27 = "llvm.sub"(%24, %26) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "expanded_neg_abs64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64):
    %20 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %21 = "llvm.sub"(%20, %arg5) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %22 = "llvm.intr.smax"(%21, %arg5) : (i64, i64) -> i64
    %23 = "llvm.sub"(%20, %22) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%23) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "expanded_neg_abs64_unsigned", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %16 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %17 = "llvm.sub"(%16, %arg4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %18 = "llvm.intr.umax"(%17, %arg4) : (i64, i64) -> i64
    %19 = "llvm.sub"(%16, %18) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%19) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "expanded_neg_inv_abs32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %12 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %13 = "llvm.sub"(%12, %arg3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %14 = "llvm.intr.smin"(%13, %arg3) : (i32, i32) -> i32
    %15 = "llvm.sub"(%12, %14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "expanded_neg_inv_abs32_unsigned", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %8 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %9 = "llvm.sub"(%8, %arg2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %10 = "llvm.intr.umin"(%9, %arg2) : (i32, i32) -> i32
    %11 = "llvm.sub"(%8, %10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "expanded_neg_inv_abs64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64):
    %4 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %5 = "llvm.sub"(%4, %arg1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %6 = "llvm.intr.smin"(%5, %arg1) : (i64, i64) -> i64
    %7 = "llvm.sub"(%4, %6) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "expanded_neg_inv_abs64_unsigned", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "llvm.sub"(%0, %arg0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %2 = "llvm.intr.umin"(%1, %arg0) : (i64, i64) -> i64
    %3 = "llvm.sub"(%0, %2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

