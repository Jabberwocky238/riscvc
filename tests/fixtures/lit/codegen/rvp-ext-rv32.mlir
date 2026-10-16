"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_padd_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg323: !llvm.ptr, %arg324: !llvm.ptr, %arg325: !llvm.ptr):
    %502 = "llvm.load"(%arg324) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %503 = "llvm.load"(%arg325) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %504 = "llvm.add"(%502, %503) <{overflowFlags = 0 : i32}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%504, %arg323) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psub_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg320: !llvm.ptr, %arg321: !llvm.ptr, %arg322: !llvm.ptr):
    %499 = "llvm.load"(%arg321) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %500 = "llvm.load"(%arg322) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %501 = "llvm.sub"(%499, %500) <{overflowFlags = 0 : i32}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%501, %arg320) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_padd_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg317: !llvm.ptr, %arg318: !llvm.ptr, %arg319: !llvm.ptr):
    %496 = "llvm.load"(%arg318) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %497 = "llvm.load"(%arg319) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %498 = "llvm.add"(%496, %497) <{overflowFlags = 0 : i32}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%498, %arg317) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psub_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg314: !llvm.ptr, %arg315: !llvm.ptr, %arg316: !llvm.ptr):
    %493 = "llvm.load"(%arg315) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %494 = "llvm.load"(%arg316) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %495 = "llvm.sub"(%493, %494) <{overflowFlags = 0 : i32}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%495, %arg314) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_and_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg311: !llvm.ptr, %arg312: !llvm.ptr, %arg313: !llvm.ptr):
    %490 = "llvm.load"(%arg312) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %491 = "llvm.load"(%arg313) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %492 = "llvm.and"(%490, %491) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%492, %arg311) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_or_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg308: !llvm.ptr, %arg309: !llvm.ptr, %arg310: !llvm.ptr):
    %487 = "llvm.load"(%arg309) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %488 = "llvm.load"(%arg310) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %489 = "llvm.or"(%487, %488) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%489, %arg308) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_xor_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg305: !llvm.ptr, %arg306: !llvm.ptr, %arg307: !llvm.ptr):
    %484 = "llvm.load"(%arg306) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %485 = "llvm.load"(%arg307) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %486 = "llvm.xor"(%484, %485) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%486, %arg305) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_andn_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg302: !llvm.ptr, %arg303: !llvm.ptr, %arg304: !llvm.ptr):
    %479 = "llvm.mlir.constant"() <{value = dense<-1> : vector<2xi16>}> : () -> vector<2xi16>
    %480 = "llvm.load"(%arg303) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %481 = "llvm.load"(%arg304) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %482 = "llvm.xor"(%481, %479) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    %483 = "llvm.and"(%480, %482) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%483, %arg302) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_orn_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg299: !llvm.ptr, %arg300: !llvm.ptr, %arg301: !llvm.ptr):
    %474 = "llvm.mlir.constant"() <{value = dense<-1> : vector<2xi16>}> : () -> vector<2xi16>
    %475 = "llvm.load"(%arg300) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %476 = "llvm.load"(%arg301) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %477 = "llvm.xor"(%476, %474) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    %478 = "llvm.or"(%475, %477) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%478, %arg299) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_xnor_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg296: !llvm.ptr, %arg297: !llvm.ptr, %arg298: !llvm.ptr):
    %469 = "llvm.mlir.constant"() <{value = dense<-1> : vector<2xi16>}> : () -> vector<2xi16>
    %470 = "llvm.load"(%arg297) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %471 = "llvm.load"(%arg298) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %472 = "llvm.xor"(%471, %469) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    %473 = "llvm.xor"(%470, %472) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%473, %arg296) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_and_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg293: !llvm.ptr, %arg294: !llvm.ptr, %arg295: !llvm.ptr):
    %466 = "llvm.load"(%arg294) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %467 = "llvm.load"(%arg295) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %468 = "llvm.and"(%466, %467) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%468, %arg293) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_or_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg290: !llvm.ptr, %arg291: !llvm.ptr, %arg292: !llvm.ptr):
    %463 = "llvm.load"(%arg291) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %464 = "llvm.load"(%arg292) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %465 = "llvm.or"(%463, %464) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%465, %arg290) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_xor_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg287: !llvm.ptr, %arg288: !llvm.ptr, %arg289: !llvm.ptr):
    %460 = "llvm.load"(%arg288) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %461 = "llvm.load"(%arg289) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %462 = "llvm.xor"(%460, %461) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%462, %arg287) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_andn_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg284: !llvm.ptr, %arg285: !llvm.ptr, %arg286: !llvm.ptr):
    %455 = "llvm.mlir.constant"() <{value = dense<-1> : vector<4xi8>}> : () -> vector<4xi8>
    %456 = "llvm.load"(%arg285) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %457 = "llvm.load"(%arg286) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %458 = "llvm.xor"(%457, %455) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    %459 = "llvm.and"(%456, %458) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%459, %arg284) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_orn_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg281: !llvm.ptr, %arg282: !llvm.ptr, %arg283: !llvm.ptr):
    %450 = "llvm.mlir.constant"() <{value = dense<-1> : vector<4xi8>}> : () -> vector<4xi8>
    %451 = "llvm.load"(%arg282) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %452 = "llvm.load"(%arg283) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %453 = "llvm.xor"(%452, %450) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    %454 = "llvm.or"(%451, %453) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%454, %arg281) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_xnor_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg278: !llvm.ptr, %arg279: !llvm.ptr, %arg280: !llvm.ptr):
    %445 = "llvm.mlir.constant"() <{value = dense<-1> : vector<4xi8>}> : () -> vector<4xi8>
    %446 = "llvm.load"(%arg279) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %447 = "llvm.load"(%arg280) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %448 = "llvm.xor"(%447, %445) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    %449 = "llvm.xor"(%446, %448) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%449, %arg278) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_not_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg276: !llvm.ptr, %arg277: !llvm.ptr):
    %442 = "llvm.mlir.constant"() <{value = dense<-1> : vector<2xi16>}> : () -> vector<2xi16>
    %443 = "llvm.load"(%arg277) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %444 = "llvm.xor"(%443, %442) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%444, %arg276) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_not_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg274: !llvm.ptr, %arg275: !llvm.ptr):
    %439 = "llvm.mlir.constant"() <{value = dense<-1> : vector<4xi8>}> : () -> vector<4xi8>
    %440 = "llvm.load"(%arg275) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %441 = "llvm.xor"(%440, %439) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%441, %arg274) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psadd_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg271: !llvm.ptr, %arg272: !llvm.ptr, %arg273: !llvm.ptr):
    %436 = "llvm.load"(%arg272) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %437 = "llvm.load"(%arg273) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %438 = "llvm.intr.sadd.sat"(%436, %437) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%438, %arg271) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psaddu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg268: !llvm.ptr, %arg269: !llvm.ptr, %arg270: !llvm.ptr):
    %433 = "llvm.load"(%arg269) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %434 = "llvm.load"(%arg270) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %435 = "llvm.intr.uadd.sat"(%433, %434) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%435, %arg268) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pssub_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg265: !llvm.ptr, %arg266: !llvm.ptr, %arg267: !llvm.ptr):
    %430 = "llvm.load"(%arg266) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %431 = "llvm.load"(%arg267) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %432 = "llvm.intr.ssub.sat"(%430, %431) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%432, %arg265) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pssubu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg262: !llvm.ptr, %arg263: !llvm.ptr, %arg264: !llvm.ptr):
    %427 = "llvm.load"(%arg263) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %428 = "llvm.load"(%arg264) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %429 = "llvm.intr.usub.sat"(%427, %428) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%429, %arg262) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psadd_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg259: !llvm.ptr, %arg260: !llvm.ptr, %arg261: !llvm.ptr):
    %424 = "llvm.load"(%arg260) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %425 = "llvm.load"(%arg261) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %426 = "llvm.intr.sadd.sat"(%424, %425) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%426, %arg259) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psaddu_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg256: !llvm.ptr, %arg257: !llvm.ptr, %arg258: !llvm.ptr):
    %421 = "llvm.load"(%arg257) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %422 = "llvm.load"(%arg258) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %423 = "llvm.intr.uadd.sat"(%421, %422) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%423, %arg256) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pssub_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg253: !llvm.ptr, %arg254: !llvm.ptr, %arg255: !llvm.ptr):
    %418 = "llvm.load"(%arg254) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %419 = "llvm.load"(%arg255) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %420 = "llvm.intr.ssub.sat"(%418, %419) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%420, %arg253) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pssubu_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg250: !llvm.ptr, %arg251: !llvm.ptr, %arg252: !llvm.ptr):
    %415 = "llvm.load"(%arg251) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %416 = "llvm.load"(%arg252) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %417 = "llvm.intr.usub.sat"(%415, %416) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%417, %arg250) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_paadd_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg247: !llvm.ptr, %arg248: !llvm.ptr, %arg249: !llvm.ptr):
    %407 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi32>}> : () -> vector<2xi32>
    %408 = "llvm.load"(%arg248) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %409 = "llvm.load"(%arg249) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %410 = "llvm.sext"(%408) : (vector<2xi16>) -> vector<2xi32>
    %411 = "llvm.sext"(%409) : (vector<2xi16>) -> vector<2xi32>
    %412 = "llvm.add"(%410, %411) <{overflowFlags = 1 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %413 = "llvm.ashr"(%412, %407) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %414 = "llvm.trunc"(%413) <{overflowFlags = 0 : i32}> : (vector<2xi32>) -> vector<2xi16>
    "llvm.store"(%414, %arg247) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_paaddu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg244: !llvm.ptr, %arg245: !llvm.ptr, %arg246: !llvm.ptr):
    %400 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi16>}> : () -> vector<2xi16>
    %401 = "llvm.load"(%arg245) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %402 = "llvm.load"(%arg246) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %403 = "llvm.and"(%401, %402) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    %404 = "llvm.xor"(%401, %402) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    %405 = "llvm.lshr"(%404, %400) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    %406 = "llvm.add"(%403, %405) <{overflowFlags = 0 : i32}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%406, %arg244) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_paadd_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg241: !llvm.ptr, %arg242: !llvm.ptr, %arg243: !llvm.ptr):
    %392 = "llvm.mlir.constant"() <{value = dense<1> : vector<4xi16>}> : () -> vector<4xi16>
    %393 = "llvm.load"(%arg242) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %394 = "llvm.load"(%arg243) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %395 = "llvm.sext"(%393) : (vector<4xi8>) -> vector<4xi16>
    %396 = "llvm.sext"(%394) : (vector<4xi8>) -> vector<4xi16>
    %397 = "llvm.add"(%395, %396) <{overflowFlags = 1 : i32}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %398 = "llvm.ashr"(%397, %392) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %399 = "llvm.trunc"(%398) <{overflowFlags = 0 : i32}> : (vector<4xi16>) -> vector<4xi8>
    "llvm.store"(%399, %arg241) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_paaddu_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg238: !llvm.ptr, %arg239: !llvm.ptr, %arg240: !llvm.ptr):
    %385 = "llvm.mlir.constant"() <{value = dense<1> : vector<4xi8>}> : () -> vector<4xi8>
    %386 = "llvm.load"(%arg239) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %387 = "llvm.load"(%arg240) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %388 = "llvm.and"(%386, %387) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    %389 = "llvm.xor"(%386, %387) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    %390 = "llvm.lshr"(%389, %385) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    %391 = "llvm.add"(%388, %390) <{overflowFlags = 0 : i32}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%391, %arg238) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pdif_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg235: !llvm.ptr, %arg236: !llvm.ptr, %arg237: !llvm.ptr):
    %380 = "llvm.load"(%arg236) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %381 = "llvm.load"(%arg237) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %382 = "llvm.intr.smin"(%380, %381) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    %383 = "llvm.intr.smax"(%380, %381) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    %384 = "llvm.sub"(%383, %382) <{overflowFlags = 0 : i32}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%384, %arg235) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pdifu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg232: !llvm.ptr, %arg233: !llvm.ptr, %arg234: !llvm.ptr):
    %375 = "llvm.load"(%arg233) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %376 = "llvm.load"(%arg234) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %377 = "llvm.intr.umin"(%375, %376) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    %378 = "llvm.intr.umax"(%375, %376) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    %379 = "llvm.sub"(%378, %377) <{overflowFlags = 0 : i32}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%379, %arg232) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pdif_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg229: !llvm.ptr, %arg230: !llvm.ptr, %arg231: !llvm.ptr):
    %370 = "llvm.load"(%arg230) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %371 = "llvm.load"(%arg231) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %372 = "llvm.intr.smin"(%370, %371) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    %373 = "llvm.intr.smax"(%370, %371) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    %374 = "llvm.sub"(%373, %372) <{overflowFlags = 0 : i32}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%374, %arg229) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pdifu_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg226: !llvm.ptr, %arg227: !llvm.ptr, %arg228: !llvm.ptr):
    %365 = "llvm.load"(%arg227) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %366 = "llvm.load"(%arg228) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %367 = "llvm.intr.umin"(%365, %366) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    %368 = "llvm.intr.umax"(%365, %366) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    %369 = "llvm.sub"(%368, %367) <{overflowFlags = 0 : i32}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%369, %arg226) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pasub_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg223: !llvm.ptr, %arg224: !llvm.ptr, %arg225: !llvm.ptr):
    %357 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi32>}> : () -> vector<2xi32>
    %358 = "llvm.load"(%arg224) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %359 = "llvm.load"(%arg225) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %360 = "llvm.sext"(%358) : (vector<2xi16>) -> vector<2xi32>
    %361 = "llvm.sext"(%359) : (vector<2xi16>) -> vector<2xi32>
    %362 = "llvm.sub"(%360, %361) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %363 = "llvm.ashr"(%362, %357) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %364 = "llvm.trunc"(%363) <{overflowFlags = 0 : i32}> : (vector<2xi32>) -> vector<2xi16>
    "llvm.store"(%364, %arg223) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pasubu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg220: !llvm.ptr, %arg221: !llvm.ptr, %arg222: !llvm.ptr):
    %349 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi32>}> : () -> vector<2xi32>
    %350 = "llvm.load"(%arg221) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %351 = "llvm.load"(%arg222) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %352 = "llvm.zext"(%350) : (vector<2xi16>) -> vector<2xi32>
    %353 = "llvm.zext"(%351) : (vector<2xi16>) -> vector<2xi32>
    %354 = "llvm.sub"(%352, %353) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %355 = "llvm.lshr"(%354, %349) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %356 = "llvm.trunc"(%355) <{overflowFlags = 0 : i32}> : (vector<2xi32>) -> vector<2xi16>
    "llvm.store"(%356, %arg220) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pasub_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg217: !llvm.ptr, %arg218: !llvm.ptr, %arg219: !llvm.ptr):
    %341 = "llvm.mlir.constant"() <{value = dense<1> : vector<4xi16>}> : () -> vector<4xi16>
    %342 = "llvm.load"(%arg218) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %343 = "llvm.load"(%arg219) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %344 = "llvm.sext"(%342) : (vector<4xi8>) -> vector<4xi16>
    %345 = "llvm.sext"(%343) : (vector<4xi8>) -> vector<4xi16>
    %346 = "llvm.sub"(%344, %345) <{overflowFlags = 0 : i32}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %347 = "llvm.ashr"(%346, %341) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %348 = "llvm.trunc"(%347) <{overflowFlags = 0 : i32}> : (vector<4xi16>) -> vector<4xi8>
    "llvm.store"(%348, %arg217) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pasubu_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg214: !llvm.ptr, %arg215: !llvm.ptr, %arg216: !llvm.ptr):
    %333 = "llvm.mlir.constant"() <{value = dense<1> : vector<4xi16>}> : () -> vector<4xi16>
    %334 = "llvm.load"(%arg215) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %335 = "llvm.load"(%arg216) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %336 = "llvm.zext"(%334) : (vector<4xi8>) -> vector<4xi16>
    %337 = "llvm.zext"(%335) : (vector<4xi8>) -> vector<4xi16>
    %338 = "llvm.sub"(%336, %337) <{overflowFlags = 0 : i32}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %339 = "llvm.lshr"(%338, %333) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %340 = "llvm.trunc"(%339) <{overflowFlags = 0 : i32}> : (vector<4xi16>) -> vector<4xi8>
    "llvm.store"(%340, %arg214) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pli_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg213: !llvm.ptr):
    %329 = "llvm.mlir.constant"() <{value = dense<42> : vector<2xi16>}> : () -> vector<2xi16>
    %330 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %331 = "llvm.mlir.constant"() <{value = dense<0> : vector<2xi16>}> : () -> vector<2xi16>
    %332 = "llvm.add"(%329, %331) <{overflowFlags = 0 : i32}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%332, %arg213) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pli_h_negative", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg212: !llvm.ptr):
    %325 = "llvm.mlir.constant"() <{value = dense<-5> : vector<2xi16>}> : () -> vector<2xi16>
    %326 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %327 = "llvm.mlir.constant"() <{value = dense<0> : vector<2xi16>}> : () -> vector<2xi16>
    %328 = "llvm.add"(%325, %327) <{overflowFlags = 0 : i32}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%328, %arg212) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pli_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg211: !llvm.ptr):
    %321 = "llvm.mlir.constant"() <{value = dense<32> : vector<4xi8>}> : () -> vector<4xi8>
    %322 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %323 = "llvm.mlir.constant"() <{value = dense<0> : vector<4xi8>}> : () -> vector<4xi8>
    %324 = "llvm.add"(%321, %323) <{overflowFlags = 0 : i32}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%324, %arg211) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pli_b_negative", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg210: !llvm.ptr):
    %317 = "llvm.mlir.constant"() <{value = dense<-2> : vector<4xi8>}> : () -> vector<4xi8>
    %318 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %319 = "llvm.mlir.constant"() <{value = dense<0> : vector<4xi8>}> : () -> vector<4xi8>
    %320 = "llvm.add"(%317, %319) <{overflowFlags = 0 : i32}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%320, %arg210) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_extract_vector_16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg208: !llvm.ptr, %arg209: !llvm.ptr):
    %314 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %315 = "llvm.load"(%arg209) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %316 = "llvm.extractelement"(%315, %314) : (vector<2xi16>, i32) -> i16
    "llvm.store"(%316, %arg208) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_extract_vector_16_elem1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg206: !llvm.ptr, %arg207: !llvm.ptr):
    %311 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %312 = "llvm.load"(%arg207) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %313 = "llvm.extractelement"(%312, %311) : (vector<2xi16>, i32) -> i16
    "llvm.store"(%313, %arg206) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_extract_vector_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg204: !llvm.ptr, %arg205: !llvm.ptr):
    %308 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %309 = "llvm.load"(%arg205) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %310 = "llvm.extractelement"(%309, %308) : (vector<4xi8>, i32) -> i8
    "llvm.store"(%310, %arg204) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_extract_vector_8_elem1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg202: !llvm.ptr, %arg203: !llvm.ptr):
    %305 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %306 = "llvm.load"(%arg203) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %307 = "llvm.extractelement"(%306, %305) : (vector<4xi8>, i32) -> i8
    "llvm.store"(%307, %arg202) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_non_const_splat_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg199: !llvm.ptr, %arg200: !llvm.ptr, %arg201: i8):
    %300 = "llvm.mlir.poison"() : () -> vector<4xi8>
    %301 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %302 = "llvm.load"(%arg200) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %303 = "llvm.insertelement"(%300, %arg201, %301) : (vector<4xi8>, i8, i32) -> vector<4xi8>
    %304 = "llvm.shufflevector"(%303, %300) <{mask = array<i32: 0, 0, 0, 0>}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%304, %arg199) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_non_const_splat_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg196: !llvm.ptr, %arg197: !llvm.ptr, %arg198: i16):
    %295 = "llvm.mlir.poison"() : () -> vector<2xi16>
    %296 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %297 = "llvm.load"(%arg197) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %298 = "llvm.insertelement"(%295, %arg198, %296) : (vector<2xi16>, i16, i32) -> vector<2xi16>
    %299 = "llvm.shufflevector"(%298, %295) <{mask = array<i32: 0, 0>}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%299, %arg196) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i8, i8, i8, i8, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_build_vector_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg191: i8, %arg192: i8, %arg193: i8, %arg194: i8, %arg195: !llvm.ptr):
    %286 = "llvm.mlir.poison"() : () -> vector<4xi8>
    %287 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %288 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %289 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %290 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %291 = "llvm.insertelement"(%286, %arg191, %287) : (vector<4xi8>, i8, i32) -> vector<4xi8>
    %292 = "llvm.insertelement"(%291, %arg193, %288) : (vector<4xi8>, i8, i32) -> vector<4xi8>
    %293 = "llvm.insertelement"(%292, %arg192, %289) : (vector<4xi8>, i8, i32) -> vector<4xi8>
    %294 = "llvm.insertelement"(%293, %arg194, %290) : (vector<4xi8>, i8, i32) -> vector<4xi8>
    "llvm.store"(%294, %arg195) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_build_vector_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg188: !llvm.ptr, %arg189: i16, %arg190: i16):
    %281 = "llvm.mlir.poison"() : () -> vector<2xi16>
    %282 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %283 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %284 = "llvm.insertelement"(%281, %arg189, %282) : (vector<2xi16>, i16, i32) -> vector<2xi16>
    %285 = "llvm.insertelement"(%284, %arg190, %283) : (vector<2xi16>, i16, i32) -> vector<2xi16>
    "llvm.store"(%285, %arg188) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pslli_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg186: !llvm.ptr, %arg187: !llvm.ptr):
    %278 = "llvm.mlir.constant"() <{value = dense<2> : vector<2xi16>}> : () -> vector<2xi16>
    %279 = "llvm.load"(%arg187) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %280 = "llvm.shl"(%279, %278) <{overflowFlags = 0 : i32}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%280, %arg186) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pslli_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg184: !llvm.ptr, %arg185: !llvm.ptr):
    %275 = "llvm.mlir.constant"() <{value = dense<2> : vector<4xi8>}> : () -> vector<4xi8>
    %276 = "llvm.load"(%arg185) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %277 = "llvm.shl"(%276, %275) <{overflowFlags = 0 : i32}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%277, %arg184) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psslai_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg182: !llvm.ptr, %arg183: !llvm.ptr):
    %272 = "llvm.mlir.constant"() <{value = dense<2> : vector<2xi16>}> : () -> vector<2xi16>
    %273 = "llvm.load"(%arg183) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %274 = "llvm.intr.sshl.sat"(%273, %272) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%274, %arg182) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrli_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg180: !llvm.ptr, %arg181: !llvm.ptr):
    %269 = "llvm.mlir.constant"() <{value = dense<2> : vector<2xi16>}> : () -> vector<2xi16>
    %270 = "llvm.load"(%arg181) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %271 = "llvm.lshr"(%270, %269) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%271, %arg180) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrli_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg178: !llvm.ptr, %arg179: !llvm.ptr):
    %266 = "llvm.mlir.constant"() <{value = dense<2> : vector<4xi8>}> : () -> vector<4xi8>
    %267 = "llvm.load"(%arg179) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %268 = "llvm.lshr"(%267, %266) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%268, %arg178) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrai_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg176: !llvm.ptr, %arg177: !llvm.ptr):
    %263 = "llvm.mlir.constant"() <{value = dense<2> : vector<2xi16>}> : () -> vector<2xi16>
    %264 = "llvm.load"(%arg177) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %265 = "llvm.ashr"(%264, %263) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%265, %arg176) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrai_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg174: !llvm.ptr, %arg175: !llvm.ptr):
    %260 = "llvm.mlir.constant"() <{value = dense<2> : vector<4xi8>}> : () -> vector<4xi8>
    %261 = "llvm.load"(%arg175) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %262 = "llvm.ashr"(%261, %260) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%262, %arg174) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_psll_hs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg171: !llvm.ptr, %arg172: !llvm.ptr, %arg173: i16):
    %254 = "llvm.mlir.poison"() : () -> vector<2xi16>
    %255 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %256 = "llvm.load"(%arg172) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %257 = "llvm.insertelement"(%254, %arg173, %255) : (vector<2xi16>, i16, i32) -> vector<2xi16>
    %258 = "llvm.shufflevector"(%257, %254) <{mask = array<i32: 0, 0>}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    %259 = "llvm.shl"(%256, %258) <{overflowFlags = 0 : i32}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%259, %arg171) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_psll_bs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg168: !llvm.ptr, %arg169: !llvm.ptr, %arg170: i8):
    %248 = "llvm.mlir.poison"() : () -> vector<4xi8>
    %249 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %250 = "llvm.load"(%arg169) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %251 = "llvm.insertelement"(%248, %arg170, %249) : (vector<4xi8>, i8, i32) -> vector<4xi8>
    %252 = "llvm.shufflevector"(%251, %248) <{mask = array<i32: 0, 0, 0, 0>}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    %253 = "llvm.shl"(%250, %252) <{overflowFlags = 0 : i32}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%253, %arg168) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psll_hs_vec_shamt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg165: !llvm.ptr, %arg166: !llvm.ptr, %arg167: !llvm.ptr):
    %245 = "llvm.load"(%arg166) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %246 = "llvm.load"(%arg167) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %247 = "llvm.shl"(%245, %246) <{overflowFlags = 0 : i32}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%247, %arg165) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psll_bs_vec_shamt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg162: !llvm.ptr, %arg163: !llvm.ptr, %arg164: !llvm.ptr):
    %242 = "llvm.load"(%arg163) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %243 = "llvm.load"(%arg164) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %244 = "llvm.shl"(%242, %243) <{overflowFlags = 0 : i32}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%244, %arg162) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_psrl_hs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg159: !llvm.ptr, %arg160: !llvm.ptr, %arg161: i16):
    %236 = "llvm.mlir.poison"() : () -> vector<2xi16>
    %237 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %238 = "llvm.load"(%arg160) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %239 = "llvm.insertelement"(%236, %arg161, %237) : (vector<2xi16>, i16, i32) -> vector<2xi16>
    %240 = "llvm.shufflevector"(%239, %236) <{mask = array<i32: 0, 0>}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    %241 = "llvm.lshr"(%238, %240) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%241, %arg159) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_psrl_bs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg156: !llvm.ptr, %arg157: !llvm.ptr, %arg158: i8):
    %230 = "llvm.mlir.poison"() : () -> vector<4xi8>
    %231 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %232 = "llvm.load"(%arg157) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %233 = "llvm.insertelement"(%230, %arg158, %231) : (vector<4xi8>, i8, i32) -> vector<4xi8>
    %234 = "llvm.shufflevector"(%233, %230) <{mask = array<i32: 0, 0, 0, 0>}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    %235 = "llvm.lshr"(%232, %234) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%235, %arg156) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_psra_hs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg153: !llvm.ptr, %arg154: !llvm.ptr, %arg155: i16):
    %224 = "llvm.mlir.poison"() : () -> vector<2xi16>
    %225 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %226 = "llvm.load"(%arg154) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %227 = "llvm.insertelement"(%224, %arg155, %225) : (vector<2xi16>, i16, i32) -> vector<2xi16>
    %228 = "llvm.shufflevector"(%227, %224) <{mask = array<i32: 0, 0>}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    %229 = "llvm.ashr"(%226, %228) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%229, %arg153) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_psra_bs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg150: !llvm.ptr, %arg151: !llvm.ptr, %arg152: i8):
    %218 = "llvm.mlir.poison"() : () -> vector<4xi8>
    %219 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %220 = "llvm.load"(%arg151) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %221 = "llvm.insertelement"(%218, %arg152, %219) : (vector<4xi8>, i8, i32) -> vector<4xi8>
    %222 = "llvm.shufflevector"(%221, %218) <{mask = array<i32: 0, 0, 0, 0>}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    %223 = "llvm.ashr"(%220, %222) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%223, %arg150) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrl_hs_vec_shamt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg147: !llvm.ptr, %arg148: !llvm.ptr, %arg149: !llvm.ptr):
    %215 = "llvm.load"(%arg148) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %216 = "llvm.load"(%arg149) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %217 = "llvm.lshr"(%215, %216) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%217, %arg147) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrl_bs_vec_shamt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg144: !llvm.ptr, %arg145: !llvm.ptr, %arg146: !llvm.ptr):
    %212 = "llvm.load"(%arg145) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %213 = "llvm.load"(%arg146) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %214 = "llvm.lshr"(%212, %213) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%214, %arg144) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psra_hs_vec_shamt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg141: !llvm.ptr, %arg142: !llvm.ptr, %arg143: !llvm.ptr):
    %209 = "llvm.load"(%arg142) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %210 = "llvm.load"(%arg143) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %211 = "llvm.ashr"(%209, %210) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%211, %arg141) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psra_bs_vec_shamt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg138: !llvm.ptr, %arg139: !llvm.ptr, %arg140: !llvm.ptr):
    %206 = "llvm.load"(%arg139) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %207 = "llvm.load"(%arg140) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %208 = "llvm.ashr"(%206, %207) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%208, %arg138) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulh_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg135: !llvm.ptr, %arg136: !llvm.ptr, %arg137: !llvm.ptr):
    %198 = "llvm.mlir.constant"() <{value = dense<16> : vector<2xi32>}> : () -> vector<2xi32>
    %199 = "llvm.load"(%arg136) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %200 = "llvm.load"(%arg137) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %201 = "llvm.sext"(%199) : (vector<2xi16>) -> vector<2xi32>
    %202 = "llvm.sext"(%200) : (vector<2xi16>) -> vector<2xi32>
    %203 = "llvm.mul"(%201, %202) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %204 = "llvm.lshr"(%203, %198) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %205 = "llvm.trunc"(%204) <{overflowFlags = 0 : i32}> : (vector<2xi32>) -> vector<2xi16>
    "llvm.store"(%205, %arg135) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: !llvm.ptr, %arg133: !llvm.ptr, %arg134: !llvm.ptr):
    %190 = "llvm.mlir.constant"() <{value = dense<16> : vector<2xi32>}> : () -> vector<2xi32>
    %191 = "llvm.load"(%arg133) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %192 = "llvm.load"(%arg134) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %193 = "llvm.zext"(%191) : (vector<2xi16>) -> vector<2xi32>
    %194 = "llvm.zext"(%192) : (vector<2xi16>) -> vector<2xi32>
    %195 = "llvm.mul"(%193, %194) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %196 = "llvm.lshr"(%195, %190) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %197 = "llvm.trunc"(%196) <{overflowFlags = 0 : i32}> : (vector<2xi32>) -> vector<2xi16>
    "llvm.store"(%197, %arg132) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhsu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg129: !llvm.ptr, %arg130: !llvm.ptr, %arg131: !llvm.ptr):
    %182 = "llvm.mlir.constant"() <{value = dense<16> : vector<2xi32>}> : () -> vector<2xi32>
    %183 = "llvm.load"(%arg130) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %184 = "llvm.load"(%arg131) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %185 = "llvm.sext"(%183) : (vector<2xi16>) -> vector<2xi32>
    %186 = "llvm.zext"(%184) : (vector<2xi16>) -> vector<2xi32>
    %187 = "llvm.mul"(%185, %186) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %188 = "llvm.lshr"(%187, %182) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %189 = "llvm.trunc"(%188) <{overflowFlags = 0 : i32}> : (vector<2xi32>) -> vector<2xi16>
    "llvm.store"(%189, %arg129) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhsu_h_commuted", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg126: !llvm.ptr, %arg127: !llvm.ptr, %arg128: !llvm.ptr):
    %174 = "llvm.mlir.constant"() <{value = dense<16> : vector<2xi32>}> : () -> vector<2xi32>
    %175 = "llvm.load"(%arg127) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %176 = "llvm.load"(%arg128) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %177 = "llvm.zext"(%175) : (vector<2xi16>) -> vector<2xi32>
    %178 = "llvm.sext"(%176) : (vector<2xi16>) -> vector<2xi32>
    %179 = "llvm.mul"(%177, %178) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %180 = "llvm.lshr"(%179, %174) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %181 = "llvm.trunc"(%180) <{overflowFlags = 0 : i32}> : (vector<2xi32>) -> vector<2xi16>
    "llvm.store"(%181, %arg126) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhr_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg123: !llvm.ptr, %arg124: !llvm.ptr, %arg125: !llvm.ptr):
    %164 = "llvm.mlir.constant"() <{value = dense<32768> : vector<2xi32>}> : () -> vector<2xi32>
    %165 = "llvm.mlir.constant"() <{value = dense<16> : vector<2xi32>}> : () -> vector<2xi32>
    %166 = "llvm.load"(%arg124) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %167 = "llvm.load"(%arg125) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %168 = "llvm.sext"(%166) : (vector<2xi16>) -> vector<2xi32>
    %169 = "llvm.sext"(%167) : (vector<2xi16>) -> vector<2xi32>
    %170 = "llvm.mul"(%168, %169) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %171 = "llvm.add"(%170, %164) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %172 = "llvm.lshr"(%171, %165) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %173 = "llvm.trunc"(%172) <{overflowFlags = 0 : i32}> : (vector<2xi32>) -> vector<2xi16>
    "llvm.store"(%173, %arg123) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhru_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: !llvm.ptr, %arg121: !llvm.ptr, %arg122: !llvm.ptr):
    %154 = "llvm.mlir.constant"() <{value = dense<32768> : vector<2xi32>}> : () -> vector<2xi32>
    %155 = "llvm.mlir.constant"() <{value = dense<16> : vector<2xi32>}> : () -> vector<2xi32>
    %156 = "llvm.load"(%arg121) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %157 = "llvm.load"(%arg122) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %158 = "llvm.zext"(%156) : (vector<2xi16>) -> vector<2xi32>
    %159 = "llvm.zext"(%157) : (vector<2xi16>) -> vector<2xi32>
    %160 = "llvm.mul"(%158, %159) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %161 = "llvm.add"(%160, %154) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %162 = "llvm.lshr"(%161, %155) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %163 = "llvm.trunc"(%162) <{overflowFlags = 0 : i32}> : (vector<2xi32>) -> vector<2xi16>
    "llvm.store"(%163, %arg120) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhrsu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg117: !llvm.ptr, %arg118: !llvm.ptr, %arg119: !llvm.ptr):
    %144 = "llvm.mlir.constant"() <{value = dense<32768> : vector<2xi32>}> : () -> vector<2xi32>
    %145 = "llvm.mlir.constant"() <{value = dense<16> : vector<2xi32>}> : () -> vector<2xi32>
    %146 = "llvm.load"(%arg118) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %147 = "llvm.load"(%arg119) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %148 = "llvm.sext"(%146) : (vector<2xi16>) -> vector<2xi32>
    %149 = "llvm.zext"(%147) : (vector<2xi16>) -> vector<2xi32>
    %150 = "llvm.mul"(%148, %149) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %151 = "llvm.add"(%150, %144) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %152 = "llvm.lshr"(%151, %145) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %153 = "llvm.trunc"(%152) <{overflowFlags = 0 : i32}> : (vector<2xi32>) -> vector<2xi16>
    "llvm.store"(%153, %arg117) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhrsu_h_commuted", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg114: !llvm.ptr, %arg115: !llvm.ptr, %arg116: !llvm.ptr):
    %134 = "llvm.mlir.constant"() <{value = dense<32768> : vector<2xi32>}> : () -> vector<2xi32>
    %135 = "llvm.mlir.constant"() <{value = dense<16> : vector<2xi32>}> : () -> vector<2xi32>
    %136 = "llvm.load"(%arg115) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %137 = "llvm.load"(%arg116) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %138 = "llvm.zext"(%136) : (vector<2xi16>) -> vector<2xi32>
    %139 = "llvm.sext"(%137) : (vector<2xi16>) -> vector<2xi32>
    %140 = "llvm.mul"(%138, %139) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %141 = "llvm.add"(%140, %134) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %142 = "llvm.lshr"(%141, %135) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %143 = "llvm.trunc"(%142) <{overflowFlags = 0 : i32}> : (vector<2xi32>) -> vector<2xi16>
    "llvm.store"(%143, %arg114) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmul_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg111: !llvm.ptr, %arg112: !llvm.ptr, %arg113: !llvm.ptr):
    %131 = "llvm.load"(%arg112) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %132 = "llvm.load"(%arg113) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %133 = "llvm.mul"(%131, %132) <{overflowFlags = 0 : i32}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%133, %arg111) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmul_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: !llvm.ptr, %arg109: !llvm.ptr, %arg110: !llvm.ptr):
    %128 = "llvm.load"(%arg109) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %129 = "llvm.load"(%arg110) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %130 = "llvm.mul"(%128, %129) <{overflowFlags = 0 : i32}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%130, %arg108) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psdiv_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg105: !llvm.ptr, %arg106: !llvm.ptr, %arg107: !llvm.ptr):
    %125 = "llvm.load"(%arg106) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %126 = "llvm.load"(%arg107) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %127 = "llvm.sdiv"(%125, %126) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%127, %arg105) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psdiv_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg102: !llvm.ptr, %arg103: !llvm.ptr, %arg104: !llvm.ptr):
    %122 = "llvm.load"(%arg103) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %123 = "llvm.load"(%arg104) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %124 = "llvm.sdiv"(%122, %123) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%124, %arg102) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pudiv_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: !llvm.ptr, %arg100: !llvm.ptr, %arg101: !llvm.ptr):
    %119 = "llvm.load"(%arg100) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %120 = "llvm.load"(%arg101) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %121 = "llvm.udiv"(%119, %120) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%121, %arg99) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pudiv_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: !llvm.ptr, %arg97: !llvm.ptr, %arg98: !llvm.ptr):
    %116 = "llvm.load"(%arg97) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %117 = "llvm.load"(%arg98) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %118 = "llvm.udiv"(%116, %117) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%118, %arg96) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrem_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg93: !llvm.ptr, %arg94: !llvm.ptr, %arg95: !llvm.ptr):
    %113 = "llvm.load"(%arg94) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %114 = "llvm.load"(%arg95) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %115 = "llvm.srem"(%113, %114) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%115, %arg93) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrem_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg90: !llvm.ptr, %arg91: !llvm.ptr, %arg92: !llvm.ptr):
    %110 = "llvm.load"(%arg91) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %111 = "llvm.load"(%arg92) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %112 = "llvm.srem"(%110, %111) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%112, %arg90) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_purem_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg87: !llvm.ptr, %arg88: !llvm.ptr, %arg89: !llvm.ptr):
    %107 = "llvm.load"(%arg88) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %108 = "llvm.load"(%arg89) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %109 = "llvm.urem"(%107, %108) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%109, %arg87) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_purem_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: !llvm.ptr, %arg85: !llvm.ptr, %arg86: !llvm.ptr):
    %104 = "llvm.load"(%arg85) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %105 = "llvm.load"(%arg86) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %106 = "llvm.urem"(%104, %105) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%106, %arg84) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_eq_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg81: !llvm.ptr, %arg82: !llvm.ptr, %arg83: !llvm.ptr):
    %100 = "llvm.load"(%arg82) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %101 = "llvm.load"(%arg83) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %102 = "llvm.icmp"(%100, %101) <{predicate = 0 : i64}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi1>
    %103 = "llvm.sext"(%102) : (vector<2xi1>) -> vector<2xi16>
    "llvm.store"(%103, %arg81) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ne_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: !llvm.ptr, %arg79: !llvm.ptr, %arg80: !llvm.ptr):
    %96 = "llvm.load"(%arg79) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %97 = "llvm.load"(%arg80) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %98 = "llvm.icmp"(%96, %97) <{predicate = 1 : i64}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi1>
    %99 = "llvm.sext"(%98) : (vector<2xi1>) -> vector<2xi16>
    "llvm.store"(%99, %arg78) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_slt_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg75: !llvm.ptr, %arg76: !llvm.ptr, %arg77: !llvm.ptr):
    %92 = "llvm.load"(%arg76) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %93 = "llvm.load"(%arg77) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %94 = "llvm.icmp"(%92, %93) <{predicate = 2 : i64}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi1>
    %95 = "llvm.sext"(%94) : (vector<2xi1>) -> vector<2xi16>
    "llvm.store"(%95, %arg75) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sle_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: !llvm.ptr, %arg73: !llvm.ptr, %arg74: !llvm.ptr):
    %88 = "llvm.load"(%arg73) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %89 = "llvm.load"(%arg74) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %90 = "llvm.icmp"(%88, %89) <{predicate = 3 : i64}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi1>
    %91 = "llvm.sext"(%90) : (vector<2xi1>) -> vector<2xi16>
    "llvm.store"(%91, %arg72) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sgt_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: !llvm.ptr, %arg70: !llvm.ptr, %arg71: !llvm.ptr):
    %84 = "llvm.load"(%arg70) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %85 = "llvm.load"(%arg71) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %86 = "llvm.icmp"(%84, %85) <{predicate = 4 : i64}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi1>
    %87 = "llvm.sext"(%86) : (vector<2xi1>) -> vector<2xi16>
    "llvm.store"(%87, %arg69) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sge_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: !llvm.ptr, %arg67: !llvm.ptr, %arg68: !llvm.ptr):
    %80 = "llvm.load"(%arg67) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %81 = "llvm.load"(%arg68) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %82 = "llvm.icmp"(%80, %81) <{predicate = 5 : i64}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi1>
    %83 = "llvm.sext"(%82) : (vector<2xi1>) -> vector<2xi16>
    "llvm.store"(%83, %arg66) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ult_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: !llvm.ptr, %arg64: !llvm.ptr, %arg65: !llvm.ptr):
    %76 = "llvm.load"(%arg64) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %77 = "llvm.load"(%arg65) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %78 = "llvm.icmp"(%76, %77) <{predicate = 6 : i64}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi1>
    %79 = "llvm.sext"(%78) : (vector<2xi1>) -> vector<2xi16>
    "llvm.store"(%79, %arg63) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ule_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: !llvm.ptr, %arg61: !llvm.ptr, %arg62: !llvm.ptr):
    %72 = "llvm.load"(%arg61) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %73 = "llvm.load"(%arg62) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %74 = "llvm.icmp"(%72, %73) <{predicate = 7 : i64}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi1>
    %75 = "llvm.sext"(%74) : (vector<2xi1>) -> vector<2xi16>
    "llvm.store"(%75, %arg60) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ugt_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: !llvm.ptr, %arg58: !llvm.ptr, %arg59: !llvm.ptr):
    %68 = "llvm.load"(%arg58) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %69 = "llvm.load"(%arg59) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %70 = "llvm.icmp"(%68, %69) <{predicate = 8 : i64}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi1>
    %71 = "llvm.sext"(%70) : (vector<2xi1>) -> vector<2xi16>
    "llvm.store"(%71, %arg57) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_uge_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: !llvm.ptr, %arg55: !llvm.ptr, %arg56: !llvm.ptr):
    %64 = "llvm.load"(%arg55) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %65 = "llvm.load"(%arg56) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %66 = "llvm.icmp"(%64, %65) <{predicate = 9 : i64}> : (vector<2xi16>, vector<2xi16>) -> vector<2xi1>
    %67 = "llvm.sext"(%66) : (vector<2xi1>) -> vector<2xi16>
    "llvm.store"(%67, %arg54) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_eq_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: !llvm.ptr, %arg52: !llvm.ptr, %arg53: !llvm.ptr):
    %60 = "llvm.load"(%arg52) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %61 = "llvm.load"(%arg53) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %62 = "llvm.icmp"(%60, %61) <{predicate = 0 : i64}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi1>
    %63 = "llvm.sext"(%62) : (vector<4xi1>) -> vector<4xi8>
    "llvm.store"(%63, %arg51) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ne_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: !llvm.ptr, %arg49: !llvm.ptr, %arg50: !llvm.ptr):
    %56 = "llvm.load"(%arg49) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %57 = "llvm.load"(%arg50) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %58 = "llvm.icmp"(%56, %57) <{predicate = 1 : i64}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi1>
    %59 = "llvm.sext"(%58) : (vector<4xi1>) -> vector<4xi8>
    "llvm.store"(%59, %arg48) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_slt_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: !llvm.ptr, %arg46: !llvm.ptr, %arg47: !llvm.ptr):
    %52 = "llvm.load"(%arg46) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %53 = "llvm.load"(%arg47) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %54 = "llvm.icmp"(%52, %53) <{predicate = 2 : i64}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi1>
    %55 = "llvm.sext"(%54) : (vector<4xi1>) -> vector<4xi8>
    "llvm.store"(%55, %arg45) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sle_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: !llvm.ptr, %arg43: !llvm.ptr, %arg44: !llvm.ptr):
    %48 = "llvm.load"(%arg43) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %49 = "llvm.load"(%arg44) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %50 = "llvm.icmp"(%48, %49) <{predicate = 3 : i64}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi1>
    %51 = "llvm.sext"(%50) : (vector<4xi1>) -> vector<4xi8>
    "llvm.store"(%51, %arg42) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sgt_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: !llvm.ptr, %arg40: !llvm.ptr, %arg41: !llvm.ptr):
    %44 = "llvm.load"(%arg40) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %45 = "llvm.load"(%arg41) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %46 = "llvm.icmp"(%44, %45) <{predicate = 4 : i64}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi1>
    %47 = "llvm.sext"(%46) : (vector<4xi1>) -> vector<4xi8>
    "llvm.store"(%47, %arg39) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sge_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: !llvm.ptr, %arg37: !llvm.ptr, %arg38: !llvm.ptr):
    %40 = "llvm.load"(%arg37) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %41 = "llvm.load"(%arg38) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %42 = "llvm.icmp"(%40, %41) <{predicate = 5 : i64}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi1>
    %43 = "llvm.sext"(%42) : (vector<4xi1>) -> vector<4xi8>
    "llvm.store"(%43, %arg36) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ult_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: !llvm.ptr, %arg34: !llvm.ptr, %arg35: !llvm.ptr):
    %36 = "llvm.load"(%arg34) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %37 = "llvm.load"(%arg35) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %38 = "llvm.icmp"(%36, %37) <{predicate = 6 : i64}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi1>
    %39 = "llvm.sext"(%38) : (vector<4xi1>) -> vector<4xi8>
    "llvm.store"(%39, %arg33) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ule_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr, %arg31: !llvm.ptr, %arg32: !llvm.ptr):
    %32 = "llvm.load"(%arg31) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %33 = "llvm.load"(%arg32) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %34 = "llvm.icmp"(%32, %33) <{predicate = 7 : i64}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi1>
    %35 = "llvm.sext"(%34) : (vector<4xi1>) -> vector<4xi8>
    "llvm.store"(%35, %arg30) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ugt_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: !llvm.ptr, %arg28: !llvm.ptr, %arg29: !llvm.ptr):
    %28 = "llvm.load"(%arg28) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %29 = "llvm.load"(%arg29) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %30 = "llvm.icmp"(%28, %29) <{predicate = 8 : i64}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi1>
    %31 = "llvm.sext"(%30) : (vector<4xi1>) -> vector<4xi8>
    "llvm.store"(%31, %arg27) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_uge_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr, %arg25: !llvm.ptr, %arg26: !llvm.ptr):
    %24 = "llvm.load"(%arg25) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %25 = "llvm.load"(%arg26) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %26 = "llvm.icmp"(%24, %25) <{predicate = 9 : i64}> : (vector<4xi8>, vector<4xi8>) -> vector<4xi1>
    %27 = "llvm.sext"(%26) : (vector<4xi1>) -> vector<4xi8>
    "llvm.store"(%27, %arg24) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_smin_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: !llvm.ptr, %arg22: !llvm.ptr, %arg23: !llvm.ptr):
    %21 = "llvm.load"(%arg22) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %22 = "llvm.load"(%arg23) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %23 = "llvm.intr.smin"(%21, %22) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%23, %arg21) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_umin_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: !llvm.ptr, %arg20: !llvm.ptr):
    %18 = "llvm.load"(%arg19) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %19 = "llvm.load"(%arg20) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %20 = "llvm.intr.umin"(%18, %19) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%20, %arg18) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_smin_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr, %arg16: !llvm.ptr, %arg17: !llvm.ptr):
    %15 = "llvm.load"(%arg16) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %16 = "llvm.load"(%arg17) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %17 = "llvm.intr.smin"(%15, %16) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%17, %arg15) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_umin_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: !llvm.ptr):
    %12 = "llvm.load"(%arg13) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %13 = "llvm.load"(%arg14) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %14 = "llvm.intr.umin"(%12, %13) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%14, %arg12) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_smax_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: !llvm.ptr):
    %9 = "llvm.load"(%arg10) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %10 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %11 = "llvm.intr.smax"(%9, %10) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%11, %arg9) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_umax_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: !llvm.ptr):
    %6 = "llvm.load"(%arg7) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %7 = "llvm.load"(%arg8) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    %8 = "llvm.intr.umax"(%6, %7) : (vector<2xi16>, vector<2xi16>) -> vector<2xi16>
    "llvm.store"(%8, %arg6) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_smax_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: !llvm.ptr):
    %3 = "llvm.load"(%arg4) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %4 = "llvm.load"(%arg5) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %5 = "llvm.intr.smax"(%3, %4) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%5, %arg3) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_umax_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr):
    %0 = "llvm.load"(%arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %1 = "llvm.load"(%arg2) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %2 = "llvm.intr.umax"(%0, %1) : (vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%2, %arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

