"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_const_int_easy", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i1):
    %148 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %149 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %150 = "llvm.select"(%arg48, %148, %149) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%150) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_const_int_one_away", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i1):
    %145 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %146 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %147 = "llvm.select"(%arg47, %145, %146) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%147) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_const_int_pow2_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i1):
    %142 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %143 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %144 = "llvm.select"(%arg46, %142, %143) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%144) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_const_int_harder", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i1):
    %139 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %140 = "llvm.mlir.constant"() <{value = 38 : i32}> : () -> i32
    %141 = "llvm.select"(%arg45, %139, %140) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%141) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<f32 (i1)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "select_const_fp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i1):
    %136 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f32}> : () -> f32
    %137 = "llvm.mlir.constant"() <{value = 4.000000e+00 : f32}> : () -> f32
    %138 = "llvm.select"(%arg44, %136, %137) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.return"(%138) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_eq_zero_negone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i32, %arg43: i32):
    %132 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %133 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %134 = "llvm.icmp"(%arg42, %arg43) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %135 = "llvm.select"(%134, %132, %133) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%135) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_ne_zero_negone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32, %arg41: i32):
    %128 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %129 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %130 = "llvm.icmp"(%arg40, %arg41) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %131 = "llvm.select"(%130, %128, %129) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%131) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_sgt_zero_negone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32, %arg39: i32):
    %124 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %125 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %126 = "llvm.icmp"(%arg38, %arg39) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %127 = "llvm.select"(%126, %124, %125) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%127) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_slt_zero_negone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32, %arg37: i32):
    %120 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %121 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %122 = "llvm.icmp"(%arg36, %arg37) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %123 = "llvm.select"(%122, %120, %121) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%123) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_sge_zero_negone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i32, %arg35: i32):
    %116 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %117 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %118 = "llvm.icmp"(%arg34, %arg35) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %119 = "llvm.select"(%118, %116, %117) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%119) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_sle_zero_negone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32, %arg33: i32):
    %112 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %113 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %114 = "llvm.icmp"(%arg32, %arg33) <{predicate = 3 : i64}> : (i32, i32) -> i1
    %115 = "llvm.select"(%114, %112, %113) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%115) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_ugt_zero_negone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32, %arg31: i32):
    %108 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %109 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %110 = "llvm.icmp"(%arg30, %arg31) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %111 = "llvm.select"(%110, %108, %109) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%111) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_ult_zero_negone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32, %arg29: i32):
    %104 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %105 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %106 = "llvm.icmp"(%arg28, %arg29) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %107 = "llvm.select"(%106, %104, %105) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%107) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_uge_zero_negone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32, %arg27: i32):
    %100 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %101 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %102 = "llvm.icmp"(%arg26, %arg27) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %103 = "llvm.select"(%102, %100, %101) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%103) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "select_ule_zero_negone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i32):
    %96 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %97 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %98 = "llvm.icmp"(%arg24, %arg25) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %99 = "llvm.select"(%98, %96, %97) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%99) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_eq_1_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32):
    %92 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %93 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %94 = "llvm.icmp"(%arg22, %arg23) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %95 = "llvm.select"(%94, %92, %93) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_ne_1_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32):
    %88 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %89 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %90 = "llvm.icmp"(%arg20, %arg21) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %91 = "llvm.select"(%90, %88, %89) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%91) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_eq_10000_10001", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32, %arg19: i32):
    %84 = "llvm.mlir.constant"() <{value = 10001 : i32}> : () -> i32
    %85 = "llvm.mlir.constant"() <{value = 10002 : i32}> : () -> i32
    %86 = "llvm.icmp"(%arg18, %arg19) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %87 = "llvm.select"(%86, %84, %85) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "select_ne_10001_10002", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32, %arg17: i32):
    %80 = "llvm.mlir.constant"() <{value = 10001 : i32}> : () -> i32
    %81 = "llvm.mlir.constant"() <{value = 10002 : i32}> : () -> i32
    %82 = "llvm.icmp"(%arg16, %arg17) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %83 = "llvm.select"(%82, %80, %81) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%83) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_slt_zero_constant1_constant2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %75 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %76 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %77 = "llvm.mlir.constant"() <{value = -3 : i32}> : () -> i32
    %78 = "llvm.icmp"(%arg15, %75) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %79 = "llvm.select"(%78, %76, %77) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_sgt_negative_one_constant1_constant2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %70 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %71 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %72 = "llvm.mlir.constant"() <{value = -3 : i32}> : () -> i32
    %73 = "llvm.icmp"(%arg14, %70) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %74 = "llvm.select"(%73, %71, %72) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%74) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_nonnegative_lui_addi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %65 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %66 = "llvm.mlir.constant"() <{value = 16384 : i32}> : () -> i32
    %67 = "llvm.mlir.constant"() <{value = 25 : i32}> : () -> i32
    %68 = "llvm.icmp"(%arg13, %65) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %69 = "llvm.select"(%68, %66, %67) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_nonnegative_lui_addi_swapped", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %60 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %61 = "llvm.mlir.constant"() <{value = 25 : i32}> : () -> i32
    %62 = "llvm.mlir.constant"() <{value = 16384 : i32}> : () -> i32
    %63 = "llvm.icmp"(%arg12, %60) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %64 = "llvm.select"(%63, %61, %62) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "diff_shl_addi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %55 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 25 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 16409 : i32}> : () -> i32
    %58 = "llvm.icmp"(%arg11, %55) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %59 = "llvm.select"(%58, %56, %57) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "diff_shl_addi2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %50 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = 16409 : i32}> : () -> i32
    %52 = "llvm.mlir.constant"() <{value = 25 : i32}> : () -> i32
    %53 = "llvm.icmp"(%arg10, %50) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %54 = "llvm.select"(%53, %51, %52) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "diff_pow2_24_16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %45 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %46 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %47 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %48 = "llvm.icmp"(%arg9, %45) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %49 = "llvm.select"(%48, %46, %47) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "diff_pow2_16_24", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %40 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %41 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %42 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %43 = "llvm.icmp"(%arg8, %40) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %44 = "llvm.select"(%43, %41, %42) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%44) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_or_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %35 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 573857 : i32}> : () -> i32
    %37 = "llvm.icmp"(%arg7, %35) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %38 = "llvm.zext"(%37) : (i1) -> i32
    %39 = "llvm.select"(%37, %38, %36) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_or_constant2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %30 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 573857 : i32}> : () -> i32
    %32 = "llvm.icmp"(%arg6, %30) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %33 = "llvm.zext"(%32) : (i1) -> i32
    %34 = "llvm.select"(%32, %31, %33) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sext_or_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %25 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 573857 : i32}> : () -> i32
    %27 = "llvm.icmp"(%arg5, %25) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %28 = "llvm.sext"(%27) : (i1) -> i32
    %29 = "llvm.select"(%27, %28, %26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sext_or_constant2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %20 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 573857 : i32}> : () -> i32
    %22 = "llvm.icmp"(%arg4, %20) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %23 = "llvm.sext"(%22) : (i1) -> i32
    %24 = "llvm.select"(%22, %21, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_0_6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %15 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %18 = "llvm.icmp"(%arg3, %15) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %19 = "llvm.select"(%18, %16, %17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_6_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %10 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %13 = "llvm.icmp"(%arg2, %10) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %14 = "llvm.select"(%13, %11, %12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_0_394", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %5 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 394 : i32}> : () -> i32
    %8 = "llvm.icmp"(%arg1, %5) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %9 = "llvm.select"(%8, %6, %7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "select_394_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 394 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.icmp"(%arg0, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %4 = "llvm.select"(%3, %1, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

