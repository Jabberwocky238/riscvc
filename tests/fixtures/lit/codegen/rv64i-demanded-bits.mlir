"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "foo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32, %arg24: i32):
    %41 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %42 = "llvm.mul"(%arg22, %arg22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %43 = "llvm.add"(%42, %41) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %44 = "llvm.mul"(%43, %43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %45 = "llvm.add"(%44, %arg24) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %46 = "llvm.add"(%45, %41) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %47 = "llvm.shl"(%46, %arg23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_self_nsw_sign", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i64):
    %38 = "llvm.mlir.constant"() <{value = 9223372036854775800 : i64}> : () -> i64
    %39 = "llvm.mul"(%arg21, %arg21) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %40 = "llvm.and"(%39, %38) : (i64, i64) -> i64
    "llvm.return"(%40) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture, llvm.noundef}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "ori", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: !llvm.ptr):
    %35 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %36 = "llvm.load"(%arg20) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %37 = "llvm.or"(%36, %35) : (i32, i32) -> i32
    "llvm.store"(%37, %arg20) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture, llvm.noundef}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "xori", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: !llvm.ptr):
    %32 = "llvm.mlir.constant"() <{value = -5 : i32}> : () -> i32
    %33 = "llvm.load"(%arg19) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %34 = "llvm.xor"(%33, %32) : (i32, i32) -> i32
    "llvm.store"(%34, %arg19) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture, llvm.noundef}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "or_signbit", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr):
    %29 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %30 = "llvm.load"(%arg18) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %31 = "llvm.or"(%30, %29) : (i32, i32) -> i32
    "llvm.store"(%31, %arg18) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture, llvm.noundef}], function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "xor_signbit", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: !llvm.ptr):
    %26 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %27 = "llvm.load"(%arg17) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %28 = "llvm.xor"(%27, %26) : (i32, i32) -> i32
    "llvm.store"(%28, %arg17) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "andi_sub_cse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32, %arg15: i32, %arg16: !llvm.ptr):
    %23 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %24 = "llvm.and"(%arg14, %23) : (i32, i32) -> i32
    %25 = "llvm.sub"(%24, %arg15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%25, %arg16) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "addi_sub_cse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32, %arg12: i32, %arg13: !llvm.ptr):
    %20 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %21 = "llvm.add"(%arg11, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %22 = "llvm.sub"(%21, %arg12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%22, %arg13) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "xori_sub_cse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32, %arg10: !llvm.ptr):
    %17 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %18 = "llvm.xor"(%arg8, %17) : (i32, i32) -> i32
    %19 = "llvm.sub"(%18, %arg9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%19, %arg10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "ori_sub_cse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32, %arg6: i32, %arg7: !llvm.ptr):
    %14 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %15 = "llvm.or"(%arg5, %14) : (i32, i32) -> i32
    %16 = "llvm.sub"(%15, %arg6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%16, %arg7) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}, {llvm.signext}], function_type = !llvm.func<i32 (i32, ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "andi_srliw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32, %arg3: !llvm.ptr, %arg4: i32):
    %9 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %11 = "llvm.and"(%arg2, %9) : (i32, i32) -> i32
    %12 = "llvm.lshr"(%arg2, %10) : (i32, i32) -> i32
    "llvm.store"(%12, %arg3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %13 = "llvm.add"(%11, %arg4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "and_or", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %5 = "llvm.mlir.constant"() <{value = 65280 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %7 = "llvm.and"(%arg1, %5) : (i32, i32) -> i32
    %8 = "llvm.or"(%7, %6) : (i32, i32) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "and_allones", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %2 = "llvm.zext"(%arg0) : (i32) -> i64
    %3 = "llvm.add"(%2, %0) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %4 = "llvm.shl"(%1, %3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%4) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

