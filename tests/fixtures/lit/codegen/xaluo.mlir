"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<i1 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "saddo1.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg147: i32, %arg148: i32, %arg149: !llvm.ptr):
    %271 = "llvm.intr.sadd.with.overflow"(%arg147, %arg148) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %272 = "llvm.extractvalue"(%271) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %273 = "llvm.extractvalue"(%271) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%272, %arg149) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%273) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "saddo2.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg145: i32, %arg146: !llvm.ptr):
    %267 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %268 = "llvm.intr.sadd.with.overflow"(%arg145, %267) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %269 = "llvm.extractvalue"(%268) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %270 = "llvm.extractvalue"(%268) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%269, %arg146) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%270) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "saddo3.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg143: i32, %arg144: !llvm.ptr):
    %263 = "llvm.mlir.constant"() <{value = -4 : i32}> : () -> i32
    %264 = "llvm.intr.sadd.with.overflow"(%arg143, %263) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %265 = "llvm.extractvalue"(%264) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %266 = "llvm.extractvalue"(%264) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%265, %arg144) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%266) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "saddo4.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg141: i32, %arg142: !llvm.ptr):
    %259 = "llvm.mlir.constant"() <{value = 16777215 : i32}> : () -> i32
    %260 = "llvm.intr.sadd.with.overflow"(%arg141, %259) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %261 = "llvm.extractvalue"(%260) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %262 = "llvm.extractvalue"(%260) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%261, %arg142) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%262) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "saddo1.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg138: i64, %arg139: i64, %arg140: !llvm.ptr):
    %256 = "llvm.intr.sadd.with.overflow"(%arg138, %arg139) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %257 = "llvm.extractvalue"(%256) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %258 = "llvm.extractvalue"(%256) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%257, %arg140) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%258) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "saddo2.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg136: i64, %arg137: !llvm.ptr):
    %252 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %253 = "llvm.intr.sadd.with.overflow"(%arg136, %252) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %254 = "llvm.extractvalue"(%253) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %255 = "llvm.extractvalue"(%253) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%254, %arg137) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%255) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "saddo3.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg134: i64, %arg135: !llvm.ptr):
    %248 = "llvm.mlir.constant"() <{value = -4 : i64}> : () -> i64
    %249 = "llvm.intr.sadd.with.overflow"(%arg134, %248) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %250 = "llvm.extractvalue"(%249) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %251 = "llvm.extractvalue"(%249) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%250, %arg135) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%251) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<i1 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "uaddo.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg131: i32, %arg132: i32, %arg133: !llvm.ptr):
    %245 = "llvm.intr.uadd.with.overflow"(%arg131, %arg132) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %246 = "llvm.extractvalue"(%245) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %247 = "llvm.extractvalue"(%245) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%246, %arg133) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%247) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "uaddo.i32.constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg129: i32, %arg130: !llvm.ptr):
    %241 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %242 = "llvm.intr.uadd.with.overflow"(%arg129, %241) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %243 = "llvm.extractvalue"(%242) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %244 = "llvm.extractvalue"(%242) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%243, %arg130) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%244) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "uaddo.i32.constant_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg127: i32, %arg128: !llvm.ptr):
    %237 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %238 = "llvm.intr.uadd.with.overflow"(%arg127, %237) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %239 = "llvm.extractvalue"(%238) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %240 = "llvm.extractvalue"(%238) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%239, %arg128) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%240) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "uaddo.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: i64, %arg125: i64, %arg126: !llvm.ptr):
    %234 = "llvm.intr.uadd.with.overflow"(%arg124, %arg125) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %235 = "llvm.extractvalue"(%234) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %236 = "llvm.extractvalue"(%234) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%235, %arg126) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%236) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "uaddo.i64.constant_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg122: i64, %arg123: !llvm.ptr):
    %230 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %231 = "llvm.intr.uadd.with.overflow"(%arg122, %230) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %232 = "llvm.extractvalue"(%231) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %233 = "llvm.extractvalue"(%231) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%232, %arg123) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%233) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<i1 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "ssubo1.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg119: i32, %arg120: i32, %arg121: !llvm.ptr):
    %227 = "llvm.intr.ssub.with.overflow"(%arg119, %arg120) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %228 = "llvm.extractvalue"(%227) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %229 = "llvm.extractvalue"(%227) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%228, %arg121) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%229) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "ssubo2.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg117: i32, %arg118: !llvm.ptr):
    %223 = "llvm.mlir.constant"() <{value = -4 : i32}> : () -> i32
    %224 = "llvm.intr.ssub.with.overflow"(%arg117, %223) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %225 = "llvm.extractvalue"(%224) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %226 = "llvm.extractvalue"(%224) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%225, %arg118) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%226) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "ssubo.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg114: i64, %arg115: i64, %arg116: !llvm.ptr):
    %220 = "llvm.intr.ssub.with.overflow"(%arg114, %arg115) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %221 = "llvm.extractvalue"(%220) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %222 = "llvm.extractvalue"(%220) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%221, %arg116) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%222) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<i1 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "usubo.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg111: i32, %arg112: i32, %arg113: !llvm.ptr):
    %217 = "llvm.intr.usub.with.overflow"(%arg111, %arg112) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %218 = "llvm.extractvalue"(%217) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %219 = "llvm.extractvalue"(%217) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%218, %arg113) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%219) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "usubo.i32.constant.rhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg109: i32, %arg110: !llvm.ptr):
    %213 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %214 = "llvm.intr.usub.with.overflow"(%arg109, %213) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %215 = "llvm.extractvalue"(%214) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %216 = "llvm.extractvalue"(%214) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%215, %arg110) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%216) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "usubo.i32.constant.lhs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg107: i32, %arg108: !llvm.ptr):
    %209 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %210 = "llvm.intr.usub.with.overflow"(%209, %arg107) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %211 = "llvm.extractvalue"(%210) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %212 = "llvm.extractvalue"(%210) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%211, %arg108) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%212) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "usubo.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg104: i64, %arg105: i64, %arg106: !llvm.ptr):
    %206 = "llvm.intr.usub.with.overflow"(%arg104, %arg105) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %207 = "llvm.extractvalue"(%206) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %208 = "llvm.extractvalue"(%206) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%207, %arg106) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%208) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<i1 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "smulo.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg101: i32, %arg102: i32, %arg103: !llvm.ptr):
    %203 = "llvm.intr.smul.with.overflow"(%arg101, %arg102) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %204 = "llvm.extractvalue"(%203) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %205 = "llvm.extractvalue"(%203) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%204, %arg103) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%205) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "smulo2.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: i32, %arg100: !llvm.ptr):
    %199 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %200 = "llvm.intr.smul.with.overflow"(%arg99, %199) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %201 = "llvm.extractvalue"(%200) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %202 = "llvm.extractvalue"(%200) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%201, %arg100) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%202) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "smulo.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: i64, %arg97: i64, %arg98: !llvm.ptr):
    %196 = "llvm.intr.smul.with.overflow"(%arg96, %arg97) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %197 = "llvm.extractvalue"(%196) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %198 = "llvm.extractvalue"(%196) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%197, %arg98) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%198) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "smulo2.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg94: i64, %arg95: !llvm.ptr):
    %192 = "llvm.mlir.constant"() <{value = 13 : i64}> : () -> i64
    %193 = "llvm.intr.smul.with.overflow"(%arg94, %192) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %194 = "llvm.extractvalue"(%193) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %195 = "llvm.extractvalue"(%193) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%194, %arg95) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%195) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<i1 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "umulo.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg91: i32, %arg92: i32, %arg93: !llvm.ptr):
    %189 = "llvm.intr.umul.with.overflow"(%arg91, %arg92) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %190 = "llvm.extractvalue"(%189) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %191 = "llvm.extractvalue"(%189) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%190, %arg93) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%191) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "umulo2.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg89: i32, %arg90: !llvm.ptr):
    %185 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %186 = "llvm.intr.umul.with.overflow"(%arg89, %185) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %187 = "llvm.extractvalue"(%186) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %188 = "llvm.extractvalue"(%186) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.store"(%187, %arg90) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%188) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "umulo3.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg86: i32, %arg87: i32, %arg88: !llvm.ptr):
    %181 = "llvm.intr.umul.with.overflow"(%arg86, %arg87) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %182 = "llvm.extractvalue"(%181) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %183 = "llvm.extractvalue"(%181) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %184 = "llvm.zext"(%182) : (i1) -> i32
    "llvm.store"(%184, %arg88) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%183) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "umulo.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg83: i64, %arg84: i64, %arg85: !llvm.ptr):
    %178 = "llvm.intr.umul.with.overflow"(%arg83, %arg84) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %179 = "llvm.extractvalue"(%178) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %180 = "llvm.extractvalue"(%178) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%179, %arg85) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%180) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "umulo2.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg81: i64, %arg82: !llvm.ptr):
    %174 = "llvm.mlir.constant"() <{value = 13 : i64}> : () -> i64
    %175 = "llvm.intr.umul.with.overflow"(%arg81, %174) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %176 = "llvm.extractvalue"(%175) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %177 = "llvm.extractvalue"(%175) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%176, %arg82) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%177) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "saddo.select.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg79: i32, %arg80: i32):
    %171 = "llvm.intr.sadd.with.overflow"(%arg79, %arg80) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %172 = "llvm.extractvalue"(%171) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %173 = "llvm.select"(%172, %arg79, %arg80) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%173) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "saddo.not.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg77: i32, %arg78: i32):
    %167 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %168 = "llvm.intr.sadd.with.overflow"(%arg77, %arg78) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %169 = "llvm.extractvalue"(%168) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %170 = "llvm.xor"(%169, %167) : (i1, i1) -> i1
    "llvm.return"(%170) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "saddo.select.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg75: i64, %arg76: i64):
    %164 = "llvm.intr.sadd.with.overflow"(%arg75, %arg76) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %165 = "llvm.extractvalue"(%164) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %166 = "llvm.select"(%165, %arg75, %arg76) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%166) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "saddo.not.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg73: i64, %arg74: i64):
    %160 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %161 = "llvm.intr.sadd.with.overflow"(%arg73, %arg74) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %162 = "llvm.extractvalue"(%161) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %163 = "llvm.xor"(%162, %160) : (i1, i1) -> i1
    "llvm.return"(%163) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "uaddo.select.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg71: i32, %arg72: i32):
    %157 = "llvm.intr.uadd.with.overflow"(%arg71, %arg72) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %158 = "llvm.extractvalue"(%157) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %159 = "llvm.select"(%158, %arg71, %arg72) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%159) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "uaddo.not.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: i32, %arg70: i32):
    %153 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %154 = "llvm.intr.uadd.with.overflow"(%arg69, %arg70) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %155 = "llvm.extractvalue"(%154) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %156 = "llvm.xor"(%155, %153) : (i1, i1) -> i1
    "llvm.return"(%156) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "uaddo.select.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg67: i64, %arg68: i64):
    %150 = "llvm.intr.uadd.with.overflow"(%arg67, %arg68) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %151 = "llvm.extractvalue"(%150) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %152 = "llvm.select"(%151, %arg67, %arg68) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%152) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "uaddo.not.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: i64, %arg66: i64):
    %146 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %147 = "llvm.intr.uadd.with.overflow"(%arg65, %arg66) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %148 = "llvm.extractvalue"(%147) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %149 = "llvm.xor"(%148, %146) : (i1, i1) -> i1
    "llvm.return"(%149) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "ssubo.select.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: i32, %arg64: i32):
    %143 = "llvm.intr.ssub.with.overflow"(%arg63, %arg64) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %144 = "llvm.extractvalue"(%143) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %145 = "llvm.select"(%144, %arg63, %arg64) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%145) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "ssubo.not.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: i32, %arg62: i32):
    %139 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %140 = "llvm.intr.ssub.with.overflow"(%arg61, %arg62) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %141 = "llvm.extractvalue"(%140) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %142 = "llvm.xor"(%141, %139) : (i1, i1) -> i1
    "llvm.return"(%142) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ssubo.select.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: i64, %arg60: i64):
    %136 = "llvm.intr.ssub.with.overflow"(%arg59, %arg60) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %137 = "llvm.extractvalue"(%136) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %138 = "llvm.select"(%137, %arg59, %arg60) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%138) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "ssub.not.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: i64, %arg58: i64):
    %132 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %133 = "llvm.intr.ssub.with.overflow"(%arg57, %arg58) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %134 = "llvm.extractvalue"(%133) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %135 = "llvm.xor"(%134, %132) : (i1, i1) -> i1
    "llvm.return"(%135) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "usubo.select.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: i32, %arg56: i32):
    %129 = "llvm.intr.usub.with.overflow"(%arg55, %arg56) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %130 = "llvm.extractvalue"(%129) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %131 = "llvm.select"(%130, %arg55, %arg56) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%131) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "usubo.not.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: i32, %arg54: i32):
    %125 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %126 = "llvm.intr.usub.with.overflow"(%arg53, %arg54) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %127 = "llvm.extractvalue"(%126) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %128 = "llvm.xor"(%127, %125) : (i1, i1) -> i1
    "llvm.return"(%128) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "usubo.select.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: i64, %arg52: i64):
    %122 = "llvm.intr.usub.with.overflow"(%arg51, %arg52) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %123 = "llvm.extractvalue"(%122) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %124 = "llvm.select"(%123, %arg51, %arg52) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%124) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "usubo.not.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i64, %arg50: i64):
    %118 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %119 = "llvm.intr.usub.with.overflow"(%arg49, %arg50) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %120 = "llvm.extractvalue"(%119) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %121 = "llvm.xor"(%120, %118) : (i1, i1) -> i1
    "llvm.return"(%121) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "smulo.select.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i32, %arg48: i32):
    %115 = "llvm.intr.smul.with.overflow"(%arg47, %arg48) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %116 = "llvm.extractvalue"(%115) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %117 = "llvm.select"(%116, %arg47, %arg48) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%117) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "smulo.not.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i32, %arg46: i32):
    %111 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %112 = "llvm.intr.smul.with.overflow"(%arg45, %arg46) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %113 = "llvm.extractvalue"(%112) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %114 = "llvm.xor"(%113, %111) : (i1, i1) -> i1
    "llvm.return"(%114) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "smulo.select.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i64, %arg44: i64):
    %108 = "llvm.intr.smul.with.overflow"(%arg43, %arg44) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %109 = "llvm.extractvalue"(%108) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %110 = "llvm.select"(%109, %arg43, %arg44) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%110) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "smulo.not.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i64, %arg42: i64):
    %104 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %105 = "llvm.intr.smul.with.overflow"(%arg41, %arg42) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %106 = "llvm.extractvalue"(%105) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %107 = "llvm.xor"(%106, %104) : (i1, i1) -> i1
    "llvm.return"(%107) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "umulo.select.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i32, %arg40: i32):
    %101 = "llvm.intr.umul.with.overflow"(%arg39, %arg40) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %102 = "llvm.extractvalue"(%101) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %103 = "llvm.select"(%102, %arg39, %arg40) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%103) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "umulo.not.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32, %arg38: i32):
    %97 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %98 = "llvm.intr.umul.with.overflow"(%arg37, %arg38) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %99 = "llvm.extractvalue"(%98) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %100 = "llvm.xor"(%99, %97) : (i1, i1) -> i1
    "llvm.return"(%100) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "umulo.select.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i64, %arg36: i64):
    %94 = "llvm.intr.umul.with.overflow"(%arg35, %arg36) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %95 = "llvm.extractvalue"(%94) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %96 = "llvm.select"(%95, %arg35, %arg36) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%96) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "umulo.not.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i64, %arg34: i64):
    %90 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %91 = "llvm.intr.umul.with.overflow"(%arg33, %arg34) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %92 = "llvm.extractvalue"(%91) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    %93 = "llvm.xor"(%92, %90) : (i1, i1) -> i1
    "llvm.return"(%93) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "saddo.br.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i32, %arg32: i32):
    %85 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %86 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %87 = "llvm.intr.sadd.with.overflow"(%arg31, %arg32) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %88 = "llvm.extractvalue"(%87) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %89 = "llvm.extractvalue"(%87) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%89)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%86) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%85) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "saddo.br.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i64, %arg30: i64):
    %80 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %81 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %82 = "llvm.intr.sadd.with.overflow"(%arg29, %arg30) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %83 = "llvm.extractvalue"(%82) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %84 = "llvm.extractvalue"(%82) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.cond_br"(%84)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%81) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%80) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "uaddo.br.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32, %arg28: i32):
    %75 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %76 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %77 = "llvm.intr.uadd.with.overflow"(%arg27, %arg28) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %78 = "llvm.extractvalue"(%77) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %79 = "llvm.extractvalue"(%77) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%79)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%76) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%75) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "uaddo.br.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i64, %arg26: i64):
    %70 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %71 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %72 = "llvm.intr.uadd.with.overflow"(%arg25, %arg26) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %73 = "llvm.extractvalue"(%72) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %74 = "llvm.extractvalue"(%72) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.cond_br"(%74)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%71) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%70) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "ssubo.br.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32, %arg24: i32):
    %65 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %66 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %67 = "llvm.intr.ssub.with.overflow"(%arg23, %arg24) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %68 = "llvm.extractvalue"(%67) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %69 = "llvm.extractvalue"(%67) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%69)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%66) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%65) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "ssubo.br.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i64, %arg22: i64):
    %60 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %61 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %62 = "llvm.intr.ssub.with.overflow"(%arg21, %arg22) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %63 = "llvm.extractvalue"(%62) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %64 = "llvm.extractvalue"(%62) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.cond_br"(%64)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%61) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%60) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "usubo.br.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32, %arg20: i32):
    %55 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %56 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %57 = "llvm.intr.usub.with.overflow"(%arg19, %arg20) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %58 = "llvm.extractvalue"(%57) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %59 = "llvm.extractvalue"(%57) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%59)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%56) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%55) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "usubo.br.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i64, %arg18: i64):
    %50 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %51 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %52 = "llvm.intr.usub.with.overflow"(%arg17, %arg18) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %53 = "llvm.extractvalue"(%52) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %54 = "llvm.extractvalue"(%52) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.cond_br"(%54)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%51) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%50) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "smulo.br.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32, %arg16: i32):
    %45 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %46 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %47 = "llvm.intr.smul.with.overflow"(%arg15, %arg16) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %48 = "llvm.extractvalue"(%47) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %49 = "llvm.extractvalue"(%47) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%49)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%46) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%45) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "smulo.br.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64, %arg14: i64):
    %40 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %41 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %42 = "llvm.intr.smul.with.overflow"(%arg13, %arg14) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %43 = "llvm.extractvalue"(%42) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %44 = "llvm.extractvalue"(%42) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.cond_br"(%44)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%41) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%40) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "smulo2.br.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %34 = "llvm.mlir.constant"() <{value = -13 : i64}> : () -> i64
    %35 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %36 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %37 = "llvm.intr.smul.with.overflow"(%arg12, %34) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %38 = "llvm.extractvalue"(%37) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %39 = "llvm.extractvalue"(%37) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.cond_br"(%39)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%36) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%35) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "umulo.br.i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32, %arg11: i32):
    %29 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %30 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %31 = "llvm.intr.umul.with.overflow"(%arg10, %arg11) : (i32, i32) -> !llvm.struct<(i32, i1)>
    %32 = "llvm.extractvalue"(%31) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %33 = "llvm.extractvalue"(%31) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.cond_br"(%33)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%30) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%29) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "umulo.br.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64, %arg9: i64):
    %24 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %25 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %26 = "llvm.intr.umul.with.overflow"(%arg8, %arg9) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %27 = "llvm.extractvalue"(%26) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %28 = "llvm.extractvalue"(%26) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.cond_br"(%28)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%25) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%24) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "umulo2.br.i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %18 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %19 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %20 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %21 = "llvm.intr.umul.with.overflow"(%arg7, %18) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %22 = "llvm.extractvalue"(%21) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %23 = "llvm.extractvalue"(%21) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.cond_br"(%23)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%20) : (i1) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%19) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "uaddo.i64.constant", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64, %arg6: !llvm.ptr):
    %14 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %15 = "llvm.intr.uadd.with.overflow"(%arg5, %14) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %16 = "llvm.extractvalue"(%15) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %17 = "llvm.extractvalue"(%15) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%16, %arg6) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%17) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "uaddo.i64.constant_2048", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64, %arg4: !llvm.ptr):
    %10 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %11 = "llvm.intr.uadd.with.overflow"(%arg3, %10) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %12 = "llvm.extractvalue"(%11) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %13 = "llvm.extractvalue"(%11) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%12, %arg4) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%13) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "uaddo.i64.constant_2049", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64, %arg2: !llvm.ptr):
    %6 = "llvm.mlir.constant"() <{value = 2049 : i64}> : () -> i64
    %7 = "llvm.intr.uadd.with.overflow"(%arg1, %6) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %8 = "llvm.extractvalue"(%7) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %9 = "llvm.extractvalue"(%7) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.store"(%8, %arg2) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%9) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "uaddo.i64.constant_setcc_on_overflow_flag", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %3 = "llvm.intr.uadd.with.overflow"(%2, %0) : (i64, i64) -> !llvm.struct<(i64, i1)>
    %4 = "llvm.extractvalue"(%3) <{position = array<i64: 0>}> : (!llvm.struct<(i64, i1)>) -> i64
    %5 = "llvm.extractvalue"(%3) <{position = array<i64: 1>}> : (!llvm.struct<(i64, i1)>) -> i1
    "llvm.cond_br"(%5)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%1) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%4) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

