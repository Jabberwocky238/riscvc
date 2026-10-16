"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, sym_name = "abs8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i8):
    %36 = "llvm.intr.abs"(%arg16) <{is_int_min_poison = true}> : (i8) -> i8
    "llvm.return"(%36) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, sym_name = "select_abs8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i8):
    %32 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %33 = "llvm.icmp"(%arg15, %32) <{predicate = 2 : i64}> : (i8, i8) -> i1
    %34 = "llvm.sub"(%32, %arg15) <{overflowFlags = 1 : i32}> : (i8, i8) -> i8
    %35 = "llvm.select"(%33, %34, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    "llvm.return"(%35) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, sym_name = "abs16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i16):
    %31 = "llvm.intr.abs"(%arg14) <{is_int_min_poison = true}> : (i16) -> i16
    "llvm.return"(%31) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, sym_name = "select_abs16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i16):
    %27 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %28 = "llvm.icmp"(%arg13, %27) <{predicate = 2 : i64}> : (i16, i16) -> i1
    %29 = "llvm.sub"(%27, %arg13) <{overflowFlags = 1 : i32}> : (i16, i16) -> i16
    %30 = "llvm.select"(%28, %29, %arg13) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%30) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "abs32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %26 = "llvm.intr.abs"(%arg12) <{is_int_min_poison = true}> : (i32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_abs32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %22 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %23 = "llvm.icmp"(%arg11, %22) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %24 = "llvm.sub"(%22, %arg11) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %25 = "llvm.select"(%23, %24, %arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "abs64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64):
    %21 = "llvm.intr.abs"(%arg10) <{is_int_min_poison = true}> : (i64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "select_abs64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64):
    %17 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %18 = "llvm.icmp"(%arg9, %17) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %19 = "llvm.sub"(%17, %arg9) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %20 = "llvm.select"(%18, %19, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%20) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128)>, linkage = #llvm.linkage<external>, sym_name = "abs128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i128):
    %16 = "llvm.intr.abs"(%arg8) <{is_int_min_poison = true}> : (i128) -> i128
    "llvm.return"(%16) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128)>, linkage = #llvm.linkage<external>, sym_name = "select_abs128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i128):
    %12 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %13 = "llvm.icmp"(%arg7, %12) <{predicate = 2 : i64}> : (i128, i128) -> i1
    %14 = "llvm.sub"(%12, %arg7) <{overflowFlags = 1 : i32}> : (i128, i128) -> i128
    %15 = "llvm.select"(%13, %14, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    "llvm.return"(%15) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_abs32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %10 = "llvm.intr.abs"(%arg6) <{is_int_min_poison = true}> : (i32) -> i32
    %11 = "llvm.zext"(%10) <{nonNeg}> : (i32) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "zext_abs8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i8):
    %8 = "llvm.intr.abs"(%arg5) <{is_int_min_poison = false}> : (i8) -> i8
    %9 = "llvm.zext"(%8) : (i8) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "zext_abs16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i16):
    %6 = "llvm.intr.abs"(%arg4) <{is_int_min_poison = false}> : (i16) -> i16
    %7 = "llvm.zext"(%6) : (i16) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i8)>, linkage = #llvm.linkage<external>, sym_name = "zext64_abs8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i8):
    %4 = "llvm.intr.abs"(%arg3) <{is_int_min_poison = false}> : (i8) -> i8
    %5 = "llvm.zext"(%4) : (i8) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i16)>, linkage = #llvm.linkage<external>, sym_name = "zext64_abs16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i16):
    %2 = "llvm.intr.abs"(%arg2) <{is_int_min_poison = false}> : (i16) -> i16
    %3 = "llvm.zext"(%2) : (i16) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i8, ptr)>, linkage = #llvm.linkage<external>, sym_name = "zext16_abs8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i8, %arg1: !llvm.ptr):
    %0 = "llvm.intr.abs"(%arg0) <{is_int_min_poison = false}> : (i8) -> i8
    %1 = "llvm.zext"(%0) : (i8) -> i16
    "llvm.store"(%1, %arg1) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

