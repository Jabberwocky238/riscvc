"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "square", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: i32):
    %158 = "llvm.mul"(%arg65, %arg65) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%158) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "mul", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: i32, %arg64: i32):
    %157 = "llvm.mul"(%arg63, %arg64) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%157) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "mul_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: i32):
    %155 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %156 = "llvm.mul"(%arg62, %155) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%156) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mul_pow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: i32):
    %153 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %154 = "llvm.mul"(%arg61, %153) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%154) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mul64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: i64, %arg60: i64):
    %152 = "llvm.mul"(%arg59, %arg60) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%152) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mul64_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i64):
    %150 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %151 = "llvm.mul"(%arg58, %150) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%151) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mulhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i32, %arg57: i32):
    %144 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %145 = "llvm.sext"(%arg56) : (i32) -> i64
    %146 = "llvm.sext"(%arg57) : (i32) -> i64
    %147 = "llvm.mul"(%145, %146) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %148 = "llvm.lshr"(%147, %144) : (i64, i64) -> i64
    %149 = "llvm.trunc"(%148) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%149) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mulhs_positive_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: i32):
    %138 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %139 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %140 = "llvm.sext"(%arg55) : (i32) -> i64
    %141 = "llvm.mul"(%140, %138) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %142 = "llvm.lshr"(%141, %139) : (i64, i64) -> i64
    %143 = "llvm.trunc"(%142) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%143) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mulhs_negative_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i32):
    %132 = "llvm.mlir.constant"() <{value = -5 : i64}> : () -> i64
    %133 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %134 = "llvm.sext"(%arg54) : (i32) -> i64
    %135 = "llvm.mul"(%134, %132) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %136 = "llvm.lshr"(%135, %133) : (i64, i64) -> i64
    %137 = "llvm.trunc"(%136) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%137) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "mulhu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i32, %arg53: i32):
    %126 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %127 = "llvm.zext"(%arg52) : (i32) -> i64
    %128 = "llvm.zext"(%arg53) : (i32) -> i64
    %129 = "llvm.mul"(%127, %128) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %130 = "llvm.lshr"(%129, %126) : (i64, i64) -> i64
    %131 = "llvm.trunc"(%130) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%131) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mulhsu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i32, %arg51: i32):
    %120 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %121 = "llvm.zext"(%arg50) : (i32) -> i64
    %122 = "llvm.sext"(%arg51) : (i32) -> i64
    %123 = "llvm.mul"(%121, %122) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %124 = "llvm.lshr"(%123, %120) : (i64, i64) -> i64
    %125 = "llvm.trunc"(%124) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%125) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mulhu_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i32):
    %114 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %115 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %116 = "llvm.zext"(%arg49) : (i32) -> i64
    %117 = "llvm.mul"(%116, %114) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %118 = "llvm.lshr"(%117, %115) : (i64, i64) -> i64
    %119 = "llvm.trunc"(%118) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%119) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32):
    %112 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %113 = "llvm.mul"(%arg48, %112) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%113) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p14", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i32):
    %110 = "llvm.mlir.constant"() <{value = 14 : i32}> : () -> i32
    %111 = "llvm.mul"(%arg47, %110) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%111) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p18", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i32):
    %108 = "llvm.mlir.constant"() <{value = 18 : i32}> : () -> i32
    %109 = "llvm.mul"(%arg46, %108) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%109) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p28", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i32):
    %106 = "llvm.mlir.constant"() <{value = 28 : i32}> : () -> i32
    %107 = "llvm.mul"(%arg45, %106) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%107) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p30", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32):
    %104 = "llvm.mlir.constant"() <{value = 30 : i32}> : () -> i32
    %105 = "llvm.mul"(%arg44, %104) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%105) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p34", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i32):
    %102 = "llvm.mlir.constant"() <{value = 34 : i32}> : () -> i32
    %103 = "llvm.mul"(%arg43, %102) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%103) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p36", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i32):
    %100 = "llvm.mlir.constant"() <{value = 36 : i32}> : () -> i32
    %101 = "llvm.mul"(%arg42, %100) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%101) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p56", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i32):
    %98 = "llvm.mlir.constant"() <{value = 56 : i32}> : () -> i32
    %99 = "llvm.mul"(%arg41, %98) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%99) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p60", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32):
    %96 = "llvm.mlir.constant"() <{value = 60 : i32}> : () -> i32
    %97 = "llvm.mul"(%arg40, %96) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%97) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p62", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i32):
    %94 = "llvm.mlir.constant"() <{value = 62 : i32}> : () -> i32
    %95 = "llvm.mul"(%arg39, %94) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p65", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32):
    %92 = "llvm.mlir.constant"() <{value = 65 : i32}> : () -> i32
    %93 = "llvm.mul"(%arg38, %92) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%93) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p66", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32):
    %90 = "llvm.mlir.constant"() <{value = 66 : i32}> : () -> i32
    %91 = "llvm.mul"(%arg37, %90) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%91) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p63", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32):
    %88 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %89 = "llvm.mul"(%arg36, %88) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%89) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_p65", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i64):
    %86 = "llvm.mlir.constant"() <{value = 65 : i64}> : () -> i64
    %87 = "llvm.mul"(%arg35, %86) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%87) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_p63", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i64):
    %84 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %85 = "llvm.mul"(%arg34, %84) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%85) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_p72", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i64):
    %82 = "llvm.mlir.constant"() <{value = 72 : i64}> : () -> i64
    %83 = "llvm.mul"(%arg33, %82) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%83) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_p68", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i64):
    %80 = "llvm.mlir.constant"() <{value = 68 : i64}> : () -> i64
    %81 = "llvm.mul"(%arg32, %80) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%81) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_m63", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i32):
    %78 = "llvm.mlir.constant"() <{value = -63 : i32}> : () -> i32
    %79 = "llvm.mul"(%arg31, %78) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_m65", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32):
    %76 = "llvm.mlir.constant"() <{value = -65 : i32}> : () -> i32
    %77 = "llvm.mul"(%arg30, %76) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%77) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_m63", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i64):
    %74 = "llvm.mlir.constant"() <{value = -63 : i64}> : () -> i64
    %75 = "llvm.mul"(%arg29, %74) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%75) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_m65", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i64):
    %72 = "llvm.mlir.constant"() <{value = -65 : i64}> : () -> i64
    %73 = "llvm.mul"(%arg28, %72) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%73) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p384", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32):
    %70 = "llvm.mlir.constant"() <{value = 384 : i32}> : () -> i32
    %71 = "llvm.mul"(%arg27, %70) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p12288", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32):
    %68 = "llvm.mlir.constant"() <{value = 12288 : i32}> : () -> i32
    %69 = "llvm.mul"(%arg26, %68) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p4352", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32):
    %66 = "llvm.mlir.constant"() <{value = 4352 : i32}> : () -> i32
    %67 = "llvm.mul"(%arg25, %66) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%67) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_p3840", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32):
    %64 = "llvm.mlir.constant"() <{value = 3840 : i32}> : () -> i32
    %65 = "llvm.mul"(%arg24, %64) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%65) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_m3840", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32):
    %62 = "llvm.mlir.constant"() <{value = -3840 : i32}> : () -> i32
    %63 = "llvm.mul"(%arg23, %62) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli32_m4352", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32):
    %60 = "llvm.mlir.constant"() <{value = -4352 : i32}> : () -> i32
    %61 = "llvm.mul"(%arg22, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_p4352", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i64):
    %58 = "llvm.mlir.constant"() <{value = 4352 : i64}> : () -> i64
    %59 = "llvm.mul"(%arg21, %58) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%59) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_p3840", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i64):
    %56 = "llvm.mlir.constant"() <{value = 3840 : i64}> : () -> i64
    %57 = "llvm.mul"(%arg20, %56) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%57) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_m4352", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i64):
    %54 = "llvm.mlir.constant"() <{value = -4352 : i64}> : () -> i64
    %55 = "llvm.mul"(%arg19, %54) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%55) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli64_m3840", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i64):
    %52 = "llvm.mlir.constant"() <{value = -3840 : i64}> : () -> i64
    %53 = "llvm.mul"(%arg18, %52) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%53) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli128_m3840", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i128):
    %50 = "llvm.mlir.constant"() <{value = -3840 : i128}> : () -> i128
    %51 = "llvm.mul"(%arg17, %50) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%51) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muli128_m63", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i128):
    %48 = "llvm.mlir.constant"() <{value = -63 : i128}> : () -> i128
    %49 = "llvm.mul"(%arg16, %48) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%49) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mulhsu_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64, %arg15: i64):
    %42 = "llvm.mlir.constant"() <{value = 64 : i128}> : () -> i128
    %43 = "llvm.zext"(%arg14) : (i64) -> i128
    %44 = "llvm.sext"(%arg15) : (i64) -> i128
    %45 = "llvm.mul"(%43, %44) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %46 = "llvm.lshr"(%45, %42) : (i128, i128) -> i128
    %47 = "llvm.trunc"(%46) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%47) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muladd_demand", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i8, %arg13: i8):
    %37 = "llvm.mlir.constant"() <{value = 14 : i8}> : () -> i8
    %38 = "llvm.mlir.constant"() <{value = 15 : i8}> : () -> i8
    %39 = "llvm.mul"(%arg12, %37) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %40 = "llvm.add"(%arg13, %39) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %41 = "llvm.and"(%40, %38) : (i8, i8) -> i8
    "llvm.return"(%41) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mulsub_demand", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i8, %arg11: i8):
    %32 = "llvm.mlir.constant"() <{value = 14 : i8}> : () -> i8
    %33 = "llvm.mlir.constant"() <{value = 15 : i8}> : () -> i8
    %34 = "llvm.mul"(%arg10, %32) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %35 = "llvm.sub"(%arg11, %34) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %36 = "llvm.and"(%35, %33) : (i8, i8) -> i8
    "llvm.return"(%36) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muladd_demand_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i8, %arg9: i8):
    %27 = "llvm.mlir.constant"() <{value = 14 : i8}> : () -> i8
    %28 = "llvm.mlir.constant"() <{value = -16 : i8}> : () -> i8
    %29 = "llvm.mul"(%arg8, %27) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %30 = "llvm.add"(%arg9, %29) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %31 = "llvm.or"(%30, %28) : (i8, i8) -> i8
    "llvm.return"(%31) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mulsub_demand_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i8, %arg7: i8):
    %22 = "llvm.mlir.constant"() <{value = 14 : i8}> : () -> i8
    %23 = "llvm.mlir.constant"() <{value = -16 : i8}> : () -> i8
    %24 = "llvm.mul"(%arg6, %22) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %25 = "llvm.sub"(%arg7, %24) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %26 = "llvm.or"(%25, %23) : (i8, i8) -> i8
    "llvm.return"(%26) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "muland_demand", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64):
    %18 = "llvm.mlir.constant"() <{value = 4611686018427387896 : i64}> : () -> i64
    %19 = "llvm.mlir.constant"() <{value = 12 : i64}> : () -> i64
    %20 = "llvm.and"(%arg5, %18) : (i64, i64) -> i64
    %21 = "llvm.mul"(%20, %19) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mulzext_demand", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %15 = "llvm.mlir.constant"() <{value = 12884901888 : i64}> : () -> i64
    %16 = "llvm.zext"(%arg4) : (i32) -> i64
    %17 = "llvm.mul"(%16, %15) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%17) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mulfshl_demand", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %11 = "llvm.mlir.constant"() <{value = 21 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 380141568 : i32}> : () -> i32
    %13 = "llvm.intr.fshl"(%arg3, %arg3, %11) : (i32, i32, i32) -> i32
    %14 = "llvm.mul"(%13, %12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mulor_demand", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32, %arg2: i32):
    %6 = "llvm.mlir.constant"() <{value = 10485760 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 380141568 : i32}> : () -> i32
    %8 = "llvm.mul"(%arg2, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %9 = "llvm.or"(%8, %arg1) <{isDisjoint}> : (i32, i32) -> i32
    %10 = "llvm.mul"(%9, %7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%10) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_add_bitcast", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = dense<0> : vector<2xi32>}> : () -> vector<2xi32>
    %3 = "llvm.add"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %4 = "llvm.bitcast"(%2) : (vector<2xi32>) -> i64
    %5 = "llvm.mul"(%3, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

