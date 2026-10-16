"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sext_i1_to_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i1):
    %81 = "llvm.sext"(%arg50) : (i1) -> i8
    "llvm.return"(%81) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sext_i1_to_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i1):
    %80 = "llvm.sext"(%arg49) : (i1) -> i16
    "llvm.return"(%80) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sext_i1_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i1):
    %79 = "llvm.sext"(%arg48) : (i1) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sext_i1_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i1):
    %78 = "llvm.sext"(%arg47) : (i1) -> i64
    "llvm.return"(%78) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sext_i8_to_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i8):
    %77 = "llvm.sext"(%arg46) : (i8) -> i16
    "llvm.return"(%77) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sext_i8_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i8):
    %76 = "llvm.sext"(%arg45) : (i8) -> i32
    "llvm.return"(%76) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sext_i8_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i8):
    %75 = "llvm.sext"(%arg44) : (i8) -> i64
    "llvm.return"(%75) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sext_i16_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i16):
    %74 = "llvm.sext"(%arg43) : (i16) -> i32
    "llvm.return"(%74) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sext_i16_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i16):
    %73 = "llvm.sext"(%arg42) : (i16) -> i64
    "llvm.return"(%73) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sext_i32_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i32):
    %72 = "llvm.sext"(%arg41) : (i32) -> i64
    "llvm.return"(%72) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i1_to_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i1):
    %71 = "llvm.zext"(%arg40) : (i1) -> i8
    "llvm.return"(%71) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i1_to_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i1):
    %70 = "llvm.zext"(%arg39) : (i1) -> i16
    "llvm.return"(%70) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i1_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i1):
    %69 = "llvm.zext"(%arg38) : (i1) -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i1_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i1):
    %68 = "llvm.zext"(%arg37) : (i1) -> i64
    "llvm.return"(%68) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i8_to_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i8):
    %67 = "llvm.zext"(%arg36) : (i8) -> i16
    "llvm.return"(%67) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i8_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i8):
    %66 = "llvm.zext"(%arg35) : (i8) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i8_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i8):
    %65 = "llvm.zext"(%arg34) : (i8) -> i64
    "llvm.return"(%65) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i16_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i16):
    %64 = "llvm.zext"(%arg33) : (i16) -> i32
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i16_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i16):
    %63 = "llvm.zext"(%arg32) : (i16) -> i64
    "llvm.return"(%63) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i32_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i32):
    %62 = "llvm.zext"(%arg31) : (i32) -> i64
    "llvm.return"(%62) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_nneg_i1_to_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i1):
    %61 = "llvm.zext"(%arg30) <{nonNeg}> : (i1) -> i8
    "llvm.return"(%61) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_nneg_i1_to_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i1):
    %60 = "llvm.zext"(%arg29) <{nonNeg}> : (i1) -> i16
    "llvm.return"(%60) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_nneg_i1_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i1):
    %59 = "llvm.zext"(%arg28) <{nonNeg}> : (i1) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_nneg_i1_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i1):
    %58 = "llvm.zext"(%arg27) <{nonNeg}> : (i1) -> i64
    "llvm.return"(%58) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_nneg_i8_to_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i8):
    %57 = "llvm.zext"(%arg26) <{nonNeg}> : (i8) -> i16
    "llvm.return"(%57) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_nneg_i8_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i8):
    %56 = "llvm.zext"(%arg25) <{nonNeg}> : (i8) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_nneg_i8_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i8):
    %55 = "llvm.zext"(%arg24) <{nonNeg}> : (i8) -> i64
    "llvm.return"(%55) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_nneg_i16_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i16):
    %54 = "llvm.zext"(%arg23) <{nonNeg}> : (i16) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_nneg_i16_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i16):
    %53 = "llvm.zext"(%arg22) <{nonNeg}> : (i16) -> i64
    "llvm.return"(%53) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_nneg_i32_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32):
    %52 = "llvm.zext"(%arg21) <{nonNeg}> : (i32) -> i64
    "llvm.return"(%52) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "trunc_i8_to_i1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i8):
    %51 = "llvm.trunc"(%arg20) <{overflowFlags = 0 : i32}> : (i8) -> i1
    "llvm.return"(%51) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "trunc_i16_to_i1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i16):
    %50 = "llvm.trunc"(%arg19) <{overflowFlags = 0 : i32}> : (i16) -> i1
    "llvm.return"(%50) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "trunc_i32_to_i1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %49 = "llvm.trunc"(%arg18) <{overflowFlags = 0 : i32}> : (i32) -> i1
    "llvm.return"(%49) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "trunc_i64_to_i1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i64):
    %48 = "llvm.trunc"(%arg17) <{overflowFlags = 0 : i32}> : (i64) -> i1
    "llvm.return"(%48) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "trunc_i16_to_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i16):
    %47 = "llvm.trunc"(%arg16) <{overflowFlags = 0 : i32}> : (i16) -> i8
    "llvm.return"(%47) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "trunc_i32_to_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %46 = "llvm.trunc"(%arg15) <{overflowFlags = 0 : i32}> : (i32) -> i8
    "llvm.return"(%46) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "trunc_i64_to_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64):
    %45 = "llvm.trunc"(%arg14) <{overflowFlags = 0 : i32}> : (i64) -> i8
    "llvm.return"(%45) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "trunc_i32_to_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %44 = "llvm.trunc"(%arg13) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%44) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "trunc_i64_to_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %43 = "llvm.trunc"(%arg12) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.return"(%43) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "trunc_i64_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i64):
    %42 = "llvm.trunc"(%arg11) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%42) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "sext_of_not_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i1):
    %39 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %40 = "llvm.xor"(%arg10, %39) : (i1, i1) -> i1
    %41 = "llvm.sext"(%40) : (i1) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i1)>, linkage = #llvm.linkage<external>, sym_name = "sext_of_not_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i1):
    %36 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %37 = "llvm.xor"(%arg9, %36) : (i1, i1) -> i1
    %38 = "llvm.sext"(%37) : (i1) -> i64
    "llvm.return"(%38) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sext_of_not_cmp_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %31 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %33 = "llvm.icmp"(%arg8, %31) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %34 = "llvm.xor"(%33, %32) : (i1, i1) -> i1
    %35 = "llvm.sext"(%34) : (i1) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sext_of_not_cmp_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %26 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %27 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %28 = "llvm.icmp"(%arg7, %26) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %29 = "llvm.xor"(%28, %27) : (i1, i1) -> i1
    %30 = "llvm.sext"(%29) : (i1) -> i64
    "llvm.return"(%30) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "dec_of_zexted_cmp_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %21 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %23 = "llvm.icmp"(%arg6, %21) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %24 = "llvm.zext"(%23) : (i1) -> i32
    %25 = "llvm.sub"(%24, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "dec_of_zexted_cmp_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64):
    %16 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %18 = "llvm.icmp"(%arg5, %16) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %19 = "llvm.zext"(%18) : (i1) -> i64
    %20 = "llvm.sub"(%19, %17) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%20) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i16)>, linkage = #llvm.linkage<external>, sym_name = "zext_nneg_dominating_icmp_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i16):
    %13 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %14 = "llvm.icmp"(%arg4, %13) <{predicate = 4 : i64}> : (i16, i16) -> i1
    "llvm.cond_br"(%14)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %15 = "llvm.zext"(%arg4) <{nonNeg}> : (i16) -> i64
    "llvm.call"(%15) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar_i64, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bar_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i16)>, linkage = #llvm.linkage<external>, sym_name = "zext_nneg_dominating_icmp_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i16):
    %10 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %11 = "llvm.icmp"(%arg3, %10) <{predicate = 4 : i64}> : (i16, i16) -> i1
    "llvm.cond_br"(%11)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %12 = "llvm.zext"(%arg3) <{nonNeg}> : (i16) -> i32
    "llvm.call"(%12) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar_i32, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bar_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i16)>, linkage = #llvm.linkage<external>, sym_name = "zext_nneg_dominating_icmp_i32_signext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i16):
    %7 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %8 = "llvm.icmp"(%arg2, %7) <{predicate = 4 : i64}> : (i16, i16) -> i1
    "llvm.cond_br"(%8)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %9 = "llvm.zext"(%arg2) <{nonNeg}> : (i16) -> i32
    "llvm.call"(%9) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.signext}], callee = @bar_i32, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i16)>, linkage = #llvm.linkage<external>, sym_name = "zext_nneg_dominating_icmp_i32_zeroext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i16):
    %4 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %5 = "llvm.icmp"(%arg1, %4) <{predicate = 4 : i64}> : (i16, i16) -> i1
    "llvm.cond_br"(%5)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %6 = "llvm.zext"(%arg1) <{nonNeg}> : (i16) -> i32
    "llvm.call"(%6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.signext}], callee = @bar_i32, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_zext_nneg_sext_cse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %1 = "llvm.load"(%arg0) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %2 = "llvm.zext"(%1) <{nonNeg}> : (i16) -> i32
    %3 = "llvm.icmp"(%1, %0) <{predicate = 4 : i64}> : (i16, i16) -> i1
    "llvm.cond_br"(%3)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"(%1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.signext}], callee = @bar_i16, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i16) -> ()
    "llvm.call"(%2) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.signext}], callee = @bar_i32, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i16)>, linkage = #llvm.linkage<external>, sym_name = "bar_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

