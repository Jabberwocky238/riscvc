"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i16, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "sext_shl_trunc_same_size", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i16, %arg24: i32, %arg25: !llvm.ptr):
    %36 = "llvm.sext"(%arg23) : (i16) -> i32
    %37 = "llvm.shl"(%36, %arg24) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %38 = "llvm.trunc"(%37) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.store"(%38, %arg25) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i16, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "zext_shl_trunc_same_size", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i16, %arg21: i32, %arg22: !llvm.ptr):
    %33 = "llvm.zext"(%arg20) : (i16) -> i32
    %34 = "llvm.shl"(%33, %arg21) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %35 = "llvm.trunc"(%34) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.store"(%35, %arg22) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i16, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "sext_shl_trunc_smaller", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i16, %arg18: i32, %arg19: !llvm.ptr):
    %30 = "llvm.sext"(%arg17) : (i16) -> i32
    %31 = "llvm.shl"(%30, %arg18) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %32 = "llvm.trunc"(%31) <{overflowFlags = 0 : i32}> : (i32) -> i8
    "llvm.store"(%32, %arg19) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i16, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "zext_shl_trunc_smaller", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i16, %arg15: i32, %arg16: !llvm.ptr):
    %27 = "llvm.zext"(%arg14) : (i16) -> i32
    %28 = "llvm.shl"(%27, %arg15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %29 = "llvm.trunc"(%28) <{overflowFlags = 0 : i32}> : (i32) -> i8
    "llvm.store"(%29, %arg16) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i17 (i16, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "sext_shl_trunc_larger", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i16, %arg13: i32):
    %24 = "llvm.sext"(%arg12) : (i16) -> i32
    %25 = "llvm.shl"(%24, %arg13) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %26 = "llvm.trunc"(%25) <{overflowFlags = 0 : i32}> : (i32) -> i17
    "llvm.return"(%26) : (i17) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i17 (i16, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "zext_shl_trunc_larger", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i16, %arg11: i32):
    %21 = "llvm.zext"(%arg10) : (i16) -> i32
    %22 = "llvm.shl"(%21, %arg11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %23 = "llvm.trunc"(%22) <{overflowFlags = 0 : i32}> : (i32) -> i17
    "llvm.return"(%23) : (i17) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16, i32)>, linkage = #llvm.linkage<external>, sym_name = "sext_shl_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i16, %arg9: i32):
    %17 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %18 = "llvm.sext"(%arg8) : (i16) -> i32
    %19 = "llvm.shl"(%18, %arg9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %20 = "llvm.and"(%19, %17) : (i32, i32) -> i32
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16, i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_shl_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i16, %arg7: i32):
    %13 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %14 = "llvm.zext"(%arg6) : (i16) -> i32
    %15 = "llvm.shl"(%14, %arg7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %16 = "llvm.and"(%15, %13) : (i32, i32) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16, i32)>, linkage = #llvm.linkage<external>, sym_name = "sext_shl_mask_higher", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i16, %arg5: i32):
    %9 = "llvm.mlir.constant"() <{value = 65536 : i32}> : () -> i32
    %10 = "llvm.sext"(%arg4) : (i16) -> i32
    %11 = "llvm.shl"(%10, %arg5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %12 = "llvm.and"(%11, %9) : (i32, i32) -> i32
    "llvm.return"(%12) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16, i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_shl_mask_higher", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i16, %arg3: i32):
    %5 = "llvm.mlir.constant"() <{value = 65536 : i32}> : () -> i32
    %6 = "llvm.zext"(%arg2) : (i16) -> i32
    %7 = "llvm.shl"(%6, %arg3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %8 = "llvm.and"(%7, %5) : (i32, i32) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "set_shl_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 196609 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 65536 : i32}> : () -> i32
    %2 = "llvm.or"(%arg0, %0) : (i32, i32) -> i32
    %3 = "llvm.shl"(%2, %arg1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %4 = "llvm.and"(%3, %1) : (i32, i32) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

