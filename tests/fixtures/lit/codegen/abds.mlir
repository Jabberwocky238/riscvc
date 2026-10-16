"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: i8, %arg77: i8):
    %137 = "llvm.sext"(%arg76) : (i8) -> i64
    %138 = "llvm.sext"(%arg77) : (i8) -> i64
    %139 = "llvm.sub"(%137, %138) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %140 = "llvm.intr.abs"(%139) <{is_int_min_poison = false}> : (i64) -> i64
    %141 = "llvm.trunc"(%140) <{overflowFlags = 0 : i32}> : (i64) -> i8
    "llvm.return"(%141) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i8_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg74: i8, %arg75: i16):
    %132 = "llvm.sext"(%arg74) : (i8) -> i64
    %133 = "llvm.sext"(%arg75) : (i16) -> i64
    %134 = "llvm.sub"(%132, %133) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %135 = "llvm.intr.abs"(%134) <{is_int_min_poison = false}> : (i64) -> i64
    %136 = "llvm.trunc"(%135) <{overflowFlags = 0 : i32}> : (i64) -> i8
    "llvm.return"(%136) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i8_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: i8, %arg73: i8):
    %127 = "llvm.sext"(%arg72) : (i8) -> i64
    %128 = "llvm.sext"(%arg73) : (i8) -> i64
    %129 = "llvm.sub"(%127, %128) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %130 = "llvm.intr.abs"(%129) <{is_int_min_poison = true}> : (i64) -> i64
    %131 = "llvm.trunc"(%130) <{overflowFlags = 0 : i32}> : (i64) -> i8
    "llvm.return"(%131) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg70: i16, %arg71: i16):
    %122 = "llvm.sext"(%arg70) : (i16) -> i64
    %123 = "llvm.sext"(%arg71) : (i16) -> i64
    %124 = "llvm.sub"(%122, %123) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %125 = "llvm.intr.abs"(%124) <{is_int_min_poison = false}> : (i64) -> i64
    %126 = "llvm.trunc"(%125) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.return"(%126) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i16_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: i16, %arg69: i32):
    %117 = "llvm.sext"(%arg68) : (i16) -> i64
    %118 = "llvm.sext"(%arg69) : (i32) -> i64
    %119 = "llvm.sub"(%117, %118) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %120 = "llvm.intr.abs"(%119) <{is_int_min_poison = false}> : (i64) -> i64
    %121 = "llvm.trunc"(%120) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.return"(%121) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i16_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: i16, %arg67: i16):
    %112 = "llvm.sext"(%arg66) : (i16) -> i64
    %113 = "llvm.sext"(%arg67) : (i16) -> i64
    %114 = "llvm.sub"(%112, %113) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %115 = "llvm.intr.abs"(%114) <{is_int_min_poison = true}> : (i64) -> i64
    %116 = "llvm.trunc"(%115) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.return"(%116) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i32, %arg65: i32):
    %107 = "llvm.sext"(%arg64) : (i32) -> i64
    %108 = "llvm.sext"(%arg65) : (i32) -> i64
    %109 = "llvm.sub"(%107, %108) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %110 = "llvm.intr.abs"(%109) <{is_int_min_poison = false}> : (i64) -> i64
    %111 = "llvm.trunc"(%110) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%111) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i32_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: i32, %arg63: i16):
    %102 = "llvm.sext"(%arg62) : (i32) -> i64
    %103 = "llvm.sext"(%arg63) : (i16) -> i64
    %104 = "llvm.sub"(%102, %103) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %105 = "llvm.intr.abs"(%104) <{is_int_min_poison = false}> : (i64) -> i64
    %106 = "llvm.trunc"(%105) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%106) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i32_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i32, %arg61: i32):
    %97 = "llvm.sext"(%arg60) : (i32) -> i64
    %98 = "llvm.sext"(%arg61) : (i32) -> i64
    %99 = "llvm.sub"(%97, %98) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %100 = "llvm.intr.abs"(%99) <{is_int_min_poison = true}> : (i64) -> i64
    %101 = "llvm.trunc"(%100) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%101) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i64, %arg59: i64):
    %92 = "llvm.sext"(%arg58) : (i64) -> i128
    %93 = "llvm.sext"(%arg59) : (i64) -> i128
    %94 = "llvm.sub"(%92, %93) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %95 = "llvm.intr.abs"(%94) <{is_int_min_poison = false}> : (i128) -> i128
    %96 = "llvm.trunc"(%95) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%96) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i64_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i64, %arg57: i64):
    %87 = "llvm.sext"(%arg56) : (i64) -> i128
    %88 = "llvm.sext"(%arg57) : (i64) -> i128
    %89 = "llvm.sub"(%87, %88) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %90 = "llvm.intr.abs"(%89) <{is_int_min_poison = true}> : (i128) -> i128
    %91 = "llvm.trunc"(%90) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%91) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i128, %arg55: i128):
    %82 = "llvm.sext"(%arg54) : (i128) -> i256
    %83 = "llvm.sext"(%arg55) : (i128) -> i256
    %84 = "llvm.sub"(%82, %83) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %85 = "llvm.intr.abs"(%84) <{is_int_min_poison = false}> : (i256) -> i256
    %86 = "llvm.trunc"(%85) <{overflowFlags = 0 : i32}> : (i256) -> i128
    "llvm.return"(%86) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i128_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i128, %arg53: i128):
    %77 = "llvm.sext"(%arg52) : (i128) -> i256
    %78 = "llvm.sext"(%arg53) : (i128) -> i256
    %79 = "llvm.sub"(%77, %78) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %80 = "llvm.intr.abs"(%79) <{is_int_min_poison = true}> : (i256) -> i256
    %81 = "llvm.trunc"(%80) <{overflowFlags = 0 : i32}> : (i256) -> i128
    "llvm.return"(%81) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i8, %arg51: i8):
    %74 = "llvm.intr.smin"(%arg50, %arg51) : (i8, i8) -> i8
    %75 = "llvm.intr.smax"(%arg50, %arg51) : (i8, i8) -> i8
    %76 = "llvm.sub"(%75, %74) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%76) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i16, %arg49: i16):
    %71 = "llvm.intr.smin"(%arg48, %arg49) : (i16, i16) -> i16
    %72 = "llvm.intr.smax"(%arg48, %arg49) : (i16, i16) -> i16
    %73 = "llvm.sub"(%72, %71) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%73) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i32, %arg47: i32):
    %68 = "llvm.intr.smin"(%arg46, %arg47) : (i32, i32) -> i32
    %69 = "llvm.intr.smax"(%arg46, %arg47) : (i32, i32) -> i32
    %70 = "llvm.sub"(%69, %68) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%70) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i64, %arg45: i64):
    %65 = "llvm.intr.smin"(%arg44, %arg45) : (i64, i64) -> i64
    %66 = "llvm.intr.smax"(%arg44, %arg45) : (i64, i64) -> i64
    %67 = "llvm.sub"(%66, %65) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%67) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i128, %arg43: i128):
    %62 = "llvm.intr.smin"(%arg42, %arg43) : (i128, i128) -> i128
    %63 = "llvm.intr.smax"(%arg42, %arg43) : (i128, i128) -> i128
    %64 = "llvm.sub"(%63, %62) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%64) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i8, %arg41: i8):
    %58 = "llvm.icmp"(%arg40, %arg41) <{predicate = 4 : i64}> : (i8, i8) -> i1
    %59 = "llvm.sub"(%arg40, %arg41) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %60 = "llvm.sub"(%arg41, %arg40) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %61 = "llvm.select"(%58, %59, %60) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    "llvm.return"(%61) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i16, %arg39: i16):
    %54 = "llvm.icmp"(%arg38, %arg39) <{predicate = 5 : i64}> : (i16, i16) -> i1
    %55 = "llvm.sub"(%arg38, %arg39) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %56 = "llvm.sub"(%arg39, %arg38) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %57 = "llvm.select"(%54, %55, %56) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%57) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32, %arg37: i32):
    %50 = "llvm.icmp"(%arg36, %arg37) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %51 = "llvm.sub"(%arg36, %arg37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %52 = "llvm.sub"(%arg37, %arg36) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %53 = "llvm.select"(%50, %52, %51) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i64, %arg35: i64):
    %46 = "llvm.icmp"(%arg34, %arg35) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %47 = "llvm.sub"(%arg34, %arg35) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %48 = "llvm.sub"(%arg35, %arg34) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %49 = "llvm.select"(%46, %47, %48) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%49) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i128, %arg33: i128):
    %42 = "llvm.icmp"(%arg32, %arg33) <{predicate = 5 : i64}> : (i128, i128) -> i1
    %43 = "llvm.sub"(%arg32, %arg33) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %44 = "llvm.sub"(%arg33, %arg32) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %45 = "llvm.select"(%42, %43, %44) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    "llvm.return"(%45) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i8, %arg31: i8):
    %40 = "llvm.sub"(%arg30, %arg31) <{overflowFlags = 1 : i32}> : (i8, i8) -> i8
    %41 = "llvm.intr.abs"(%40) <{is_int_min_poison = false}> : (i8) -> i8
    "llvm.return"(%41) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i8_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i8, %arg29: i8):
    %38 = "llvm.sub"(%arg28, %arg29) <{overflowFlags = 1 : i32}> : (i8, i8) -> i8
    %39 = "llvm.intr.abs"(%38) <{is_int_min_poison = true}> : (i8) -> i8
    "llvm.return"(%39) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i16, %arg27: i16):
    %36 = "llvm.sub"(%arg26, %arg27) <{overflowFlags = 1 : i32}> : (i16, i16) -> i16
    %37 = "llvm.intr.abs"(%36) <{is_int_min_poison = false}> : (i16) -> i16
    "llvm.return"(%37) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i16_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i16, %arg25: i16):
    %34 = "llvm.sub"(%arg24, %arg25) <{overflowFlags = 1 : i32}> : (i16, i16) -> i16
    %35 = "llvm.intr.abs"(%34) <{is_int_min_poison = true}> : (i16) -> i16
    "llvm.return"(%35) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32):
    %32 = "llvm.sub"(%arg22, %arg23) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %33 = "llvm.intr.abs"(%32) <{is_int_min_poison = false}> : (i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i32_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32):
    %30 = "llvm.sub"(%arg20, %arg21) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %31 = "llvm.intr.abs"(%30) <{is_int_min_poison = true}> : (i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i64, %arg19: i64):
    %28 = "llvm.sub"(%arg18, %arg19) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %29 = "llvm.intr.abs"(%28) <{is_int_min_poison = false}> : (i64) -> i64
    "llvm.return"(%29) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i64_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64, %arg17: i64):
    %26 = "llvm.sub"(%arg16, %arg17) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %27 = "llvm.intr.abs"(%26) <{is_int_min_poison = true}> : (i64) -> i64
    "llvm.return"(%27) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i128, %arg15: i128):
    %24 = "llvm.sub"(%arg14, %arg15) <{overflowFlags = 1 : i32}> : (i128, i128) -> i128
    %25 = "llvm.intr.abs"(%24) <{is_int_min_poison = false}> : (i128) -> i128
    "llvm.return"(%25) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i128_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i128, %arg13: i128):
    %22 = "llvm.sub"(%arg12, %arg13) <{overflowFlags = 1 : i32}> : (i128, i128) -> i128
    %23 = "llvm.intr.abs"(%22) <{is_int_min_poison = true}> : (i128) -> i128
    "llvm.return"(%23) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_sub_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32, %arg11: i32):
    %20 = "llvm.sub"(%arg10, %arg11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %21 = "llvm.intr.abs"(%20) <{is_int_min_poison = false}> : (i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_select_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i8, %arg9: i8):
    %16 = "llvm.icmp"(%arg8, %arg9) <{predicate = 2 : i64}> : (i8, i8) -> i1
    %17 = "llvm.select"(%16, %arg8, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    %18 = "llvm.select"(%16, %arg9, %arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    %19 = "llvm.sub"(%18, %17) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%19) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_select_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i16, %arg7: i16):
    %12 = "llvm.icmp"(%arg6, %arg7) <{predicate = 3 : i64}> : (i16, i16) -> i1
    %13 = "llvm.select"(%12, %arg6, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %14 = "llvm.select"(%12, %arg7, %arg6) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %15 = "llvm.sub"(%14, %13) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%15) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %8 = "llvm.icmp"(%arg4, %arg5) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %9 = "llvm.select"(%8, %arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %10 = "llvm.select"(%8, %arg5, %arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %11 = "llvm.sub"(%9, %10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: i64):
    %4 = "llvm.icmp"(%arg2, %arg3) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %5 = "llvm.select"(%4, %arg2, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %6 = "llvm.select"(%4, %arg3, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %7 = "llvm.sub"(%5, %6) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_select_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i128, %arg1: i128):
    %0 = "llvm.icmp"(%arg0, %arg1) <{predicate = 2 : i64}> : (i128, i128) -> i1
    %1 = "llvm.select"(%0, %arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %2 = "llvm.select"(%0, %arg1, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %3 = "llvm.sub"(%2, %1) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%3) : (i128) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

