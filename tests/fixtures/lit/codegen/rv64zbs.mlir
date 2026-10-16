"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bclr_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg101: i32, %arg102: i32):
    %239 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %240 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %241 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %242 = "llvm.and"(%arg102, %239) : (i32, i32) -> i32
    %243 = "llvm.shl"(%240, %242) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %244 = "llvm.xor"(%243, %241) : (i32, i32) -> i32
    %245 = "llvm.and"(%244, %arg101) : (i32, i32) -> i32
    "llvm.return"(%245) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bclr_i32_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: i32, %arg100: i32):
    %234 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %235 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %236 = "llvm.shl"(%234, %arg100) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %237 = "llvm.xor"(%236, %235) : (i32, i32) -> i32
    %238 = "llvm.and"(%237, %arg99) : (i32, i32) -> i32
    "llvm.return"(%238) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bclr_i32_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg97: !llvm.ptr, %arg98: i32):
    %228 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %229 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %230 = "llvm.load"(%arg97) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %231 = "llvm.shl"(%228, %arg98) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %232 = "llvm.xor"(%231, %229) : (i32, i32) -> i32
    %233 = "llvm.and"(%232, %230) : (i32, i32) -> i32
    "llvm.return"(%233) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclr_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg95: i64, %arg96: i64):
    %221 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %222 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %223 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %224 = "llvm.and"(%arg96, %221) : (i64, i64) -> i64
    %225 = "llvm.shl"(%222, %224) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %226 = "llvm.xor"(%225, %223) : (i64, i64) -> i64
    %227 = "llvm.and"(%226, %arg95) : (i64, i64) -> i64
    "llvm.return"(%227) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclr_i64_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg93: i64, %arg94: i64):
    %216 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %217 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %218 = "llvm.shl"(%216, %arg94) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %219 = "llvm.xor"(%218, %217) : (i64, i64) -> i64
    %220 = "llvm.and"(%219, %arg93) : (i64, i64) -> i64
    "llvm.return"(%220) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclr_i64_mask_multiple", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg90: i64, %arg91: i64, %arg92: i64):
    %207 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %208 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %209 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %210 = "llvm.and"(%arg92, %207) : (i64, i64) -> i64
    %211 = "llvm.shl"(%208, %210) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %212 = "llvm.xor"(%211, %209) : (i64, i64) -> i64
    %213 = "llvm.and"(%212, %arg90) : (i64, i64) -> i64
    %214 = "llvm.or"(%arg91, %211) : (i64, i64) -> i64
    %215 = "llvm.add"(%213, %214) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%215) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bset_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: i32, %arg89: i32):
    %202 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %203 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %204 = "llvm.and"(%arg89, %202) : (i32, i32) -> i32
    %205 = "llvm.shl"(%203, %204) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %206 = "llvm.or"(%205, %arg88) : (i32, i32) -> i32
    "llvm.return"(%206) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bset_i32_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg86: i32, %arg87: i32):
    %199 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %200 = "llvm.shl"(%199, %arg87) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %201 = "llvm.or"(%200, %arg86) : (i32, i32) -> i32
    "llvm.return"(%201) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bset_i32_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: !llvm.ptr, %arg85: i32):
    %195 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %196 = "llvm.load"(%arg84) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %197 = "llvm.shl"(%195, %arg85) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %198 = "llvm.or"(%197, %196) : (i32, i32) -> i32
    "llvm.return"(%198) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bset_i32_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg83: i32):
    %193 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %194 = "llvm.shl"(%193, %arg83) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%194) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bset_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg81: i64, %arg82: i64):
    %188 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %189 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %190 = "llvm.and"(%arg82, %188) : (i64, i64) -> i64
    %191 = "llvm.shl"(%189, %190) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %192 = "llvm.or"(%191, %arg81) : (i64, i64) -> i64
    "llvm.return"(%192) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bset_i64_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg79: i64, %arg80: i64):
    %185 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %186 = "llvm.shl"(%185, %arg80) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %187 = "llvm.or"(%186, %arg79) : (i64, i64) -> i64
    "llvm.return"(%187) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bset_i64_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: i64):
    %183 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %184 = "llvm.shl"(%183, %arg78) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%184) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "binv_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: i32, %arg77: i32):
    %178 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %179 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %180 = "llvm.and"(%arg77, %178) : (i32, i32) -> i32
    %181 = "llvm.shl"(%179, %180) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %182 = "llvm.xor"(%181, %arg76) : (i32, i32) -> i32
    "llvm.return"(%182) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "binv_i32_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg74: i32, %arg75: i32):
    %175 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %176 = "llvm.shl"(%175, %arg75) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %177 = "llvm.xor"(%176, %arg74) : (i32, i32) -> i32
    "llvm.return"(%177) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "binv_i32_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: !llvm.ptr, %arg73: i32):
    %171 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %172 = "llvm.load"(%arg72) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %173 = "llvm.shl"(%171, %arg73) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %174 = "llvm.xor"(%173, %172) : (i32, i32) -> i32
    "llvm.return"(%174) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binv_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg70: i64, %arg71: i64):
    %166 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %167 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %168 = "llvm.and"(%arg71, %166) : (i64, i64) -> i64
    %169 = "llvm.shl"(%167, %168) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %170 = "llvm.xor"(%169, %arg70) : (i64, i64) -> i64
    "llvm.return"(%170) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binv_i64_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: i64, %arg69: i64):
    %163 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %164 = "llvm.shl"(%163, %arg69) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %165 = "llvm.xor"(%164, %arg68) : (i64, i64) -> i64
    "llvm.return"(%165) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bext_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: i32, %arg67: i32):
    %158 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %159 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %160 = "llvm.and"(%arg67, %158) : (i32, i32) -> i32
    %161 = "llvm.lshr"(%arg66, %160) : (i32, i32) -> i32
    %162 = "llvm.and"(%161, %159) : (i32, i32) -> i32
    "llvm.return"(%162) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bext_i32_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i32, %arg65: i32):
    %155 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %156 = "llvm.lshr"(%arg64, %arg65) : (i32, i32) -> i32
    %157 = "llvm.and"(%156, %155) : (i32, i32) -> i32
    "llvm.return"(%157) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<void (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "bext_i32_trunc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: i32, %arg63: i32):
    %150 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %151 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %152 = "llvm.shl"(%150, %arg63) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %153 = "llvm.and"(%152, %arg62) : (i32, i32) -> i32
    %154 = "llvm.icmp"(%153, %151) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%154)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "bar", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bext_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i64, %arg61: i64):
    %145 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %146 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %147 = "llvm.and"(%arg61, %145) : (i64, i64) -> i64
    %148 = "llvm.lshr"(%arg60, %147) : (i64, i64) -> i64
    %149 = "llvm.and"(%148, %146) : (i64, i64) -> i64
    "llvm.return"(%149) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bext_i64_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i64, %arg59: i64):
    %142 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %143 = "llvm.lshr"(%arg58, %arg59) : (i64, i64) -> i64
    %144 = "llvm.and"(%143, %142) : (i64, i64) -> i64
    "llvm.return"(%144) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bexti_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: i32):
    %138 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %139 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %140 = "llvm.lshr"(%arg57, %138) : (i32, i32) -> i32
    %141 = "llvm.and"(%140, %139) : (i32, i32) -> i32
    "llvm.return"(%141) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bexti_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i64):
    %134 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %135 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %136 = "llvm.lshr"(%arg56, %134) : (i64, i64) -> i64
    %137 = "llvm.and"(%136, %135) : (i64, i64) -> i64
    "llvm.return"(%137) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bexti_i32_cmp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: i32):
    %129 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %130 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %131 = "llvm.and"(%arg55, %129) : (i32, i32) -> i32
    %132 = "llvm.icmp"(%131, %130) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %133 = "llvm.zext"(%132) : (i1) -> i32
    "llvm.return"(%133) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bexti_i64_cmp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i64):
    %124 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %125 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %126 = "llvm.and"(%arg54, %124) : (i64, i64) -> i64
    %127 = "llvm.icmp"(%126, %125) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %128 = "llvm.zext"(%127) : (i1) -> i64
    "llvm.return"(%128) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bclri_i32_10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: i32):
    %122 = "llvm.mlir.constant"() <{value = -1025 : i32}> : () -> i32
    %123 = "llvm.and"(%arg53, %122) : (i32, i32) -> i32
    "llvm.return"(%123) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bclri_i32_11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i32):
    %120 = "llvm.mlir.constant"() <{value = -2049 : i32}> : () -> i32
    %121 = "llvm.and"(%arg52, %120) : (i32, i32) -> i32
    "llvm.return"(%121) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bclri_i32_30", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: i32):
    %118 = "llvm.mlir.constant"() <{value = -1073741825 : i32}> : () -> i32
    %119 = "llvm.and"(%arg51, %118) : (i32, i32) -> i32
    "llvm.return"(%119) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bclri_i32_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i32):
    %116 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %117 = "llvm.and"(%arg50, %116) : (i32, i32) -> i32
    "llvm.return"(%117) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bclri_i32_31_allWUsers", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i32):
    %112 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %113 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %114 = "llvm.and"(%arg49, %112) : (i32, i32) -> i32
    %115 = "llvm.add"(%114, %113) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%115) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i64_10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i64):
    %110 = "llvm.mlir.constant"() <{value = -1025 : i64}> : () -> i64
    %111 = "llvm.and"(%arg48, %110) : (i64, i64) -> i64
    "llvm.return"(%111) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i64_11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i64):
    %108 = "llvm.mlir.constant"() <{value = -2049 : i64}> : () -> i64
    %109 = "llvm.and"(%arg47, %108) : (i64, i64) -> i64
    "llvm.return"(%109) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i64_30", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i64):
    %106 = "llvm.mlir.constant"() <{value = -1073741825 : i64}> : () -> i64
    %107 = "llvm.and"(%arg46, %106) : (i64, i64) -> i64
    "llvm.return"(%107) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i64_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i64):
    %104 = "llvm.mlir.constant"() <{value = -2147483649 : i64}> : () -> i64
    %105 = "llvm.and"(%arg45, %104) : (i64, i64) -> i64
    "llvm.return"(%105) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i64_62", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i64):
    %102 = "llvm.mlir.constant"() <{value = -4611686018427387905 : i64}> : () -> i64
    %103 = "llvm.and"(%arg44, %102) : (i64, i64) -> i64
    "llvm.return"(%103) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i64_63", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i64):
    %100 = "llvm.mlir.constant"() <{value = 9223372036854775807 : i64}> : () -> i64
    %101 = "llvm.and"(%arg43, %100) : (i64, i64) -> i64
    "llvm.return"(%101) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i64_large0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i64):
    %98 = "llvm.mlir.constant"() <{value = -16777472 : i64}> : () -> i64
    %99 = "llvm.and"(%arg42, %98) : (i64, i64) -> i64
    "llvm.return"(%99) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i64_large1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i64):
    %96 = "llvm.mlir.constant"() <{value = -16842753 : i64}> : () -> i64
    %97 = "llvm.and"(%arg41, %96) : (i64, i64) -> i64
    "llvm.return"(%97) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bseti_i32_10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32):
    %94 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %95 = "llvm.or"(%arg40, %94) : (i32, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bseti_i32_11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i32):
    %92 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %93 = "llvm.or"(%arg39, %92) : (i32, i32) -> i32
    "llvm.return"(%93) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bseti_i32_30", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32):
    %90 = "llvm.mlir.constant"() <{value = 1073741824 : i32}> : () -> i32
    %91 = "llvm.or"(%arg38, %90) : (i32, i32) -> i32
    "llvm.return"(%91) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bseti_i32_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32):
    %88 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %89 = "llvm.or"(%arg37, %88) : (i32, i32) -> i32
    "llvm.return"(%89) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bseti_i32_31_allWUsers", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32):
    %84 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %85 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %86 = "llvm.or"(%arg36, %84) : (i32, i32) -> i32
    %87 = "llvm.add"(%86, %85) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bseti_i64_10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i64):
    %82 = "llvm.mlir.constant"() <{value = 1024 : i64}> : () -> i64
    %83 = "llvm.or"(%arg35, %82) : (i64, i64) -> i64
    "llvm.return"(%83) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bseti_i64_11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i64):
    %80 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %81 = "llvm.or"(%arg34, %80) : (i64, i64) -> i64
    "llvm.return"(%81) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bseti_i64_30", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i64):
    %78 = "llvm.mlir.constant"() <{value = 1073741824 : i64}> : () -> i64
    %79 = "llvm.or"(%arg33, %78) : (i64, i64) -> i64
    "llvm.return"(%79) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bseti_i64_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i64):
    %76 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %77 = "llvm.or"(%arg32, %76) : (i64, i64) -> i64
    "llvm.return"(%77) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bseti_i64_62", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i64):
    %74 = "llvm.mlir.constant"() <{value = 4611686018427387904 : i64}> : () -> i64
    %75 = "llvm.or"(%arg31, %74) : (i64, i64) -> i64
    "llvm.return"(%75) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bseti_i64_63", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i64):
    %72 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %73 = "llvm.or"(%arg30, %72) : (i64, i64) -> i64
    "llvm.return"(%73) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "binvi_i32_10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i32):
    %70 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %71 = "llvm.xor"(%arg29, %70) : (i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "binvi_i32_11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32):
    %68 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %69 = "llvm.xor"(%arg28, %68) : (i32, i32) -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "binvi_i32_30", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32):
    %66 = "llvm.mlir.constant"() <{value = 1073741824 : i32}> : () -> i32
    %67 = "llvm.xor"(%arg27, %66) : (i32, i32) -> i32
    "llvm.return"(%67) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "binvi_i32_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32):
    %64 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %65 = "llvm.xor"(%arg26, %64) : (i32, i32) -> i32
    "llvm.return"(%65) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<void (i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binvi_i32_31_allWUsers", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: !llvm.ptr):
    %62 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %63 = "llvm.xor"(%arg24, %62) : (i32, i32) -> i32
    "llvm.store"(%63, %arg25) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binvi_i64_10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i64):
    %60 = "llvm.mlir.constant"() <{value = 1024 : i64}> : () -> i64
    %61 = "llvm.xor"(%arg23, %60) : (i64, i64) -> i64
    "llvm.return"(%61) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binvi_i64_11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i64):
    %58 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %59 = "llvm.xor"(%arg22, %58) : (i64, i64) -> i64
    "llvm.return"(%59) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binvi_i64_30", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i64):
    %56 = "llvm.mlir.constant"() <{value = 1073741824 : i64}> : () -> i64
    %57 = "llvm.xor"(%arg21, %56) : (i64, i64) -> i64
    "llvm.return"(%57) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binvi_i64_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i64):
    %54 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %55 = "llvm.xor"(%arg20, %54) : (i64, i64) -> i64
    "llvm.return"(%55) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binvi_i64_62", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i64):
    %52 = "llvm.mlir.constant"() <{value = 4611686018427387904 : i64}> : () -> i64
    %53 = "llvm.xor"(%arg19, %52) : (i64, i64) -> i64
    "llvm.return"(%53) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binvi_i64_63", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i64):
    %50 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %51 = "llvm.xor"(%arg18, %50) : (i64, i64) -> i64
    "llvm.return"(%51) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "xor_i64_large", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i64):
    %48 = "llvm.mlir.constant"() <{value = 4294967297 : i64}> : () -> i64
    %49 = "llvm.xor"(%arg17, %48) : (i64, i64) -> i64
    "llvm.return"(%49) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "xor_i64_4099", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64):
    %46 = "llvm.mlir.constant"() <{value = 4099 : i64}> : () -> i64
    %47 = "llvm.xor"(%arg16, %46) : (i64, i64) -> i64
    "llvm.return"(%47) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "xor_i64_96", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i64):
    %44 = "llvm.mlir.constant"() <{value = 96 : i64}> : () -> i64
    %45 = "llvm.xor"(%arg15, %44) : (i64, i64) -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_i64_large", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64):
    %42 = "llvm.mlir.constant"() <{value = 4294967297 : i64}> : () -> i64
    %43 = "llvm.or"(%arg14, %42) : (i64, i64) -> i64
    "llvm.return"(%43) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "xor_i64_66901", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64):
    %40 = "llvm.mlir.constant"() <{value = 66901 : i64}> : () -> i64
    %41 = "llvm.xor"(%arg13, %40) : (i64, i64) -> i64
    "llvm.return"(%41) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_i64_4099", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %38 = "llvm.mlir.constant"() <{value = 4099 : i64}> : () -> i64
    %39 = "llvm.or"(%arg12, %38) : (i64, i64) -> i64
    "llvm.return"(%39) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_i64_96", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i64):
    %36 = "llvm.mlir.constant"() <{value = 96 : i64}> : () -> i64
    %37 = "llvm.or"(%arg11, %36) : (i64, i64) -> i64
    "llvm.return"(%37) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_i64_66901", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64):
    %34 = "llvm.mlir.constant"() <{value = 66901 : i64}> : () -> i64
    %35 = "llvm.or"(%arg10, %34) : (i64, i64) -> i64
    "llvm.return"(%35) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bset_trailing_ones_i32_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %29 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %31 = "llvm.and"(%arg9, %29) : (i32, i32) -> i32
    %32 = "llvm.shl"(%30, %31) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %33 = "llvm.xor"(%32, %30) : (i32, i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bset_trailing_ones_i32_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %26 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %27 = "llvm.shl"(%26, %arg8) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %28 = "llvm.xor"(%27, %26) : (i32, i32) -> i32
    "llvm.return"(%28) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bset_trailing_ones_i64_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %21 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %22 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %23 = "llvm.and"(%arg7, %21) : (i64, i64) -> i64
    %24 = "llvm.shl"(%22, %23) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %25 = "llvm.xor"(%24, %22) : (i64, i64) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bset_trailing_ones_i64_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %18 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %19 = "llvm.shl"(%18, %arg6) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %20 = "llvm.xor"(%19, %18) : (i64, i64) -> i64
    "llvm.return"(%20) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eq_pow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %16 = "llvm.mlir.constant"() <{value = 32768 : i32}> : () -> i32
    %17 = "llvm.icmp"(%arg5, %16) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%17) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eq_pow2_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %14 = "llvm.mlir.constant"() <{value = 1099511627776 : i64}> : () -> i64
    %15 = "llvm.icmp"(%arg4, %14) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%15) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ne_pow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %12 = "llvm.mlir.constant"() <{value = 32768 : i32}> : () -> i32
    %13 = "llvm.icmp"(%arg3, %12) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%13) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eq_nonpow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %10 = "llvm.mlir.constant"() <{value = 32767 : i32}> : () -> i32
    %11 = "llvm.icmp"(%arg2, %10) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%11) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fold_sextinreg_shl_to_sllw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64):
    %5 = "llvm.mlir.constant"() <{value = 31 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %7 = "llvm.and"(%arg1, %5) : (i64, i64) -> i64
    %8 = "llvm.shl"(%6, %7) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %9 = "llvm.trunc"(%8) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "fold_sextinreg_shl_to_sllw_large_shamt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %2 = "llvm.and"(%arg0, %0) : (i64, i64) -> i64
    %3 = "llvm.shl"(%1, %2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %4 = "llvm.trunc"(%3) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

