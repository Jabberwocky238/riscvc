"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ctlz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i32):
    %140 = "llvm.intr.ctlz"(%arg50) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%140) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "log2_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i32):
    %137 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %138 = "llvm.intr.ctlz"(%arg49) <{is_zero_poison = false}> : (i32) -> i32
    %139 = "llvm.sub"(%137, %138) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%139) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "log2_ceil_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32):
    %132 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %133 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %134 = "llvm.sub"(%arg48, %132) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %135 = "llvm.intr.ctlz"(%134) <{is_zero_poison = false}> : (i32) -> i32
    %136 = "llvm.sub"(%133, %135) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%136) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "findLastSet_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i32):
    %125 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %126 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %127 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %128 = "llvm.intr.ctlz"(%arg47) <{is_zero_poison = true}> : (i32) -> i32
    %129 = "llvm.xor"(%125, %128) : (i32, i32) -> i32
    %130 = "llvm.icmp"(%arg47, %126) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %131 = "llvm.select"(%130, %127, %129) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%131) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "ctlz_lshr_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i32):
    %122 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %123 = "llvm.lshr"(%arg46, %122) : (i32, i32) -> i32
    %124 = "llvm.intr.ctlz"(%123) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%124) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctlz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i64):
    %121 = "llvm.intr.ctlz"(%arg45) <{is_zero_poison = false}> : (i64) -> i64
    "llvm.return"(%121) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "cttz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32):
    %120 = "llvm.intr.cttz"(%arg44) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%120) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "cttz_zero_undef_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i32):
    %119 = "llvm.intr.cttz"(%arg43) <{is_zero_poison = true}> : (i32) -> i32
    "llvm.return"(%119) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "findFirstSet_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i32):
    %114 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %115 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %116 = "llvm.intr.cttz"(%arg42) <{is_zero_poison = true}> : (i32) -> i32
    %117 = "llvm.icmp"(%arg42, %114) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %118 = "llvm.select"(%117, %115, %116) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%118) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ffs_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i32):
    %108 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %109 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %110 = "llvm.intr.cttz"(%arg41) <{is_zero_poison = true}> : (i32) -> i32
    %111 = "llvm.add"(%110, %108) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %112 = "llvm.icmp"(%arg41, %109) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %113 = "llvm.select"(%112, %109, %111) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%113) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cttz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i64):
    %107 = "llvm.intr.cttz"(%arg40) <{is_zero_poison = false}> : (i64) -> i64
    "llvm.return"(%107) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sexti1_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i32):
    %104 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %105 = "llvm.shl"(%arg39, %104) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %106 = "llvm.ashr"(%105, %104) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%106) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sexti1_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i1):
    %103 = "llvm.sext"(%arg38) : (i1) -> i32
    "llvm.return"(%103) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i8 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "sexti1_i32_setcc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32):
    %100 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %101 = "llvm.icmp"(%arg37, %100) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %102 = "llvm.sext"(%101) : (i1) -> i8
    "llvm.return"(%102) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "sexti1_i32_setcc_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i32, %arg36: i32):
    %98 = "llvm.icmp"(%arg35, %arg36) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %99 = "llvm.sext"(%98) : (i1) -> i32
    "llvm.return"(%99) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "sexti1_i32_setcc_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32, %arg34: i32):
    %96 = "llvm.icmp"(%arg33, %arg34) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %97 = "llvm.sext"(%96) : (i1) -> i32
    "llvm.return"(%97) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sexti1_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i64):
    %93 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %94 = "llvm.shl"(%arg32, %93) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %95 = "llvm.ashr"(%94, %93) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%95) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sexti1_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i1):
    %92 = "llvm.sext"(%arg31) : (i1) -> i64
    "llvm.return"(%92) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "sexti1_i64_setcc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i64):
    %89 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %90 = "llvm.icmp"(%arg30, %89) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %91 = "llvm.sext"(%90) : (i1) -> i8
    "llvm.return"(%91) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sexti1_i64_setcc_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i64, %arg29: i64):
    %87 = "llvm.icmp"(%arg28, %arg29) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %88 = "llvm.sext"(%87) : (i1) -> i64
    "llvm.return"(%88) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sexti1_i64_setcc_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i64, %arg27: i64):
    %85 = "llvm.icmp"(%arg26, %arg27) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %86 = "llvm.sext"(%85) : (i1) -> i64
    "llvm.return"(%86) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sextb_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32):
    %82 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %83 = "llvm.shl"(%arg25, %82) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %84 = "llvm.ashr"(%83, %82) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%84) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sextb_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i64):
    %79 = "llvm.mlir.constant"() <{value = 56 : i64}> : () -> i64
    %80 = "llvm.shl"(%arg24, %79) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %81 = "llvm.ashr"(%80, %79) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%81) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sexth_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32):
    %76 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %77 = "llvm.shl"(%arg23, %76) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %78 = "llvm.ashr"(%77, %76) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%78) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "no_sexth_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32):
    %72 = "llvm.mlir.constant"() <{value = 17 : i32}> : () -> i32
    %73 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %74 = "llvm.shl"(%arg22, %72) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %75 = "llvm.ashr"(%74, %73) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%75) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sexth_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i64):
    %69 = "llvm.mlir.constant"() <{value = 48 : i64}> : () -> i64
    %70 = "llvm.shl"(%arg21, %69) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %71 = "llvm.ashr"(%70, %69) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%71) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "no_sexth_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i64):
    %65 = "llvm.mlir.constant"() <{value = 49 : i64}> : () -> i64
    %66 = "llvm.mlir.constant"() <{value = 48 : i64}> : () -> i64
    %67 = "llvm.shl"(%arg20, %65) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %68 = "llvm.ashr"(%67, %66) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%68) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zexth_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32):
    %63 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %64 = "llvm.and"(%arg19, %63) : (i32, i32) -> i32
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zexth_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i64):
    %61 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %62 = "llvm.and"(%arg18, %61) : (i64, i64) -> i64
    "llvm.return"(%62) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zextw_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i64):
    %59 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %60 = "llvm.and"(%arg17, %59) : (i64, i64) -> i64
    "llvm.return"(%60) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_bf_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64):
    %55 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %56 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %57 = "llvm.lshr"(%arg16, %55) : (i64, i64) -> i64
    %58 = "llvm.and"(%57, %56) : (i64, i64) -> i64
    "llvm.return"(%58) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_bf2_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i64):
    %51 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %52 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %53 = "llvm.and"(%arg15, %51) : (i64, i64) -> i64
    %54 = "llvm.lshr"(%53, %52) : (i64, i64) -> i64
    "llvm.return"(%54) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i64_srliw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64):
    %47 = "llvm.mlir.constant"() <{value = 16 : i64}> : () -> i64
    %48 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %49 = "llvm.lshr"(%arg14, %47) : (i64, i64) -> i64
    %50 = "llvm.and"(%49, %48) : (i64, i64) -> i64
    "llvm.return"(%50) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bswap_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %46 = "llvm.intr.bswap"(%arg13) : (i32) -> i32
    "llvm.return"(%46) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<void (i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bswap_i32_nosext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32, %arg12: !llvm.ptr):
    %45 = "llvm.intr.bswap"(%arg11) : (i32) -> i32
    "llvm.store"(%45, %arg12) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "bswap_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64):
    %44 = "llvm.intr.bswap"(%arg10) : (i64) -> i64
    "llvm.return"(%44) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sextw_removal_ext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32, %arg9: i32):
    %34 = "llvm.mlir.constant"() <{value = 16 : i64}> : () -> i64
    %35 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %36 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %37 = "llvm.ashr"(%arg8, %arg9) : (i32, i32) -> i32
    "llvm.br"(%37)[^bb1] : (i32) -> ()
  ^bb1(%38: i32):  // 2 preds: ^bb0, ^bb1
    %39 = "llvm.call"(%38) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.signext}], callee = @foo, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> i64
    %40 = "llvm.shl"(%39, %34) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %41 = "llvm.ashr"(%40, %35) : (i64, i64) -> i64
    %42 = "llvm.trunc"(%41) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %43 = "llvm.icmp"(%42, %36) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%43, %42)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "foo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sextw_removal_extu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32):
    %24 = "llvm.mlir.constant"() <{value = 16 : i64}> : () -> i64
    %25 = "llvm.mlir.constant"() <{value = 33 : i64}> : () -> i64
    %26 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %27 = "llvm.ashr"(%arg6, %arg7) : (i32, i32) -> i32
    "llvm.br"(%27)[^bb1] : (i32) -> ()
  ^bb1(%28: i32):  // 2 preds: ^bb0, ^bb1
    %29 = "llvm.call"(%28) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.signext}], callee = @foo, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> i64
    %30 = "llvm.shl"(%29, %24) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %31 = "llvm.lshr"(%30, %25) : (i64, i64) -> i64
    %32 = "llvm.trunc"(%31) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %33 = "llvm.icmp"(%32, %26) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%33, %32)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, i64, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "hasAllNBitUsers_extu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64, %arg4: i64, %arg5: i64):
    %12 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = 15 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = 255 : i64}> : () -> i64
    "llvm.br"(%arg3, %arg5)[^bb1] : (i64, i64) -> ()
  ^bb1(%16: i64, %17: i64):  // 2 preds: ^bb0, ^bb1
    %18 = "llvm.add"(%17, %12) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %19 = "llvm.lshr"(%16, %13) : (i64, i64) -> i64
    %20 = "llvm.and"(%19, %14) : (i64, i64) -> i64
    %21 = "llvm.add"(%20, %arg4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %22 = "llvm.icmp"(%17, %15) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%22, %21, %18)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i64, i64) -> ()
  ^bb2:  // pred: ^bb1
    %23 = "llvm.trunc"(%21) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, i64, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "hasAllNBitUsers_ext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i64):
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 15 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = 255 : i64}> : () -> i64
    "llvm.br"(%arg0, %arg2)[^bb1] : (i64, i64) -> ()
  ^bb1(%4: i64, %5: i64):  // 2 preds: ^bb0, ^bb1
    %6 = "llvm.add"(%5, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %7 = "llvm.ashr"(%4, %1) : (i64, i64) -> i64
    %8 = "llvm.and"(%7, %2) : (i64, i64) -> i64
    %9 = "llvm.add"(%8, %arg1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %10 = "llvm.icmp"(%5, %3) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%10, %9, %6)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i64, i64) -> ()
  ^bb2:  // pred: ^bb1
    %11 = "llvm.trunc"(%9) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

