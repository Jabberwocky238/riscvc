"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg82: i64, %arg83: i64):
    %227 = "llvm.icmp"(%arg82, %arg83) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %228 = "llvm.zext"(%227) : (i1) -> i64
    "llvm.return"(%228) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eq_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg81: i64):
    %224 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %225 = "llvm.icmp"(%arg81, %224) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %226 = "llvm.zext"(%225) : (i1) -> i64
    "llvm.return"(%226) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eq_constant_2049", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: i64):
    %221 = "llvm.mlir.constant"() <{value = 2049 : i64}> : () -> i64
    %222 = "llvm.icmp"(%arg80, %221) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %223 = "llvm.zext"(%222) : (i1) -> i64
    "llvm.return"(%223) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eq_constant_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg79: i64):
    %218 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %219 = "llvm.icmp"(%arg79, %218) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %220 = "llvm.zext"(%219) : (i1) -> i64
    "llvm.return"(%220) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eq_constant_neg_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: i64):
    %215 = "llvm.mlir.constant"() <{value = -2048 : i64}> : () -> i64
    %216 = "llvm.icmp"(%arg78, %215) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %217 = "llvm.zext"(%216) : (i1) -> i64
    "llvm.return"(%217) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eq_constant_neg_2047", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg77: i64):
    %212 = "llvm.mlir.constant"() <{value = -2047 : i64}> : () -> i64
    %213 = "llvm.icmp"(%arg77, %212) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %214 = "llvm.zext"(%213) : (i1) -> i64
    "llvm.return"(%214) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eqz", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: i64):
    %209 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %210 = "llvm.icmp"(%arg76, %209) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %211 = "llvm.zext"(%210) : (i1) -> i64
    "llvm.return"(%211) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg74: i64, %arg75: i64):
    %207 = "llvm.icmp"(%arg74, %arg75) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %208 = "llvm.zext"(%207) : (i1) -> i64
    "llvm.return"(%208) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ne_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg73: i64):
    %204 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %205 = "llvm.icmp"(%arg73, %204) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %206 = "llvm.zext"(%205) : (i1) -> i64
    "llvm.return"(%206) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ne_constant_2049", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: i64):
    %201 = "llvm.mlir.constant"() <{value = 2049 : i64}> : () -> i64
    %202 = "llvm.icmp"(%arg72, %201) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %203 = "llvm.zext"(%202) : (i1) -> i64
    "llvm.return"(%203) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ne_constant_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg71: i64):
    %198 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %199 = "llvm.icmp"(%arg71, %198) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %200 = "llvm.zext"(%199) : (i1) -> i64
    "llvm.return"(%200) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ne_constant_neg_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg70: i64):
    %195 = "llvm.mlir.constant"() <{value = -2048 : i64}> : () -> i64
    %196 = "llvm.icmp"(%arg70, %195) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %197 = "llvm.zext"(%196) : (i1) -> i64
    "llvm.return"(%197) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ne_constant_neg_2047", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: i64):
    %192 = "llvm.mlir.constant"() <{value = -2047 : i64}> : () -> i64
    %193 = "llvm.icmp"(%arg69, %192) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %194 = "llvm.zext"(%193) : (i1) -> i64
    "llvm.return"(%194) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_nez", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: i64):
    %189 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %190 = "llvm.icmp"(%arg68, %189) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %191 = "llvm.zext"(%190) : (i1) -> i64
    "llvm.return"(%191) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ne_neg_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg67: i64):
    %186 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %187 = "llvm.icmp"(%arg67, %186) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %188 = "llvm.zext"(%187) : (i1) -> i64
    "llvm.return"(%188) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ugt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: i64, %arg66: i64):
    %184 = "llvm.icmp"(%arg65, %arg66) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %185 = "llvm.zext"(%184) : (i1) -> i64
    "llvm.return"(%185) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ugt_constant_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i64):
    %181 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %182 = "llvm.icmp"(%arg64, %181) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %183 = "llvm.zext"(%182) : (i1) -> i64
    "llvm.return"(%183) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ugt_constant_2047", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: i64):
    %178 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %179 = "llvm.icmp"(%arg63, %178) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %180 = "llvm.zext"(%179) : (i1) -> i64
    "llvm.return"(%180) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ugt_constant_4095", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: i64):
    %175 = "llvm.mlir.constant"() <{value = 4095 : i64}> : () -> i64
    %176 = "llvm.icmp"(%arg62, %175) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %177 = "llvm.zext"(%176) : (i1) -> i64
    "llvm.return"(%177) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ugt_constant_2046", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: i64):
    %172 = "llvm.mlir.constant"() <{value = 2046 : i64}> : () -> i64
    %173 = "llvm.icmp"(%arg61, %172) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %174 = "llvm.zext"(%173) : (i1) -> i64
    "llvm.return"(%174) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ugt_constant_neg_2049", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i64):
    %169 = "llvm.mlir.constant"() <{value = -2049 : i64}> : () -> i64
    %170 = "llvm.icmp"(%arg60, %169) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %171 = "llvm.zext"(%170) : (i1) -> i64
    "llvm.return"(%171) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ugt_constant_neg_2050", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: i64):
    %166 = "llvm.mlir.constant"() <{value = -2050 : i64}> : () -> i64
    %167 = "llvm.icmp"(%arg59, %166) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %168 = "llvm.zext"(%167) : (i1) -> i64
    "llvm.return"(%168) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_uge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: i64, %arg58: i64):
    %164 = "llvm.icmp"(%arg57, %arg58) <{predicate = 9 : i64}> : (i64, i64) -> i1
    %165 = "llvm.zext"(%164) : (i1) -> i64
    "llvm.return"(%165) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_uge_constant_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i64):
    %161 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %162 = "llvm.icmp"(%arg56, %161) <{predicate = 9 : i64}> : (i64, i64) -> i1
    %163 = "llvm.zext"(%162) : (i1) -> i64
    "llvm.return"(%163) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_uge_constant_2047", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: i64):
    %158 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %159 = "llvm.icmp"(%arg55, %158) <{predicate = 9 : i64}> : (i64, i64) -> i1
    %160 = "llvm.zext"(%159) : (i1) -> i64
    "llvm.return"(%160) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_uge_constant_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i64):
    %155 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %156 = "llvm.icmp"(%arg54, %155) <{predicate = 9 : i64}> : (i64, i64) -> i1
    %157 = "llvm.zext"(%156) : (i1) -> i64
    "llvm.return"(%157) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_uge_constant_neg_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: i64):
    %152 = "llvm.mlir.constant"() <{value = -2048 : i64}> : () -> i64
    %153 = "llvm.icmp"(%arg53, %152) <{predicate = 9 : i64}> : (i64, i64) -> i1
    %154 = "llvm.zext"(%153) : (i1) -> i64
    "llvm.return"(%154) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_uge_constant_neg_2049", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i64):
    %149 = "llvm.mlir.constant"() <{value = -2049 : i64}> : () -> i64
    %150 = "llvm.icmp"(%arg52, %149) <{predicate = 9 : i64}> : (i64, i64) -> i1
    %151 = "llvm.zext"(%150) : (i1) -> i64
    "llvm.return"(%151) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ult", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i64, %arg51: i64):
    %147 = "llvm.icmp"(%arg50, %arg51) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %148 = "llvm.zext"(%147) : (i1) -> i64
    "llvm.return"(%148) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ult_constant_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i64):
    %144 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %145 = "llvm.icmp"(%arg49, %144) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %146 = "llvm.zext"(%145) : (i1) -> i64
    "llvm.return"(%146) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ult_constant_2047", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i64):
    %141 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %142 = "llvm.icmp"(%arg48, %141) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %143 = "llvm.zext"(%142) : (i1) -> i64
    "llvm.return"(%143) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ult_constant_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i64):
    %138 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %139 = "llvm.icmp"(%arg47, %138) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %140 = "llvm.zext"(%139) : (i1) -> i64
    "llvm.return"(%140) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ult_constant_neg_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i64):
    %135 = "llvm.mlir.constant"() <{value = -2048 : i64}> : () -> i64
    %136 = "llvm.icmp"(%arg46, %135) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %137 = "llvm.zext"(%136) : (i1) -> i64
    "llvm.return"(%137) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ult_constant_neg_2049", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i64):
    %132 = "llvm.mlir.constant"() <{value = -2049 : i64}> : () -> i64
    %133 = "llvm.icmp"(%arg45, %132) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %134 = "llvm.zext"(%133) : (i1) -> i64
    "llvm.return"(%134) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ule", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i64, %arg44: i64):
    %130 = "llvm.icmp"(%arg43, %arg44) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %131 = "llvm.zext"(%130) : (i1) -> i64
    "llvm.return"(%131) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ule_constant_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i64):
    %127 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %128 = "llvm.icmp"(%arg42, %127) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %129 = "llvm.zext"(%128) : (i1) -> i64
    "llvm.return"(%129) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ule_constant_2046", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i64):
    %124 = "llvm.mlir.constant"() <{value = 2046 : i64}> : () -> i64
    %125 = "llvm.icmp"(%arg41, %124) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %126 = "llvm.zext"(%125) : (i1) -> i64
    "llvm.return"(%126) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ule_constant_2047", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i64):
    %121 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %122 = "llvm.icmp"(%arg40, %121) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %123 = "llvm.zext"(%122) : (i1) -> i64
    "llvm.return"(%123) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ule_constant_neg_2049", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i64):
    %118 = "llvm.mlir.constant"() <{value = -2049 : i64}> : () -> i64
    %119 = "llvm.icmp"(%arg39, %118) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %120 = "llvm.zext"(%119) : (i1) -> i64
    "llvm.return"(%120) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ule_constant_neg_2050", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i64):
    %115 = "llvm.mlir.constant"() <{value = -2050 : i64}> : () -> i64
    %116 = "llvm.icmp"(%arg38, %115) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %117 = "llvm.zext"(%116) : (i1) -> i64
    "llvm.return"(%117) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sgt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i64, %arg37: i64):
    %113 = "llvm.icmp"(%arg36, %arg37) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %114 = "llvm.zext"(%113) : (i1) -> i64
    "llvm.return"(%114) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sgt_constant_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i64):
    %110 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %111 = "llvm.icmp"(%arg35, %110) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %112 = "llvm.zext"(%111) : (i1) -> i64
    "llvm.return"(%112) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sgt_constant_2046", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i64):
    %107 = "llvm.mlir.constant"() <{value = 2046 : i64}> : () -> i64
    %108 = "llvm.icmp"(%arg34, %107) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %109 = "llvm.zext"(%108) : (i1) -> i64
    "llvm.return"(%109) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sgt_constant_2047", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i64):
    %104 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %105 = "llvm.icmp"(%arg33, %104) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %106 = "llvm.zext"(%105) : (i1) -> i64
    "llvm.return"(%106) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sgt_constant_neg_2049", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i64):
    %101 = "llvm.mlir.constant"() <{value = -2049 : i64}> : () -> i64
    %102 = "llvm.icmp"(%arg32, %101) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %103 = "llvm.zext"(%102) : (i1) -> i64
    "llvm.return"(%103) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sgt_constant_neg_2050", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i64):
    %98 = "llvm.mlir.constant"() <{value = -2050 : i64}> : () -> i64
    %99 = "llvm.icmp"(%arg31, %98) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %100 = "llvm.zext"(%99) : (i1) -> i64
    "llvm.return"(%100) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sge", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i64, %arg30: i64):
    %96 = "llvm.icmp"(%arg29, %arg30) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %97 = "llvm.zext"(%96) : (i1) -> i64
    "llvm.return"(%97) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sge_constant_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i64):
    %93 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %94 = "llvm.icmp"(%arg28, %93) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %95 = "llvm.zext"(%94) : (i1) -> i64
    "llvm.return"(%95) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sge_constant_2047", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i64):
    %90 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %91 = "llvm.icmp"(%arg27, %90) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %92 = "llvm.zext"(%91) : (i1) -> i64
    "llvm.return"(%92) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sge_constant_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i64):
    %87 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %88 = "llvm.icmp"(%arg26, %87) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %89 = "llvm.zext"(%88) : (i1) -> i64
    "llvm.return"(%89) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sge_constant_neg_2047", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i64):
    %84 = "llvm.mlir.constant"() <{value = -2047 : i64}> : () -> i64
    %85 = "llvm.icmp"(%arg25, %84) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %86 = "llvm.zext"(%85) : (i1) -> i64
    "llvm.return"(%86) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sge_constant_neg_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i64):
    %81 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %82 = "llvm.icmp"(%arg24, %81) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %83 = "llvm.zext"(%82) : (i1) -> i64
    "llvm.return"(%83) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_slt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i64, %arg23: i64):
    %79 = "llvm.icmp"(%arg22, %arg23) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %80 = "llvm.zext"(%79) : (i1) -> i64
    "llvm.return"(%80) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_slt_constant_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i64):
    %76 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %77 = "llvm.icmp"(%arg21, %76) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %78 = "llvm.zext"(%77) : (i1) -> i64
    "llvm.return"(%78) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_slt_constant_2047", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i64):
    %73 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %74 = "llvm.icmp"(%arg20, %73) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %75 = "llvm.zext"(%74) : (i1) -> i64
    "llvm.return"(%75) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_slt_constant_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i64):
    %70 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %71 = "llvm.icmp"(%arg19, %70) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %72 = "llvm.zext"(%71) : (i1) -> i64
    "llvm.return"(%72) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_slt_constant_neg_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i64):
    %67 = "llvm.mlir.constant"() <{value = -2048 : i64}> : () -> i64
    %68 = "llvm.icmp"(%arg18, %67) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %69 = "llvm.zext"(%68) : (i1) -> i64
    "llvm.return"(%69) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_slt_constant_neg_2049", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i64):
    %64 = "llvm.mlir.constant"() <{value = -2049 : i64}> : () -> i64
    %65 = "llvm.icmp"(%arg17, %64) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %66 = "llvm.zext"(%65) : (i1) -> i64
    "llvm.return"(%66) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sle", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i64, %arg16: i64):
    %62 = "llvm.icmp"(%arg15, %arg16) <{predicate = 3 : i64}> : (i64, i64) -> i1
    %63 = "llvm.zext"(%62) : (i1) -> i64
    "llvm.return"(%63) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sle_constant_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64):
    %59 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %60 = "llvm.icmp"(%arg14, %59) <{predicate = 3 : i64}> : (i64, i64) -> i1
    %61 = "llvm.zext"(%60) : (i1) -> i64
    "llvm.return"(%61) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sle_constant_2046", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64):
    %56 = "llvm.mlir.constant"() <{value = 2046 : i64}> : () -> i64
    %57 = "llvm.icmp"(%arg13, %56) <{predicate = 3 : i64}> : (i64, i64) -> i1
    %58 = "llvm.zext"(%57) : (i1) -> i64
    "llvm.return"(%58) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sle_constant_2047", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %53 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %54 = "llvm.icmp"(%arg12, %53) <{predicate = 3 : i64}> : (i64, i64) -> i1
    %55 = "llvm.zext"(%54) : (i1) -> i64
    "llvm.return"(%55) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sle_constant_neg_2049", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i64):
    %50 = "llvm.mlir.constant"() <{value = -2049 : i64}> : () -> i64
    %51 = "llvm.icmp"(%arg11, %50) <{predicate = 3 : i64}> : (i64, i64) -> i1
    %52 = "llvm.zext"(%51) : (i1) -> i64
    "llvm.return"(%52) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_sle_constant_neg_2050", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64):
    %47 = "llvm.mlir.constant"() <{value = -2050 : i64}> : () -> i64
    %48 = "llvm.icmp"(%arg10, %47) <{predicate = 3 : i64}> : (i64, i64) -> i1
    %49 = "llvm.zext"(%48) : (i1) -> i64
    "llvm.return"(%49) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eq_zext_inreg_small_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64):
    %42 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %43 = "llvm.mlir.constant"() <{value = 123 : i64}> : () -> i64
    %44 = "llvm.and"(%arg9, %42) : (i64, i64) -> i64
    %45 = "llvm.icmp"(%44, %43) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %46 = "llvm.zext"(%45) : (i1) -> i64
    "llvm.return"(%46) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eq_zext_inreg_large_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %37 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %38 = "llvm.mlir.constant"() <{value = 2309737967 : i64}> : () -> i64
    %39 = "llvm.and"(%arg8, %37) : (i64, i64) -> i64
    %40 = "llvm.icmp"(%39, %38) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %41 = "llvm.zext"(%40) : (i1) -> i64
    "llvm.return"(%41) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ne_zext_inreg_small_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %32 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %33 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %34 = "llvm.and"(%arg7, %32) : (i64, i64) -> i64
    %35 = "llvm.icmp"(%34, %33) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %36 = "llvm.zext"(%35) : (i1) -> i64
    "llvm.return"(%36) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ne_zext_inreg_large_constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %27 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %28 = "llvm.mlir.constant"() <{value = 4294967294 : i64}> : () -> i64
    %29 = "llvm.and"(%arg6, %27) : (i64, i64) -> i64
    %30 = "llvm.icmp"(%29, %28) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %31 = "llvm.zext"(%30) : (i1) -> i64
    "llvm.return"(%31) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ne_zext_inreg_umin", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64):
    %20 = "llvm.mlir.constant"() <{value = 123456789 : i64}> : () -> i64
    %21 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %22 = "llvm.mlir.constant"() <{value = 123 : i64}> : () -> i64
    %23 = "llvm.intr.umin"(%arg5, %20) : (i64, i64) -> i64
    %24 = "llvm.and"(%23, %21) : (i64, i64) -> i64
    %25 = "llvm.icmp"(%24, %22) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %26 = "llvm.zext"(%25) : (i1) -> i64
    "llvm.return"(%26) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mask_test_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %15 = "llvm.mlir.constant"() <{value = 4611686018427387903 : i64}> : () -> i64
    %16 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %17 = "llvm.and"(%arg4, %15) : (i64, i64) -> i64
    %18 = "llvm.icmp"(%17, %16) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %19 = "llvm.zext"(%18) : (i1) -> i64
    "llvm.return"(%19) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mask_test_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %10 = "llvm.mlir.constant"() <{value = 4611686018427387903 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %12 = "llvm.and"(%arg3, %10) : (i64, i64) -> i64
    %13 = "llvm.icmp"(%12, %11) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %14 = "llvm.zext"(%13) : (i1) -> i64
    "llvm.return"(%14) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mask_test_eq_simm12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %5 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %7 = "llvm.and"(%arg2, %5) : (i64, i64) -> i64
    %8 = "llvm.icmp"(%7, %6) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %9 = "llvm.zext"(%8) : (i1) -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "mask_test_eq_multiuse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 4611686018427387903 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "llvm.and"(%arg0, %0) : (i64, i64) -> i64
    "llvm.store"(%2, %arg1) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %3 = "llvm.icmp"(%2, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %4 = "llvm.zext"(%3) : (i1) -> i64
    "llvm.return"(%4) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

