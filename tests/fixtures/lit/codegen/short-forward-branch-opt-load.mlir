"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg349: !llvm.ptr, %arg350: i1, %arg351: i32):
    %463 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %464 = "llvm.getelementptr"(%arg349, %463) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %465 = "llvm.load"(%464) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %466 = "llvm.sext"(%465) : (i8) -> i32
    %467 = "llvm.select"(%arg350, %466, %arg351) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%467) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg346: !llvm.ptr, %arg347: i1, %arg348: i32):
    %458 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %459 = "llvm.getelementptr"(%arg346, %458) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %460 = "llvm.load"(%459) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %461 = "llvm.zext"(%460) : (i8) -> i32
    %462 = "llvm.select"(%arg347, %461, %arg348) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%462) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg343: !llvm.ptr, %arg344: i1, %arg345: i32):
    %453 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %454 = "llvm.getelementptr"(%arg343, %453) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %455 = "llvm.load"(%454) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %456 = "llvm.sext"(%455) : (i16) -> i32
    %457 = "llvm.select"(%arg344, %456, %arg345) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%457) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg340: !llvm.ptr, %arg341: i1, %arg342: i32):
    %448 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %449 = "llvm.getelementptr"(%arg340, %448) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %450 = "llvm.load"(%449) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %451 = "llvm.zext"(%450) : (i16) -> i32
    %452 = "llvm.select"(%arg341, %451, %arg342) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%452) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg337: !llvm.ptr, %arg338: i1, %arg339: i32):
    %444 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %445 = "llvm.getelementptr"(%arg337, %444) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %446 = "llvm.load"(%445) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %447 = "llvm.select"(%arg338, %446, %arg339) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%447) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg332: !llvm.ptr, %arg333: i1, %arg334: i32, %arg335: !llvm.ptr, %arg336: i32):
    %439 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %440 = "llvm.getelementptr"(%arg332, %439) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %441 = "llvm.load"(%440) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %442 = "llvm.sext"(%441) : (i8) -> i32
    "llvm.store"(%arg336, %arg335) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %443 = "llvm.select"(%arg333, %442, %arg334) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%443) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg327: !llvm.ptr, %arg328: i1, %arg329: i32, %arg330: !llvm.ptr, %arg331: i32):
    %434 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %435 = "llvm.getelementptr"(%arg327, %434) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %436 = "llvm.load"(%435) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %437 = "llvm.zext"(%436) : (i8) -> i32
    "llvm.store"(%arg331, %arg330) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %438 = "llvm.select"(%arg328, %437, %arg329) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%438) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg322: !llvm.ptr, %arg323: i1, %arg324: i32, %arg325: !llvm.ptr, %arg326: i32):
    %429 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %430 = "llvm.getelementptr"(%arg322, %429) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %431 = "llvm.load"(%430) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %432 = "llvm.sext"(%431) : (i16) -> i32
    "llvm.store"(%arg326, %arg325) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %433 = "llvm.select"(%arg323, %432, %arg324) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%433) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg317: !llvm.ptr, %arg318: i1, %arg319: i32, %arg320: !llvm.ptr, %arg321: i32):
    %424 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %425 = "llvm.getelementptr"(%arg317, %424) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %426 = "llvm.load"(%425) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %427 = "llvm.zext"(%426) : (i16) -> i32
    "llvm.store"(%arg321, %arg320) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %428 = "llvm.select"(%arg318, %427, %arg319) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%428) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg312: !llvm.ptr, %arg313: i1, %arg314: i32, %arg315: !llvm.ptr, %arg316: i32):
    %420 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %421 = "llvm.getelementptr"(%arg312, %420) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %422 = "llvm.load"(%421) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%arg316, %arg315) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %423 = "llvm.select"(%arg313, %422, %arg314) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%423) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg309: !llvm.ptr, %arg310: i1, %arg311: i64):
    %415 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %416 = "llvm.getelementptr"(%arg309, %415) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %417 = "llvm.load"(%416) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %418 = "llvm.sext"(%417) : (i8) -> i64
    %419 = "llvm.select"(%arg310, %418, %arg311) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%419) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg306: !llvm.ptr, %arg307: i1, %arg308: i64):
    %410 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %411 = "llvm.getelementptr"(%arg306, %410) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %412 = "llvm.load"(%411) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %413 = "llvm.zext"(%412) : (i8) -> i64
    %414 = "llvm.select"(%arg307, %413, %arg308) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%414) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg303: !llvm.ptr, %arg304: i1, %arg305: i64):
    %405 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %406 = "llvm.getelementptr"(%arg303, %405) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %407 = "llvm.load"(%406) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %408 = "llvm.sext"(%407) : (i16) -> i64
    %409 = "llvm.select"(%arg304, %408, %arg305) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%409) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg300: !llvm.ptr, %arg301: i1, %arg302: i64):
    %400 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %401 = "llvm.getelementptr"(%arg300, %400) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %402 = "llvm.load"(%401) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %403 = "llvm.zext"(%402) : (i16) -> i64
    %404 = "llvm.select"(%arg301, %403, %arg302) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%404) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_z_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg297: !llvm.ptr, %arg298: i1, %arg299: i64):
    %395 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %396 = "llvm.getelementptr"(%arg297, %395) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %397 = "llvm.load"(%396) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %398 = "llvm.zext"(%397) : (i32) -> i64
    %399 = "llvm.select"(%arg298, %398, %arg299) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%399) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i64_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg294: !llvm.ptr, %arg295: i1, %arg296: i64):
    %391 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %392 = "llvm.getelementptr"(%arg294, %391) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %393 = "llvm.load"(%392) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %394 = "llvm.select"(%arg295, %393, %arg296) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%394) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_store_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg289: !llvm.ptr, %arg290: i1, %arg291: i64, %arg292: !llvm.ptr, %arg293: i64):
    %386 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %387 = "llvm.getelementptr"(%arg289, %386) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %388 = "llvm.load"(%387) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %389 = "llvm.sext"(%388) : (i8) -> i64
    "llvm.store"(%arg293, %arg292) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %390 = "llvm.select"(%arg290, %389, %arg291) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%390) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_store_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg284: !llvm.ptr, %arg285: i1, %arg286: i64, %arg287: !llvm.ptr, %arg288: i64):
    %381 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %382 = "llvm.getelementptr"(%arg284, %381) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %383 = "llvm.load"(%382) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %384 = "llvm.zext"(%383) : (i8) -> i64
    "llvm.store"(%arg288, %arg287) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %385 = "llvm.select"(%arg285, %384, %arg286) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%385) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_store_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg279: !llvm.ptr, %arg280: i1, %arg281: i64, %arg282: !llvm.ptr, %arg283: i64):
    %376 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %377 = "llvm.getelementptr"(%arg279, %376) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %378 = "llvm.load"(%377) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %379 = "llvm.sext"(%378) : (i16) -> i64
    "llvm.store"(%arg283, %arg282) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %380 = "llvm.select"(%arg280, %379, %arg281) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%380) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_store_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg274: !llvm.ptr, %arg275: i1, %arg276: i64, %arg277: !llvm.ptr, %arg278: i64):
    %371 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %372 = "llvm.getelementptr"(%arg274, %371) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %373 = "llvm.load"(%372) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %374 = "llvm.zext"(%373) : (i16) -> i64
    "llvm.store"(%arg278, %arg277) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %375 = "llvm.select"(%arg275, %374, %arg276) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%375) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_z_store_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg269: !llvm.ptr, %arg270: i1, %arg271: i64, %arg272: !llvm.ptr, %arg273: i64):
    %366 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %367 = "llvm.getelementptr"(%arg269, %366) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %368 = "llvm.load"(%367) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %369 = "llvm.zext"(%368) : (i32) -> i64
    "llvm.store"(%arg273, %arg272) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %370 = "llvm.select"(%arg270, %369, %arg271) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%370) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i64_store_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg264: !llvm.ptr, %arg265: i1, %arg266: i64, %arg267: !llvm.ptr, %arg268: i64):
    %362 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %363 = "llvm.getelementptr"(%arg264, %362) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %364 = "llvm.load"(%363) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.store"(%arg268, %arg267) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %365 = "llvm.select"(%arg265, %364, %arg266) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%365) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg260: !llvm.ptr, %arg261: i1, %arg262: i32, %arg263: !llvm.ptr):
    %355 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %356 = "llvm.getelementptr"(%arg260, %355) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %357 = "llvm.load"(%356) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %358 = "llvm.sext"(%357) : (i8) -> i32
    %359 = "llvm.load"(%arg263) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %360 = "llvm.select"(%arg261, %358, %arg262) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %361 = "llvm.add"(%360, %359) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%361) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg256: !llvm.ptr, %arg257: i1, %arg258: i32, %arg259: !llvm.ptr):
    %348 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %349 = "llvm.getelementptr"(%arg256, %348) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %350 = "llvm.load"(%349) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %351 = "llvm.zext"(%350) : (i8) -> i32
    %352 = "llvm.load"(%arg259) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %353 = "llvm.select"(%arg257, %351, %arg258) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %354 = "llvm.add"(%353, %352) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%354) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg252: !llvm.ptr, %arg253: i1, %arg254: i32, %arg255: !llvm.ptr):
    %341 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %342 = "llvm.getelementptr"(%arg252, %341) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %343 = "llvm.load"(%342) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %344 = "llvm.sext"(%343) : (i16) -> i32
    %345 = "llvm.load"(%arg255) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %346 = "llvm.select"(%arg253, %344, %arg254) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %347 = "llvm.add"(%346, %345) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%347) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg248: !llvm.ptr, %arg249: i1, %arg250: i32, %arg251: !llvm.ptr):
    %334 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %335 = "llvm.getelementptr"(%arg248, %334) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %336 = "llvm.load"(%335) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %337 = "llvm.zext"(%336) : (i16) -> i32
    %338 = "llvm.load"(%arg251) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %339 = "llvm.select"(%arg249, %337, %arg250) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %340 = "llvm.add"(%339, %338) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%340) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg244: !llvm.ptr, %arg245: i1, %arg246: i32, %arg247: !llvm.ptr):
    %328 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %329 = "llvm.getelementptr"(%arg244, %328) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %330 = "llvm.load"(%329) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %331 = "llvm.load"(%arg247) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %332 = "llvm.select"(%arg245, %330, %arg246) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %333 = "llvm.add"(%332, %331) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%333) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_1_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg240: !llvm.ptr, %arg241: i1, %arg242: i64, %arg243: !llvm.ptr):
    %321 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %322 = "llvm.getelementptr"(%arg240, %321) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %323 = "llvm.load"(%322) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %324 = "llvm.load"(%arg243) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    %325 = "llvm.sext"(%323) : (i8) -> i64
    %326 = "llvm.select"(%arg241, %325, %arg242) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %327 = "llvm.add"(%326, %324) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%327) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_1_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg236: !llvm.ptr, %arg237: i1, %arg238: i64, %arg239: !llvm.ptr):
    %314 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %315 = "llvm.getelementptr"(%arg236, %314) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %316 = "llvm.load"(%315) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %317 = "llvm.load"(%arg239) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    %318 = "llvm.zext"(%316) : (i8) -> i64
    %319 = "llvm.select"(%arg237, %318, %arg238) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %320 = "llvm.add"(%319, %317) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%320) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_1_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg232: !llvm.ptr, %arg233: i1, %arg234: i64, %arg235: !llvm.ptr):
    %307 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %308 = "llvm.getelementptr"(%arg232, %307) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %309 = "llvm.load"(%308) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %310 = "llvm.load"(%arg235) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    %311 = "llvm.sext"(%309) : (i16) -> i64
    %312 = "llvm.select"(%arg233, %311, %arg234) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %313 = "llvm.add"(%312, %310) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%313) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_1_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg228: !llvm.ptr, %arg229: i1, %arg230: i64, %arg231: !llvm.ptr):
    %300 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %301 = "llvm.getelementptr"(%arg228, %300) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %302 = "llvm.load"(%301) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %303 = "llvm.load"(%arg231) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    %304 = "llvm.zext"(%302) : (i16) -> i64
    %305 = "llvm.select"(%arg229, %304, %arg230) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %306 = "llvm.add"(%305, %303) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%306) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_z_1_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg224: !llvm.ptr, %arg225: i1, %arg226: i64, %arg227: !llvm.ptr):
    %293 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %294 = "llvm.getelementptr"(%arg224, %293) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %295 = "llvm.load"(%294) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %296 = "llvm.load"(%arg227) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    %297 = "llvm.zext"(%295) : (i32) -> i64
    %298 = "llvm.select"(%arg225, %297, %arg226) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %299 = "llvm.add"(%298, %296) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%299) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i64_1_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg220: !llvm.ptr, %arg221: i1, %arg222: i64, %arg223: !llvm.ptr):
    %287 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %288 = "llvm.getelementptr"(%arg220, %287) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %289 = "llvm.load"(%288) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %290 = "llvm.load"(%arg223) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    %291 = "llvm.select"(%arg221, %289, %arg222) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %292 = "llvm.add"(%291, %290) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%292) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg217: !llvm.ptr, %arg218: i1, %arg219: i32):
    %282 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %283 = "llvm.getelementptr"(%arg217, %282) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %284 = "llvm.load"(%283) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %285 = "llvm.sext"(%284) : (i8) -> i32
    %286 = "llvm.select"(%arg218, %arg219, %285) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%286) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg214: !llvm.ptr, %arg215: i1, %arg216: i32):
    %277 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %278 = "llvm.getelementptr"(%arg214, %277) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %279 = "llvm.load"(%278) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %280 = "llvm.zext"(%279) : (i8) -> i32
    %281 = "llvm.select"(%arg215, %arg216, %280) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%281) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg211: !llvm.ptr, %arg212: i1, %arg213: i32):
    %272 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %273 = "llvm.getelementptr"(%arg211, %272) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %274 = "llvm.load"(%273) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %275 = "llvm.sext"(%274) : (i16) -> i32
    %276 = "llvm.select"(%arg212, %arg213, %275) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%276) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg208: !llvm.ptr, %arg209: i1, %arg210: i32):
    %267 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %268 = "llvm.getelementptr"(%arg208, %267) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %269 = "llvm.load"(%268) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %270 = "llvm.zext"(%269) : (i16) -> i32
    %271 = "llvm.select"(%arg209, %arg210, %270) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%271) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg205: !llvm.ptr, %arg206: i1, %arg207: i32):
    %263 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %264 = "llvm.getelementptr"(%arg205, %263) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %265 = "llvm.load"(%264) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %266 = "llvm.select"(%arg206, %arg207, %265) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%266) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_store_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg200: !llvm.ptr, %arg201: i1, %arg202: i32, %arg203: !llvm.ptr, %arg204: i32):
    %258 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %259 = "llvm.getelementptr"(%arg200, %258) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %260 = "llvm.load"(%259) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %261 = "llvm.sext"(%260) : (i8) -> i32
    "llvm.store"(%arg204, %arg203) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %262 = "llvm.select"(%arg201, %arg202, %261) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%262) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_store_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg195: !llvm.ptr, %arg196: i1, %arg197: i32, %arg198: !llvm.ptr, %arg199: i32):
    %253 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %254 = "llvm.getelementptr"(%arg195, %253) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %255 = "llvm.load"(%254) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %256 = "llvm.zext"(%255) : (i8) -> i32
    "llvm.store"(%arg199, %arg198) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %257 = "llvm.select"(%arg196, %arg197, %256) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%257) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_store_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg190: !llvm.ptr, %arg191: i1, %arg192: i32, %arg193: !llvm.ptr, %arg194: i32):
    %248 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %249 = "llvm.getelementptr"(%arg190, %248) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %250 = "llvm.load"(%249) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %251 = "llvm.sext"(%250) : (i16) -> i32
    "llvm.store"(%arg194, %arg193) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %252 = "llvm.select"(%arg191, %arg192, %251) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%252) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_store_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg185: !llvm.ptr, %arg186: i1, %arg187: i32, %arg188: !llvm.ptr, %arg189: i32):
    %243 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %244 = "llvm.getelementptr"(%arg185, %243) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %245 = "llvm.load"(%244) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %246 = "llvm.zext"(%245) : (i16) -> i32
    "llvm.store"(%arg189, %arg188) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %247 = "llvm.select"(%arg186, %arg187, %246) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%247) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_store_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg180: !llvm.ptr, %arg181: i1, %arg182: i32, %arg183: !llvm.ptr, %arg184: i32):
    %239 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %240 = "llvm.getelementptr"(%arg180, %239) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %241 = "llvm.load"(%240) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%arg184, %arg183) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %242 = "llvm.select"(%arg181, %arg182, %241) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%242) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_1_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg177: !llvm.ptr, %arg178: i1, %arg179: i64):
    %234 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %235 = "llvm.getelementptr"(%arg177, %234) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %236 = "llvm.load"(%235) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %237 = "llvm.sext"(%236) : (i8) -> i64
    %238 = "llvm.select"(%arg178, %arg179, %237) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%238) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_1_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg174: !llvm.ptr, %arg175: i1, %arg176: i64):
    %229 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %230 = "llvm.getelementptr"(%arg174, %229) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %231 = "llvm.load"(%230) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %232 = "llvm.zext"(%231) : (i8) -> i64
    %233 = "llvm.select"(%arg175, %arg176, %232) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%233) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_1_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg171: !llvm.ptr, %arg172: i1, %arg173: i64):
    %224 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %225 = "llvm.getelementptr"(%arg171, %224) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %226 = "llvm.load"(%225) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %227 = "llvm.sext"(%226) : (i16) -> i64
    %228 = "llvm.select"(%arg172, %arg173, %227) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%228) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_1_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg168: !llvm.ptr, %arg169: i1, %arg170: i64):
    %219 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %220 = "llvm.getelementptr"(%arg168, %219) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %221 = "llvm.load"(%220) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %222 = "llvm.zext"(%221) : (i16) -> i64
    %223 = "llvm.select"(%arg169, %arg170, %222) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%223) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_z_1_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg165: !llvm.ptr, %arg166: i1, %arg167: i64):
    %214 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %215 = "llvm.getelementptr"(%arg165, %214) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %216 = "llvm.load"(%215) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %217 = "llvm.zext"(%216) : (i32) -> i64
    %218 = "llvm.select"(%arg166, %arg167, %217) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%218) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i64_1_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg162: !llvm.ptr, %arg163: i1, %arg164: i64):
    %210 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %211 = "llvm.getelementptr"(%arg162, %210) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %212 = "llvm.load"(%211) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %213 = "llvm.select"(%arg163, %arg164, %212) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%213) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_store_64_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg157: !llvm.ptr, %arg158: i1, %arg159: i64, %arg160: !llvm.ptr, %arg161: i64):
    %205 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %206 = "llvm.getelementptr"(%arg157, %205) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %207 = "llvm.load"(%206) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %208 = "llvm.sext"(%207) : (i8) -> i64
    "llvm.store"(%arg161, %arg160) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %209 = "llvm.select"(%arg158, %arg159, %208) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%209) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_store_64_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg152: !llvm.ptr, %arg153: i1, %arg154: i64, %arg155: !llvm.ptr, %arg156: i64):
    %200 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %201 = "llvm.getelementptr"(%arg152, %200) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %202 = "llvm.load"(%201) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %203 = "llvm.zext"(%202) : (i8) -> i64
    "llvm.store"(%arg156, %arg155) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %204 = "llvm.select"(%arg153, %arg154, %203) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%204) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_store_64_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg147: !llvm.ptr, %arg148: i1, %arg149: i64, %arg150: !llvm.ptr, %arg151: i64):
    %195 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %196 = "llvm.getelementptr"(%arg147, %195) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %197 = "llvm.load"(%196) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %198 = "llvm.sext"(%197) : (i16) -> i64
    "llvm.store"(%arg151, %arg150) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %199 = "llvm.select"(%arg148, %arg149, %198) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%199) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_store_64_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg142: !llvm.ptr, %arg143: i1, %arg144: i64, %arg145: !llvm.ptr, %arg146: i64):
    %190 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %191 = "llvm.getelementptr"(%arg142, %190) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %192 = "llvm.load"(%191) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %193 = "llvm.zext"(%192) : (i16) -> i64
    "llvm.store"(%arg146, %arg145) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %194 = "llvm.select"(%arg143, %arg144, %193) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%194) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_z_store_64_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg137: !llvm.ptr, %arg138: i1, %arg139: i64, %arg140: !llvm.ptr, %arg141: i64):
    %185 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %186 = "llvm.getelementptr"(%arg137, %185) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %187 = "llvm.load"(%186) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %188 = "llvm.zext"(%187) : (i32) -> i64
    "llvm.store"(%arg141, %arg140) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %189 = "llvm.select"(%arg138, %arg139, %188) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%189) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i64_store_64_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: !llvm.ptr, %arg133: i1, %arg134: i64, %arg135: !llvm.ptr, %arg136: i64):
    %181 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %182 = "llvm.getelementptr"(%arg132, %181) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %183 = "llvm.load"(%182) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.store"(%arg136, %arg135) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %184 = "llvm.select"(%arg133, %arg134, %183) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%184) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg128: !llvm.ptr, %arg129: i1, %arg130: i32, %arg131: !llvm.ptr):
    %174 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %175 = "llvm.getelementptr"(%arg128, %174) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %176 = "llvm.load"(%175) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %177 = "llvm.sext"(%176) : (i8) -> i32
    %178 = "llvm.load"(%arg131) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %179 = "llvm.select"(%arg129, %arg130, %177) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %180 = "llvm.add"(%179, %178) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%180) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: !llvm.ptr, %arg125: i1, %arg126: i32, %arg127: !llvm.ptr):
    %167 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %168 = "llvm.getelementptr"(%arg124, %167) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %169 = "llvm.load"(%168) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %170 = "llvm.zext"(%169) : (i8) -> i32
    %171 = "llvm.load"(%arg127) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %172 = "llvm.select"(%arg125, %arg126, %170) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %173 = "llvm.add"(%172, %171) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%173) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: !llvm.ptr, %arg121: i1, %arg122: i32, %arg123: !llvm.ptr):
    %160 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %161 = "llvm.getelementptr"(%arg120, %160) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %162 = "llvm.load"(%161) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %163 = "llvm.sext"(%162) : (i16) -> i32
    %164 = "llvm.load"(%arg123) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %165 = "llvm.select"(%arg121, %arg122, %163) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %166 = "llvm.add"(%165, %164) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%166) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg116: !llvm.ptr, %arg117: i1, %arg118: i32, %arg119: !llvm.ptr):
    %153 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %154 = "llvm.getelementptr"(%arg116, %153) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %155 = "llvm.load"(%154) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %156 = "llvm.zext"(%155) : (i16) -> i32
    %157 = "llvm.load"(%arg119) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %158 = "llvm.select"(%arg117, %arg118, %156) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %159 = "llvm.add"(%158, %157) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%159) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg112: !llvm.ptr, %arg113: i1, %arg114: i32, %arg115: !llvm.ptr):
    %147 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %148 = "llvm.getelementptr"(%arg112, %147) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %149 = "llvm.load"(%148) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %150 = "llvm.load"(%arg115) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %151 = "llvm.select"(%arg113, %arg114, %149) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %152 = "llvm.add"(%151, %150) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%152) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_1_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: !llvm.ptr, %arg109: i1, %arg110: i64, %arg111: !llvm.ptr):
    %140 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %141 = "llvm.getelementptr"(%arg108, %140) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %142 = "llvm.load"(%141) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %143 = "llvm.load"(%arg111) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    %144 = "llvm.sext"(%142) : (i8) -> i64
    %145 = "llvm.select"(%arg109, %arg110, %144) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %146 = "llvm.add"(%145, %143) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%146) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_1_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg104: !llvm.ptr, %arg105: i1, %arg106: i64, %arg107: !llvm.ptr):
    %133 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %134 = "llvm.getelementptr"(%arg104, %133) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %135 = "llvm.load"(%134) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %136 = "llvm.load"(%arg107) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    %137 = "llvm.zext"(%135) : (i8) -> i64
    %138 = "llvm.select"(%arg105, %arg106, %137) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %139 = "llvm.add"(%138, %136) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%139) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_1_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg100: !llvm.ptr, %arg101: i1, %arg102: i64, %arg103: !llvm.ptr):
    %126 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %127 = "llvm.getelementptr"(%arg100, %126) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %128 = "llvm.load"(%127) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %129 = "llvm.load"(%arg103) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    %130 = "llvm.sext"(%128) : (i16) -> i64
    %131 = "llvm.select"(%arg101, %arg102, %130) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %132 = "llvm.add"(%131, %129) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%132) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_1_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: !llvm.ptr, %arg97: i1, %arg98: i64, %arg99: !llvm.ptr):
    %119 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %120 = "llvm.getelementptr"(%arg96, %119) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %121 = "llvm.load"(%120) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %122 = "llvm.load"(%arg99) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    %123 = "llvm.zext"(%121) : (i16) -> i64
    %124 = "llvm.select"(%arg97, %arg98, %123) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %125 = "llvm.add"(%124, %122) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%125) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_z_1_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg92: !llvm.ptr, %arg93: i1, %arg94: i64, %arg95: !llvm.ptr):
    %112 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %113 = "llvm.getelementptr"(%arg92, %112) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %114 = "llvm.load"(%113) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %115 = "llvm.load"(%arg95) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    %116 = "llvm.zext"(%114) : (i32) -> i64
    %117 = "llvm.select"(%arg93, %arg94, %116) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %118 = "llvm.add"(%117, %115) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%118) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i64_1_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: !llvm.ptr, %arg89: i1, %arg90: i64, %arg91: !llvm.ptr):
    %106 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %107 = "llvm.getelementptr"(%arg88, %106) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %108 = "llvm.load"(%107) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %109 = "llvm.load"(%arg91) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i64
    %110 = "llvm.select"(%arg89, %arg90, %108) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %111 = "llvm.add"(%110, %109) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%111) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg85: !llvm.ptr, %arg86: i1, %arg87: i32):
    %101 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %102 = "llvm.getelementptr"(%arg85, %101) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %103 = "llvm.load"(%102) <{alignment = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i8
    %104 = "llvm.sext"(%103) : (i8) -> i32
    %105 = "llvm.select"(%arg86, %104, %arg87) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%105) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg82: !llvm.ptr, %arg83: i1, %arg84: i32):
    %96 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %97 = "llvm.getelementptr"(%arg82, %96) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %98 = "llvm.load"(%97) <{alignment = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i8
    %99 = "llvm.zext"(%98) : (i8) -> i32
    %100 = "llvm.select"(%arg83, %99, %arg84) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%100) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg79: !llvm.ptr, %arg80: i1, %arg81: i32):
    %91 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %92 = "llvm.getelementptr"(%arg79, %91) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %93 = "llvm.load"(%92) <{alignment = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i16
    %94 = "llvm.sext"(%93) : (i16) -> i32
    %95 = "llvm.select"(%arg80, %94, %arg81) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: !llvm.ptr, %arg77: i1, %arg78: i32):
    %86 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %87 = "llvm.getelementptr"(%arg76, %86) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %88 = "llvm.load"(%87) <{alignment = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i16
    %89 = "llvm.zext"(%88) : (i16) -> i32
    %90 = "llvm.select"(%arg77, %89, %arg78) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%90) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg73: !llvm.ptr, %arg74: i1, %arg75: i32):
    %82 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %83 = "llvm.getelementptr"(%arg73, %82) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %84 = "llvm.load"(%83) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    %85 = "llvm.select"(%arg74, %84, %arg75) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%85) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_store_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: !llvm.ptr, %arg69: i1, %arg70: i32, %arg71: !llvm.ptr, %arg72: i32):
    %77 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %78 = "llvm.getelementptr"(%arg68, %77) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %79 = "llvm.load"(%78) <{alignment = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i8
    %80 = "llvm.sext"(%79) : (i8) -> i32
    "llvm.store"(%arg72, %arg71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %81 = "llvm.select"(%arg69, %80, %arg70) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_store_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: !llvm.ptr, %arg64: i1, %arg65: i32, %arg66: !llvm.ptr, %arg67: i32):
    %72 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %73 = "llvm.getelementptr"(%arg63, %72) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %74 = "llvm.load"(%73) <{alignment = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i8
    %75 = "llvm.zext"(%74) : (i8) -> i32
    "llvm.store"(%arg67, %arg66) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %76 = "llvm.select"(%arg64, %75, %arg65) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%76) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_store_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: !llvm.ptr, %arg59: i1, %arg60: i32, %arg61: !llvm.ptr, %arg62: i32):
    %67 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %68 = "llvm.getelementptr"(%arg58, %67) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %69 = "llvm.load"(%68) <{alignment = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i16
    %70 = "llvm.sext"(%69) : (i16) -> i32
    "llvm.store"(%arg62, %arg61) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %71 = "llvm.select"(%arg59, %70, %arg60) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_store_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: !llvm.ptr, %arg54: i1, %arg55: i32, %arg56: !llvm.ptr, %arg57: i32):
    %62 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %63 = "llvm.getelementptr"(%arg53, %62) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %64 = "llvm.load"(%63) <{alignment = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i16
    %65 = "llvm.zext"(%64) : (i16) -> i32
    "llvm.store"(%arg57, %arg56) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %66 = "llvm.select"(%arg54, %65, %arg55) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_store_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: !llvm.ptr, %arg49: i1, %arg50: i32, %arg51: !llvm.ptr, %arg52: i32):
    %58 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %59 = "llvm.getelementptr"(%arg48, %58) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %60 = "llvm.load"(%59) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%arg52, %arg51) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %61 = "llvm.select"(%arg49, %60, %arg50) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_1_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: !llvm.ptr, %arg46: i1, %arg47: i64):
    %53 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %54 = "llvm.getelementptr"(%arg45, %53) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %55 = "llvm.load"(%54) <{alignment = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i8
    %56 = "llvm.sext"(%55) : (i8) -> i64
    %57 = "llvm.select"(%arg46, %56, %arg47) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%57) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_1_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: !llvm.ptr, %arg43: i1, %arg44: i64):
    %48 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %49 = "llvm.getelementptr"(%arg42, %48) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %50 = "llvm.load"(%49) <{alignment = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i8
    %51 = "llvm.zext"(%50) : (i8) -> i64
    %52 = "llvm.select"(%arg43, %51, %arg44) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%52) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_1_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: !llvm.ptr, %arg40: i1, %arg41: i64):
    %43 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %44 = "llvm.getelementptr"(%arg39, %43) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %45 = "llvm.load"(%44) <{alignment = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i16
    %46 = "llvm.sext"(%45) : (i16) -> i64
    %47 = "llvm.select"(%arg40, %46, %arg41) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%47) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_1_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: !llvm.ptr, %arg37: i1, %arg38: i64):
    %38 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %39 = "llvm.getelementptr"(%arg36, %38) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %40 = "llvm.load"(%39) <{alignment = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i16
    %41 = "llvm.zext"(%40) : (i16) -> i64
    %42 = "llvm.select"(%arg37, %41, %arg38) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%42) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_z_1_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: !llvm.ptr, %arg34: i1, %arg35: i64):
    %33 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %34 = "llvm.getelementptr"(%arg33, %33) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %35 = "llvm.load"(%34) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    %36 = "llvm.zext"(%35) : (i32) -> i64
    %37 = "llvm.select"(%arg34, %36, %arg35) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%37) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i64_1_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr, %arg31: i1, %arg32: i64):
    %29 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %30 = "llvm.getelementptr"(%arg30, %29) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %31 = "llvm.load"(%30) <{alignment = 8 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i64
    %32 = "llvm.select"(%arg31, %31, %arg32) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%32) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_store_64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: !llvm.ptr, %arg26: i1, %arg27: i64, %arg28: !llvm.ptr, %arg29: i64):
    %24 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %25 = "llvm.getelementptr"(%arg25, %24) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %26 = "llvm.load"(%25) <{alignment = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i8
    %27 = "llvm.sext"(%26) : (i8) -> i64
    "llvm.store"(%arg29, %arg28) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %28 = "llvm.select"(%arg26, %27, %arg27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%28) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_store_64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: !llvm.ptr, %arg21: i1, %arg22: i64, %arg23: !llvm.ptr, %arg24: i64):
    %19 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %20 = "llvm.getelementptr"(%arg20, %19) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %21 = "llvm.load"(%20) <{alignment = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i8
    %22 = "llvm.zext"(%21) : (i8) -> i64
    "llvm.store"(%arg24, %arg23) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %23 = "llvm.select"(%arg21, %22, %arg22) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%23) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_store_64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr, %arg16: i1, %arg17: i64, %arg18: !llvm.ptr, %arg19: i64):
    %14 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %15 = "llvm.getelementptr"(%arg15, %14) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %16 = "llvm.load"(%15) <{alignment = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i16
    %17 = "llvm.sext"(%16) : (i16) -> i64
    "llvm.store"(%arg19, %arg18) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %18 = "llvm.select"(%arg16, %17, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%18) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_store_64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: i1, %arg12: i64, %arg13: !llvm.ptr, %arg14: i64):
    %9 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %10 = "llvm.getelementptr"(%arg10, %9) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %11 = "llvm.load"(%10) <{alignment = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i16
    %12 = "llvm.zext"(%11) : (i16) -> i64
    "llvm.store"(%arg14, %arg13) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %13 = "llvm.select"(%arg11, %12, %arg12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_z_store_64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: !llvm.ptr, %arg6: i1, %arg7: i64, %arg8: !llvm.ptr, %arg9: i64):
    %4 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %5 = "llvm.getelementptr"(%arg5, %4) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %6 = "llvm.load"(%5) <{alignment = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i32
    %7 = "llvm.zext"(%6) : (i32) -> i64
    "llvm.store"(%arg9, %arg8) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %8 = "llvm.select"(%arg6, %7, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i64_store_64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i1, %arg2: i64, %arg3: !llvm.ptr, %arg4: i64):
    %0 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %1 = "llvm.getelementptr"(%arg0, %0) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %2 = "llvm.load"(%1) <{alignment = 8 : i64, ordering = 2 : i64}> : (!llvm.ptr) -> i64
    "llvm.store"(%arg4, %arg3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %3 = "llvm.select"(%arg1, %2, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

