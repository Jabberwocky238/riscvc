"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bittest_7_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg228: i32):
    %565 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %566 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %567 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %568 = "llvm.lshr"(%arg228, %565) : (i32, i32) -> i32
    %569 = "llvm.xor"(%568, %566) : (i32, i32) -> i32
    %570 = "llvm.and"(%569, %567) : (i32, i32) -> i32
    "llvm.return"(%570) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bittest_10_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg227: i32):
    %559 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %560 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %561 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %562 = "llvm.lshr"(%arg227, %559) : (i32, i32) -> i32
    %563 = "llvm.xor"(%562, %560) : (i32, i32) -> i32
    %564 = "llvm.and"(%563, %561) : (i32, i32) -> i32
    "llvm.return"(%564) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bittest_11_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg226: i32):
    %553 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %554 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %555 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %556 = "llvm.lshr"(%arg226, %553) : (i32, i32) -> i32
    %557 = "llvm.xor"(%556, %554) : (i32, i32) -> i32
    %558 = "llvm.and"(%557, %555) : (i32, i32) -> i32
    "llvm.return"(%558) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bittest_31_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg225: i32):
    %547 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %548 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %549 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %550 = "llvm.lshr"(%arg225, %547) : (i32, i32) -> i32
    %551 = "llvm.xor"(%550, %548) : (i32, i32) -> i32
    %552 = "llvm.and"(%551, %549) : (i32, i32) -> i32
    "llvm.return"(%552) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bittest_7_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg224: i64):
    %541 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %542 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %543 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %544 = "llvm.lshr"(%arg224, %541) : (i64, i64) -> i64
    %545 = "llvm.xor"(%544, %542) : (i64, i64) -> i64
    %546 = "llvm.and"(%545, %543) : (i64, i64) -> i64
    "llvm.return"(%546) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bittest_10_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg223: i64):
    %535 = "llvm.mlir.constant"() <{value = 10 : i64}> : () -> i64
    %536 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %537 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %538 = "llvm.lshr"(%arg223, %535) : (i64, i64) -> i64
    %539 = "llvm.xor"(%538, %536) : (i64, i64) -> i64
    %540 = "llvm.and"(%539, %537) : (i64, i64) -> i64
    "llvm.return"(%540) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bittest_11_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg222: i64):
    %529 = "llvm.mlir.constant"() <{value = 11 : i64}> : () -> i64
    %530 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %531 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %532 = "llvm.lshr"(%arg222, %529) : (i64, i64) -> i64
    %533 = "llvm.xor"(%532, %530) : (i64, i64) -> i64
    %534 = "llvm.and"(%533, %531) : (i64, i64) -> i64
    "llvm.return"(%534) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bittest_31_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg221: i64):
    %523 = "llvm.mlir.constant"() <{value = 31 : i64}> : () -> i64
    %524 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %525 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %526 = "llvm.lshr"(%arg221, %523) : (i64, i64) -> i64
    %527 = "llvm.xor"(%526, %524) : (i64, i64) -> i64
    %528 = "llvm.and"(%527, %525) : (i64, i64) -> i64
    "llvm.return"(%528) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bittest_32_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg220: i64):
    %517 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %518 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %519 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %520 = "llvm.lshr"(%arg220, %517) : (i64, i64) -> i64
    %521 = "llvm.xor"(%520, %518) : (i64, i64) -> i64
    %522 = "llvm.and"(%521, %519) : (i64, i64) -> i64
    "llvm.return"(%522) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bittest_63_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg219: i64):
    %511 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %512 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %513 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %514 = "llvm.lshr"(%arg219, %511) : (i64, i64) -> i64
    %515 = "llvm.xor"(%514, %512) : (i64, i64) -> i64
    %516 = "llvm.and"(%515, %513) : (i64, i64) -> i64
    "llvm.return"(%516) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bittest_constant_by_var_shr_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg218: i32):
    %505 = "llvm.mlir.constant"() <{value = 1234567890 : i32}> : () -> i32
    %506 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %507 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %508 = "llvm.lshr"(%505, %arg218) : (i32, i32) -> i32
    %509 = "llvm.and"(%508, %506) : (i32, i32) -> i32
    %510 = "llvm.icmp"(%509, %507) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.return"(%510) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bittest_constant_by_var_shl_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg217: i32):
    %499 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %500 = "llvm.mlir.constant"() <{value = 1234567890 : i32}> : () -> i32
    %501 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %502 = "llvm.shl"(%499, %arg217) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %503 = "llvm.and"(%502, %500) : (i32, i32) -> i32
    %504 = "llvm.icmp"(%503, %501) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.return"(%504) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bittest_constant_by_var_shr_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg216: i64):
    %493 = "llvm.mlir.constant"() <{value = 1234567890 : i64}> : () -> i64
    %494 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %495 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %496 = "llvm.lshr"(%493, %arg216) : (i64, i64) -> i64
    %497 = "llvm.and"(%496, %494) : (i64, i64) -> i64
    %498 = "llvm.icmp"(%497, %495) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.return"(%498) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bittest_constant_by_var_shl_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg215: i64):
    %487 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %488 = "llvm.mlir.constant"() <{value = 1234567890 : i64}> : () -> i64
    %489 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %490 = "llvm.shl"(%487, %arg215) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %491 = "llvm.and"(%490, %488) : (i64, i64) -> i64
    %492 = "llvm.icmp"(%491, %489) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.return"(%492) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bittest_switch", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg214: i32):
    "llvm.switch"(%arg214)[^bb2, ^bb1, ^bb1, ^bb1, ^bb1, ^bb1] <{case_operand_segments = array<i32: 0, 0, 0, 0, 0>, case_values = dense<[8, 9, 12, 13, 31]> : vector<5xi32>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i32) -> ()
  ^bb1:  // 5 preds: ^bb0, ^bb0, ^bb0, ^bb0, ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "bar", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_10_z_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg211: i32, %arg212: i32, %arg213: i32):
    %482 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %483 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %484 = "llvm.and"(%arg211, %482) : (i32, i32) -> i32
    %485 = "llvm.icmp"(%484, %483) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %486 = "llvm.select"(%485, %arg212, %arg213) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%486) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_10_nz_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg208: i32, %arg209: i32, %arg210: i32):
    %477 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %478 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %479 = "llvm.and"(%arg208, %477) : (i32, i32) -> i32
    %480 = "llvm.icmp"(%479, %478) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %481 = "llvm.select"(%480, %arg209, %arg210) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%481) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_11_z_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg205: i32, %arg206: i32, %arg207: i32):
    %472 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %473 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %474 = "llvm.and"(%arg205, %472) : (i32, i32) -> i32
    %475 = "llvm.icmp"(%474, %473) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %476 = "llvm.select"(%475, %arg206, %arg207) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%476) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_11_nz_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg202: i32, %arg203: i32, %arg204: i32):
    %467 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %468 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %469 = "llvm.and"(%arg202, %467) : (i32, i32) -> i32
    %470 = "llvm.icmp"(%469, %468) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %471 = "llvm.select"(%470, %arg203, %arg204) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%471) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_20_z_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg199: i32, %arg200: i32, %arg201: i32):
    %462 = "llvm.mlir.constant"() <{value = 1048576 : i32}> : () -> i32
    %463 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %464 = "llvm.and"(%arg199, %462) : (i32, i32) -> i32
    %465 = "llvm.icmp"(%464, %463) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %466 = "llvm.select"(%465, %arg200, %arg201) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%466) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_20_nz_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg196: i32, %arg197: i32, %arg198: i32):
    %457 = "llvm.mlir.constant"() <{value = 1048576 : i32}> : () -> i32
    %458 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %459 = "llvm.and"(%arg196, %457) : (i32, i32) -> i32
    %460 = "llvm.icmp"(%459, %458) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %461 = "llvm.select"(%460, %arg197, %arg198) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%461) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_31_z_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg193: i32, %arg194: i32, %arg195: i32):
    %452 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %453 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %454 = "llvm.and"(%arg193, %452) : (i32, i32) -> i32
    %455 = "llvm.icmp"(%454, %453) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %456 = "llvm.select"(%455, %arg194, %arg195) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%456) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_31_nz_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg190: i32, %arg191: i32, %arg192: i32):
    %447 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %448 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %449 = "llvm.and"(%arg190, %447) : (i32, i32) -> i32
    %450 = "llvm.icmp"(%449, %448) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %451 = "llvm.select"(%450, %arg191, %arg192) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%451) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_10_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg187: i64, %arg188: i64, %arg189: i64):
    %442 = "llvm.mlir.constant"() <{value = 1024 : i64}> : () -> i64
    %443 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %444 = "llvm.and"(%arg187, %442) : (i64, i64) -> i64
    %445 = "llvm.icmp"(%444, %443) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %446 = "llvm.select"(%445, %arg188, %arg189) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%446) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_10_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg184: i64, %arg185: i64, %arg186: i64):
    %437 = "llvm.mlir.constant"() <{value = 1024 : i64}> : () -> i64
    %438 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %439 = "llvm.and"(%arg184, %437) : (i64, i64) -> i64
    %440 = "llvm.icmp"(%439, %438) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %441 = "llvm.select"(%440, %arg185, %arg186) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%441) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_11_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg181: i64, %arg182: i64, %arg183: i64):
    %432 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %433 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %434 = "llvm.and"(%arg181, %432) : (i64, i64) -> i64
    %435 = "llvm.icmp"(%434, %433) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %436 = "llvm.select"(%435, %arg182, %arg183) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%436) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_11_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg178: i64, %arg179: i64, %arg180: i64):
    %427 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %428 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %429 = "llvm.and"(%arg178, %427) : (i64, i64) -> i64
    %430 = "llvm.icmp"(%429, %428) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %431 = "llvm.select"(%430, %arg179, %arg180) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%431) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_20_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg175: i64, %arg176: i64, %arg177: i64):
    %422 = "llvm.mlir.constant"() <{value = 1048576 : i64}> : () -> i64
    %423 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %424 = "llvm.and"(%arg175, %422) : (i64, i64) -> i64
    %425 = "llvm.icmp"(%424, %423) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %426 = "llvm.select"(%425, %arg176, %arg177) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%426) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_20_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg172: i64, %arg173: i64, %arg174: i64):
    %417 = "llvm.mlir.constant"() <{value = 1048576 : i64}> : () -> i64
    %418 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %419 = "llvm.and"(%arg172, %417) : (i64, i64) -> i64
    %420 = "llvm.icmp"(%419, %418) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %421 = "llvm.select"(%420, %arg173, %arg174) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%421) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_31_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg169: i64, %arg170: i64, %arg171: i64):
    %412 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %413 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %414 = "llvm.and"(%arg169, %412) : (i64, i64) -> i64
    %415 = "llvm.icmp"(%414, %413) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %416 = "llvm.select"(%415, %arg170, %arg171) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%416) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_31_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg166: i64, %arg167: i64, %arg168: i64):
    %407 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %408 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %409 = "llvm.and"(%arg166, %407) : (i64, i64) -> i64
    %410 = "llvm.icmp"(%409, %408) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %411 = "llvm.select"(%410, %arg167, %arg168) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%411) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_32_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg163: i64, %arg164: i64, %arg165: i64):
    %402 = "llvm.mlir.constant"() <{value = 4294967296 : i64}> : () -> i64
    %403 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %404 = "llvm.and"(%arg163, %402) : (i64, i64) -> i64
    %405 = "llvm.icmp"(%404, %403) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %406 = "llvm.select"(%405, %arg164, %arg165) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%406) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_32_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg160: i64, %arg161: i64, %arg162: i64):
    %397 = "llvm.mlir.constant"() <{value = 4294967296 : i64}> : () -> i64
    %398 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %399 = "llvm.and"(%arg160, %397) : (i64, i64) -> i64
    %400 = "llvm.icmp"(%399, %398) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %401 = "llvm.select"(%400, %arg161, %arg162) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%401) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_55_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg157: i64, %arg158: i64, %arg159: i64):
    %392 = "llvm.mlir.constant"() <{value = 36028797018963968 : i64}> : () -> i64
    %393 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %394 = "llvm.and"(%arg157, %392) : (i64, i64) -> i64
    %395 = "llvm.icmp"(%394, %393) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %396 = "llvm.select"(%395, %arg158, %arg159) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%396) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_55_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg154: i64, %arg155: i64, %arg156: i64):
    %387 = "llvm.mlir.constant"() <{value = 36028797018963968 : i64}> : () -> i64
    %388 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %389 = "llvm.and"(%arg154, %387) : (i64, i64) -> i64
    %390 = "llvm.icmp"(%389, %388) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %391 = "llvm.select"(%390, %arg155, %arg156) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%391) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_63_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg151: i64, %arg152: i64, %arg153: i64):
    %382 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %383 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %384 = "llvm.and"(%arg151, %382) : (i64, i64) -> i64
    %385 = "llvm.icmp"(%384, %383) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %386 = "llvm.select"(%385, %arg152, %arg153) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%386) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_63_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg148: i64, %arg149: i64, %arg150: i64):
    %377 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %378 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %379 = "llvm.and"(%arg148, %377) : (i64, i64) -> i64
    %380 = "llvm.icmp"(%379, %378) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %381 = "llvm.select"(%380, %arg149, %arg150) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%381) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_10_z_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg147: i32):
    %373 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %374 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %375 = "llvm.and"(%arg147, %373) : (i32, i32) -> i32
    %376 = "llvm.icmp"(%375, %374) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%376)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_10_nz_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg146: i32):
    %369 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %370 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %371 = "llvm.and"(%arg146, %369) : (i32, i32) -> i32
    %372 = "llvm.icmp"(%371, %370) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%372)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_11_z_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg145: i32):
    %365 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %366 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %367 = "llvm.and"(%arg145, %365) : (i32, i32) -> i32
    %368 = "llvm.icmp"(%367, %366) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%368)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_11_nz_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg144: i32):
    %361 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %362 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %363 = "llvm.and"(%arg144, %361) : (i32, i32) -> i32
    %364 = "llvm.icmp"(%363, %362) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%364)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_24_z_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg143: i32):
    %357 = "llvm.mlir.constant"() <{value = 16777216 : i32}> : () -> i32
    %358 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %359 = "llvm.and"(%arg143, %357) : (i32, i32) -> i32
    %360 = "llvm.icmp"(%359, %358) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%360)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_24_nz_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg142: i32):
    %353 = "llvm.mlir.constant"() <{value = 16777216 : i32}> : () -> i32
    %354 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %355 = "llvm.and"(%arg142, %353) : (i32, i32) -> i32
    %356 = "llvm.icmp"(%355, %354) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%356)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_31_z_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg141: i32):
    %349 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %350 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %351 = "llvm.and"(%arg141, %349) : (i32, i32) -> i32
    %352 = "llvm.icmp"(%351, %350) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%352)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_31_nz_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg140: i32):
    %345 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %346 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %347 = "llvm.and"(%arg140, %345) : (i32, i32) -> i32
    %348 = "llvm.icmp"(%347, %346) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%348)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_10_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg139: i64):
    %341 = "llvm.mlir.constant"() <{value = 1024 : i64}> : () -> i64
    %342 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %343 = "llvm.and"(%arg139, %341) : (i64, i64) -> i64
    %344 = "llvm.icmp"(%343, %342) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%344)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_10_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg138: i64):
    %337 = "llvm.mlir.constant"() <{value = 1024 : i64}> : () -> i64
    %338 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %339 = "llvm.and"(%arg138, %337) : (i64, i64) -> i64
    %340 = "llvm.icmp"(%339, %338) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%340)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_11_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg137: i64):
    %333 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %334 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %335 = "llvm.and"(%arg137, %333) : (i64, i64) -> i64
    %336 = "llvm.icmp"(%335, %334) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%336)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_11_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg136: i64):
    %329 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %330 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %331 = "llvm.and"(%arg136, %329) : (i64, i64) -> i64
    %332 = "llvm.icmp"(%331, %330) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%332)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_24_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg135: i64):
    %325 = "llvm.mlir.constant"() <{value = 16777216 : i64}> : () -> i64
    %326 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %327 = "llvm.and"(%arg135, %325) : (i64, i64) -> i64
    %328 = "llvm.icmp"(%327, %326) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%328)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_24_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg134: i64):
    %321 = "llvm.mlir.constant"() <{value = 16777216 : i64}> : () -> i64
    %322 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %323 = "llvm.and"(%arg134, %321) : (i64, i64) -> i64
    %324 = "llvm.icmp"(%323, %322) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%324)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_31_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg133: i64):
    %317 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %318 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %319 = "llvm.and"(%arg133, %317) : (i64, i64) -> i64
    %320 = "llvm.icmp"(%319, %318) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%320)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_31_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: i64):
    %313 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %314 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %315 = "llvm.and"(%arg132, %313) : (i64, i64) -> i64
    %316 = "llvm.icmp"(%315, %314) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%316)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_32_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg131: i64):
    %309 = "llvm.mlir.constant"() <{value = 4294967296 : i64}> : () -> i64
    %310 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %311 = "llvm.and"(%arg131, %309) : (i64, i64) -> i64
    %312 = "llvm.icmp"(%311, %310) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%312)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_32_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg130: i64):
    %305 = "llvm.mlir.constant"() <{value = 4294967296 : i64}> : () -> i64
    %306 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %307 = "llvm.and"(%arg130, %305) : (i64, i64) -> i64
    %308 = "llvm.icmp"(%307, %306) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%308)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_62_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg129: i64):
    %301 = "llvm.mlir.constant"() <{value = 4611686018427387904 : i64}> : () -> i64
    %302 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %303 = "llvm.and"(%arg129, %301) : (i64, i64) -> i64
    %304 = "llvm.icmp"(%303, %302) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%304)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_62_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg128: i64):
    %297 = "llvm.mlir.constant"() <{value = 4611686018427387904 : i64}> : () -> i64
    %298 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %299 = "llvm.and"(%arg128, %297) : (i64, i64) -> i64
    %300 = "llvm.icmp"(%299, %298) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%300)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_63_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg127: i64):
    %293 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %294 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %295 = "llvm.and"(%arg127, %293) : (i64, i64) -> i64
    %296 = "llvm.icmp"(%295, %294) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%296)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_63_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg126: i64):
    %289 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %290 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %291 = "llvm.and"(%arg126, %289) : (i64, i64) -> i64
    %292 = "llvm.icmp"(%291, %290) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%292)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_10_1_z_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg123: i32, %arg124: i32, %arg125: i32):
    %284 = "llvm.mlir.constant"() <{value = 1023 : i32}> : () -> i32
    %285 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %286 = "llvm.and"(%arg123, %284) : (i32, i32) -> i32
    %287 = "llvm.icmp"(%286, %285) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %288 = "llvm.select"(%287, %arg124, %arg125) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%288) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_10_1_nz_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: i32, %arg121: i32, %arg122: i32):
    %279 = "llvm.mlir.constant"() <{value = 1023 : i32}> : () -> i32
    %280 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %281 = "llvm.and"(%arg120, %279) : (i32, i32) -> i32
    %282 = "llvm.icmp"(%281, %280) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %283 = "llvm.select"(%282, %arg121, %arg122) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%283) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_11_1_z_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg117: i32, %arg118: i32, %arg119: i32):
    %274 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %275 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %276 = "llvm.and"(%arg117, %274) : (i32, i32) -> i32
    %277 = "llvm.icmp"(%276, %275) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %278 = "llvm.select"(%277, %arg118, %arg119) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%278) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_11_1_nz_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg114: i32, %arg115: i32, %arg116: i32):
    %269 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %270 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %271 = "llvm.and"(%arg114, %269) : (i32, i32) -> i32
    %272 = "llvm.icmp"(%271, %270) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %273 = "llvm.select"(%272, %arg115, %arg116) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%273) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_16_1_z_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg111: i32, %arg112: i32, %arg113: i32):
    %264 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %265 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %266 = "llvm.and"(%arg111, %264) : (i32, i32) -> i32
    %267 = "llvm.icmp"(%266, %265) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %268 = "llvm.select"(%267, %arg112, %arg113) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%268) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_16_1_nz_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: i32, %arg109: i32, %arg110: i32):
    %259 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %260 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %261 = "llvm.and"(%arg108, %259) : (i32, i32) -> i32
    %262 = "llvm.icmp"(%261, %260) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %263 = "llvm.select"(%262, %arg109, %arg110) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%263) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_20_1_z_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg105: i32, %arg106: i32, %arg107: i32):
    %254 = "llvm.mlir.constant"() <{value = 1048575 : i32}> : () -> i32
    %255 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %256 = "llvm.and"(%arg105, %254) : (i32, i32) -> i32
    %257 = "llvm.icmp"(%256, %255) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %258 = "llvm.select"(%257, %arg106, %arg107) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%258) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_20_1_nz_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg102: i32, %arg103: i32, %arg104: i32):
    %249 = "llvm.mlir.constant"() <{value = 1048575 : i32}> : () -> i32
    %250 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %251 = "llvm.and"(%arg102, %249) : (i32, i32) -> i32
    %252 = "llvm.icmp"(%251, %250) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %253 = "llvm.select"(%252, %arg103, %arg104) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%253) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_31_1_z_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: i32, %arg100: i32, %arg101: i32):
    %244 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %245 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %246 = "llvm.and"(%arg99, %244) : (i32, i32) -> i32
    %247 = "llvm.icmp"(%246, %245) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %248 = "llvm.select"(%247, %arg100, %arg101) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%248) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_31_1_nz_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: i32, %arg97: i32, %arg98: i32):
    %239 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %240 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %241 = "llvm.and"(%arg96, %239) : (i32, i32) -> i32
    %242 = "llvm.icmp"(%241, %240) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %243 = "llvm.select"(%242, %arg97, %arg98) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%243) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_32_1_z_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg93: i32, %arg94: i32, %arg95: i32):
    %234 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %235 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %236 = "llvm.and"(%arg93, %234) : (i32, i32) -> i32
    %237 = "llvm.icmp"(%236, %235) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %238 = "llvm.select"(%237, %arg94, %arg95) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%238) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "bit_32_1_nz_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg90: i32, %arg91: i32, %arg92: i32):
    %229 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %230 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %231 = "llvm.and"(%arg90, %229) : (i32, i32) -> i32
    %232 = "llvm.icmp"(%231, %230) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %233 = "llvm.select"(%232, %arg91, %arg92) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%233) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_10_1_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg87: i64, %arg88: i64, %arg89: i64):
    %224 = "llvm.mlir.constant"() <{value = 1023 : i64}> : () -> i64
    %225 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %226 = "llvm.and"(%arg87, %224) : (i64, i64) -> i64
    %227 = "llvm.icmp"(%226, %225) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %228 = "llvm.select"(%227, %arg88, %arg89) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%228) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_10_1_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: i64, %arg85: i64, %arg86: i64):
    %219 = "llvm.mlir.constant"() <{value = 1023 : i64}> : () -> i64
    %220 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %221 = "llvm.and"(%arg84, %219) : (i64, i64) -> i64
    %222 = "llvm.icmp"(%221, %220) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %223 = "llvm.select"(%222, %arg85, %arg86) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%223) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_11_1_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg81: i64, %arg82: i64, %arg83: i64):
    %214 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %215 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %216 = "llvm.and"(%arg81, %214) : (i64, i64) -> i64
    %217 = "llvm.icmp"(%216, %215) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %218 = "llvm.select"(%217, %arg82, %arg83) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%218) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_11_1_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: i64, %arg79: i64, %arg80: i64):
    %209 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %210 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %211 = "llvm.and"(%arg78, %209) : (i64, i64) -> i64
    %212 = "llvm.icmp"(%211, %210) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %213 = "llvm.select"(%212, %arg79, %arg80) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%213) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_16_1_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg75: i64, %arg76: i64, %arg77: i64):
    %204 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %205 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %206 = "llvm.and"(%arg75, %204) : (i64, i64) -> i64
    %207 = "llvm.icmp"(%206, %205) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %208 = "llvm.select"(%207, %arg76, %arg77) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%208) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_16_1_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: i64, %arg73: i64, %arg74: i64):
    %199 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %200 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %201 = "llvm.and"(%arg72, %199) : (i64, i64) -> i64
    %202 = "llvm.icmp"(%201, %200) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %203 = "llvm.select"(%202, %arg73, %arg74) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%203) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_20_1_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: i64, %arg70: i64, %arg71: i64):
    %194 = "llvm.mlir.constant"() <{value = 1048575 : i64}> : () -> i64
    %195 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %196 = "llvm.and"(%arg69, %194) : (i64, i64) -> i64
    %197 = "llvm.icmp"(%196, %195) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %198 = "llvm.select"(%197, %arg70, %arg71) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%198) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_20_1_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: i64, %arg67: i64, %arg68: i64):
    %189 = "llvm.mlir.constant"() <{value = 1048575 : i64}> : () -> i64
    %190 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %191 = "llvm.and"(%arg66, %189) : (i64, i64) -> i64
    %192 = "llvm.icmp"(%191, %190) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %193 = "llvm.select"(%192, %arg67, %arg68) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%193) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_31_1_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: i64, %arg64: i64, %arg65: i64):
    %184 = "llvm.mlir.constant"() <{value = 2147483647 : i64}> : () -> i64
    %185 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %186 = "llvm.and"(%arg63, %184) : (i64, i64) -> i64
    %187 = "llvm.icmp"(%186, %185) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %188 = "llvm.select"(%187, %arg64, %arg65) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%188) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_31_1_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i64, %arg61: i64, %arg62: i64):
    %179 = "llvm.mlir.constant"() <{value = 2147483647 : i64}> : () -> i64
    %180 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %181 = "llvm.and"(%arg60, %179) : (i64, i64) -> i64
    %182 = "llvm.icmp"(%181, %180) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %183 = "llvm.select"(%182, %arg61, %arg62) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%183) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_32_1_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: i64, %arg58: i64, %arg59: i64):
    %174 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %175 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %176 = "llvm.and"(%arg57, %174) : (i64, i64) -> i64
    %177 = "llvm.icmp"(%176, %175) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %178 = "llvm.select"(%177, %arg58, %arg59) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%178) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_32_1_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i64, %arg55: i64, %arg56: i64):
    %169 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %170 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %171 = "llvm.and"(%arg54, %169) : (i64, i64) -> i64
    %172 = "llvm.icmp"(%171, %170) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %173 = "llvm.select"(%172, %arg55, %arg56) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%173) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_55_1_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: i64, %arg52: i64, %arg53: i64):
    %164 = "llvm.mlir.constant"() <{value = 36028797018963967 : i64}> : () -> i64
    %165 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %166 = "llvm.and"(%arg51, %164) : (i64, i64) -> i64
    %167 = "llvm.icmp"(%166, %165) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %168 = "llvm.select"(%167, %arg52, %arg53) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%168) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_55_1_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i64, %arg49: i64, %arg50: i64):
    %159 = "llvm.mlir.constant"() <{value = 36028797018963967 : i64}> : () -> i64
    %160 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %161 = "llvm.and"(%arg48, %159) : (i64, i64) -> i64
    %162 = "llvm.icmp"(%161, %160) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %163 = "llvm.select"(%162, %arg49, %arg50) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%163) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_63_1_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i64, %arg46: i64, %arg47: i64):
    %154 = "llvm.mlir.constant"() <{value = 9223372036854775807 : i64}> : () -> i64
    %155 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %156 = "llvm.and"(%arg45, %154) : (i64, i64) -> i64
    %157 = "llvm.icmp"(%156, %155) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %158 = "llvm.select"(%157, %arg46, %arg47) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%158) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_63_1_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i64, %arg43: i64, %arg44: i64):
    %149 = "llvm.mlir.constant"() <{value = 9223372036854775807 : i64}> : () -> i64
    %150 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %151 = "llvm.and"(%arg42, %149) : (i64, i64) -> i64
    %152 = "llvm.icmp"(%151, %150) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %153 = "llvm.select"(%152, %arg43, %arg44) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%153) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_64_1_z_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i64, %arg40: i64, %arg41: i64):
    %144 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %145 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %146 = "llvm.and"(%arg39, %144) : (i64, i64) -> i64
    %147 = "llvm.icmp"(%146, %145) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %148 = "llvm.select"(%147, %arg40, %arg41) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%148) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_64_1_nz_select_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i64, %arg37: i64, %arg38: i64):
    %139 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %140 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %141 = "llvm.and"(%arg36, %139) : (i64, i64) -> i64
    %142 = "llvm.icmp"(%141, %140) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %143 = "llvm.select"(%142, %arg37, %arg38) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%143) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_10_1_z_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i32):
    %135 = "llvm.mlir.constant"() <{value = 1023 : i32}> : () -> i32
    %136 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %137 = "llvm.and"(%arg35, %135) : (i32, i32) -> i32
    %138 = "llvm.icmp"(%137, %136) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%138)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_10_1_nz_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i32):
    %131 = "llvm.mlir.constant"() <{value = 1023 : i32}> : () -> i32
    %132 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %133 = "llvm.and"(%arg34, %131) : (i32, i32) -> i32
    %134 = "llvm.icmp"(%133, %132) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%134)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_11_1_z_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32):
    %127 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %128 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %129 = "llvm.and"(%arg33, %127) : (i32, i32) -> i32
    %130 = "llvm.icmp"(%129, %128) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%130)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_11_1_nz_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32):
    %123 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %124 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %125 = "llvm.and"(%arg32, %123) : (i32, i32) -> i32
    %126 = "llvm.icmp"(%125, %124) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%126)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_16_1_z_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i32):
    %119 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %120 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %121 = "llvm.and"(%arg31, %119) : (i32, i32) -> i32
    %122 = "llvm.icmp"(%121, %120) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%122)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_16_1_nz_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32):
    %115 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %116 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %117 = "llvm.and"(%arg30, %115) : (i32, i32) -> i32
    %118 = "llvm.icmp"(%117, %116) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%118)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_24_1_z_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i32):
    %111 = "llvm.mlir.constant"() <{value = 16777215 : i32}> : () -> i32
    %112 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %113 = "llvm.and"(%arg29, %111) : (i32, i32) -> i32
    %114 = "llvm.icmp"(%113, %112) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%114)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_24_1_nz_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32):
    %107 = "llvm.mlir.constant"() <{value = 16777215 : i32}> : () -> i32
    %108 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %109 = "llvm.and"(%arg28, %107) : (i32, i32) -> i32
    %110 = "llvm.icmp"(%109, %108) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%110)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_31_1_z_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32):
    %103 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %104 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %105 = "llvm.and"(%arg27, %103) : (i32, i32) -> i32
    %106 = "llvm.icmp"(%105, %104) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%106)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_31_1_nz_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32):
    %99 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %100 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %101 = "llvm.and"(%arg26, %99) : (i32, i32) -> i32
    %102 = "llvm.icmp"(%101, %100) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%102)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_32_1_z_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32):
    %95 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %96 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %97 = "llvm.and"(%arg25, %95) : (i32, i32) -> i32
    %98 = "llvm.icmp"(%97, %96) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%98)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "bit_32_1_nz_branch_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32):
    %91 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %92 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %93 = "llvm.and"(%arg24, %91) : (i32, i32) -> i32
    %94 = "llvm.icmp"(%93, %92) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%94)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_10_1_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i64):
    %87 = "llvm.mlir.constant"() <{value = 1023 : i64}> : () -> i64
    %88 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %89 = "llvm.and"(%arg23, %87) : (i64, i64) -> i64
    %90 = "llvm.icmp"(%89, %88) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%90)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_10_1_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i64):
    %83 = "llvm.mlir.constant"() <{value = 1023 : i64}> : () -> i64
    %84 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %85 = "llvm.and"(%arg22, %83) : (i64, i64) -> i64
    %86 = "llvm.icmp"(%85, %84) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%86)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_11_1_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i64):
    %79 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %80 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %81 = "llvm.and"(%arg21, %79) : (i64, i64) -> i64
    %82 = "llvm.icmp"(%81, %80) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%82)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_11_1_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i64):
    %75 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %76 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %77 = "llvm.and"(%arg20, %75) : (i64, i64) -> i64
    %78 = "llvm.icmp"(%77, %76) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%78)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_16_1_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i64):
    %71 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %72 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %73 = "llvm.and"(%arg19, %71) : (i64, i64) -> i64
    %74 = "llvm.icmp"(%73, %72) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%74)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_16_1_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i64):
    %67 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %68 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %69 = "llvm.and"(%arg18, %67) : (i64, i64) -> i64
    %70 = "llvm.icmp"(%69, %68) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%70)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_24_1_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i64):
    %63 = "llvm.mlir.constant"() <{value = 16777215 : i64}> : () -> i64
    %64 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %65 = "llvm.and"(%arg17, %63) : (i64, i64) -> i64
    %66 = "llvm.icmp"(%65, %64) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%66)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_24_1_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64):
    %59 = "llvm.mlir.constant"() <{value = 16777215 : i64}> : () -> i64
    %60 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %61 = "llvm.and"(%arg16, %59) : (i64, i64) -> i64
    %62 = "llvm.icmp"(%61, %60) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%62)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_31_1_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i64):
    %55 = "llvm.mlir.constant"() <{value = 2147483647 : i64}> : () -> i64
    %56 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %57 = "llvm.and"(%arg15, %55) : (i64, i64) -> i64
    %58 = "llvm.icmp"(%57, %56) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%58)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_31_1_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64):
    %51 = "llvm.mlir.constant"() <{value = 2147483647 : i64}> : () -> i64
    %52 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %53 = "llvm.and"(%arg14, %51) : (i64, i64) -> i64
    %54 = "llvm.icmp"(%53, %52) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%54)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_32_1_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64):
    %47 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %48 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %49 = "llvm.and"(%arg13, %47) : (i64, i64) -> i64
    %50 = "llvm.icmp"(%49, %48) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%50)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_32_1_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %43 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %44 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %45 = "llvm.and"(%arg12, %43) : (i64, i64) -> i64
    %46 = "llvm.icmp"(%45, %44) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%46)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_62_1_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i64):
    %39 = "llvm.mlir.constant"() <{value = 4611686018427387903 : i64}> : () -> i64
    %40 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %41 = "llvm.and"(%arg11, %39) : (i64, i64) -> i64
    %42 = "llvm.icmp"(%41, %40) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%42)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_62_1_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64):
    %35 = "llvm.mlir.constant"() <{value = 4611686018427387903 : i64}> : () -> i64
    %36 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %37 = "llvm.and"(%arg10, %35) : (i64, i64) -> i64
    %38 = "llvm.icmp"(%37, %36) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%38)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_63_1_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64):
    %31 = "llvm.mlir.constant"() <{value = 9223372036854775807 : i64}> : () -> i64
    %32 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %33 = "llvm.and"(%arg9, %31) : (i64, i64) -> i64
    %34 = "llvm.icmp"(%33, %32) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%34)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_63_1_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %27 = "llvm.mlir.constant"() <{value = 9223372036854775807 : i64}> : () -> i64
    %28 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %29 = "llvm.and"(%arg8, %27) : (i64, i64) -> i64
    %30 = "llvm.icmp"(%29, %28) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%30)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_64_1_z_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %23 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %24 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %25 = "llvm.and"(%arg7, %23) : (i64, i64) -> i64
    %26 = "llvm.icmp"(%25, %24) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%26)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "bit_64_1_nz_branch_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %19 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %20 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %21 = "llvm.and"(%arg6, %19) : (i64, i64) -> i64
    %22 = "llvm.icmp"(%21, %20) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%22)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @bar, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, sym_name = "bittest_31_andeq0_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64):
    %14 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %16 = "llvm.and"(%arg5, %14) : (i64, i64) -> i64
    %17 = "llvm.icmp"(%16, %15) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %18 = "llvm.zext"(%17) : (i1) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<external>, sym_name = "bittest_63_andeq0_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %9 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %11 = "llvm.and"(%arg4, %9) : (i64, i64) -> i64
    %12 = "llvm.icmp"(%11, %10) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %13 = "llvm.zext"(%12) : (i1) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "bittest_31_slt0_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32, %arg3: i1):
    %5 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %6 = "llvm.icmp"(%arg2, %5) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %7 = "llvm.and"(%6, %arg3) : (i1, i1) -> i1
    %8 = "llvm.zext"(%7) : (i1) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i1)>, linkage = #llvm.linkage<external>, sym_name = "bittest_63_slt0_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i1):
    %0 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "llvm.sext"(%arg0) : (i32) -> i64
    %2 = "llvm.icmp"(%1, %0) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %3 = "llvm.and"(%2, %arg1) : (i1, i1) -> i1
    %4 = "llvm.zext"(%3) : (i1) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

