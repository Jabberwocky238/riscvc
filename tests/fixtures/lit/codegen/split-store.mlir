"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, f32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "int32_float_pair", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: f32, %arg22: !llvm.ptr):
    %35 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %36 = "llvm.bitcast"(%arg21) : (f32) -> i32
    %37 = "llvm.zext"(%36) : (i32) -> i64
    %38 = "llvm.shl"(%37, %35) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %39 = "llvm.zext"(%arg20) : (i32) -> i64
    %40 = "llvm.or"(%38, %39) : (i64, i64) -> i64
    "llvm.store"(%40, %arg22) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (f32, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "float_int32_pair", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f32, %arg18: i32, %arg19: !llvm.ptr):
    %29 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %30 = "llvm.bitcast"(%arg17) : (f32) -> i32
    %31 = "llvm.zext"(%arg18) : (i32) -> i64
    %32 = "llvm.shl"(%31, %29) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %33 = "llvm.zext"(%30) : (i32) -> i64
    %34 = "llvm.or"(%32, %33) : (i64, i64) -> i64
    "llvm.store"(%34, %arg19) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}, {}], function_type = !llvm.func<void (i16, f32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "int16_float_pair", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i16, %arg15: f32, %arg16: !llvm.ptr):
    %23 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %24 = "llvm.bitcast"(%arg15) : (f32) -> i32
    %25 = "llvm.zext"(%24) : (i32) -> i64
    %26 = "llvm.shl"(%25, %23) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %27 = "llvm.zext"(%arg14) : (i16) -> i64
    %28 = "llvm.or"(%26, %27) : (i64, i64) -> i64
    "llvm.store"(%28, %arg16) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}, {}], function_type = !llvm.func<void (i8, f32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "int8_float_pair", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i8, %arg12: f32, %arg13: !llvm.ptr):
    %17 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %18 = "llvm.bitcast"(%arg12) : (f32) -> i32
    %19 = "llvm.zext"(%18) : (i32) -> i64
    %20 = "llvm.shl"(%19, %17) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %21 = "llvm.zext"(%arg11) : (i8) -> i64
    %22 = "llvm.or"(%20, %21) : (i64, i64) -> i64
    "llvm.store"(%22, %arg13) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "int32_int32_pair", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32, %arg10: !llvm.ptr):
    %12 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %13 = "llvm.zext"(%arg9) : (i32) -> i64
    %14 = "llvm.shl"(%13, %12) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %15 = "llvm.zext"(%arg8) : (i32) -> i64
    %16 = "llvm.or"(%14, %15) : (i64, i64) -> i64
    "llvm.store"(%16, %arg10) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, f32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "mbb_int32_float_pair", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32, %arg6: f32, %arg7: !llvm.ptr):
    %6 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %7 = "llvm.bitcast"(%arg6) : (f32) -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %8 = "llvm.zext"(%7) : (i32) -> i64
    %9 = "llvm.shl"(%8, %6) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %10 = "llvm.zext"(%arg5) : (i32) -> i64
    %11 = "llvm.or"(%9, %10) : (i64, i64) -> i64
    "llvm.store"(%11, %arg7) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, f32, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "mbb_int32_float_multi_stores", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: !llvm.ptr, %arg3: !llvm.ptr, %arg4: i1):
    %0 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "llvm.bitcast"(%arg1) : (f32) -> i32
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    %2 = "llvm.zext"(%1) : (i32) -> i64
    %3 = "llvm.shl"(%2, %0) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %4 = "llvm.zext"(%arg0) : (i32) -> i64
    %5 = "llvm.or"(%3, %4) : (i64, i64) -> i64
    "llvm.store"(%5, %arg2) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg4)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.store"(%5, %arg3) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // 2 preds: ^bb1, ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

