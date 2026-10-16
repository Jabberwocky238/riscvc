"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i32, %arg55: i32):
    %149 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %150 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %151 = "llvm.and"(%arg54, %149) : (i32, i32) -> i32
    %152 = "llvm.shl"(%arg55, %150) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %153 = "llvm.or"(%152, %151) : (i32, i32) -> i32
    "llvm.return"(%153) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i16, %arg53: i16):
    %144 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %145 = "llvm.zext"(%arg52) : (i16) -> i32
    %146 = "llvm.zext"(%arg53) : (i16) -> i32
    %147 = "llvm.shl"(%146, %144) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %148 = "llvm.or"(%147, %145) : (i32, i32) -> i32
    "llvm.return"(%148) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (i16, i16, i32)>, linkage = #llvm.linkage<external>, sym_name = "pack_i32_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i16, %arg50: i16, %arg51: i32):
    %138 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %139 = "llvm.zext"(%arg49) : (i16) -> i32
    %140 = "llvm.shl"(%139, %138) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %141 = "llvm.zext"(%arg50) : (i16) -> i32
    %142 = "llvm.or"(%140, %141) : (i32, i32) -> i32
    %143 = "llvm.add"(%142, %arg51) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%143) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i64, %arg48: i64):
    %133 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %134 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %135 = "llvm.and"(%arg47, %133) : (i64, i64) -> i64
    %136 = "llvm.shl"(%arg48, %134) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %137 = "llvm.or"(%136, %135) : (i64, i64) -> i64
    "llvm.return"(%137) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i32, %arg46: i32):
    %128 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %129 = "llvm.zext"(%arg45) : (i32) -> i64
    %130 = "llvm.zext"(%arg46) : (i32) -> i64
    %131 = "llvm.shl"(%130, %128) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %132 = "llvm.or"(%131, %129) : (i64, i64) -> i64
    "llvm.return"(%132) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "pack_i64_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: !llvm.ptr, %arg44: !llvm.ptr):
    %121 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %122 = "llvm.load"(%arg43) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %123 = "llvm.zext"(%122) : (i32) -> i64
    %124 = "llvm.shl"(%123, %121) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %125 = "llvm.load"(%arg44) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %126 = "llvm.zext"(%125) : (i32) -> i64
    %127 = "llvm.or"(%124, %126) : (i64, i64) -> i64
    "llvm.return"(%127) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i32, %arg42: i32):
    %114 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %115 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %116 = "llvm.mlir.constant"() <{value = 65280 : i32}> : () -> i32
    %117 = "llvm.and"(%arg41, %114) : (i32, i32) -> i32
    %118 = "llvm.shl"(%arg42, %115) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %119 = "llvm.and"(%118, %116) : (i32, i32) -> i32
    %120 = "llvm.or"(%119, %117) : (i32, i32) -> i32
    "llvm.return"(%120) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i32, %arg40: i32):
    %108 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %109 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %110 = "llvm.and"(%arg39, %108) : (i32, i32) -> i32
    %111 = "llvm.and"(%arg40, %108) : (i32, i32) -> i32
    %112 = "llvm.shl"(%111, %109) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %113 = "llvm.or"(%112, %110) : (i32, i32) -> i32
    "llvm.return"(%113) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i64, %arg38: i64):
    %101 = "llvm.mlir.constant"() <{value = 255 : i64}> : () -> i64
    %102 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %103 = "llvm.mlir.constant"() <{value = 65280 : i64}> : () -> i64
    %104 = "llvm.and"(%arg37, %101) : (i64, i64) -> i64
    %105 = "llvm.shl"(%arg38, %102) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %106 = "llvm.and"(%105, %103) : (i64, i64) -> i64
    %107 = "llvm.or"(%106, %104) : (i64, i64) -> i64
    "llvm.return"(%107) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i64, %arg36: i64):
    %95 = "llvm.mlir.constant"() <{value = 255 : i64}> : () -> i64
    %96 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %97 = "llvm.and"(%arg35, %95) : (i64, i64) -> i64
    %98 = "llvm.and"(%arg36, %95) : (i64, i64) -> i64
    %99 = "llvm.shl"(%98, %96) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %100 = "llvm.or"(%99, %97) : (i64, i64) -> i64
    "llvm.return"(%100) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i16 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "packh_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i8, %arg34: i8):
    %90 = "llvm.mlir.constant"() <{value = 8 : i16}> : () -> i16
    %91 = "llvm.zext"(%arg33) : (i8) -> i16
    %92 = "llvm.zext"(%arg34) : (i8) -> i16
    %93 = "llvm.shl"(%92, %90) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %94 = "llvm.or"(%93, %91) : (i16, i16) -> i16
    "llvm.return"(%94) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i16 (i8, i8, i8)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "packh_i16_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i8, %arg31: i8, %arg32: i8):
    %84 = "llvm.mlir.constant"() <{value = 8 : i16}> : () -> i16
    %85 = "llvm.add"(%arg31, %arg30) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %86 = "llvm.zext"(%85) : (i8) -> i16
    %87 = "llvm.shl"(%86, %84) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %88 = "llvm.zext"(%arg32) : (i8) -> i16
    %89 = "llvm.or"(%87, %88) : (i16, i16) -> i16
    "llvm.return"(%89) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}, {}], function_type = !llvm.func<void (i8, i8, i8, ptr)>, linkage = #llvm.linkage<external>, sym_name = "packh_i16_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i8, %arg27: i8, %arg28: i8, %arg29: !llvm.ptr):
    %78 = "llvm.mlir.constant"() <{value = 8 : i16}> : () -> i16
    %79 = "llvm.add"(%arg27, %arg26) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %80 = "llvm.zext"(%79) : (i8) -> i16
    %81 = "llvm.shl"(%80, %78) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %82 = "llvm.zext"(%arg28) : (i8) -> i16
    %83 = "llvm.or"(%81, %82) : (i16, i16) -> i16
    "llvm.store"(%83, %arg29) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zexth_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32):
    %76 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %77 = "llvm.and"(%arg25, %76) : (i32, i32) -> i32
    "llvm.return"(%77) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zexth_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i64):
    %74 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %75 = "llvm.and"(%arg24, %74) : (i64, i64) -> i64
    "llvm.return"(%75) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i16_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i16):
    %73 = "llvm.zext"(%arg23) : (i16) -> i32
    "llvm.return"(%73) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i16_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i16):
    %72 = "llvm.zext"(%arg22) : (i16) -> i64
    "llvm.return"(%72) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i8, i8, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_lo_packh_hi_packh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i8, %arg19: i8, %arg20: i8, %arg21: i8):
    %59 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %60 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %61 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %62 = "llvm.zext"(%arg18) : (i8) -> i32
    %63 = "llvm.zext"(%arg19) : (i8) -> i32
    %64 = "llvm.zext"(%arg20) : (i8) -> i32
    %65 = "llvm.zext"(%arg21) : (i8) -> i32
    %66 = "llvm.shl"(%63, %59) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %67 = "llvm.shl"(%64, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %68 = "llvm.shl"(%65, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %69 = "llvm.or"(%62, %66) : (i32, i32) -> i32
    %70 = "llvm.or"(%69, %67) : (i32, i32) -> i32
    %71 = "llvm.or"(%70, %68) : (i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8, i8, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_lo_packh_hi_packh_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i8, %arg15: i8, %arg16: i8, %arg17: i8):
    %46 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %47 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %48 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %49 = "llvm.zext"(%arg14) : (i8) -> i32
    %50 = "llvm.zext"(%arg15) : (i8) -> i32
    %51 = "llvm.zext"(%arg16) : (i8) -> i32
    %52 = "llvm.zext"(%arg17) : (i8) -> i32
    %53 = "llvm.shl"(%50, %46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %54 = "llvm.shl"(%51, %47) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %55 = "llvm.shl"(%52, %48) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %56 = "llvm.or"(%49, %53) : (i32, i32) -> i32
    %57 = "llvm.or"(%56, %54) : (i32, i32) -> i32
    %58 = "llvm.or"(%57, %55) : (i32, i32) -> i32
    "llvm.return"(%58) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i16, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_lo_zext_hi_packh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i16, %arg12: i8, %arg13: i8):
    %37 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %38 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %39 = "llvm.zext"(%arg11) : (i16) -> i32
    %40 = "llvm.zext"(%arg12) : (i8) -> i32
    %41 = "llvm.zext"(%arg13) : (i8) -> i32
    %42 = "llvm.shl"(%41, %37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %43 = "llvm.or"(%40, %42) : (i32, i32) -> i32
    %44 = "llvm.shl"(%43, %38) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %45 = "llvm.or"(%44, %39) : (i32, i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_lo_noext_hi_packh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i8, %arg10: i8):
    %29 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %31 = "llvm.zext"(%arg9) : (i8) -> i32
    %32 = "llvm.zext"(%arg10) : (i8) -> i32
    %33 = "llvm.shl"(%32, %29) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %34 = "llvm.or"(%31, %33) : (i32, i32) -> i32
    %35 = "llvm.shl"(%34, %30) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %36 = "llvm.or"(%35, %arg8) : (i32, i32) -> i32
    "llvm.return"(%36) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_lo_noext_hi_packh_nozeroext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32, %arg6: i8, %arg7: i8):
    %21 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %23 = "llvm.zext"(%arg6) : (i8) -> i32
    %24 = "llvm.zext"(%arg7) : (i8) -> i32
    %25 = "llvm.shl"(%24, %21) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %26 = "llvm.or"(%23, %25) : (i32, i32) -> i32
    %27 = "llvm.shl"(%26, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %28 = "llvm.or"(%27, %arg5) : (i32, i32) -> i32
    "llvm.return"(%28) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_zero_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %17 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 65280 : i32}> : () -> i32
    %19 = "llvm.shl"(%arg4, %17) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %20 = "llvm.and"(%19, %18) : (i32, i32) -> i32
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_zero_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %13 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %15 = "llvm.and"(%arg3, %13) : (i32, i32) -> i32
    %16 = "llvm.shl"(%15, %14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_zero_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %9 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = 65280 : i64}> : () -> i64
    %11 = "llvm.shl"(%arg2, %9) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %12 = "llvm.and"(%11, %10) : (i64, i64) -> i64
    "llvm.return"(%12) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_zero_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64):
    %5 = "llvm.mlir.constant"() <{value = 255 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %7 = "llvm.and"(%arg1, %5) : (i64, i64) -> i64
    %8 = "llvm.shl"(%7, %6) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_zero_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i8):
    %0 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 65280 : i32}> : () -> i32
    %2 = "llvm.zext"(%arg0) : (i8) -> i32
    %3 = "llvm.shl"(%2, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %4 = "llvm.and"(%3, %1) : (i32, i32) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

