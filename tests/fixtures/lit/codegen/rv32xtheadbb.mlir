"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctlz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32):
    %46 = "llvm.intr.ctlz"(%arg22) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%46) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctlz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i64):
    %45 = "llvm.intr.ctlz"(%arg21) <{is_zero_poison = false}> : (i64) -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cttz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32):
    %44 = "llvm.intr.cttz"(%arg20) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%44) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cttz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i64):
    %43 = "llvm.intr.cttz"(%arg19) <{is_zero_poison = false}> : (i64) -> i64
    "llvm.return"(%43) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sexti1_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %40 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %41 = "llvm.shl"(%arg18, %40) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %42 = "llvm.ashr"(%41, %40) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%42) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sexti1_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i1):
    %39 = "llvm.sext"(%arg17) : (i1) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i8 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "sexti1_i32_setcc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %36 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %37 = "llvm.icmp"(%arg16, %36) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %38 = "llvm.sext"(%37) : (i1) -> i8
    "llvm.return"(%38) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sexti1_i32_setcc_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32, %arg15: i32):
    %34 = "llvm.icmp"(%arg14, %arg15) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %35 = "llvm.sext"(%34) : (i1) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sexti1_i32_setcc_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32):
    %32 = "llvm.icmp"(%arg12, %arg13) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %33 = "llvm.sext"(%32) : (i1) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sextb_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %29 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %30 = "llvm.shl"(%arg11, %29) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %31 = "llvm.ashr"(%30, %29) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sextb_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64):
    %26 = "llvm.mlir.constant"() <{value = 56 : i64}> : () -> i64
    %27 = "llvm.shl"(%arg10, %26) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %28 = "llvm.ashr"(%27, %26) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%28) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sexth_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %23 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %24 = "llvm.shl"(%arg9, %23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %25 = "llvm.ashr"(%24, %23) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "no_sexth_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %19 = "llvm.mlir.constant"() <{value = 17 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %21 = "llvm.shl"(%arg8, %19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %22 = "llvm.ashr"(%21, %20) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sexth_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %16 = "llvm.mlir.constant"() <{value = 48 : i64}> : () -> i64
    %17 = "llvm.shl"(%arg7, %16) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %18 = "llvm.ashr"(%17, %16) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%18) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "no_sexth_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %12 = "llvm.mlir.constant"() <{value = 49 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = 48 : i64}> : () -> i64
    %14 = "llvm.shl"(%arg6, %12) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %15 = "llvm.ashr"(%14, %13) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sext_sextinreg_sra", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i16):
    %9 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %10 = "llvm.sext"(%arg5) : (i16) -> i32
    %11 = "llvm.ashr"(%10, %9) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sext_sextinreg_sra_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i16):
    %6 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %7 = "llvm.sext"(%arg4) : (i16) -> i32
    %8 = "llvm.ashr"(%7, %6) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zexth_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %4 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %5 = "llvm.and"(%arg3, %4) : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zexth_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %2 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %3 = "llvm.and"(%arg2, %2) : (i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bswap_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %1 = "llvm.intr.bswap"(%arg1) : (i32) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "bswap_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.intr.bswap"(%arg0) : (i64) -> i64
    "llvm.return"(%0) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

