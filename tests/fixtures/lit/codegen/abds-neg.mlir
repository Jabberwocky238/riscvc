"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i8, %arg65: i8):
    %159 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %160 = "llvm.sext"(%arg64) : (i8) -> i64
    %161 = "llvm.sext"(%arg65) : (i8) -> i64
    %162 = "llvm.sub"(%160, %161) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %163 = "llvm.intr.abs"(%162) <{is_int_min_poison = false}> : (i64) -> i64
    %164 = "llvm.sub"(%159, %163) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %165 = "llvm.trunc"(%164) <{overflowFlags = 0 : i32}> : (i64) -> i8
    "llvm.return"(%165) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i8_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: i8, %arg63: i16):
    %152 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %153 = "llvm.sext"(%arg62) : (i8) -> i64
    %154 = "llvm.sext"(%arg63) : (i16) -> i64
    %155 = "llvm.sub"(%153, %154) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %156 = "llvm.intr.abs"(%155) <{is_int_min_poison = false}> : (i64) -> i64
    %157 = "llvm.sub"(%152, %156) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %158 = "llvm.trunc"(%157) <{overflowFlags = 0 : i32}> : (i64) -> i8
    "llvm.return"(%158) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i8_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i8, %arg61: i8):
    %145 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %146 = "llvm.sext"(%arg60) : (i8) -> i64
    %147 = "llvm.sext"(%arg61) : (i8) -> i64
    %148 = "llvm.sub"(%146, %147) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %149 = "llvm.intr.abs"(%148) <{is_int_min_poison = true}> : (i64) -> i64
    %150 = "llvm.sub"(%145, %149) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %151 = "llvm.trunc"(%150) <{overflowFlags = 0 : i32}> : (i64) -> i8
    "llvm.return"(%151) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i16, %arg59: i16):
    %138 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %139 = "llvm.sext"(%arg58) : (i16) -> i64
    %140 = "llvm.sext"(%arg59) : (i16) -> i64
    %141 = "llvm.sub"(%139, %140) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %142 = "llvm.intr.abs"(%141) <{is_int_min_poison = false}> : (i64) -> i64
    %143 = "llvm.sub"(%138, %142) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %144 = "llvm.trunc"(%143) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.return"(%144) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i16_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i16, %arg57: i32):
    %131 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %132 = "llvm.sext"(%arg56) : (i16) -> i64
    %133 = "llvm.sext"(%arg57) : (i32) -> i64
    %134 = "llvm.sub"(%132, %133) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %135 = "llvm.intr.abs"(%134) <{is_int_min_poison = false}> : (i64) -> i64
    %136 = "llvm.sub"(%131, %135) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %137 = "llvm.trunc"(%136) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.return"(%137) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i16_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i16, %arg55: i16):
    %124 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %125 = "llvm.sext"(%arg54) : (i16) -> i64
    %126 = "llvm.sext"(%arg55) : (i16) -> i64
    %127 = "llvm.sub"(%125, %126) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %128 = "llvm.intr.abs"(%127) <{is_int_min_poison = true}> : (i64) -> i64
    %129 = "llvm.sub"(%124, %128) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %130 = "llvm.trunc"(%129) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.return"(%130) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i32, %arg53: i32):
    %117 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %118 = "llvm.sext"(%arg52) : (i32) -> i64
    %119 = "llvm.sext"(%arg53) : (i32) -> i64
    %120 = "llvm.sub"(%118, %119) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %121 = "llvm.intr.abs"(%120) <{is_int_min_poison = false}> : (i64) -> i64
    %122 = "llvm.sub"(%117, %121) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %123 = "llvm.trunc"(%122) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%123) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i32_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i32, %arg51: i16):
    %110 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %111 = "llvm.sext"(%arg50) : (i32) -> i64
    %112 = "llvm.sext"(%arg51) : (i16) -> i64
    %113 = "llvm.sub"(%111, %112) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %114 = "llvm.intr.abs"(%113) <{is_int_min_poison = false}> : (i64) -> i64
    %115 = "llvm.sub"(%110, %114) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %116 = "llvm.trunc"(%115) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%116) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i32_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32, %arg49: i32):
    %103 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %104 = "llvm.sext"(%arg48) : (i32) -> i64
    %105 = "llvm.sext"(%arg49) : (i32) -> i64
    %106 = "llvm.sub"(%104, %105) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %107 = "llvm.intr.abs"(%106) <{is_int_min_poison = true}> : (i64) -> i64
    %108 = "llvm.sub"(%103, %107) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %109 = "llvm.trunc"(%108) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%109) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i64, %arg47: i64):
    %96 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %97 = "llvm.sext"(%arg46) : (i64) -> i128
    %98 = "llvm.sext"(%arg47) : (i64) -> i128
    %99 = "llvm.sub"(%97, %98) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %100 = "llvm.intr.abs"(%99) <{is_int_min_poison = false}> : (i128) -> i128
    %101 = "llvm.sub"(%96, %100) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %102 = "llvm.trunc"(%101) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%102) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i64_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i64, %arg45: i64):
    %89 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %90 = "llvm.sext"(%arg44) : (i64) -> i128
    %91 = "llvm.sext"(%arg45) : (i64) -> i128
    %92 = "llvm.sub"(%90, %91) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %93 = "llvm.intr.abs"(%92) <{is_int_min_poison = true}> : (i128) -> i128
    %94 = "llvm.sub"(%89, %93) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %95 = "llvm.trunc"(%94) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%95) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i128, %arg43: i128):
    %82 = "llvm.mlir.constant"() <{value = 0 : i256}> : () -> i256
    %83 = "llvm.sext"(%arg42) : (i128) -> i256
    %84 = "llvm.sext"(%arg43) : (i128) -> i256
    %85 = "llvm.sub"(%83, %84) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %86 = "llvm.intr.abs"(%85) <{is_int_min_poison = false}> : (i256) -> i256
    %87 = "llvm.sub"(%82, %86) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %88 = "llvm.trunc"(%87) <{overflowFlags = 0 : i32}> : (i256) -> i128
    "llvm.return"(%88) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i128_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i128, %arg41: i128):
    %75 = "llvm.mlir.constant"() <{value = 0 : i256}> : () -> i256
    %76 = "llvm.sext"(%arg40) : (i128) -> i256
    %77 = "llvm.sext"(%arg41) : (i128) -> i256
    %78 = "llvm.sub"(%76, %77) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %79 = "llvm.intr.abs"(%78) <{is_int_min_poison = true}> : (i256) -> i256
    %80 = "llvm.sub"(%75, %79) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %81 = "llvm.trunc"(%80) <{overflowFlags = 0 : i32}> : (i256) -> i128
    "llvm.return"(%81) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i8, %arg39: i8):
    %72 = "llvm.intr.smin"(%arg38, %arg39) : (i8, i8) -> i8
    %73 = "llvm.intr.smax"(%arg38, %arg39) : (i8, i8) -> i8
    %74 = "llvm.sub"(%72, %73) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%74) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i16, %arg37: i16):
    %69 = "llvm.intr.smin"(%arg36, %arg37) : (i16, i16) -> i16
    %70 = "llvm.intr.smax"(%arg36, %arg37) : (i16, i16) -> i16
    %71 = "llvm.sub"(%69, %70) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%71) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i32, %arg35: i32):
    %66 = "llvm.intr.smin"(%arg34, %arg35) : (i32, i32) -> i32
    %67 = "llvm.intr.smax"(%arg34, %arg35) : (i32, i32) -> i32
    %68 = "llvm.sub"(%66, %67) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%68) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i64, %arg33: i64):
    %63 = "llvm.intr.smin"(%arg32, %arg33) : (i64, i64) -> i64
    %64 = "llvm.intr.smax"(%arg32, %arg33) : (i64, i64) -> i64
    %65 = "llvm.sub"(%63, %64) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%65) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i128, %arg31: i128):
    %60 = "llvm.intr.smin"(%arg30, %arg31) : (i128, i128) -> i128
    %61 = "llvm.intr.smax"(%arg30, %arg31) : (i128, i128) -> i128
    %62 = "llvm.sub"(%60, %61) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%62) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i8, %arg29: i8):
    %56 = "llvm.icmp"(%arg28, %arg29) <{predicate = 3 : i64}> : (i8, i8) -> i1
    %57 = "llvm.sub"(%arg28, %arg29) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %58 = "llvm.sub"(%arg29, %arg28) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %59 = "llvm.select"(%56, %57, %58) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    "llvm.return"(%59) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i16, %arg27: i16):
    %52 = "llvm.icmp"(%arg26, %arg27) <{predicate = 2 : i64}> : (i16, i16) -> i1
    %53 = "llvm.sub"(%arg26, %arg27) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %54 = "llvm.sub"(%arg27, %arg26) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %55 = "llvm.select"(%52, %53, %54) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%55) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i32):
    %48 = "llvm.icmp"(%arg24, %arg25) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %49 = "llvm.sub"(%arg24, %arg25) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %50 = "llvm.sub"(%arg25, %arg24) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %51 = "llvm.select"(%48, %50, %49) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%51) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i64, %arg23: i64):
    %44 = "llvm.icmp"(%arg22, %arg23) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %45 = "llvm.sub"(%arg22, %arg23) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %46 = "llvm.sub"(%arg23, %arg22) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %47 = "llvm.select"(%44, %45, %46) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%47) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i128, %arg21: i128):
    %40 = "llvm.icmp"(%arg20, %arg21) <{predicate = 2 : i64}> : (i128, i128) -> i1
    %41 = "llvm.sub"(%arg20, %arg21) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %42 = "llvm.sub"(%arg21, %arg20) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %43 = "llvm.select"(%40, %41, %42) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    "llvm.return"(%43) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i8, %arg19: i8):
    %36 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %37 = "llvm.sub"(%arg18, %arg19) <{overflowFlags = 1 : i32}> : (i8, i8) -> i8
    %38 = "llvm.intr.abs"(%37) <{is_int_min_poison = false}> : (i8) -> i8
    %39 = "llvm.sub"(%36, %38) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%39) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i8_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i8, %arg17: i8):
    %32 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %33 = "llvm.sub"(%arg16, %arg17) <{overflowFlags = 1 : i32}> : (i8, i8) -> i8
    %34 = "llvm.intr.abs"(%33) <{is_int_min_poison = true}> : (i8) -> i8
    %35 = "llvm.sub"(%32, %34) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%35) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i16, %arg15: i16):
    %28 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %29 = "llvm.sub"(%arg14, %arg15) <{overflowFlags = 1 : i32}> : (i16, i16) -> i16
    %30 = "llvm.intr.abs"(%29) <{is_int_min_poison = false}> : (i16) -> i16
    %31 = "llvm.sub"(%28, %30) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%31) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i16_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i16, %arg13: i16):
    %24 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %25 = "llvm.sub"(%arg12, %arg13) <{overflowFlags = 1 : i32}> : (i16, i16) -> i16
    %26 = "llvm.intr.abs"(%25) <{is_int_min_poison = true}> : (i16) -> i16
    %27 = "llvm.sub"(%24, %26) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%27) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32, %arg11: i32):
    %20 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %21 = "llvm.sub"(%arg10, %arg11) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %22 = "llvm.intr.abs"(%21) <{is_int_min_poison = false}> : (i32) -> i32
    %23 = "llvm.sub"(%20, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i32_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32):
    %16 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %17 = "llvm.sub"(%arg8, %arg9) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %18 = "llvm.intr.abs"(%17) <{is_int_min_poison = true}> : (i32) -> i32
    %19 = "llvm.sub"(%16, %18) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64, %arg7: i64):
    %12 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %13 = "llvm.sub"(%arg6, %arg7) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %14 = "llvm.intr.abs"(%13) <{is_int_min_poison = false}> : (i64) -> i64
    %15 = "llvm.sub"(%12, %14) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i64_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64, %arg5: i64):
    %8 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %9 = "llvm.sub"(%arg4, %arg5) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %10 = "llvm.intr.abs"(%9) <{is_int_min_poison = true}> : (i64) -> i64
    %11 = "llvm.sub"(%8, %10) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i128, %arg3: i128):
    %4 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %5 = "llvm.sub"(%arg2, %arg3) <{overflowFlags = 1 : i32}> : (i128, i128) -> i128
    %6 = "llvm.intr.abs"(%5) <{is_int_min_poison = false}> : (i128) -> i128
    %7 = "llvm.sub"(%4, %6) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%7) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_subnsw_i128_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i128, %arg1: i128):
    %0 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %1 = "llvm.sub"(%arg0, %arg1) <{overflowFlags = 1 : i32}> : (i128, i128) -> i128
    %2 = "llvm.intr.abs"(%1) <{is_int_min_poison = true}> : (i128) -> i128
    %3 = "llvm.sub"(%0, %2) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%3) : (i128) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

