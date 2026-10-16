"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "th_addsl_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg203: i64, %arg204: !llvm.ptr):
    %349 = "llvm.getelementptr"(%arg204, %arg203) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %350 = "llvm.load"(%349) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%350) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "th_addsl_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg201: i64, %arg202: !llvm.ptr):
    %347 = "llvm.getelementptr"(%arg202, %arg201) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %348 = "llvm.load"(%347) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%348) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "th_addsl_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg199: i64, %arg200: !llvm.ptr):
    %345 = "llvm.getelementptr"(%arg200, %arg199) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %346 = "llvm.load"(%345) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%346) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "th_addsl_2_extra_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg196: i32, %arg197: i32, %arg198: i32):
    %337 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %338 = "llvm.shl"(%arg196, %337) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %339 = "llvm.add"(%338, %arg197) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %340 = "llvm.shl"(%arg198, %339) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %341 = "llvm.ashr"(%339, %337) : (i32, i32) -> i32
    %342 = "llvm.sext"(%340) : (i32) -> i64
    %343 = "llvm.sext"(%341) : (i32) -> i64
    %344 = "llvm.mul"(%342, %343) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%344) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg194: i64, %arg195: i64):
    %334 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %335 = "llvm.mul"(%arg194, %334) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %336 = "llvm.add"(%335, %arg195) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%336) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "disjointormul6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg192: i64, %arg193: i64):
    %331 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %332 = "llvm.mul"(%arg192, %331) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %333 = "llvm.or"(%332, %arg193) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.return"(%333) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg190: i64, %arg191: i64):
    %328 = "llvm.mlir.constant"() <{value = 10 : i64}> : () -> i64
    %329 = "llvm.mul"(%arg190, %328) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %330 = "llvm.add"(%329, %arg191) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%330) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg188: i64, %arg189: i64):
    %325 = "llvm.mlir.constant"() <{value = 12 : i64}> : () -> i64
    %326 = "llvm.mul"(%arg188, %325) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %327 = "llvm.add"(%326, %arg189) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%327) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul18", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg186: i64, %arg187: i64):
    %322 = "llvm.mlir.constant"() <{value = 18 : i64}> : () -> i64
    %323 = "llvm.mul"(%arg186, %322) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %324 = "llvm.add"(%323, %arg187) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%324) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul20", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg184: i64, %arg185: i64):
    %319 = "llvm.mlir.constant"() <{value = 20 : i64}> : () -> i64
    %320 = "llvm.mul"(%arg184, %319) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %321 = "llvm.add"(%320, %arg185) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%321) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul22", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg182: i64, %arg183: i64):
    %316 = "llvm.mlir.constant"() <{value = 22 : i64}> : () -> i64
    %317 = "llvm.mul"(%arg182, %316) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %318 = "llvm.add"(%317, %arg183) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%318) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul24", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg180: i64, %arg181: i64):
    %313 = "llvm.mlir.constant"() <{value = 24 : i64}> : () -> i64
    %314 = "llvm.mul"(%arg180, %313) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %315 = "llvm.add"(%314, %arg181) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%315) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul36", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg178: i64, %arg179: i64):
    %310 = "llvm.mlir.constant"() <{value = 36 : i64}> : () -> i64
    %311 = "llvm.mul"(%arg178, %310) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %312 = "llvm.add"(%311, %arg179) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%312) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul40", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg176: i64, %arg177: i64):
    %307 = "llvm.mlir.constant"() <{value = 40 : i64}> : () -> i64
    %308 = "llvm.mul"(%arg176, %307) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %309 = "llvm.add"(%308, %arg177) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%309) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul72", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg174: i64, %arg175: i64):
    %304 = "llvm.mlir.constant"() <{value = 72 : i64}> : () -> i64
    %305 = "llvm.mul"(%arg174, %304) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %306 = "llvm.add"(%305, %arg175) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%306) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul50", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg173: i64):
    %302 = "llvm.mlir.constant"() <{value = 50 : i64}> : () -> i64
    %303 = "llvm.mul"(%arg173, %302) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%303) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul50", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg171: i64, %arg172: i64):
    %299 = "llvm.mlir.constant"() <{value = 50 : i64}> : () -> i64
    %300 = "llvm.mul"(%arg171, %299) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %301 = "llvm.add"(%300, %arg172) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%301) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul100", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg170: i64):
    %297 = "llvm.mlir.constant"() <{value = 100 : i64}> : () -> i64
    %298 = "llvm.mul"(%arg170, %297) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%298) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul100", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg168: i64, %arg169: i64):
    %294 = "llvm.mlir.constant"() <{value = 100 : i64}> : () -> i64
    %295 = "llvm.mul"(%arg168, %294) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %296 = "llvm.add"(%295, %arg169) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%296) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul162", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg167: i64):
    %292 = "llvm.mlir.constant"() <{value = 162 : i64}> : () -> i64
    %293 = "llvm.mul"(%arg167, %292) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%293) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul162", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg165: i64, %arg166: i64):
    %289 = "llvm.mlir.constant"() <{value = 162 : i64}> : () -> i64
    %290 = "llvm.mul"(%arg165, %289) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %291 = "llvm.add"(%290, %arg166) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%291) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul180", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg164: i64):
    %287 = "llvm.mlir.constant"() <{value = 180 : i64}> : () -> i64
    %288 = "llvm.mul"(%arg164, %287) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%288) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul180", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg162: i64, %arg163: i64):
    %284 = "llvm.mlir.constant"() <{value = 180 : i64}> : () -> i64
    %285 = "llvm.mul"(%arg162, %284) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %286 = "llvm.add"(%285, %arg163) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%286) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add255mul180", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg161: i64):
    %280 = "llvm.mlir.constant"() <{value = 180 : i64}> : () -> i64
    %281 = "llvm.mlir.constant"() <{value = 255 : i64}> : () -> i64
    %282 = "llvm.mul"(%arg161, %280) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %283 = "llvm.add"(%282, %281) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%283) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul200", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg160: i64):
    %278 = "llvm.mlir.constant"() <{value = 200 : i64}> : () -> i64
    %279 = "llvm.mul"(%arg160, %278) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%279) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul200", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg158: i64, %arg159: i64):
    %275 = "llvm.mlir.constant"() <{value = 200 : i64}> : () -> i64
    %276 = "llvm.mul"(%arg158, %275) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %277 = "llvm.add"(%276, %arg159) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%277) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul4096", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg156: i64, %arg157: i64):
    %272 = "llvm.mlir.constant"() <{value = 4096 : i64}> : () -> i64
    %273 = "llvm.mul"(%arg156, %272) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %274 = "llvm.add"(%273, %arg157) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%274) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul4230", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg154: i64, %arg155: i64):
    %269 = "llvm.mlir.constant"() <{value = 4230 : i64}> : () -> i64
    %270 = "llvm.mul"(%arg154, %269) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %271 = "llvm.add"(%270, %arg155) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%271) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul96", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg153: i64):
    %267 = "llvm.mlir.constant"() <{value = 96 : i64}> : () -> i64
    %268 = "llvm.mul"(%arg153, %267) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%268) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul119", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg152: i64):
    %265 = "llvm.mlir.constant"() <{value = 119 : i64}> : () -> i64
    %266 = "llvm.mul"(%arg152, %265) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%266) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul123", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg151: i64):
    %263 = "llvm.mlir.constant"() <{value = 123 : i64}> : () -> i64
    %264 = "llvm.mul"(%arg151, %263) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%264) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul125", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg150: i64):
    %261 = "llvm.mlir.constant"() <{value = 125 : i64}> : () -> i64
    %262 = "llvm.mul"(%arg150, %261) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%262) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul131", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg149: i64):
    %259 = "llvm.mlir.constant"() <{value = 131 : i64}> : () -> i64
    %260 = "llvm.mul"(%arg149, %259) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%260) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul133", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg148: i64):
    %257 = "llvm.mlir.constant"() <{value = 133 : i64}> : () -> i64
    %258 = "llvm.mul"(%arg148, %257) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%258) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul137", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg147: i64):
    %255 = "llvm.mlir.constant"() <{value = 137 : i64}> : () -> i64
    %256 = "llvm.mul"(%arg147, %255) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%256) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul160", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg146: i64):
    %253 = "llvm.mlir.constant"() <{value = 160 : i64}> : () -> i64
    %254 = "llvm.mul"(%arg146, %253) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%254) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul288", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg145: i64):
    %251 = "llvm.mlir.constant"() <{value = 288 : i64}> : () -> i64
    %252 = "llvm.mul"(%arg145, %251) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%252) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sh1add_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg144: i64):
    %247 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %248 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %249 = "llvm.shl"(%arg144, %247) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %250 = "llvm.add"(%249, %248) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%250) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sh2add_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg143: i64):
    %243 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %244 = "llvm.mlir.constant"() <{value = -6 : i64}> : () -> i64
    %245 = "llvm.shl"(%arg143, %243) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %246 = "llvm.add"(%245, %244) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%246) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sh3add_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg142: i64):
    %239 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %240 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %241 = "llvm.shl"(%arg142, %239) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %242 = "llvm.add"(%241, %240) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%242) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul258", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg141: i64):
    %237 = "llvm.mlir.constant"() <{value = 258 : i64}> : () -> i64
    %238 = "llvm.mul"(%arg141, %237) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%238) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul260", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg140: i64):
    %235 = "llvm.mlir.constant"() <{value = 260 : i64}> : () -> i64
    %236 = "llvm.mul"(%arg140, %235) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%236) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul264", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg139: i64):
    %233 = "llvm.mlir.constant"() <{value = 264 : i64}> : () -> i64
    %234 = "llvm.mul"(%arg139, %233) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%234) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg138: i64):
    %231 = "llvm.mlir.constant"() <{value = 11 : i64}> : () -> i64
    %232 = "llvm.mul"(%arg138, %231) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%232) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul19", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg137: i64):
    %229 = "llvm.mlir.constant"() <{value = 19 : i64}> : () -> i64
    %230 = "llvm.mul"(%arg137, %229) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%230) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul13", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg136: i64):
    %227 = "llvm.mlir.constant"() <{value = 13 : i64}> : () -> i64
    %228 = "llvm.mul"(%arg136, %227) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%228) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul21", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg135: i64):
    %225 = "llvm.mlir.constant"() <{value = 21 : i64}> : () -> i64
    %226 = "llvm.mul"(%arg135, %225) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%226) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul37", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg134: i64):
    %223 = "llvm.mlir.constant"() <{value = 37 : i64}> : () -> i64
    %224 = "llvm.mul"(%arg134, %223) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%224) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul25", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg133: i64):
    %221 = "llvm.mlir.constant"() <{value = 25 : i64}> : () -> i64
    %222 = "llvm.mul"(%arg133, %221) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%222) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul41", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: i64):
    %219 = "llvm.mlir.constant"() <{value = 41 : i64}> : () -> i64
    %220 = "llvm.mul"(%arg132, %219) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%220) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul73", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg131: i64):
    %217 = "llvm.mlir.constant"() <{value = 73 : i64}> : () -> i64
    %218 = "llvm.mul"(%arg131, %217) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%218) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul27", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg130: i64):
    %215 = "llvm.mlir.constant"() <{value = 27 : i64}> : () -> i64
    %216 = "llvm.mul"(%arg130, %215) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%216) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul45", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg129: i64):
    %213 = "llvm.mlir.constant"() <{value = 45 : i64}> : () -> i64
    %214 = "llvm.mul"(%arg129, %213) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%214) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul81", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg128: i64):
    %211 = "llvm.mlir.constant"() <{value = 81 : i64}> : () -> i64
    %212 = "llvm.mul"(%arg128, %211) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%212) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul4098", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg127: i64):
    %209 = "llvm.mlir.constant"() <{value = 4098 : i64}> : () -> i64
    %210 = "llvm.mul"(%arg127, %209) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%210) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul4100", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg126: i64):
    %207 = "llvm.mlir.constant"() <{value = 4100 : i64}> : () -> i64
    %208 = "llvm.mul"(%arg126, %207) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%208) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul4104", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg125: i64):
    %205 = "llvm.mlir.constant"() <{value = 4104 : i64}> : () -> i64
    %206 = "llvm.mul"(%arg125, %205) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%206) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "mulw192", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: i32):
    %203 = "llvm.mlir.constant"() <{value = 192 : i32}> : () -> i32
    %204 = "llvm.mul"(%arg124, %203) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%204) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "mulw320", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg123: i32):
    %201 = "llvm.mlir.constant"() <{value = 320 : i32}> : () -> i32
    %202 = "llvm.mul"(%arg123, %201) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%202) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "mulw576", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg122: i32):
    %199 = "llvm.mlir.constant"() <{value = 576 : i32}> : () -> i32
    %200 = "llvm.mul"(%arg122, %199) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%200) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add4104", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg121: i64):
    %197 = "llvm.mlir.constant"() <{value = 4104 : i64}> : () -> i64
    %198 = "llvm.add"(%arg121, %197) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%198) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add4104_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: i64):
    %195 = "llvm.mlir.constant"() <{value = 4104 : i64}> : () -> i64
    %196 = "llvm.or"(%arg120, %195) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.return"(%196) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add8208", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg119: i64):
    %193 = "llvm.mlir.constant"() <{value = 8208 : i64}> : () -> i64
    %194 = "llvm.add"(%arg119, %193) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%194) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "add8192_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg118: i32):
    %191 = "llvm.mlir.constant"() <{value = 8192 : i32}> : () -> i32
    %192 = "llvm.add"(%arg118, %191) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%192) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add8192", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg117: i64):
    %189 = "llvm.mlir.constant"() <{value = 8192 : i64}> : () -> i64
    %190 = "llvm.add"(%arg117, %189) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%190) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "addshl32_5_6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg115: i32, %arg116: i32):
    %184 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %185 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %186 = "llvm.shl"(%arg115, %184) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %187 = "llvm.shl"(%arg116, %185) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %188 = "llvm.add"(%186, %187) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%188) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addshl64_5_6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg113: i64, %arg114: i64):
    %179 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %180 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %181 = "llvm.shl"(%arg113, %179) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %182 = "llvm.shl"(%arg114, %180) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %183 = "llvm.add"(%181, %182) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%183) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "addshl32_5_7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg111: i32, %arg112: i32):
    %174 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %175 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %176 = "llvm.shl"(%arg111, %174) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %177 = "llvm.shl"(%arg112, %175) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %178 = "llvm.add"(%176, %177) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%178) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addshl64_5_7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg109: i64, %arg110: i64):
    %169 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %170 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %171 = "llvm.shl"(%arg109, %169) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %172 = "llvm.shl"(%arg110, %170) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %173 = "llvm.add"(%171, %172) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%173) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "addshl32_5_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg107: i32, %arg108: i32):
    %164 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %165 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %166 = "llvm.shl"(%arg107, %164) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %167 = "llvm.shl"(%arg108, %165) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %168 = "llvm.add"(%166, %167) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%168) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addshl64_5_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg105: i64, %arg106: i64):
    %159 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %160 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %161 = "llvm.shl"(%arg105, %159) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %162 = "llvm.shl"(%arg106, %160) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %163 = "llvm.add"(%161, %162) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%163) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh6_sh3_add1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg102: i64, %arg103: i64, %arg104: i64):
    %153 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %154 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %155 = "llvm.shl"(%arg104, %153) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %156 = "llvm.shl"(%arg103, %154) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %157 = "llvm.add"(%156, %155) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %158 = "llvm.add"(%157, %arg102) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%158) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh6_sh3_add2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: i64, %arg100: i64, %arg101: i64):
    %147 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %148 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %149 = "llvm.shl"(%arg101, %147) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %150 = "llvm.shl"(%arg100, %148) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %151 = "llvm.add"(%150, %arg99) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %152 = "llvm.add"(%151, %149) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%152) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh6_sh3_add3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: i64, %arg97: i64, %arg98: i64):
    %141 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %142 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %143 = "llvm.shl"(%arg98, %141) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %144 = "llvm.shl"(%arg97, %142) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %145 = "llvm.add"(%144, %143) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %146 = "llvm.add"(%arg96, %145) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%146) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh6_sh3_add4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg93: i64, %arg94: i64, %arg95: i64):
    %135 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %136 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %137 = "llvm.shl"(%arg95, %135) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %138 = "llvm.shl"(%arg94, %136) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %139 = "llvm.add"(%arg93, %137) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %140 = "llvm.add"(%139, %138) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%140) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i16 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srliw_1_sh1add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg91: !llvm.ptr, %arg92: i32):
    %130 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %131 = "llvm.lshr"(%arg92, %130) : (i32, i32) -> i32
    %132 = "llvm.zext"(%131) : (i32) -> i64
    %133 = "llvm.getelementptr"(%arg91, %132) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %134 = "llvm.load"(%133) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%134) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srliw_2_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg89: !llvm.ptr, %arg90: i32):
    %125 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %126 = "llvm.lshr"(%arg90, %125) : (i32, i32) -> i32
    %127 = "llvm.zext"(%126) : (i32) -> i64
    %128 = "llvm.getelementptr"(%arg89, %127) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %129 = "llvm.load"(%128) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%129) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srliw_3_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg87: !llvm.ptr, %arg88: i32):
    %120 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %121 = "llvm.lshr"(%arg88, %120) : (i32, i32) -> i32
    %122 = "llvm.zext"(%121) : (i32) -> i64
    %123 = "llvm.getelementptr"(%arg87, %122) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %124 = "llvm.load"(%123) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%124) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srliw_1_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg85: !llvm.ptr, %arg86: i32):
    %115 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %116 = "llvm.lshr"(%arg86, %115) : (i32, i32) -> i32
    %117 = "llvm.zext"(%116) : (i32) -> i64
    %118 = "llvm.getelementptr"(%arg85, %117) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %119 = "llvm.load"(%118) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%119) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srliw_1_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg83: !llvm.ptr, %arg84: i32):
    %110 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %111 = "llvm.lshr"(%arg84, %110) : (i32, i32) -> i32
    %112 = "llvm.zext"(%111) : (i32) -> i64
    %113 = "llvm.getelementptr"(%arg83, %112) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %114 = "llvm.load"(%113) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%114) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srliw_2_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg81: !llvm.ptr, %arg82: i32):
    %105 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %106 = "llvm.lshr"(%arg82, %105) : (i32, i32) -> i32
    %107 = "llvm.zext"(%106) : (i32) -> i64
    %108 = "llvm.getelementptr"(%arg81, %107) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %109 = "llvm.load"(%108) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%109) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i16 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srliw_2_sh1add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg79: !llvm.ptr, %arg80: i32):
    %100 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %101 = "llvm.lshr"(%arg80, %100) : (i32, i32) -> i32
    %102 = "llvm.zext"(%101) : (i32) -> i64
    %103 = "llvm.getelementptr"(%arg79, %102) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %104 = "llvm.load"(%103) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%104) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srliw_3_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg77: !llvm.ptr, %arg78: i32):
    %95 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %96 = "llvm.lshr"(%arg78, %95) : (i32, i32) -> i32
    %97 = "llvm.zext"(%96) : (i32) -> i64
    %98 = "llvm.getelementptr"(%arg77, %97) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %99 = "llvm.load"(%98) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%99) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srliw_4_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg75: !llvm.ptr, %arg76: i32):
    %90 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %91 = "llvm.lshr"(%arg76, %90) : (i32, i32) -> i32
    %92 = "llvm.zext"(%91) : (i32) -> i64
    %93 = "llvm.getelementptr"(%arg75, %92) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %94 = "llvm.load"(%93) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%94) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srli_1_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg73: !llvm.ptr, %arg74: i64):
    %86 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %87 = "llvm.lshr"(%arg74, %86) : (i64, i64) -> i64
    %88 = "llvm.getelementptr"(%arg73, %87) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %89 = "llvm.load"(%88) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%89) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "srli_2_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg71: !llvm.ptr, %arg72: i64):
    %82 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %83 = "llvm.lshr"(%arg72, %82) : (i64, i64) -> i64
    %84 = "llvm.getelementptr"(%arg71, %83) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %85 = "llvm.load"(%84) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%85) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srli_2_sh1add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: !llvm.ptr, %arg70: i64):
    %78 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %79 = "llvm.lshr"(%arg70, %78) : (i64, i64) -> i64
    %80 = "llvm.getelementptr"(%arg69, %79) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %81 = "llvm.load"(%80) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%81) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srli_3_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg67: !llvm.ptr, %arg68: i64):
    %74 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %75 = "llvm.lshr"(%arg68, %74) : (i64, i64) -> i64
    %76 = "llvm.getelementptr"(%arg67, %75) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %77 = "llvm.load"(%76) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%77) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "srli_4_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: !llvm.ptr, %arg66: i64):
    %70 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %71 = "llvm.lshr"(%arg66, %70) : (i64, i64) -> i64
    %72 = "llvm.getelementptr"(%arg65, %71) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %73 = "llvm.load"(%72) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%73) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh1_sh0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: !llvm.ptr, %arg63: i64, %arg64: i64):
    %68 = "llvm.getelementptr"(%arg62, %arg63, %arg64) <{elem_type = !llvm.array<2 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %69 = "llvm.load"(%68) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%69) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh1_sh1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: !llvm.ptr, %arg60: i64, %arg61: i64):
    %66 = "llvm.getelementptr"(%arg59, %arg60, %arg61) <{elem_type = !llvm.array<2 x i16>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %67 = "llvm.load"(%66) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%67) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh1_sh2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: !llvm.ptr, %arg57: i64, %arg58: i64):
    %64 = "llvm.getelementptr"(%arg56, %arg57, %arg58) <{elem_type = !llvm.array<2 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %65 = "llvm.load"(%64) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%65) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh1_sh3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: !llvm.ptr, %arg54: i64, %arg55: i64):
    %62 = "llvm.getelementptr"(%arg53, %arg54, %arg55) <{elem_type = !llvm.array<2 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %63 = "llvm.load"(%62) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%63) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh2_sh0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: !llvm.ptr, %arg51: i64, %arg52: i64):
    %60 = "llvm.getelementptr"(%arg50, %arg51, %arg52) <{elem_type = !llvm.array<4 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %61 = "llvm.load"(%60) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%61) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh2_sh1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: !llvm.ptr, %arg48: i64, %arg49: i64):
    %58 = "llvm.getelementptr"(%arg47, %arg48, %arg49) <{elem_type = !llvm.array<4 x i16>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %59 = "llvm.load"(%58) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%59) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh2_sh2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: !llvm.ptr, %arg45: i64, %arg46: i64):
    %56 = "llvm.getelementptr"(%arg44, %arg45, %arg46) <{elem_type = !llvm.array<4 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %57 = "llvm.load"(%56) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%57) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh2_sh3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: !llvm.ptr, %arg42: i64, %arg43: i64):
    %54 = "llvm.getelementptr"(%arg41, %arg42, %arg43) <{elem_type = !llvm.array<4 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %55 = "llvm.load"(%54) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%55) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh3_sh0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: !llvm.ptr, %arg39: i64, %arg40: i64):
    %52 = "llvm.getelementptr"(%arg38, %arg39, %arg40) <{elem_type = !llvm.array<8 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %53 = "llvm.load"(%52) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%53) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh3_sh1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: !llvm.ptr, %arg36: i64, %arg37: i64):
    %50 = "llvm.getelementptr"(%arg35, %arg36, %arg37) <{elem_type = !llvm.array<8 x i16>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %51 = "llvm.load"(%50) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%51) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh3_sh2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: !llvm.ptr, %arg33: i64, %arg34: i64):
    %48 = "llvm.getelementptr"(%arg32, %arg33, %arg34) <{elem_type = !llvm.array<8 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %49 = "llvm.load"(%48) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh3_sh3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: !llvm.ptr, %arg30: i64, %arg31: i64):
    %46 = "llvm.getelementptr"(%arg29, %arg30, %arg31) <{elem_type = !llvm.array<8 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %47 = "llvm.load"(%46) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%47) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_lshr_sh3_sh3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: !llvm.ptr, %arg27: i64, %arg28: i64):
    %42 = "llvm.mlir.constant"() <{value = 58 : i64}> : () -> i64
    %43 = "llvm.lshr"(%arg27, %42) : (i64, i64) -> i64
    %44 = "llvm.getelementptr"(%arg26, %43, %arg28) <{elem_type = !llvm.array<8 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %45 = "llvm.load"(%44) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh4_sh0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: !llvm.ptr, %arg24: i64, %arg25: i64):
    %40 = "llvm.getelementptr"(%arg23, %arg24, %arg25) <{elem_type = !llvm.array<16 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %41 = "llvm.load"(%40) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%41) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh4_sh1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: !llvm.ptr, %arg21: i64, %arg22: i64):
    %38 = "llvm.getelementptr"(%arg20, %arg21, %arg22) <{elem_type = !llvm.array<16 x i16>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %39 = "llvm.load"(%38) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%39) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh4_sh2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: !llvm.ptr, %arg18: i64, %arg19: i64):
    %36 = "llvm.getelementptr"(%arg17, %arg18, %arg19) <{elem_type = !llvm.array<16 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %37 = "llvm.load"(%36) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh4_sh3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr, %arg15: i64, %arg16: i64):
    %34 = "llvm.getelementptr"(%arg14, %arg15, %arg16) <{elem_type = !llvm.array<16 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %35 = "llvm.load"(%34) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%35) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64):
    %32 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %33 = "llvm.mul"(%arg13, %32) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%33) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %30 = "llvm.mlir.constant"() <{value = -2 : i64}> : () -> i64
    %31 = "llvm.mul"(%arg12, %30) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%31) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i64):
    %28 = "llvm.mlir.constant"() <{value = -3 : i64}> : () -> i64
    %29 = "llvm.mul"(%arg11, %28) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%29) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64):
    %26 = "llvm.mlir.constant"() <{value = -4 : i64}> : () -> i64
    %27 = "llvm.mul"(%arg10, %26) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%27) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64):
    %24 = "llvm.mlir.constant"() <{value = -5 : i64}> : () -> i64
    %25 = "llvm.mul"(%arg9, %24) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %22 = "llvm.mlir.constant"() <{value = -6 : i64}> : () -> i64
    %23 = "llvm.mul"(%arg8, %22) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%23) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %20 = "llvm.mlir.constant"() <{value = -7 : i64}> : () -> i64
    %21 = "llvm.mul"(%arg7, %20) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %18 = "llvm.mlir.constant"() <{value = -8 : i64}> : () -> i64
    %19 = "llvm.mul"(%arg6, %18) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%19) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srai_srli_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: i64):
    %13 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %15 = "llvm.ashr"(%arg5, %13) : (i64, i64) -> i64
    %16 = "llvm.lshr"(%15, %14) : (i64, i64) -> i64
    %17 = "llvm.getelementptr"(%arg4, %16) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%17) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srai_srli_slli", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: i64):
    %8 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %10 = "llvm.ashr"(%arg3, %8) : (i64, i64) -> i64
    %11 = "llvm.lshr"(%10, %9) : (i64, i64) -> i64
    %12 = "llvm.getelementptr"(%arg2, %11) <{elem_type = i128, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%12) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srai_andi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64):
    %4 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = -8 : i64}> : () -> i64
    %6 = "llvm.ashr"(%arg1, %4) : (i64, i64) -> i64
    %7 = "llvm.and"(%6, %5) : (i64, i64) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srai_lui_and", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = -8192 : i64}> : () -> i64
    %2 = "llvm.ashr"(%arg0, %0) : (i64, i64) -> i64
    %3 = "llvm.and"(%2, %1) : (i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

