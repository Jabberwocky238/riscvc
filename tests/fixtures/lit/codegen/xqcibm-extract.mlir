"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sexti1_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i1):
    %79 = "llvm.sext"(%arg36) : (i1) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sexti1_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i32):
    %76 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %77 = "llvm.shl"(%arg35, %76) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %78 = "llvm.ashr"(%77, %76) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%78) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i8 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "sexti1_i32_setcc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i32):
    %73 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %74 = "llvm.icmp"(%arg34, %73) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %75 = "llvm.sext"(%74) : (i1) -> i8
    "llvm.return"(%75) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sexti1_i32_setcc_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32, %arg33: i32):
    %71 = "llvm.icmp"(%arg32, %arg33) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %72 = "llvm.sext"(%71) : (i1) -> i32
    "llvm.return"(%72) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sexti1_i32_setcc_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32, %arg31: i32):
    %69 = "llvm.icmp"(%arg30, %arg31) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %70 = "llvm.sext"(%69) : (i1) -> i32
    "llvm.return"(%70) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sexti8_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i8):
    %68 = "llvm.sext"(%arg29) : (i8) -> i32
    "llvm.return"(%68) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sexti8_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32):
    %65 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %66 = "llvm.shl"(%arg28, %65) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %67 = "llvm.ashr"(%66, %65) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%67) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sexti16_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i16):
    %64 = "llvm.sext"(%arg27) : (i16) -> i32
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sexti16_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32):
    %61 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %62 = "llvm.shl"(%arg26, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %63 = "llvm.ashr"(%62, %61) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sexti1_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i64):
    %58 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %59 = "llvm.shl"(%arg25, %58) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %60 = "llvm.ashr"(%59, %58) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%60) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i1)>, linkage = #llvm.linkage<external>, sym_name = "sexti1_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i1):
    %57 = "llvm.sext"(%arg24) : (i1) -> i64
    "llvm.return"(%57) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sexti8_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i64):
    %54 = "llvm.mlir.constant"() <{value = 56 : i64}> : () -> i64
    %55 = "llvm.shl"(%arg23, %54) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %56 = "llvm.ashr"(%55, %54) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%56) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i8)>, linkage = #llvm.linkage<external>, sym_name = "sexti8_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i8):
    %53 = "llvm.sext"(%arg22) : (i8) -> i64
    "llvm.return"(%53) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sexti16_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i64):
    %50 = "llvm.mlir.constant"() <{value = 48 : i64}> : () -> i64
    %51 = "llvm.shl"(%arg21, %50) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %52 = "llvm.ashr"(%51, %50) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%52) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i16)>, linkage = #llvm.linkage<external>, sym_name = "sexti16_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i16):
    %49 = "llvm.sext"(%arg20) : (i16) -> i64
    "llvm.return"(%49) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sexti32_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i64):
    %46 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %47 = "llvm.shl"(%arg19, %46) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %48 = "llvm.ashr"(%47, %46) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%48) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sexti32_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %45 = "llvm.sext"(%arg18) : (i32) -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "extu_from_and_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %43 = "llvm.mlir.constant"() <{value = 4095 : i32}> : () -> i32
    %44 = "llvm.and"(%arg17, %43) : (i32, i32) -> i32
    "llvm.return"(%44) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "no_extu_from_and_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %41 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %42 = "llvm.and"(%arg16, %41) : (i32, i32) -> i32
    "llvm.return"(%42) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "extu_from_and_i32_simm12_lb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %39 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %40 = "llvm.and"(%arg15, %39) : (i32, i32) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "extu_from_and_i32_simm12_ub", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %37 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %38 = "llvm.and"(%arg14, %37) : (i32, i32) -> i32
    "llvm.return"(%38) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "extu_from_and_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64):
    %35 = "llvm.mlir.constant"() <{value = 4095 : i64}> : () -> i64
    %36 = "llvm.and"(%arg13, %35) : (i64, i64) -> i64
    "llvm.return"(%36) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "extu_from_and_lshr_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %31 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %33 = "llvm.lshr"(%arg12, %31) : (i32, i32) -> i32
    %34 = "llvm.and"(%33, %32) : (i32, i32) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "extu_from_and_lshr_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i64):
    %27 = "llvm.mlir.constant"() <{value = 46 : i64}> : () -> i64
    %28 = "llvm.mlir.constant"() <{value = 4095 : i64}> : () -> i64
    %29 = "llvm.lshr"(%arg11, %27) : (i64, i64) -> i64
    %30 = "llvm.and"(%29, %28) : (i64, i64) -> i64
    "llvm.return"(%30) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "extu_from_lshr_and_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %23 = "llvm.mlir.constant"() <{value = 16773120 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %25 = "llvm.and"(%arg10, %23) : (i32, i32) -> i32
    %26 = "llvm.lshr"(%25, %24) : (i32, i32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "extu_from_lshr_and_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64):
    %19 = "llvm.mlir.constant"() <{value = 16773120 : i64}> : () -> i64
    %20 = "llvm.mlir.constant"() <{value = 12 : i64}> : () -> i64
    %21 = "llvm.and"(%arg9, %19) : (i64, i64) -> i64
    %22 = "llvm.lshr"(%21, %20) : (i64, i64) -> i64
    "llvm.return"(%22) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "ext_from_ashr_shl_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %15 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %17 = "llvm.shl"(%arg8, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %18 = "llvm.ashr"(%17, %16) : (i32, i32) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, sym_name = "ext_from_ashr_sexti8_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i8):
    %12 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %13 = "llvm.sext"(%arg7) : (i8) -> i32
    %14 = "llvm.ashr"(%13, %12) : (i32, i32) -> i32
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, sym_name = "ext_from_ashr_sexti16_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i16):
    %9 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %10 = "llvm.sext"(%arg6) : (i16) -> i32
    %11 = "llvm.ashr"(%10, %9) : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "c_extu_hints", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
    %5 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 3333 : i32}> : () -> i32
    %7 = "llvm.and"(%arg4, %5) : (i32, i32) -> i32
    %8 = "llvm.add"(%7, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i8, i32)>, linkage = #llvm.linkage<external>, sym_name = "c_extu_no_hints", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i8, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 3333 : i32}> : () -> i32
    %2 = "llvm.sext"(%arg1) : (i8) -> i32
    %3 = "llvm.ashr"(%2, %0) : (i32, i32) -> i32
    %4 = "llvm.add"(%3, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

