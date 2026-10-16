"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ctlz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: i32):
    %253 = "llvm.intr.ctlz"(%arg99) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%253) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "log2_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg98: i32):
    %250 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %251 = "llvm.intr.ctlz"(%arg98) <{is_zero_poison = false}> : (i32) -> i32
    %252 = "llvm.sub"(%250, %251) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%252) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "log2_ceil_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg97: i32):
    %245 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %246 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %247 = "llvm.sub"(%arg97, %245) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %248 = "llvm.intr.ctlz"(%247) <{is_zero_poison = false}> : (i32) -> i32
    %249 = "llvm.sub"(%246, %248) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%249) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "findLastSet_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: i32):
    %238 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %239 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %240 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %241 = "llvm.intr.ctlz"(%arg96) <{is_zero_poison = true}> : (i32) -> i32
    %242 = "llvm.xor"(%238, %241) : (i32, i32) -> i32
    %243 = "llvm.icmp"(%arg96, %239) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %244 = "llvm.select"(%243, %240, %242) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%244) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "ctlz_lshr_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg95: i32):
    %235 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %236 = "llvm.lshr"(%arg95, %235) : (i32, i32) -> i32
    %237 = "llvm.intr.ctlz"(%236) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%237) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctlz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg94: i64):
    %234 = "llvm.intr.ctlz"(%arg94) <{is_zero_poison = false}> : (i64) -> i64
    "llvm.return"(%234) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "cttz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg93: i32):
    %233 = "llvm.intr.cttz"(%arg93) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%233) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "cttz_zero_undef_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg92: i32):
    %232 = "llvm.intr.cttz"(%arg92) <{is_zero_poison = true}> : (i32) -> i32
    "llvm.return"(%232) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "findFirstSet_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg91: i32):
    %227 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %228 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %229 = "llvm.intr.cttz"(%arg91) <{is_zero_poison = true}> : (i32) -> i32
    %230 = "llvm.icmp"(%arg91, %227) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %231 = "llvm.select"(%230, %228, %229) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%231) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ffs_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg90: i32):
    %221 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %222 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %223 = "llvm.intr.cttz"(%arg90) <{is_zero_poison = true}> : (i32) -> i32
    %224 = "llvm.add"(%223, %221) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %225 = "llvm.icmp"(%arg90, %222) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %226 = "llvm.select"(%225, %222, %224) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%226) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cttz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg89: i64):
    %220 = "llvm.intr.cttz"(%arg89) <{is_zero_poison = false}> : (i64) -> i64
    "llvm.return"(%220) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ctpop_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: i32):
    %219 = "llvm.intr.ctpop"(%arg88) : (i32) -> i32
    "llvm.return"(%219) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i32_ult_two", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg87: i32):
    %216 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %217 = "llvm.intr.ctpop"(%arg87) : (i32) -> i32
    %218 = "llvm.icmp"(%217, %216) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.return"(%218) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i32_ugt_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg86: i32):
    %213 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %214 = "llvm.intr.ctpop"(%arg86) : (i32) -> i32
    %215 = "llvm.icmp"(%214, %213) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.return"(%215) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i32_eq_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg85: i32):
    %210 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %211 = "llvm.intr.ctpop"(%arg85) : (i32) -> i32
    %212 = "llvm.icmp"(%211, %210) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%212) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i32_ne_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: i32):
    %207 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %208 = "llvm.intr.ctpop"(%arg84) : (i32) -> i32
    %209 = "llvm.icmp"(%208, %207) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.return"(%209) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "ctpop_i32_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg83: !llvm.ptr):
    %205 = "llvm.load"(%arg83) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %206 = "llvm.intr.ctpop"(%205) : (i32) -> i32
    "llvm.return"(%206) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi32> (vector<2xi32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg82: vector<2xi32>):
    %204 = "llvm.intr.ctpop"(%arg82) : (vector<2xi32>) -> vector<2xi32>
    "llvm.return"(%204) : (vector<2xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i32_ult_two", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg81: vector<2xi32>):
    %201 = "llvm.mlir.constant"() <{value = dense<2> : vector<2xi32>}> : () -> vector<2xi32>
    %202 = "llvm.intr.ctpop"(%arg81) : (vector<2xi32>) -> vector<2xi32>
    %203 = "llvm.icmp"(%202, %201) <{predicate = 6 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    "llvm.return"(%203) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i32_ugt_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: vector<2xi32>):
    %198 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi32>}> : () -> vector<2xi32>
    %199 = "llvm.intr.ctpop"(%arg80) : (vector<2xi32>) -> vector<2xi32>
    %200 = "llvm.icmp"(%199, %198) <{predicate = 8 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    "llvm.return"(%200) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i32_eq_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg79: vector<2xi32>):
    %195 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi32>}> : () -> vector<2xi32>
    %196 = "llvm.intr.ctpop"(%arg79) : (vector<2xi32>) -> vector<2xi32>
    %197 = "llvm.icmp"(%196, %195) <{predicate = 0 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    "llvm.return"(%197) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i32_ne_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: vector<2xi32>):
    %192 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi32>}> : () -> vector<2xi32>
    %193 = "llvm.intr.ctpop"(%arg78) : (vector<2xi32>) -> vector<2xi32>
    %194 = "llvm.icmp"(%193, %192) <{predicate = 1 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    "llvm.return"(%194) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg77: i64):
    %191 = "llvm.intr.ctpop"(%arg77) : (i64) -> i64
    "llvm.return"(%191) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i64_ugt_two", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: i64):
    %188 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %189 = "llvm.intr.ctpop"(%arg76) : (i64) -> i64
    %190 = "llvm.icmp"(%189, %188) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.return"(%190) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i64_ugt_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg75: i64):
    %185 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %186 = "llvm.intr.ctpop"(%arg75) : (i64) -> i64
    %187 = "llvm.icmp"(%186, %185) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.return"(%187) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i64_eq_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg74: i64):
    %182 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %183 = "llvm.intr.ctpop"(%arg74) : (i64) -> i64
    %184 = "llvm.icmp"(%183, %182) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%184) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i64_ne_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg73: i64):
    %179 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %180 = "llvm.intr.ctpop"(%arg73) : (i64) -> i64
    %181 = "llvm.icmp"(%180, %179) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.return"(%181) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi64> (vector<2xi64>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: vector<2xi64>):
    %178 = "llvm.intr.ctpop"(%arg72) : (vector<2xi64>) -> vector<2xi64>
    "llvm.return"(%178) : (vector<2xi64>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi64>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i64_ult_two", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg71: vector<2xi64>):
    %175 = "llvm.mlir.constant"() <{value = dense<2> : vector<2xi64>}> : () -> vector<2xi64>
    %176 = "llvm.intr.ctpop"(%arg71) : (vector<2xi64>) -> vector<2xi64>
    %177 = "llvm.icmp"(%176, %175) <{predicate = 6 : i64}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi1>
    "llvm.return"(%177) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi64>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i64_ugt_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg70: vector<2xi64>):
    %172 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi64>}> : () -> vector<2xi64>
    %173 = "llvm.intr.ctpop"(%arg70) : (vector<2xi64>) -> vector<2xi64>
    %174 = "llvm.icmp"(%173, %172) <{predicate = 8 : i64}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi1>
    "llvm.return"(%174) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi64>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i64_eq_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: vector<2xi64>):
    %169 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi64>}> : () -> vector<2xi64>
    %170 = "llvm.intr.ctpop"(%arg69) : (vector<2xi64>) -> vector<2xi64>
    %171 = "llvm.icmp"(%170, %169) <{predicate = 0 : i64}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi1>
    "llvm.return"(%171) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi64>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i64_ne_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: vector<2xi64>):
    %166 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi64>}> : () -> vector<2xi64>
    %167 = "llvm.intr.ctpop"(%arg68) : (vector<2xi64>) -> vector<2xi64>
    %168 = "llvm.icmp"(%167, %166) <{predicate = 1 : i64}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi1>
    "llvm.return"(%168) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sextb_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg67: i32):
    %163 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %164 = "llvm.shl"(%arg67, %163) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %165 = "llvm.ashr"(%164, %163) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%165) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sextb_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: i64):
    %160 = "llvm.mlir.constant"() <{value = 56 : i64}> : () -> i64
    %161 = "llvm.shl"(%arg66, %160) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %162 = "llvm.ashr"(%161, %160) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%162) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sexth_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: i32):
    %157 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %158 = "llvm.shl"(%arg65, %157) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %159 = "llvm.ashr"(%158, %157) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%159) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sexth_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i64):
    %154 = "llvm.mlir.constant"() <{value = 48 : i64}> : () -> i64
    %155 = "llvm.shl"(%arg64, %154) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %156 = "llvm.ashr"(%155, %154) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%156) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "min_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: i32, %arg63: i32):
    %152 = "llvm.icmp"(%arg62, %arg63) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %153 = "llvm.select"(%152, %arg62, %arg63) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%153) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "min_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i64, %arg61: i64):
    %150 = "llvm.icmp"(%arg60, %arg61) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %151 = "llvm.select"(%150, %arg60, %arg61) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%151) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "max_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i32, %arg59: i32):
    %148 = "llvm.icmp"(%arg58, %arg59) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %149 = "llvm.select"(%148, %arg58, %arg59) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%149) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "max_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i64, %arg57: i64):
    %146 = "llvm.icmp"(%arg56, %arg57) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %147 = "llvm.select"(%146, %arg56, %arg57) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%147) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "minu_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i32, %arg55: i32):
    %144 = "llvm.icmp"(%arg54, %arg55) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %145 = "llvm.select"(%144, %arg54, %arg55) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%145) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "minu_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i64, %arg53: i64):
    %142 = "llvm.icmp"(%arg52, %arg53) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %143 = "llvm.select"(%142, %arg52, %arg53) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%143) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "maxu_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i32, %arg51: i32):
    %140 = "llvm.icmp"(%arg50, %arg51) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %141 = "llvm.select"(%140, %arg50, %arg51) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%141) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "maxu_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i64, %arg49: i64):
    %138 = "llvm.icmp"(%arg48, %arg49) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %139 = "llvm.select"(%138, %arg48, %arg49) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%139) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "abs_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i32):
    %137 = "llvm.intr.abs"(%arg47) <{is_int_min_poison = true}> : (i32) -> i32
    "llvm.return"(%137) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "abs_i32_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i32):
    %136 = "llvm.intr.abs"(%arg46) <{is_int_min_poison = true}> : (i32) -> i32
    "llvm.return"(%136) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "abs_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i64):
    %135 = "llvm.intr.abs"(%arg45) <{is_int_min_poison = true}> : (i64) -> i64
    "llvm.return"(%135) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zexth_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32):
    %133 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %134 = "llvm.and"(%arg44, %133) : (i32, i32) -> i32
    "llvm.return"(%134) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zexth_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i64):
    %131 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %132 = "llvm.and"(%arg43, %131) : (i64, i64) -> i64
    "llvm.return"(%132) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bswap_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i32):
    %130 = "llvm.intr.bswap"(%arg42) : (i32) -> i32
    "llvm.return"(%130) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<void (i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bswap_i32_nosext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32, %arg41: !llvm.ptr):
    %129 = "llvm.intr.bswap"(%arg40) : (i32) -> i32
    "llvm.store"(%129, %arg41) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "bswap_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i64):
    %128 = "llvm.intr.bswap"(%arg39) : (i64) -> i64
    "llvm.return"(%128) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i16):
    %124 = "llvm.mlir.constant"() <{value = 257 : i16}> : () -> i16
    %125 = "llvm.mlir.constant"() <{value = 255 : i16}> : () -> i16
    %126 = "llvm.and"(%arg38, %124) : (i16, i16) -> i16
    %127 = "llvm.mul"(%126, %125) <{overflowFlags = 2 : i32}> : (i16, i16) -> i16
    "llvm.return"(%127) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32):
    %120 = "llvm.mlir.constant"() <{value = 16843009 : i32}> : () -> i32
    %121 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %122 = "llvm.and"(%arg37, %120) : (i32, i32) -> i32
    %123 = "llvm.mul"(%122, %121) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.return"(%123) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i64):
    %116 = "llvm.mlir.constant"() <{value = 72340172838076673 : i64}> : () -> i64
    %117 = "llvm.mlir.constant"() <{value = 255 : i64}> : () -> i64
    %118 = "llvm.and"(%arg36, %116) : (i64, i64) -> i64
    %119 = "llvm.mul"(%118, %117) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.return"(%119) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i16)>, linkage = #llvm.linkage<external>, sym_name = "srai_slli", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i16):
    %111 = "llvm.mlir.constant"() <{value = 9 : i16}> : () -> i16
    %112 = "llvm.mlir.constant"() <{value = 15 : i16}> : () -> i16
    %113 = "llvm.shl"(%arg35, %111) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %114 = "llvm.ashr"(%113, %112) : (i16, i16) -> i16
    %115 = "llvm.sext"(%114) : (i16) -> i64
    "llvm.return"(%115) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i16)>, linkage = #llvm.linkage<external>, sym_name = "srai_slli2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i16):
    %106 = "llvm.mlir.constant"() <{value = 9 : i16}> : () -> i16
    %107 = "llvm.mlir.constant"() <{value = 14 : i16}> : () -> i16
    %108 = "llvm.shl"(%arg34, %106) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %109 = "llvm.ashr"(%108, %107) : (i16, i16) -> i16
    %110 = "llvm.sext"(%109) : (i16) -> i64
    "llvm.return"(%110) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i8)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "func0000000000000001", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32, %arg33: i8):
    %100 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %101 = "llvm.mlir.constant"() <{value = 7 : i8}> : () -> i8
    %102 = "llvm.shl"(%arg33, %100) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %103 = "llvm.ashr"(%102, %101) : (i8, i8) -> i8
    %104 = "llvm.sext"(%103) : (i8) -> i32
    %105 = "llvm.add"(%104, %arg32) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%105) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, sym_name = "ctpop32_eq_one_nonzero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i32):
    %97 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %98 = "llvm.intr.ctpop"(%arg31) : (i32) -> i32
    %99 = "llvm.icmp"(%98, %97) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%99) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, sym_name = "ctpop32_ne_one_nonzero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32):
    %94 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %95 = "llvm.intr.ctpop"(%arg30) : (i32) -> i32
    %96 = "llvm.icmp"(%95, %94) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.return"(%96) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, sym_name = "ctpop64_eq_one_nonzero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i64):
    %91 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %92 = "llvm.intr.ctpop"(%arg29) : (i64) -> i64
    %93 = "llvm.icmp"(%92, %91) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%93) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, sym_name = "ctpop32_eq_one_maybezero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32):
    %88 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %89 = "llvm.intr.ctpop"(%arg28) : (i32) -> i32
    %90 = "llvm.icmp"(%89, %88) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%90) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i8, %arg27: i8):
    %84 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %85 = "llvm.icmp"(%arg26, %arg27) <{predicate = 6 : i64}> : (i8, i8) -> i1
    %86 = "llvm.select"(%85, %84, %arg27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    %87 = "llvm.sub"(%arg26, %86) <{overflowFlags = 2 : i32}> : (i8, i8) -> i8
    "llvm.return"(%87) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i16, %arg25: i16):
    %80 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %81 = "llvm.icmp"(%arg24, %arg25) <{predicate = 6 : i64}> : (i16, i16) -> i1
    %82 = "llvm.select"(%81, %80, %arg25) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %83 = "llvm.sub"(%arg24, %82) <{overflowFlags = 2 : i32}> : (i16, i16) -> i16
    "llvm.return"(%83) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32):
    %76 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %77 = "llvm.icmp"(%arg22, %arg23) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %78 = "llvm.select"(%77, %76, %arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %79 = "llvm.sub"(%arg22, %78) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i64, %arg21: i64):
    %72 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %73 = "llvm.icmp"(%arg20, %arg21) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %74 = "llvm.select"(%73, %72, %arg21) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %75 = "llvm.sub"(%arg20, %74) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.return"(%75) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i128, %arg19: i128):
    %68 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %69 = "llvm.icmp"(%arg18, %arg19) <{predicate = 6 : i64}> : (i128, i128) -> i1
    %70 = "llvm.select"(%69, %68, %arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %71 = "llvm.sub"(%arg18, %70) <{overflowFlags = 2 : i32}> : (i128, i128) -> i128
    "llvm.return"(%71) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_multiuse_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32, %arg17: i32):
    %63 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %64 = "llvm.icmp"(%arg16, %arg17) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %65 = "llvm.select"(%64, %63, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %66 = "llvm.sub"(%arg16, %65) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %67 = "llvm.shl"(%66, %65) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%67) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_multiuse_cmp_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32, %arg15: i32):
    %55 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %58 = "llvm.icmp"(%arg14, %arg15) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %59 = "llvm.select"(%58, %55, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %60 = "llvm.sub"(%arg14, %59) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %61 = "llvm.select"(%58, %56, %57) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %62 = "llvm.shl"(%60, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_multiuse_cmp_store_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32, %arg12: i32, %arg13: !llvm.ptr):
    %50 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %51 = "llvm.icmp"(%arg11, %arg12) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %52 = "llvm.zext"(%51) : (i1) -> i32
    "llvm.store"(%52, %arg13) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %53 = "llvm.select"(%51, %arg12, %50) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %54 = "llvm.sub"(%arg11, %53) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i8):
    %45 = "llvm.mlir.constant"() <{value = 12 : i8}> : () -> i8
    %46 = "llvm.mlir.constant"() <{value = -13 : i8}> : () -> i8
    %47 = "llvm.icmp"(%arg10, %45) <{predicate = 8 : i64}> : (i8, i8) -> i1
    %48 = "llvm.add"(%arg10, %46) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %49 = "llvm.select"(%47, %48, %arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    "llvm.return"(%49) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i16):
    %40 = "llvm.mlir.constant"() <{value = 250 : i16}> : () -> i16
    %41 = "llvm.mlir.constant"() <{value = -251 : i16}> : () -> i16
    %42 = "llvm.icmp"(%arg9, %40) <{predicate = 8 : i64}> : (i16, i16) -> i1
    %43 = "llvm.add"(%arg9, %41) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %44 = "llvm.select"(%42, %43, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%44) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %35 = "llvm.mlir.constant"() <{value = 65520 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = -65521 : i32}> : () -> i32
    %37 = "llvm.icmp"(%arg8, %35) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %38 = "llvm.add"(%arg8, %36) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %39 = "llvm.select"(%37, %38, %arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %30 = "llvm.mlir.constant"() <{value = 4999999999 : i64}> : () -> i64
    %31 = "llvm.mlir.constant"() <{value = -5000000000 : i64}> : () -> i64
    %32 = "llvm.icmp"(%arg7, %30) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %33 = "llvm.add"(%arg7, %31) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %34 = "llvm.select"(%32, %33, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%34) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_multiuse_cmp_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32, %arg6: !llvm.ptr):
    %24 = "llvm.mlir.constant"() <{value = 65520 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = -65521 : i32}> : () -> i32
    %26 = "llvm.icmp"(%arg5, %24) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %27 = "llvm.zext"(%26) : (i1) -> i32
    "llvm.store"(%27, %arg6) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %28 = "llvm.add"(%arg5, %25) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %29 = "llvm.select"(%26, %28, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_multiuse_sub_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: !llvm.ptr):
    %19 = "llvm.mlir.constant"() <{value = -65521 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 65520 : i32}> : () -> i32
    %21 = "llvm.add"(%arg3, %19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%21, %arg4) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %22 = "llvm.icmp"(%arg3, %20) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %23 = "llvm.select"(%22, %21, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_swapped_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %14 = "llvm.mlir.constant"() <{value = 65521 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = -65521 : i32}> : () -> i32
    %16 = "llvm.icmp"(%arg2, %14) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %17 = "llvm.add"(%arg2, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %18 = "llvm.select"(%16, %arg2, %17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i7 (i7)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_nsw_i7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i7):
    %7 = "llvm.mlir.constant"() <{value = 51 : i7}> : () -> i7
    %8 = "llvm.mlir.constant"() <{value = -18 : i7}> : () -> i7
    %9 = "llvm.mlir.constant"() <{value = 17 : i7}> : () -> i7
    %10 = "llvm.or"(%arg1, %7) : (i7, i7) -> i7
    %11 = "llvm.icmp"(%10, %8) <{predicate = 8 : i64}> : (i7, i7) -> i1
    %12 = "llvm.add"(%10, %9) <{overflowFlags = 1 : i32}> : (i7, i7) -> i7
    %13 = "llvm.select"(%11, %12, %10) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i7, i7) -> i7
    "llvm.return"(%13) : (i7) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i7 (i7)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_swapped_nsw_i7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i7):
    %0 = "llvm.mlir.constant"() <{value = 51 : i7}> : () -> i7
    %1 = "llvm.mlir.constant"() <{value = -17 : i7}> : () -> i7
    %2 = "llvm.mlir.constant"() <{value = 17 : i7}> : () -> i7
    %3 = "llvm.or"(%arg0, %0) : (i7, i7) -> i7
    %4 = "llvm.icmp"(%3, %1) <{predicate = 6 : i64}> : (i7, i7) -> i1
    %5 = "llvm.add"(%3, %2) <{overflowFlags = 1 : i32}> : (i7, i7) -> i7
    %6 = "llvm.select"(%4, %3, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i7, i7) -> i7
    "llvm.return"(%6) : (i7) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

