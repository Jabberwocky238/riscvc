"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i8, %arg55: i8):
    %115 = "llvm.zext"(%arg54) : (i8) -> i64
    %116 = "llvm.zext"(%arg55) : (i8) -> i64
    %117 = "llvm.sub"(%115, %116) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %118 = "llvm.intr.abs"(%117) <{is_int_min_poison = false}> : (i64) -> i64
    %119 = "llvm.trunc"(%118) <{overflowFlags = 0 : i32}> : (i64) -> i8
    "llvm.return"(%119) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i8_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i8, %arg53: i16):
    %110 = "llvm.zext"(%arg52) : (i8) -> i64
    %111 = "llvm.zext"(%arg53) : (i16) -> i64
    %112 = "llvm.sub"(%110, %111) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %113 = "llvm.intr.abs"(%112) <{is_int_min_poison = false}> : (i64) -> i64
    %114 = "llvm.trunc"(%113) <{overflowFlags = 0 : i32}> : (i64) -> i8
    "llvm.return"(%114) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i8_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i8, %arg51: i8):
    %105 = "llvm.zext"(%arg50) : (i8) -> i64
    %106 = "llvm.zext"(%arg51) : (i8) -> i64
    %107 = "llvm.sub"(%105, %106) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %108 = "llvm.intr.abs"(%107) <{is_int_min_poison = true}> : (i64) -> i64
    %109 = "llvm.trunc"(%108) <{overflowFlags = 0 : i32}> : (i64) -> i8
    "llvm.return"(%109) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i16, %arg49: i16):
    %100 = "llvm.zext"(%arg48) : (i16) -> i64
    %101 = "llvm.zext"(%arg49) : (i16) -> i64
    %102 = "llvm.sub"(%100, %101) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %103 = "llvm.intr.abs"(%102) <{is_int_min_poison = false}> : (i64) -> i64
    %104 = "llvm.trunc"(%103) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.return"(%104) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i16_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i16, %arg47: i32):
    %95 = "llvm.zext"(%arg46) : (i16) -> i64
    %96 = "llvm.zext"(%arg47) : (i32) -> i64
    %97 = "llvm.sub"(%95, %96) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %98 = "llvm.intr.abs"(%97) <{is_int_min_poison = false}> : (i64) -> i64
    %99 = "llvm.trunc"(%98) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.return"(%99) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i16_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i16, %arg45: i16):
    %90 = "llvm.zext"(%arg44) : (i16) -> i64
    %91 = "llvm.zext"(%arg45) : (i16) -> i64
    %92 = "llvm.sub"(%90, %91) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %93 = "llvm.intr.abs"(%92) <{is_int_min_poison = true}> : (i64) -> i64
    %94 = "llvm.trunc"(%93) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.return"(%94) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i32, %arg43: i32):
    %85 = "llvm.zext"(%arg42) : (i32) -> i64
    %86 = "llvm.zext"(%arg43) : (i32) -> i64
    %87 = "llvm.sub"(%85, %86) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %88 = "llvm.intr.abs"(%87) <{is_int_min_poison = false}> : (i64) -> i64
    %89 = "llvm.trunc"(%88) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%89) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i32_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32, %arg41: i16):
    %80 = "llvm.zext"(%arg40) : (i32) -> i64
    %81 = "llvm.zext"(%arg41) : (i16) -> i64
    %82 = "llvm.sub"(%80, %81) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %83 = "llvm.intr.abs"(%82) <{is_int_min_poison = false}> : (i64) -> i64
    %84 = "llvm.trunc"(%83) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%84) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i32_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32, %arg39: i32):
    %75 = "llvm.zext"(%arg38) : (i32) -> i64
    %76 = "llvm.zext"(%arg39) : (i32) -> i64
    %77 = "llvm.sub"(%75, %76) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %78 = "llvm.intr.abs"(%77) <{is_int_min_poison = true}> : (i64) -> i64
    %79 = "llvm.trunc"(%78) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i64, %arg37: i64):
    %70 = "llvm.zext"(%arg36) : (i64) -> i128
    %71 = "llvm.zext"(%arg37) : (i64) -> i128
    %72 = "llvm.sub"(%70, %71) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %73 = "llvm.intr.abs"(%72) <{is_int_min_poison = false}> : (i128) -> i128
    %74 = "llvm.trunc"(%73) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%74) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i64_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i64, %arg35: i64):
    %65 = "llvm.zext"(%arg34) : (i64) -> i128
    %66 = "llvm.zext"(%arg35) : (i64) -> i128
    %67 = "llvm.sub"(%65, %66) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %68 = "llvm.intr.abs"(%67) <{is_int_min_poison = true}> : (i128) -> i128
    %69 = "llvm.trunc"(%68) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%69) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i128, %arg33: i128):
    %60 = "llvm.zext"(%arg32) : (i128) -> i256
    %61 = "llvm.zext"(%arg33) : (i128) -> i256
    %62 = "llvm.sub"(%60, %61) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %63 = "llvm.intr.abs"(%62) <{is_int_min_poison = false}> : (i256) -> i256
    %64 = "llvm.trunc"(%63) <{overflowFlags = 0 : i32}> : (i256) -> i128
    "llvm.return"(%64) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i128_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i128, %arg31: i128):
    %55 = "llvm.zext"(%arg30) : (i128) -> i256
    %56 = "llvm.zext"(%arg31) : (i128) -> i256
    %57 = "llvm.sub"(%55, %56) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %58 = "llvm.intr.abs"(%57) <{is_int_min_poison = true}> : (i256) -> i256
    %59 = "llvm.trunc"(%58) <{overflowFlags = 0 : i32}> : (i256) -> i128
    "llvm.return"(%59) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i8, %arg29: i8):
    %52 = "llvm.intr.umin"(%arg28, %arg29) : (i8, i8) -> i8
    %53 = "llvm.intr.umax"(%arg28, %arg29) : (i8, i8) -> i8
    %54 = "llvm.sub"(%53, %52) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%54) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i16, %arg27: i16):
    %49 = "llvm.intr.umin"(%arg26, %arg27) : (i16, i16) -> i16
    %50 = "llvm.intr.umax"(%arg26, %arg27) : (i16, i16) -> i16
    %51 = "llvm.sub"(%50, %49) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%51) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i32):
    %46 = "llvm.intr.umin"(%arg24, %arg25) : (i32, i32) -> i32
    %47 = "llvm.intr.umax"(%arg24, %arg25) : (i32, i32) -> i32
    %48 = "llvm.sub"(%47, %46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i64, %arg23: i64):
    %43 = "llvm.intr.umin"(%arg22, %arg23) : (i64, i64) -> i64
    %44 = "llvm.intr.umax"(%arg22, %arg23) : (i64, i64) -> i64
    %45 = "llvm.sub"(%44, %43) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i128, %arg21: i128):
    %40 = "llvm.intr.umin"(%arg20, %arg21) : (i128, i128) -> i128
    %41 = "llvm.intr.umax"(%arg20, %arg21) : (i128, i128) -> i128
    %42 = "llvm.sub"(%41, %40) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%42) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i8, %arg19: i8):
    %36 = "llvm.icmp"(%arg18, %arg19) <{predicate = 8 : i64}> : (i8, i8) -> i1
    %37 = "llvm.sub"(%arg18, %arg19) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %38 = "llvm.sub"(%arg19, %arg18) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %39 = "llvm.select"(%36, %37, %38) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    "llvm.return"(%39) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i16, %arg17: i16):
    %32 = "llvm.icmp"(%arg16, %arg17) <{predicate = 9 : i64}> : (i16, i16) -> i1
    %33 = "llvm.sub"(%arg16, %arg17) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %34 = "llvm.sub"(%arg17, %arg16) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %35 = "llvm.select"(%32, %33, %34) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%35) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32, %arg15: i32):
    %28 = "llvm.icmp"(%arg14, %arg15) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %29 = "llvm.sub"(%arg14, %arg15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %30 = "llvm.sub"(%arg15, %arg14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %31 = "llvm.select"(%28, %30, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64, %arg13: i64):
    %24 = "llvm.icmp"(%arg12, %arg13) <{predicate = 9 : i64}> : (i64, i64) -> i1
    %25 = "llvm.sub"(%arg12, %arg13) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %26 = "llvm.sub"(%arg13, %arg12) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %27 = "llvm.select"(%24, %25, %26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%27) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i128, %arg11: i128):
    %20 = "llvm.icmp"(%arg10, %arg11) <{predicate = 9 : i64}> : (i128, i128) -> i1
    %21 = "llvm.sub"(%arg10, %arg11) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %22 = "llvm.sub"(%arg11, %arg10) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %23 = "llvm.select"(%20, %21, %22) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    "llvm.return"(%23) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_select_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i8, %arg9: i8):
    %16 = "llvm.icmp"(%arg8, %arg9) <{predicate = 6 : i64}> : (i8, i8) -> i1
    %17 = "llvm.select"(%16, %arg8, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    %18 = "llvm.select"(%16, %arg9, %arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    %19 = "llvm.sub"(%18, %17) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%19) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_select_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i16, %arg7: i16):
    %12 = "llvm.icmp"(%arg6, %arg7) <{predicate = 7 : i64}> : (i16, i16) -> i1
    %13 = "llvm.select"(%12, %arg6, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %14 = "llvm.select"(%12, %arg7, %arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %15 = "llvm.sub"(%14, %13) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%15) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %8 = "llvm.icmp"(%arg4, %arg5) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %9 = "llvm.select"(%8, %arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %10 = "llvm.select"(%8, %arg5, %arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %11 = "llvm.sub"(%9, %10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: i64):
    %4 = "llvm.icmp"(%arg2, %arg3) <{predicate = 9 : i64}> : (i64, i64) -> i1
    %5 = "llvm.select"(%4, %arg2, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %6 = "llvm.select"(%4, %arg3, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %7 = "llvm.sub"(%5, %6) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_select_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i128, %arg1: i128):
    %0 = "llvm.icmp"(%arg0, %arg1) <{predicate = 6 : i64}> : (i128, i128) -> i1
    %1 = "llvm.select"(%0, %arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %2 = "llvm.select"(%0, %arg1, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %3 = "llvm.sub"(%2, %1) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%3) : (i128) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

