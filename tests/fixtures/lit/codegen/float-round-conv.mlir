"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_floor_si8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: f32):
    %83 = "llvm.intr.floor"(%arg44) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %84 = "llvm.fptosi"(%83) : (f32) -> i8
    "llvm.return"(%84) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_floor_si16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: f32):
    %81 = "llvm.intr.floor"(%arg43) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %82 = "llvm.fptosi"(%81) : (f32) -> i16
    "llvm.return"(%82) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_floor_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: f32):
    %79 = "llvm.intr.floor"(%arg42) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %80 = "llvm.fptosi"(%79) : (f32) -> i32
    "llvm.return"(%80) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_floor_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: f32):
    %77 = "llvm.intr.floor"(%arg41) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %78 = "llvm.fptosi"(%77) : (f32) -> i64
    "llvm.return"(%78) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "test_floor_ui8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: f32):
    %75 = "llvm.intr.floor"(%arg40) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %76 = "llvm.fptoui"(%75) : (f32) -> i8
    "llvm.return"(%76) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "test_floor_ui16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: f32):
    %73 = "llvm.intr.floor"(%arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %74 = "llvm.fptoui"(%73) : (f32) -> i16
    "llvm.return"(%74) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_floor_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: f32):
    %71 = "llvm.intr.floor"(%arg38) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %72 = "llvm.fptoui"(%71) : (f32) -> i32
    "llvm.return"(%72) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_floor_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: f32):
    %69 = "llvm.intr.floor"(%arg37) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %70 = "llvm.fptoui"(%69) : (f32) -> i64
    "llvm.return"(%70) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_ceil_si8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: f32):
    %67 = "llvm.intr.ceil"(%arg36) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %68 = "llvm.fptosi"(%67) : (f32) -> i8
    "llvm.return"(%68) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_ceil_si16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: f32):
    %65 = "llvm.intr.ceil"(%arg35) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %66 = "llvm.fptosi"(%65) : (f32) -> i16
    "llvm.return"(%66) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_ceil_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: f32):
    %63 = "llvm.intr.ceil"(%arg34) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %64 = "llvm.fptosi"(%63) : (f32) -> i32
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_ceil_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: f32):
    %61 = "llvm.intr.ceil"(%arg33) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %62 = "llvm.fptosi"(%61) : (f32) -> i64
    "llvm.return"(%62) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "test_ceil_ui8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: f32):
    %59 = "llvm.intr.ceil"(%arg32) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %60 = "llvm.fptoui"(%59) : (f32) -> i8
    "llvm.return"(%60) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "test_ceil_ui16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: f32):
    %57 = "llvm.intr.ceil"(%arg31) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %58 = "llvm.fptoui"(%57) : (f32) -> i16
    "llvm.return"(%58) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_ceil_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: f32):
    %55 = "llvm.intr.ceil"(%arg30) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %56 = "llvm.fptoui"(%55) : (f32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_ceil_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: f32):
    %53 = "llvm.intr.ceil"(%arg29) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %54 = "llvm.fptoui"(%53) : (f32) -> i64
    "llvm.return"(%54) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_trunc_si8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: f32):
    %51 = "llvm.intr.trunc"(%arg28) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %52 = "llvm.fptosi"(%51) : (f32) -> i8
    "llvm.return"(%52) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_trunc_si16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: f32):
    %49 = "llvm.intr.trunc"(%arg27) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %50 = "llvm.fptosi"(%49) : (f32) -> i16
    "llvm.return"(%50) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_trunc_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: f32):
    %47 = "llvm.intr.trunc"(%arg26) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %48 = "llvm.fptosi"(%47) : (f32) -> i32
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_trunc_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: f32):
    %45 = "llvm.intr.trunc"(%arg25) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %46 = "llvm.fptosi"(%45) : (f32) -> i64
    "llvm.return"(%46) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "test_trunc_ui8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: f32):
    %43 = "llvm.intr.trunc"(%arg24) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %44 = "llvm.fptoui"(%43) : (f32) -> i8
    "llvm.return"(%44) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "test_trunc_ui16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: f32):
    %41 = "llvm.intr.trunc"(%arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %42 = "llvm.fptoui"(%41) : (f32) -> i16
    "llvm.return"(%42) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_trunc_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: f32):
    %39 = "llvm.intr.trunc"(%arg22) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %40 = "llvm.fptoui"(%39) : (f32) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_trunc_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: f32):
    %37 = "llvm.intr.trunc"(%arg21) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %38 = "llvm.fptoui"(%37) : (f32) -> i64
    "llvm.return"(%38) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_round_si8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: f32):
    %35 = "llvm.intr.round"(%arg20) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %36 = "llvm.fptosi"(%35) : (f32) -> i8
    "llvm.return"(%36) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_round_si16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: f32):
    %33 = "llvm.intr.round"(%arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %34 = "llvm.fptosi"(%33) : (f32) -> i16
    "llvm.return"(%34) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_round_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: f32):
    %31 = "llvm.intr.round"(%arg18) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %32 = "llvm.fptosi"(%31) : (f32) -> i32
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_round_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f32):
    %29 = "llvm.intr.round"(%arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %30 = "llvm.fptosi"(%29) : (f32) -> i64
    "llvm.return"(%30) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "test_round_ui8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: f32):
    %27 = "llvm.intr.round"(%arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %28 = "llvm.fptoui"(%27) : (f32) -> i8
    "llvm.return"(%28) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "test_round_ui16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: f32):
    %25 = "llvm.intr.round"(%arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %26 = "llvm.fptoui"(%25) : (f32) -> i16
    "llvm.return"(%26) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_round_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f32):
    %23 = "llvm.intr.round"(%arg14) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %24 = "llvm.fptoui"(%23) : (f32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_round_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: f32):
    %21 = "llvm.intr.round"(%arg13) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %22 = "llvm.fptoui"(%21) : (f32) -> i64
    "llvm.return"(%22) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_roundeven_si8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f32):
    %19 = "llvm.intr.roundeven"(%arg12) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %20 = "llvm.fptosi"(%19) : (f32) -> i8
    "llvm.return"(%20) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_roundeven_si16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f32):
    %17 = "llvm.intr.roundeven"(%arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %18 = "llvm.fptosi"(%17) : (f32) -> i16
    "llvm.return"(%18) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_roundeven_si32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f32):
    %15 = "llvm.intr.roundeven"(%arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %16 = "llvm.fptosi"(%15) : (f32) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_roundeven_si64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f32):
    %13 = "llvm.intr.roundeven"(%arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %14 = "llvm.fptosi"(%13) : (f32) -> i64
    "llvm.return"(%14) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "test_roundeven_ui8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f32):
    %11 = "llvm.intr.roundeven"(%arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %12 = "llvm.fptoui"(%11) : (f32) -> i8
    "llvm.return"(%12) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "test_roundeven_ui16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: f32):
    %9 = "llvm.intr.roundeven"(%arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %10 = "llvm.fptoui"(%9) : (f32) -> i16
    "llvm.return"(%10) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_roundeven_ui32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f32):
    %7 = "llvm.intr.roundeven"(%arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %8 = "llvm.fptoui"(%7) : (f32) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_roundeven_ui64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f32):
    %5 = "llvm.intr.roundeven"(%arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %6 = "llvm.fptoui"(%5) : (f32) -> i64
    "llvm.return"(%6) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_floor_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f32):
    %4 = "llvm.intr.floor"(%arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%4) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_ceil_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f32):
    %3 = "llvm.intr.ceil"(%arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%3) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_trunc_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f32):
    %2 = "llvm.intr.trunc"(%arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%2) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_round_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f32):
    %1 = "llvm.intr.round"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%1) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "test_roundeven_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f32):
    %0 = "llvm.intr.roundeven"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    "llvm.return"(%0) : (f32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

