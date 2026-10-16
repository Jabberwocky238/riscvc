"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "out8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg145: i8, %arg146: i8, %arg147: i8):
    %185 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %186 = "llvm.and"(%arg145, %arg147) : (i8, i8) -> i8
    %187 = "llvm.xor"(%arg147, %185) : (i8, i8) -> i8
    %188 = "llvm.and"(%arg146, %187) : (i8, i8) -> i8
    %189 = "llvm.or"(%186, %188) : (i8, i8) -> i8
    "llvm.return"(%189) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "out16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg142: i16, %arg143: i16, %arg144: i16):
    %180 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %181 = "llvm.and"(%arg142, %arg144) : (i16, i16) -> i16
    %182 = "llvm.xor"(%arg144, %180) : (i16, i16) -> i16
    %183 = "llvm.and"(%arg143, %182) : (i16, i16) -> i16
    %184 = "llvm.or"(%181, %183) : (i16, i16) -> i16
    "llvm.return"(%184) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "out32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg139: i32, %arg140: i32, %arg141: i32):
    %175 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %176 = "llvm.and"(%arg139, %arg141) : (i32, i32) -> i32
    %177 = "llvm.xor"(%arg141, %175) : (i32, i32) -> i32
    %178 = "llvm.and"(%arg140, %177) : (i32, i32) -> i32
    %179 = "llvm.or"(%176, %178) : (i32, i32) -> i32
    "llvm.return"(%179) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "out64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg136: i64, %arg137: i64, %arg138: i64):
    %170 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %171 = "llvm.and"(%arg136, %arg138) : (i64, i64) -> i64
    %172 = "llvm.xor"(%arg138, %170) : (i64, i64) -> i64
    %173 = "llvm.and"(%arg137, %172) : (i64, i64) -> i64
    %174 = "llvm.or"(%171, %173) : (i64, i64) -> i64
    "llvm.return"(%174) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "in8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg133: i8, %arg134: i8, %arg135: i8):
    %167 = "llvm.xor"(%arg133, %arg134) : (i8, i8) -> i8
    %168 = "llvm.and"(%167, %arg135) : (i8, i8) -> i8
    %169 = "llvm.xor"(%168, %arg134) : (i8, i8) -> i8
    "llvm.return"(%169) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "in16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg130: i16, %arg131: i16, %arg132: i16):
    %164 = "llvm.xor"(%arg130, %arg131) : (i16, i16) -> i16
    %165 = "llvm.and"(%164, %arg132) : (i16, i16) -> i16
    %166 = "llvm.xor"(%165, %arg131) : (i16, i16) -> i16
    "llvm.return"(%166) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg127: i32, %arg128: i32, %arg129: i32):
    %161 = "llvm.xor"(%arg127, %arg128) : (i32, i32) -> i32
    %162 = "llvm.and"(%161, %arg129) : (i32, i32) -> i32
    %163 = "llvm.xor"(%162, %arg128) : (i32, i32) -> i32
    "llvm.return"(%163) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "in64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: i64, %arg125: i64, %arg126: i64):
    %158 = "llvm.xor"(%arg124, %arg125) : (i64, i64) -> i64
    %159 = "llvm.and"(%158, %arg126) : (i64, i64) -> i64
    %160 = "llvm.xor"(%159, %arg125) : (i64, i64) -> i64
    "llvm.return"(%160) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_commutativity_0_0_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg121: i32, %arg122: i32, %arg123: i32):
    %155 = "llvm.xor"(%arg121, %arg122) : (i32, i32) -> i32
    %156 = "llvm.and"(%arg123, %155) : (i32, i32) -> i32
    %157 = "llvm.xor"(%156, %arg122) : (i32, i32) -> i32
    "llvm.return"(%157) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_commutativity_0_1_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg118: i32, %arg119: i32, %arg120: i32):
    %152 = "llvm.xor"(%arg118, %arg119) : (i32, i32) -> i32
    %153 = "llvm.and"(%152, %arg120) : (i32, i32) -> i32
    %154 = "llvm.xor"(%arg119, %153) : (i32, i32) -> i32
    "llvm.return"(%154) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_commutativity_0_1_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg115: i32, %arg116: i32, %arg117: i32):
    %149 = "llvm.xor"(%arg115, %arg116) : (i32, i32) -> i32
    %150 = "llvm.and"(%arg117, %149) : (i32, i32) -> i32
    %151 = "llvm.xor"(%arg116, %150) : (i32, i32) -> i32
    "llvm.return"(%151) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_commutativity_1_0_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg112: i32, %arg113: i32, %arg114: i32):
    %146 = "llvm.xor"(%arg112, %arg113) : (i32, i32) -> i32
    %147 = "llvm.and"(%146, %arg114) : (i32, i32) -> i32
    %148 = "llvm.xor"(%147, %arg112) : (i32, i32) -> i32
    "llvm.return"(%148) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_commutativity_1_0_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg109: i32, %arg110: i32, %arg111: i32):
    %143 = "llvm.xor"(%arg109, %arg110) : (i32, i32) -> i32
    %144 = "llvm.and"(%arg111, %143) : (i32, i32) -> i32
    %145 = "llvm.xor"(%144, %arg109) : (i32, i32) -> i32
    "llvm.return"(%145) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_commutativity_1_1_0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg106: i32, %arg107: i32, %arg108: i32):
    %140 = "llvm.xor"(%arg106, %arg107) : (i32, i32) -> i32
    %141 = "llvm.and"(%140, %arg108) : (i32, i32) -> i32
    %142 = "llvm.xor"(%arg106, %141) : (i32, i32) -> i32
    "llvm.return"(%142) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_commutativity_1_1_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg103: i32, %arg104: i32, %arg105: i32):
    %137 = "llvm.xor"(%arg103, %arg104) : (i32, i32) -> i32
    %138 = "llvm.and"(%arg105, %137) : (i32, i32) -> i32
    %139 = "llvm.xor"(%arg103, %138) : (i32, i32) -> i32
    "llvm.return"(%139) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_complex_y0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: i32, %arg100: i32, %arg101: i32, %arg102: i32):
    %133 = "llvm.and"(%arg100, %arg101) : (i32, i32) -> i32
    %134 = "llvm.xor"(%arg99, %133) : (i32, i32) -> i32
    %135 = "llvm.and"(%134, %arg102) : (i32, i32) -> i32
    %136 = "llvm.xor"(%135, %133) : (i32, i32) -> i32
    "llvm.return"(%136) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_complex_y1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg95: i32, %arg96: i32, %arg97: i32, %arg98: i32):
    %129 = "llvm.and"(%arg96, %arg97) : (i32, i32) -> i32
    %130 = "llvm.xor"(%arg95, %129) : (i32, i32) -> i32
    %131 = "llvm.and"(%130, %arg98) : (i32, i32) -> i32
    %132 = "llvm.xor"(%129, %131) : (i32, i32) -> i32
    "llvm.return"(%132) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_complex_m0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg91: i32, %arg92: i32, %arg93: i32, %arg94: i32):
    %125 = "llvm.xor"(%arg93, %arg94) : (i32, i32) -> i32
    %126 = "llvm.xor"(%arg91, %arg92) : (i32, i32) -> i32
    %127 = "llvm.and"(%126, %125) : (i32, i32) -> i32
    %128 = "llvm.xor"(%127, %arg92) : (i32, i32) -> i32
    "llvm.return"(%128) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_complex_m1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg87: i32, %arg88: i32, %arg89: i32, %arg90: i32):
    %121 = "llvm.xor"(%arg89, %arg90) : (i32, i32) -> i32
    %122 = "llvm.xor"(%arg87, %arg88) : (i32, i32) -> i32
    %123 = "llvm.and"(%121, %122) : (i32, i32) -> i32
    %124 = "llvm.xor"(%123, %arg88) : (i32, i32) -> i32
    "llvm.return"(%124) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_complex_y0_m0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg82: i32, %arg83: i32, %arg84: i32, %arg85: i32, %arg86: i32):
    %116 = "llvm.and"(%arg83, %arg84) : (i32, i32) -> i32
    %117 = "llvm.xor"(%arg85, %arg86) : (i32, i32) -> i32
    %118 = "llvm.xor"(%arg82, %116) : (i32, i32) -> i32
    %119 = "llvm.and"(%118, %117) : (i32, i32) -> i32
    %120 = "llvm.xor"(%119, %116) : (i32, i32) -> i32
    "llvm.return"(%120) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_complex_y1_m0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg77: i32, %arg78: i32, %arg79: i32, %arg80: i32, %arg81: i32):
    %111 = "llvm.and"(%arg78, %arg79) : (i32, i32) -> i32
    %112 = "llvm.xor"(%arg80, %arg81) : (i32, i32) -> i32
    %113 = "llvm.xor"(%arg77, %111) : (i32, i32) -> i32
    %114 = "llvm.and"(%113, %112) : (i32, i32) -> i32
    %115 = "llvm.xor"(%111, %114) : (i32, i32) -> i32
    "llvm.return"(%115) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_complex_y0_m1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: i32, %arg73: i32, %arg74: i32, %arg75: i32, %arg76: i32):
    %106 = "llvm.and"(%arg73, %arg74) : (i32, i32) -> i32
    %107 = "llvm.xor"(%arg75, %arg76) : (i32, i32) -> i32
    %108 = "llvm.xor"(%arg72, %106) : (i32, i32) -> i32
    %109 = "llvm.and"(%107, %108) : (i32, i32) -> i32
    %110 = "llvm.xor"(%109, %106) : (i32, i32) -> i32
    "llvm.return"(%110) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_complex_y1_m1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg67: i32, %arg68: i32, %arg69: i32, %arg70: i32, %arg71: i32):
    %101 = "llvm.and"(%arg68, %arg69) : (i32, i32) -> i32
    %102 = "llvm.xor"(%arg70, %arg71) : (i32, i32) -> i32
    %103 = "llvm.xor"(%arg67, %101) : (i32, i32) -> i32
    %104 = "llvm.and"(%102, %103) : (i32, i32) -> i32
    %105 = "llvm.xor"(%101, %104) : (i32, i32) -> i32
    "llvm.return"(%105) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "out_constant_varx_mone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i32, %arg65: i32, %arg66: i32):
    %96 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %97 = "llvm.xor"(%arg66, %96) : (i32, i32) -> i32
    %98 = "llvm.and"(%arg66, %arg64) : (i32, i32) -> i32
    %99 = "llvm.and"(%97, %96) : (i32, i32) -> i32
    %100 = "llvm.or"(%98, %99) : (i32, i32) -> i32
    "llvm.return"(%100) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_constant_varx_mone", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: i32, %arg62: i32, %arg63: i32):
    %92 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %93 = "llvm.xor"(%arg61, %92) : (i32, i32) -> i32
    %94 = "llvm.and"(%93, %arg63) : (i32, i32) -> i32
    %95 = "llvm.xor"(%94, %92) : (i32, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "out_constant_varx_mone_invmask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i32, %arg59: i32, %arg60: i32):
    %87 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %88 = "llvm.xor"(%arg60, %87) : (i32, i32) -> i32
    %89 = "llvm.and"(%88, %arg58) : (i32, i32) -> i32
    %90 = "llvm.and"(%arg60, %87) : (i32, i32) -> i32
    %91 = "llvm.or"(%89, %90) : (i32, i32) -> i32
    "llvm.return"(%91) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_constant_varx_mone_invmask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: i32, %arg56: i32, %arg57: i32):
    %82 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %83 = "llvm.xor"(%arg57, %82) : (i32, i32) -> i32
    %84 = "llvm.xor"(%arg55, %82) : (i32, i32) -> i32
    %85 = "llvm.and"(%84, %83) : (i32, i32) -> i32
    %86 = "llvm.xor"(%85, %82) : (i32, i32) -> i32
    "llvm.return"(%86) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "out_constant_varx_42", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i32, %arg53: i32, %arg54: i32):
    %76 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %77 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %78 = "llvm.xor"(%arg54, %76) : (i32, i32) -> i32
    %79 = "llvm.and"(%arg54, %arg52) : (i32, i32) -> i32
    %80 = "llvm.and"(%78, %77) : (i32, i32) -> i32
    %81 = "llvm.or"(%79, %80) : (i32, i32) -> i32
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_constant_varx_42", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i32, %arg50: i32, %arg51: i32):
    %72 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %73 = "llvm.xor"(%arg49, %72) : (i32, i32) -> i32
    %74 = "llvm.and"(%73, %arg51) : (i32, i32) -> i32
    %75 = "llvm.xor"(%74, %72) : (i32, i32) -> i32
    "llvm.return"(%75) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "out_constant_varx_42_invmask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i32, %arg47: i32, %arg48: i32):
    %66 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %67 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %68 = "llvm.xor"(%arg48, %66) : (i32, i32) -> i32
    %69 = "llvm.and"(%68, %arg46) : (i32, i32) -> i32
    %70 = "llvm.and"(%arg48, %67) : (i32, i32) -> i32
    %71 = "llvm.or"(%69, %70) : (i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_constant_varx_42_invmask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i32, %arg44: i32, %arg45: i32):
    %60 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %61 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %62 = "llvm.xor"(%arg45, %60) : (i32, i32) -> i32
    %63 = "llvm.xor"(%arg43, %61) : (i32, i32) -> i32
    %64 = "llvm.and"(%63, %62) : (i32, i32) -> i32
    %65 = "llvm.xor"(%64, %61) : (i32, i32) -> i32
    "llvm.return"(%65) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "out_constant_mone_vary", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32, %arg41: i32, %arg42: i32):
    %55 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %56 = "llvm.xor"(%arg42, %55) : (i32, i32) -> i32
    %57 = "llvm.and"(%arg42, %55) : (i32, i32) -> i32
    %58 = "llvm.and"(%56, %arg41) : (i32, i32) -> i32
    %59 = "llvm.or"(%57, %58) : (i32, i32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_constant_mone_vary", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32, %arg38: i32, %arg39: i32):
    %51 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %52 = "llvm.xor"(%51, %arg38) : (i32, i32) -> i32
    %53 = "llvm.and"(%52, %arg39) : (i32, i32) -> i32
    %54 = "llvm.xor"(%53, %arg38) : (i32, i32) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "out_constant_mone_vary_invmask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i32, %arg35: i32, %arg36: i32):
    %46 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %47 = "llvm.xor"(%arg36, %46) : (i32, i32) -> i32
    %48 = "llvm.and"(%47, %46) : (i32, i32) -> i32
    %49 = "llvm.and"(%arg36, %arg35) : (i32, i32) -> i32
    %50 = "llvm.or"(%48, %49) : (i32, i32) -> i32
    "llvm.return"(%50) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_constant_mone_vary_invmask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i32, %arg32: i32, %arg33: i32):
    %41 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %42 = "llvm.xor"(%arg33, %41) : (i32, i32) -> i32
    %43 = "llvm.xor"(%41, %arg32) : (i32, i32) -> i32
    %44 = "llvm.and"(%43, %42) : (i32, i32) -> i32
    %45 = "llvm.xor"(%44, %arg32) : (i32, i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "out_constant_42_vary", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32, %arg29: i32, %arg30: i32):
    %35 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %37 = "llvm.xor"(%arg30, %35) : (i32, i32) -> i32
    %38 = "llvm.and"(%arg30, %36) : (i32, i32) -> i32
    %39 = "llvm.and"(%37, %arg29) : (i32, i32) -> i32
    %40 = "llvm.or"(%38, %39) : (i32, i32) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_constant_42_vary", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32, %arg26: i32, %arg27: i32):
    %31 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %32 = "llvm.xor"(%31, %arg26) : (i32, i32) -> i32
    %33 = "llvm.and"(%32, %arg27) : (i32, i32) -> i32
    %34 = "llvm.xor"(%33, %arg26) : (i32, i32) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "out_constant_42_vary_invmask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32, %arg24: i32):
    %25 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %27 = "llvm.xor"(%arg24, %25) : (i32, i32) -> i32
    %28 = "llvm.and"(%27, %26) : (i32, i32) -> i32
    %29 = "llvm.and"(%arg24, %arg23) : (i32, i32) -> i32
    %30 = "llvm.or"(%28, %29) : (i32, i32) -> i32
    "llvm.return"(%30) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "in_constant_42_vary_invmask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32, %arg20: i32, %arg21: i32):
    %19 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %21 = "llvm.xor"(%arg21, %19) : (i32, i32) -> i32
    %22 = "llvm.xor"(%20, %arg20) : (i32, i32) -> i32
    %23 = "llvm.and"(%22, %21) : (i32, i32) -> i32
    %24 = "llvm.xor"(%23, %arg20) : (i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "use32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "in_multiuse_A", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32):
    %16 = "llvm.xor"(%arg15, %arg16) : (i32, i32) -> i32
    %17 = "llvm.and"(%16, %arg18) : (i32, i32) -> i32
    "llvm.call"(%17) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @use32, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> ()
    %18 = "llvm.xor"(%17, %arg16) : (i32, i32) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "in_multiuse_B", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32):
    %13 = "llvm.xor"(%arg11, %arg12) : (i32, i32) -> i32
    %14 = "llvm.and"(%13, %arg14) : (i32, i32) -> i32
    "llvm.call"(%13) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @use32, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> ()
    %15 = "llvm.xor"(%14, %arg12) : (i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "n0_badmask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32):
    %8 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %9 = "llvm.and"(%arg7, %arg9) : (i32, i32) -> i32
    %10 = "llvm.xor"(%arg10, %8) : (i32, i32) -> i32
    %11 = "llvm.and"(%arg8, %10) : (i32, i32) -> i32
    %12 = "llvm.or"(%9, %11) : (i32, i32) -> i32
    "llvm.return"(%12) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "n0_badxor", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32, %arg6: i32):
    %3 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "llvm.and"(%arg4, %arg6) : (i32, i32) -> i32
    %5 = "llvm.xor"(%arg6, %3) : (i32, i32) -> i32
    %6 = "llvm.and"(%arg5, %5) : (i32, i32) -> i32
    %7 = "llvm.or"(%4, %6) : (i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "n1_thirdvar", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "llvm.xor"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "llvm.and"(%0, %arg3) : (i32, i32) -> i32
    %2 = "llvm.xor"(%1, %arg2) : (i32, i32) -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

