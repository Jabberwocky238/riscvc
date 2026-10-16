"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "masked_merge0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32, %arg38: i32, %arg39: i32):
    %57 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %58 = "llvm.and"(%arg37, %arg38) : (i32, i32) -> i32
    %59 = "llvm.xor"(%arg37, %57) : (i32, i32) -> i32
    %60 = "llvm.and"(%59, %arg39) : (i32, i32) -> i32
    %61 = "llvm.or"(%58, %60) : (i32, i32) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "masked_merge1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i16, %arg35: i16, %arg36: i16):
    %52 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %53 = "llvm.and"(%arg34, %arg35) : (i16, i16) -> i16
    %54 = "llvm.xor"(%arg34, %52) : (i16, i16) -> i16
    %55 = "llvm.and"(%arg36, %54) : (i16, i16) -> i16
    %56 = "llvm.or"(%53, %55) : (i16, i16) -> i16
    "llvm.return"(%56) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "masked_merge2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i8, %arg32: i8, %arg33: i8):
    %47 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %48 = "llvm.xor"(%arg31, %47) : (i8, i8) -> i8
    %49 = "llvm.and"(%48, %arg32) : (i8, i8) -> i8
    %50 = "llvm.and"(%arg32, %arg31) : (i8, i8) -> i8
    %51 = "llvm.or"(%49, %50) : (i8, i8) -> i8
    "llvm.return"(%51) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "masked_merge3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i64, %arg29: i64, %arg30: i64):
    %40 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %41 = "llvm.xor"(%arg29, %40) : (i64, i64) -> i64
    %42 = "llvm.xor"(%arg30, %40) : (i64, i64) -> i64
    %43 = "llvm.xor"(%arg28, %40) : (i64, i64) -> i64
    %44 = "llvm.and"(%43, %42) : (i64, i64) -> i64
    %45 = "llvm.and"(%41, %arg28) : (i64, i64) -> i64
    %46 = "llvm.or"(%44, %45) : (i64, i64) -> i64
    "llvm.return"(%46) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "not_a_masked_merge0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32, %arg26: i32, %arg27: i32):
    %35 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %36 = "llvm.and"(%arg25, %arg26) : (i32, i32) -> i32
    %37 = "llvm.sub"(%35, %arg25) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %38 = "llvm.and"(%37, %arg27) : (i32, i32) -> i32
    %39 = "llvm.or"(%36, %38) : (i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "not_a_masked_merge1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32):
    %30 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %31 = "llvm.and"(%arg21, %arg22) : (i32, i32) -> i32
    %32 = "llvm.xor"(%arg24, %30) : (i32, i32) -> i32
    %33 = "llvm.and"(%32, %arg23) : (i32, i32) -> i32
    %34 = "llvm.or"(%31, %33) : (i32, i32) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "not_a_masked_merge2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32, %arg19: i32, %arg20: i32):
    %25 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %26 = "llvm.or"(%arg18, %arg19) : (i32, i32) -> i32
    %27 = "llvm.xor"(%arg18, %25) : (i32, i32) -> i32
    %28 = "llvm.and"(%27, %arg20) : (i32, i32) -> i32
    %29 = "llvm.or"(%26, %28) : (i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "not_a_masked_merge3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32, %arg16: i32, %arg17: i32):
    %20 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %21 = "llvm.and"(%arg15, %arg16) : (i32, i32) -> i32
    %22 = "llvm.xor"(%arg15, %20) : (i32, i32) -> i32
    %23 = "llvm.xor"(%22, %arg17) : (i32, i32) -> i32
    %24 = "llvm.or"(%21, %23) : (i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "not_a_masked_merge4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32, %arg14: i32):
    %15 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %16 = "llvm.and"(%arg12, %arg13) : (i32, i32) -> i32
    %17 = "llvm.xor"(%arg14, %15) : (i32, i32) -> i32
    %18 = "llvm.and"(%17, %arg14) : (i32, i32) -> i32
    %19 = "llvm.or"(%16, %18) : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "masked_merge_no_transform0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32, %arg10: i32, %arg11: !llvm.ptr):
    %10 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %11 = "llvm.and"(%arg8, %arg9) : (i32, i32) -> i32
    %12 = "llvm.xor"(%arg8, %10) : (i32, i32) -> i32
    %13 = "llvm.and"(%12, %arg10) : (i32, i32) -> i32
    %14 = "llvm.or"(%11, %13) : (i32, i32) -> i32
    "llvm.store"(%11, %arg11) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "masked_merge_no_transform1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32, %arg6: i32, %arg7: !llvm.ptr):
    %5 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %6 = "llvm.and"(%arg4, %arg5) : (i32, i32) -> i32
    %7 = "llvm.xor"(%arg4, %5) : (i32, i32) -> i32
    %8 = "llvm.and"(%7, %arg6) : (i32, i32) -> i32
    %9 = "llvm.or"(%6, %8) : (i32, i32) -> i32
    "llvm.store"(%7, %arg7) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "masked_merge_no_transform2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %1 = "llvm.and"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "llvm.xor"(%arg0, %0) : (i32, i32) -> i32
    %3 = "llvm.and"(%2, %arg2) : (i32, i32) -> i32
    %4 = "llvm.or"(%1, %3) : (i32, i32) -> i32
    "llvm.store"(%3, %arg3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

