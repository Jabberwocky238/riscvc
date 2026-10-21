#loop_annotation = #llvm.loop_annotation<mustProgress = true>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, dso_local, global_type = f64, linkage = #llvm.linkage<internal>, sym_name = "vz", unnamed_addr = 0 : i64, value = 0.000000e+00 : f64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, constant, dso_local, global_type = !llvm.array<10 x f64>, linkage = #llvm.linkage<private>, sym_name = "__const.main.xs", unnamed_addr = 2 : i64, value = dense<[1.500000e+00, -2.250000e+00, 1.000000e+300, -1.000000e-300, 3.000000e+00, 1.000000e-01, -0.000000e+00, 7.750000e+00, 123456789.125, -9.500000e+00]> : tensor<10xf64>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.struct<"struct.anon", packed (i8, f64)>, linkage = #llvm.linkage<private>, sym_name = "__const.main.pk", unnamed_addr = 2 : i64, visibility_ = 0 : i64}> ({
    %804 = "llvm.mlir.constant"() <{value = 2.500000e+00 : f64}> : () -> f64
    %805 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %806 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.anon", packed (i8, f64)>
    %807 = "llvm.insertvalue"(%806, %805) <{position = array<i64: 0>}> : (!llvm.struct<"struct.anon", packed (i8, f64)>, i8) -> !llvm.struct<"struct.anon", packed (i8, f64)>
    %808 = "llvm.insertvalue"(%807, %804) <{position = array<i64: 1>}> : (!llvm.struct<"struct.anon", packed (i8, f64)>, f64) -> !llvm.struct<"struct.anon", packed (i8, f64)>
    "llvm.return"(%808) : (!llvm.struct<"struct.anon", packed (i8, f64)>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32d">, #llvm.mlir.module_flag<max, "frame-pointer", 2 : i32>, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %453 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %454 = "llvm.mlir.constant"() <{value = -2128831035 : i32}> : () -> i32
    %455 = "llvm.mlir.addressof"() <{global_name = @vz}> : () -> !llvm.ptr
    %456 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %457 = "llvm.mlir.addressof"() <{global_name = @__const.main.xs}> : () -> !llvm.ptr
    %458 = "llvm.mlir.constant"() <{value = 80 : i32}> : () -> i32
    %459 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %460 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %461 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %462 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f64}> : () -> f64
    %463 = "llvm.mlir.constant"() <{value = 4.000000e+00 : f64}> : () -> f64
    %464 = "llvm.mlir.constant"() <{value = 5.000000e+00 : f64}> : () -> f64
    %465 = "llvm.mlir.constant"() <{value = 6.000000e+00 : f64}> : () -> f64
    %466 = "llvm.mlir.constant"() <{value = 7.000000e+00 : f64}> : () -> f64
    %467 = "llvm.mlir.constant"() <{value = 8.000000e+00 : f64}> : () -> f64
    %468 = "llvm.mlir.constant"() <{value = 9.000000e+00 : f64}> : () -> f64
    %469 = "llvm.mlir.constant"() <{value = 1.000000e+01 : f64}> : () -> f64
    %470 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %471 = "llvm.mlir.constant"() <{value = 1.200000e+01 : f64}> : () -> f64
    %472 = "llvm.mlir.constant"() <{value = 1.350000e+01 : f32}> : () -> f32
    %473 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %474 = "llvm.mlir.constant"() <{value = 1.250000e+00 : f64}> : () -> f64
    %475 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %476 = "llvm.mlir.constant"() <{value = -3.500000e+00 : f64}> : () -> f64
    %477 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %478 = "llvm.mlir.constant"() <{value = 1.000000e+10 : f64}> : () -> f64
    %479 = "llvm.mlir.constant"() <{value = 3.500000e+00 : f64}> : () -> f64
    %480 = "llvm.mlir.constant"() <{value = -8.000000e+00 : f64}> : () -> f64
    %481 = "llvm.mlir.constant"() <{value = 41 : i32}> : () -> i32
    %482 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %483 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %484 = "llvm.mlir.constant"() <{value = 2.500000e+00 : f64}> : () -> f64
    %485 = "llvm.mlir.constant"() <{value = 1.000000e+02 : f64}> : () -> f64
    %486 = "llvm.mlir.addressof"() <{global_name = @halve}> : () -> !llvm.ptr
    %487 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %488 = "llvm.mlir.addressof"() <{global_name = @__const.main.pk}> : () -> !llvm.ptr
    %489 = "llvm.mlir.constant"() <{value = 3 : i8}> : () -> i8
    %490 = "llvm.mlir.constant"() <{value = 3.700000e-01 : f64}> : () -> f64
    %491 = "llvm.mlir.constant"() <{value = -5.000000e+00 : f64}> : () -> f64
    %492 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %493 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %494 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %495 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %496 = "llvm.mlir.constant"() <{value = 1.000000e+290 : f64}> : () -> f64
    %497 = "llvm.mlir.constant"() <{value = 1.000000e+03 : f64}> : () -> f64
    %498 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %499 = "llvm.mlir.constant"() <{value = -77 : i32}> : () -> i32
    %500 = "llvm.mlir.constant"() <{value = -1640531527 : i32}> : () -> i32
    %501 = "llvm.mlir.constant"() <{value = 0x41F2345678900000 : f64}> : () -> f64
    %502 = "llvm.alloca"(%453) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %503 = "llvm.alloca"(%453) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %504 = "llvm.alloca"(%453) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %505 = "llvm.alloca"(%453) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %506 = "llvm.alloca"(%453) <{alignment = 8 : i64, elem_type = !llvm.array<10 x f64>}> : (i32) -> !llvm.ptr
    %507 = "llvm.alloca"(%453) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %508 = "llvm.alloca"(%453) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %509 = "llvm.alloca"(%453) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %510 = "llvm.alloca"(%453) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    %511 = "llvm.alloca"(%453) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.dd", (f64, f64)>}> : (i32) -> !llvm.ptr
    %512 = "llvm.alloca"(%453) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.dd", (f64, f64)>}> : (i32) -> !llvm.ptr
    %513 = "llvm.alloca"(%453) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.di", (f64, i32)>}> : (i32) -> !llvm.ptr
    %514 = "llvm.alloca"(%453) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>}> : (i32) -> !llvm.ptr
    %515 = "llvm.alloca"(%453) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>}> : (i32) -> !llvm.ptr
    %516 = "llvm.alloca"(%453) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>}> : (i32) -> !llvm.ptr
    %517 = "llvm.alloca"(%453) <{alignment = 8 : i64, elem_type = !llvm.array<64 x f64>}> : (i32) -> !llvm.ptr
    %518 = "llvm.alloca"(%453) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %519 = "llvm.alloca"(%453) <{alignment = 1 : i64, elem_type = !llvm.struct<"struct.anon", packed (i8, f64)>}> : (i32) -> !llvm.ptr
    %520 = "llvm.alloca"(%453) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.store"(%454, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %521 = "llvm.load"(%455) <{alignment = 8 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> f64
    %522 = "llvm.load"(%455) <{alignment = 8 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> f64
    %523 = "llvm.fdiv"(%521, %522) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%523, %503) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %524 = "llvm.load"(%455) <{alignment = 8 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> f64
    %525 = "llvm.fdiv"(%456, %524) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%525, %504) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %526 = "llvm.load"(%455) <{alignment = 8 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> f64
    %527 = "llvm.fadd"(%526, %456) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%527, %505) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.intr.memcpy"(%506, %457, %458) <{arg_attrs = [{llvm.align = 8 : i64}, {llvm.align = 8 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    "llvm.store"(%459, %507) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb6
    %528 = "llvm.load"(%507) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %529 = "llvm.icmp"(%528, %460) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%529)[^bb2, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %530 = "llvm.load"(%507) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %531 = "llvm.getelementptr"(%506, %459, %530) <{elem_type = !llvm.array<10 x f64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %532 = "llvm.load"(%531) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.store"(%532, %508) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %533 = "llvm.load"(%507) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %534 = "llvm.mul"(%533, %475) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %535 = "llvm.add"(%534, %492) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %536 = "llvm.srem"(%535, %460) : (i32, i32) -> i32
    %537 = "llvm.getelementptr"(%506, %459, %536) <{elem_type = !llvm.array<10 x f64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %538 = "llvm.load"(%537) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.store"(%538, %509) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %539 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %540 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %541 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %542 = "llvm.fadd"(%540, %541) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %543 = "llvm.call"(%542) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %544 = "llvm.call"(%539, %543) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%544, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %545 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %546 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %547 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %548 = "llvm.fsub"(%546, %547) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %549 = "llvm.call"(%548) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %550 = "llvm.call"(%545, %549) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%550, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %551 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %552 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %553 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %554 = "llvm.fmul"(%552, %553) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %555 = "llvm.call"(%554) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %556 = "llvm.call"(%551, %555) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%556, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %557 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %558 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %559 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %560 = "llvm.fcmp"(%559, %493) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    "llvm.cond_br"(%560)[^bb3, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    "llvm.br"(%456)[^bb5] : (f64) -> ()
  ^bb4:  // pred: ^bb2
    %561 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.br"(%561)[^bb5] : (f64) -> ()
  ^bb5(%562: f64):  // 2 preds: ^bb3, ^bb4
    %563 = "llvm.fdiv"(%558, %562) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %564 = "llvm.call"(%563) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %565 = "llvm.call"(%557, %564) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%565, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %566 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %567 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %568 = "llvm.intr.fabs"(%567) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %569 = "llvm.intr.sqrt"(%568) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %570 = "llvm.call"(%569) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %571 = "llvm.call"(%566, %570) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%571, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %572 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %573 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %574 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %575 = "llvm.load"(%505) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %576 = "llvm.intr.fma"(%573, %574, %575) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %577 = "llvm.call"(%576) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %578 = "llvm.call"(%572, %577) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%578, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %579 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %580 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %581 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %582 = "llvm.intr.copysign"(%580, %581) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %583 = "llvm.call"(%582) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %584 = "llvm.call"(%579, %583) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%584, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %585 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %586 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %587 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %588 = "llvm.intr.minnum"(%586, %587) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %589 = "llvm.call"(%588) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %590 = "llvm.call"(%585, %589) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%590, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %591 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %592 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %593 = "llvm.load"(%503) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %594 = "llvm.intr.maxnum"(%592, %593) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %595 = "llvm.call"(%594) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %596 = "llvm.call"(%591, %595) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%596, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %597 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %598 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %599 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %600 = "llvm.fcmp"(%598, %599) <{fastmathFlags = #llvm.fastmath<none>, predicate = 4 : i64}> : (f64, f64) -> i1
    %601 = "llvm.zext"(%600) : (i1) -> i32
    %602 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %603 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %604 = "llvm.fcmp"(%602, %603) <{fastmathFlags = #llvm.fastmath<none>, predicate = 5 : i64}> : (f64, f64) -> i1
    %605 = "llvm.zext"(%604) : (i1) -> i32
    %606 = "llvm.shl"(%605, %453) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %607 = "llvm.or"(%601, %606) : (i32, i32) -> i32
    %608 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %609 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %610 = "llvm.fcmp"(%608, %609) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %611 = "llvm.zext"(%610) : (i1) -> i32
    %612 = "llvm.shl"(%611, %482) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %613 = "llvm.or"(%607, %612) : (i32, i32) -> i32
    %614 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %615 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %616 = "llvm.fcmp"(%614, %615) <{fastmathFlags = #llvm.fastmath<none>, predicate = 13 : i64}> : (f64, f64) -> i1
    %617 = "llvm.zext"(%616) : (i1) -> i32
    %618 = "llvm.shl"(%617, %492) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %619 = "llvm.or"(%613, %618) : (i32, i32) -> i32
    %620 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %621 = "llvm.load"(%503) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %622 = "llvm.fcmp"(%620, %621) <{fastmathFlags = #llvm.fastmath<none>, predicate = 2 : i64}> : (f64, f64) -> i1
    %623 = "llvm.zext"(%622) : (i1) -> i32
    %624 = "llvm.shl"(%623, %494) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %625 = "llvm.or"(%619, %624) : (i32, i32) -> i32
    %626 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %627 = "llvm.load"(%503) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %628 = "llvm.fcmp"(%626, %627) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %629 = "llvm.zext"(%628) : (i1) -> i32
    %630 = "llvm.shl"(%629, %495) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %631 = "llvm.or"(%625, %630) : (i32, i32) -> i32
    %632 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %633 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %634 = "llvm.fcmp"(%632, %633) <{fastmathFlags = #llvm.fastmath<none>, predicate = 3 : i64}> : (f64, f64) -> i1
    %635 = "llvm.zext"(%634) : (i1) -> i32
    %636 = "llvm.shl"(%635, %473) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %637 = "llvm.or"(%631, %636) : (i32, i32) -> i32
    %638 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %639 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %640 = "llvm.fcmp"(%638, %639) <{fastmathFlags = #llvm.fastmath<none>, predicate = 6 : i64}> : (f64, f64) -> i1
    %641 = "llvm.zext"(%640) : (i1) -> i32
    %642 = "llvm.shl"(%641, %475) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %643 = "llvm.or"(%637, %642) : (i32, i32) -> i32
    %644 = "llvm.call"(%597, %643) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%644, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %645 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %646 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %647 = "llvm.fdiv"(%646, %496) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %648 = "llvm.fptosi"(%647) : (f64) -> i32
    %649 = "llvm.call"(%645, %648) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%649, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %650 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %651 = "llvm.load"(%509) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %652 = "llvm.fmul"(%651, %497) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %653 = "llvm.fptosi"(%652) : (f64) -> i64
    %654 = "llvm.trunc"(%653) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %655 = "llvm.call"(%650, %654) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%655, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %656 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %657 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %658 = "llvm.fmul"(%657, %497) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %659 = "llvm.intr.fabs"(%658) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %660 = "llvm.fptoui"(%659) : (f64) -> i64
    %661 = "llvm.lshr"(%660, %498) : (i64, i64) -> i64
    %662 = "llvm.trunc"(%661) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %663 = "llvm.call"(%656, %662) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%663, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %664 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %665 = "llvm.load"(%507) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %666 = "llvm.mul"(%665, %499) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %667 = "llvm.sitofp"(%666) : (i32) -> f64
    %668 = "llvm.call"(%667) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %669 = "llvm.call"(%664, %668) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%669, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %670 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %671 = "llvm.load"(%507) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %672 = "llvm.mul"(%671, %500) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %673 = "llvm.uitofp"(%672) : (i32) -> f64
    %674 = "llvm.call"(%673) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %675 = "llvm.call"(%670, %674) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%675, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %676 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %677 = "llvm.load"(%507) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %678 = "llvm.sext"(%677) : (i32) -> i64
    %679 = "llvm.sitofp"(%678) : (i64) -> f64
    %680 = "llvm.fmul"(%679, %501) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %681 = "llvm.call"(%680) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %682 = "llvm.call"(%676, %681) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%682, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %683 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %684 = "llvm.fptrunc"(%683) : (f64) -> f32
    "llvm.store"(%684, %510) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %685 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %686 = "llvm.load"(%510) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %687 = "llvm.call"(%685, %686) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%687, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %688 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %689 = "llvm.load"(%510) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %690 = "llvm.fpext"(%689) : (f32) -> f64
    %691 = "llvm.fmul"(%690, %462) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %692 = "llvm.call"(%691) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %693 = "llvm.call"(%688, %692) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%693, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %694 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %695 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %696 = "llvm.load"(%504) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %697 = "llvm.fmul"(%695, %696) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %698 = "llvm.intr.is.fpclass"(%697) <{bit = 3 : i32}> : (f64) -> i1
    %699 = "llvm.zext"(%698) : (i1) -> i32
    %700 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %701 = "llvm.load"(%504) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %702 = "llvm.fmul"(%700, %701) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %703 = "llvm.intr.is.fpclass"(%702) <{bit = 516 : i32}> : (f64) -> i1
    %704 = "llvm.zext"(%703) : (i1) -> i32
    %705 = "llvm.shl"(%704, %453) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %706 = "llvm.or"(%699, %705) : (i32, i32) -> i32
    %707 = "llvm.load"(%508) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %708 = "llvm.intr.is.fpclass"(%707) <{bit = 504 : i32}> : (f64) -> i1
    %709 = "llvm.zext"(%708) : (i1) -> i32
    %710 = "llvm.shl"(%709, %482) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %711 = "llvm.or"(%706, %710) : (i32, i32) -> i32
    %712 = "llvm.call"(%694, %711) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%712, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %713 = "llvm.load"(%507) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %714 = "llvm.add"(%713, %453) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%714, %507) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb7:  // pred: ^bb1
    %715 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %716 = "llvm.call"(%456, %461, %462, %463, %464, %465, %466, %467, %468, %469, %470, %471, %472) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @sum10, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 13, 0>}> : (f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, i32, f64, f32) -> f64
    %717 = "llvm.call"(%716) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %718 = "llvm.call"(%715, %717) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%718, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %719 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %720 = "llvm.call"(%473, %474, %475, %476, %477, %478, %470) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], callee = @vsum, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 7, 0>, var_callee_type = !llvm.func<f64 (i32, ...)>}> : (i32, f64, i32, f64, i32, f64, i32) -> f64
    %721 = "llvm.call"(%720) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %722 = "llvm.call"(%719, %721) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%722, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %723 = "llvm.getelementptr"(%512, %459) <{elem_type = !llvm.struct<"struct.dd", (f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%479, %723) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %724 = "llvm.getelementptr"(%512, %459) <{elem_type = !llvm.struct<"struct.dd", (f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%480, %724) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %725 = "llvm.getelementptr"(%512, %459) <{elem_type = !llvm.struct<(f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %726 = "llvm.load"(%725) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %727 = "llvm.getelementptr"(%512, %459) <{elem_type = !llvm.struct<(f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %728 = "llvm.load"(%727) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %729 = "llvm.call"(%726, %728) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @swapdd, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f64, f64) -> !llvm.struct<(f64, f64)>
    %730 = "llvm.getelementptr"(%511, %459) <{elem_type = !llvm.struct<(f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %731 = "llvm.extractvalue"(%729) <{position = array<i64: 0>}> : (!llvm.struct<(f64, f64)>) -> f64
    "llvm.store"(%731, %730) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %732 = "llvm.getelementptr"(%511, %459) <{elem_type = !llvm.struct<(f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %733 = "llvm.extractvalue"(%729) <{position = array<i64: 1>}> : (!llvm.struct<(f64, f64)>) -> f64
    "llvm.store"(%733, %732) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %734 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %735 = "llvm.getelementptr"(%511, %459) <{elem_type = !llvm.struct<"struct.dd", (f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %736 = "llvm.load"(%735) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %737 = "llvm.call"(%736) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %738 = "llvm.getelementptr"(%511, %459) <{elem_type = !llvm.struct<"struct.dd", (f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %739 = "llvm.load"(%738) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %740 = "llvm.call"(%739) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %741 = "llvm.xor"(%737, %740) : (i32, i32) -> i32
    %742 = "llvm.call"(%734, %741) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%742, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %743 = "llvm.call"(%469, %481) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mkdi, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f64, i32) -> !llvm.struct<(f64, i32)>
    %744 = "llvm.getelementptr"(%513, %459) <{elem_type = !llvm.struct<(f64, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %745 = "llvm.extractvalue"(%743) <{position = array<i64: 0>}> : (!llvm.struct<(f64, i32)>) -> f64
    "llvm.store"(%745, %744) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %746 = "llvm.getelementptr"(%513, %459) <{elem_type = !llvm.struct<(f64, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %747 = "llvm.extractvalue"(%743) <{position = array<i64: 1>}> : (!llvm.struct<(f64, i32)>) -> i32
    "llvm.store"(%747, %746) <{alignment = 8 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %748 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %749 = "llvm.getelementptr"(%513, %459) <{elem_type = !llvm.struct<"struct.di", (f64, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %750 = "llvm.load"(%749) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %751 = "llvm.call"(%750) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %752 = "llvm.getelementptr"(%513, %459) <{elem_type = !llvm.struct<"struct.di", (f64, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %753 = "llvm.load"(%752) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %754 = "llvm.xor"(%751, %753) : (i32, i32) -> i32
    %755 = "llvm.call"(%748, %754) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%755, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %756 = "llvm.getelementptr"(%515, %459) <{elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%456, %756) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %757 = "llvm.getelementptr"(%515, %459) <{elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%461, %757) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %758 = "llvm.getelementptr"(%515, %459) <{elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%462, %758) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.intr.memcpy"(%516, %515, %483) <{arg_attrs = [{llvm.align = 8 : i64}, {llvm.align = 8 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    "llvm.call"(%514, %516, %484) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.align = 8 : i64, llvm.sret = !llvm.struct<"struct.big", (f64, f64, f64)>}, {llvm.noundef}, {llvm.noundef}], callee = @scale, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, f64) -> ()
    %759 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %760 = "llvm.getelementptr"(%514, %459) <{elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %761 = "llvm.load"(%760) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %762 = "llvm.getelementptr"(%514, %459) <{elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %763 = "llvm.load"(%762) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %764 = "llvm.fadd"(%761, %763) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %765 = "llvm.getelementptr"(%514, %459) <{elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %766 = "llvm.load"(%765) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %767 = "llvm.fadd"(%764, %766) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %768 = "llvm.call"(%767) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %769 = "llvm.call"(%759, %768) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%769, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %770 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %771 = "llvm.call"(%485, %486) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @keep, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (f64, !llvm.ptr) -> f64
    %772 = "llvm.call"(%771) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %773 = "llvm.call"(%770, %772) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%773, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%459, %518) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb8] : () -> ()
  ^bb8:  // 2 preds: ^bb7, ^bb10
    %774 = "llvm.load"(%518) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %775 = "llvm.icmp"(%774, %487) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%775)[^bb9, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    %776 = "llvm.load"(%518) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %777 = "llvm.sitofp"(%776) : (i32) -> f64
    %778 = "llvm.intr.fmuladd"(%777, %490, %491) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %779 = "llvm.load"(%518) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %780 = "llvm.getelementptr"(%517, %459, %779) <{elem_type = !llvm.array<64 x f64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.store"(%778, %780) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.br"()[^bb10] : () -> ()
  ^bb10:  // pred: ^bb9
    %781 = "llvm.load"(%518) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %782 = "llvm.add"(%781, %453) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%782, %518) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb8] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb11:  // pred: ^bb8
    %783 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %784 = "llvm.getelementptr"(%517, %459, %459) <{elem_type = !llvm.array<64 x f64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %785 = "llvm.call"(%784, %487) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @pressure, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, i32) -> f64
    %786 = "llvm.call"(%785) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %787 = "llvm.call"(%783, %786) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%787, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.intr.memcpy"(%519, %488, %477) <{arg_attrs = [{llvm.align = 1 : i64}, {llvm.align = 1 : i64}, {}], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    "llvm.store"(%519, %520) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %788 = "llvm.load"(%520) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %789 = "llvm.getelementptr"(%788, %459) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%489, %789) <{alignment = 1 : i64, ordering = 0 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    %790 = "llvm.getelementptr"(%519, %459) <{elem_type = !llvm.struct<"struct.anon", packed (i8, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %791 = "llvm.load"(%790) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %792 = "llvm.getelementptr"(%519, %459) <{elem_type = !llvm.struct<"struct.anon", packed (i8, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %793 = "llvm.load"(%792) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %794 = "llvm.zext"(%793) : (i8) -> i32
    %795 = "llvm.sitofp"(%794) : (i32) -> f64
    %796 = "llvm.intr.fmuladd"(%791, %462, %795) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %797 = "llvm.getelementptr"(%519, %459) <{elem_type = !llvm.struct<"struct.anon", packed (i8, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%796, %797) <{alignment = 1 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %798 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %799 = "llvm.getelementptr"(%519, %459) <{elem_type = !llvm.struct<"struct.anon", packed (i8, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %800 = "llvm.load"(%799) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %801 = "llvm.call"(%800) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], callee = @bits, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f64) -> i32
    %802 = "llvm.call"(%798, %801) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], callee = @mix, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (i32, i32) -> i32
    "llvm.store"(%802, %502) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %803 = "llvm.load"(%502) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%803) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "mix", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32, %arg28: i32):
    %443 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %444 = "llvm.mlir.constant"() <{value = 16777619 : i32}> : () -> i32
    %445 = "llvm.mlir.constant"() <{value = -1640531527 : i32}> : () -> i32
    %446 = "llvm.alloca"(%443) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %447 = "llvm.alloca"(%443) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg27, %446) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg28, %447) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %448 = "llvm.load"(%446) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %449 = "llvm.load"(%447) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %450 = "llvm.xor"(%448, %449) : (i32, i32) -> i32
    %451 = "llvm.mul"(%450, %444) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %452 = "llvm.add"(%451, %445) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%452) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "bits", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: f64):
    %432 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %433 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %434 = "llvm.alloca"(%432) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %435 = "llvm.alloca"(%432) <{alignment = 8 : i64, elem_type = !llvm.struct<"union.anon", (f64)>}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg26, %434) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %436 = "llvm.load"(%434) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.store"(%436, %435) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %437 = "llvm.load"(%435) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %438 = "llvm.trunc"(%437) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %439 = "llvm.load"(%435) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %440 = "llvm.lshr"(%439, %433) : (i64, i64) -> i64
    %441 = "llvm.trunc"(%440) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %442 = "llvm.xor"(%438, %441) : (i32, i32) -> i32
    "llvm.return"(%442) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<f64 (f64, f64, f64, f64, f64, f64, f64, f64, f64, f64, i32, f64, f32)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "sum10", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: f64, %arg14: f64, %arg15: f64, %arg16: f64, %arg17: f64, %arg18: f64, %arg19: f64, %arg20: f64, %arg21: f64, %arg22: f64, %arg23: i32, %arg24: f64, %arg25: f32):
    %390 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %391 = "llvm.mlir.constant"() <{value = 5.000000e-01 : f64}> : () -> f64
    %392 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f64}> : () -> f64
    %393 = "llvm.alloca"(%390) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %394 = "llvm.alloca"(%390) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %395 = "llvm.alloca"(%390) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %396 = "llvm.alloca"(%390) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %397 = "llvm.alloca"(%390) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %398 = "llvm.alloca"(%390) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %399 = "llvm.alloca"(%390) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %400 = "llvm.alloca"(%390) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %401 = "llvm.alloca"(%390) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %402 = "llvm.alloca"(%390) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %403 = "llvm.alloca"(%390) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %404 = "llvm.alloca"(%390) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %405 = "llvm.alloca"(%390) <{alignment = 4 : i64, elem_type = f32}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg13, %393) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%arg14, %394) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%arg15, %395) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%arg16, %396) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%arg17, %397) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%arg18, %398) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%arg19, %399) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%arg20, %400) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%arg21, %401) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%arg22, %402) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%arg23, %403) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%arg24, %404) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%arg25, %405) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    %406 = "llvm.load"(%393) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %407 = "llvm.load"(%394) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %408 = "llvm.fsub"(%406, %407) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %409 = "llvm.load"(%395) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %410 = "llvm.load"(%396) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %411 = "llvm.intr.fmuladd"(%409, %410, %408) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %412 = "llvm.load"(%397) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %413 = "llvm.load"(%398) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %414 = "llvm.fdiv"(%412, %413) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %415 = "llvm.fsub"(%411, %414) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %416 = "llvm.load"(%399) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %417 = "llvm.fadd"(%415, %416) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %418 = "llvm.load"(%400) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %419 = "llvm.intr.fmuladd"(%418, %391, %417) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %420 = "llvm.load"(%401) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %421 = "llvm.fadd"(%419, %420) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %422 = "llvm.load"(%402) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %423 = "llvm.fsub"(%421, %422) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %424 = "llvm.load"(%403) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %425 = "llvm.sitofp"(%424) : (i32) -> f64
    %426 = "llvm.fadd"(%423, %425) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %427 = "llvm.load"(%404) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %428 = "llvm.intr.fmuladd"(%427, %392, %426) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %429 = "llvm.load"(%405) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    %430 = "llvm.fpext"(%429) : (f32) -> f64
    %431 = "llvm.fadd"(%428, %430) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%431) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<f64 (i32, ...)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "vsum", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %358 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %359 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %360 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %361 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %362 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %363 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %364 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %365 = "llvm.alloca"(%358) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %366 = "llvm.alloca"(%358) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %367 = "llvm.alloca"(%358) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %368 = "llvm.alloca"(%358) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg12, %365) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.intr.vastart"(%366) : (!llvm.ptr) -> ()
    "llvm.store"(%359, %367) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%360, %368) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb6
    %369 = "llvm.load"(%368) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %370 = "llvm.load"(%365) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %371 = "llvm.icmp"(%369, %370) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%371)[^bb2, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %372 = "llvm.load"(%368) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %373 = "llvm.and"(%372, %358) : (i32, i32) -> i32
    %374 = "llvm.icmp"(%373, %360) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%374)[^bb3, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    %375 = "llvm.load"(%366) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %376 = "llvm.getelementptr"(%375, %364) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%376, %366) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %377 = "llvm.load"(%375) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %378 = "llvm.sitofp"(%377) : (i32) -> f64
    "llvm.br"(%378)[^bb5] : (f64) -> ()
  ^bb4:  // pred: ^bb2
    %379 = "llvm.load"(%366) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %380 = "llvm.getelementptr"(%379, %361) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %381 = "llvm.intr.ptrmask"(%380, %362) : (!llvm.ptr, i32) -> !llvm.ptr
    %382 = "llvm.getelementptr"(%381, %363) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%382, %366) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %383 = "llvm.load"(%381) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.br"(%383)[^bb5] : (f64) -> ()
  ^bb5(%384: f64):  // 2 preds: ^bb3, ^bb4
    %385 = "llvm.load"(%367) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %386 = "llvm.fadd"(%385, %384) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%386, %367) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.br"()[^bb6] : () -> ()
  ^bb6:  // pred: ^bb5
    %387 = "llvm.load"(%368) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %388 = "llvm.add"(%387, %358) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%388, %368) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb7:  // pred: ^bb1
    "llvm.intr.vaend"(%366) : (!llvm.ptr) -> ()
    %389 = "llvm.load"(%367) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.return"(%389) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<struct<(f64, f64)> (f64, f64)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "swapdd", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f64, %arg11: f64):
    %335 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %336 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %337 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %338 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %339 = "llvm.mlir.poison"() : () -> !llvm.struct<(f64, f64)>
    %340 = "llvm.alloca"(%335) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.dd", (f64, f64)>}> : (i32) -> !llvm.ptr
    %341 = "llvm.alloca"(%335) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.dd", (f64, f64)>}> : (i32) -> !llvm.ptr
    %342 = "llvm.getelementptr"(%341, %336) <{elem_type = !llvm.struct<(f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg10, %342) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %343 = "llvm.getelementptr"(%341, %336) <{elem_type = !llvm.struct<(f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%arg11, %343) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %344 = "llvm.getelementptr"(%340, %336) <{elem_type = !llvm.struct<"struct.dd", (f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %345 = "llvm.getelementptr"(%341, %336) <{elem_type = !llvm.struct<"struct.dd", (f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %346 = "llvm.load"(%345) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %347 = "llvm.fmul"(%346, %337) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%347, %344) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %348 = "llvm.getelementptr"(%340, %336) <{elem_type = !llvm.struct<"struct.dd", (f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %349 = "llvm.getelementptr"(%341, %336) <{elem_type = !llvm.struct<"struct.dd", (f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %350 = "llvm.load"(%349) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %351 = "llvm.fsub"(%350, %338) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%351, %348) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %352 = "llvm.getelementptr"(%340, %336) <{elem_type = !llvm.struct<(f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %353 = "llvm.load"(%352) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %354 = "llvm.getelementptr"(%340, %336) <{elem_type = !llvm.struct<(f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %355 = "llvm.load"(%354) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %356 = "llvm.insertvalue"(%339, %353) <{position = array<i64: 0>}> : (!llvm.struct<(f64, f64)>, f64) -> !llvm.struct<(f64, f64)>
    %357 = "llvm.insertvalue"(%356, %355) <{position = array<i64: 1>}> : (!llvm.struct<(f64, f64)>, f64) -> !llvm.struct<(f64, f64)>
    "llvm.return"(%357) : (!llvm.struct<(f64, f64)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<struct<(f64, i32)> (f64, i32)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "mkdi", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f64, %arg9: i32):
    %312 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %313 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %314 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f64}> : () -> f64
    %315 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %316 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %317 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %318 = "llvm.mlir.poison"() : () -> !llvm.struct<(f64, i32)>
    %319 = "llvm.alloca"(%312) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.di", (f64, i32)>}> : (i32) -> !llvm.ptr
    %320 = "llvm.alloca"(%312) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %321 = "llvm.alloca"(%312) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg8, %320) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%arg9, %321) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %322 = "llvm.getelementptr"(%319, %313) <{elem_type = !llvm.struct<"struct.di", (f64, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %323 = "llvm.load"(%320) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %324 = "llvm.fdiv"(%323, %314) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%324, %322) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %325 = "llvm.getelementptr"(%319, %313) <{elem_type = !llvm.struct<"struct.di", (f64, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %326 = "llvm.load"(%321) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %327 = "llvm.add"(%326, %312) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%327, %325) <{alignment = 8 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %328 = "llvm.getelementptr"(%319, %315) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.intr.memset"(%328, %316, %317) <{arg_attrs = [{llvm.align = 4 : i64}, {}, {}], isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    %329 = "llvm.getelementptr"(%319, %313) <{elem_type = !llvm.struct<(f64, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %330 = "llvm.load"(%329) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %331 = "llvm.getelementptr"(%319, %313) <{elem_type = !llvm.struct<(f64, i32)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %332 = "llvm.load"(%331) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %333 = "llvm.insertvalue"(%318, %330) <{position = array<i64: 0>}> : (!llvm.struct<(f64, i32)>, f64) -> !llvm.struct<(f64, i32)>
    %334 = "llvm.insertvalue"(%333, %332) <{position = array<i64: 1>}> : (!llvm.struct<(f64, i32)>, i32) -> !llvm.struct<(f64, i32)>
    "llvm.return"(%334) : (!llvm.struct<(f64, i32)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.sret = !llvm.struct<"struct.big", (f64, f64, f64)>}, {llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<void (ptr, ptr, f64)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "scale", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: f64):
    %291 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %292 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %293 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %294 = "llvm.alloca"(%291) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %295 = "llvm.alloca"(%291) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %296 = "llvm.alloca"(%291) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg5, %294) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.store"(%arg6, %295) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.store"(%arg7, %296) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %297 = "llvm.getelementptr"(%arg5, %292) <{elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %298 = "llvm.getelementptr"(%arg6, %292) <{elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %299 = "llvm.load"(%298) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %300 = "llvm.load"(%296) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %301 = "llvm.fmul"(%299, %300) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%301, %297) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %302 = "llvm.getelementptr"(%arg5, %292) <{elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %303 = "llvm.getelementptr"(%arg6, %292) <{elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %304 = "llvm.load"(%303) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %305 = "llvm.load"(%296) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %306 = "llvm.fmul"(%304, %305) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%306, %302) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %307 = "llvm.getelementptr"(%arg5, %292) <{elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %308 = "llvm.getelementptr"(%arg6, %292) <{elem_type = !llvm.struct<"struct.big", (f64, f64, f64)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %309 = "llvm.load"(%308) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %310 = "llvm.load"(%296) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %311 = "llvm.fmul"(%309, %310) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%311, %307) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<f64 (f64, ptr)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "keep", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f64, %arg4: !llvm.ptr):
    %267 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %268 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %269 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f64}> : () -> f64
    %270 = "llvm.alloca"(%267) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %271 = "llvm.alloca"(%267) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %272 = "llvm.alloca"(%267) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %273 = "llvm.alloca"(%267) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %274 = "llvm.alloca"(%267) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg3, %270) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%arg4, %271) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %275 = "llvm.load"(%271) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %276 = "llvm.load"(%270) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %277 = "llvm.call"(%275, %276) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, f64) -> f64
    "llvm.store"(%277, %272) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %278 = "llvm.load"(%271) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %279 = "llvm.load"(%272) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %280 = "llvm.call"(%278, %279) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, f64) -> f64
    "llvm.store"(%280, %273) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %281 = "llvm.load"(%271) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %282 = "llvm.load"(%273) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %283 = "llvm.call"(%281, %282) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.noundef}], fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 2, 0>}> : (!llvm.ptr, f64) -> f64
    "llvm.store"(%283, %274) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %284 = "llvm.load"(%272) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %285 = "llvm.load"(%273) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %286 = "llvm.intr.fmuladd"(%285, %268, %284) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %287 = "llvm.load"(%274) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %288 = "llvm.intr.fmuladd"(%287, %269, %286) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %289 = "llvm.load"(%270) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %290 = "llvm.fadd"(%288, %289) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%290) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<f64 (f64)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "halve", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f64):
    %261 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %262 = "llvm.mlir.constant"() <{value = 5.000000e-01 : f64}> : () -> f64
    %263 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %264 = "llvm.alloca"(%261) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg2, %264) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %265 = "llvm.load"(%264) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %266 = "llvm.intr.fmuladd"(%265, %262, %263) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.return"(%266) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<f64 (ptr, i32)>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "pressure", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+d", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %2 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %3 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %4 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f64}> : () -> f64
    %5 = "llvm.mlir.constant"() <{value = 4.000000e+00 : f64}> : () -> f64
    %6 = "llvm.mlir.constant"() <{value = 5.000000e+00 : f64}> : () -> f64
    %7 = "llvm.mlir.constant"() <{value = 6.000000e+00 : f64}> : () -> f64
    %8 = "llvm.mlir.constant"() <{value = 7.000000e+00 : f64}> : () -> f64
    %9 = "llvm.mlir.constant"() <{value = 8.000000e+00 : f64}> : () -> f64
    %10 = "llvm.mlir.constant"() <{value = 9.000000e+00 : f64}> : () -> f64
    %11 = "llvm.mlir.constant"() <{value = 1.000000e+01 : f64}> : () -> f64
    %12 = "llvm.mlir.constant"() <{value = 1.100000e+01 : f64}> : () -> f64
    %13 = "llvm.mlir.constant"() <{value = 1.200000e+01 : f64}> : () -> f64
    %14 = "llvm.mlir.constant"() <{value = 1.300000e+01 : f64}> : () -> f64
    %15 = "llvm.mlir.constant"() <{value = 1.400000e+01 : f64}> : () -> f64
    %16 = "llvm.mlir.constant"() <{value = 1.500000e+01 : f64}> : () -> f64
    %17 = "llvm.mlir.constant"() <{value = 1.600000e+01 : f64}> : () -> f64
    %18 = "llvm.mlir.constant"() <{value = 1.700000e+01 : f64}> : () -> f64
    %19 = "llvm.mlir.constant"() <{value = 1.800000e+01 : f64}> : () -> f64
    %20 = "llvm.mlir.constant"() <{value = 1.900000e+01 : f64}> : () -> f64
    %21 = "llvm.mlir.constant"() <{value = 2.000000e+01 : f64}> : () -> f64
    %22 = "llvm.mlir.constant"() <{value = 2.100000e+01 : f64}> : () -> f64
    %23 = "llvm.mlir.constant"() <{value = 2.200000e+01 : f64}> : () -> f64
    %24 = "llvm.mlir.constant"() <{value = 2.300000e+01 : f64}> : () -> f64
    %25 = "llvm.mlir.constant"() <{value = 2.400000e+01 : f64}> : () -> f64
    %26 = "llvm.mlir.constant"() <{value = 2.500000e+01 : f64}> : () -> f64
    %27 = "llvm.mlir.constant"() <{value = 2.600000e+01 : f64}> : () -> f64
    %28 = "llvm.mlir.constant"() <{value = 2.700000e+01 : f64}> : () -> f64
    %29 = "llvm.mlir.constant"() <{value = 2.800000e+01 : f64}> : () -> f64
    %30 = "llvm.mlir.constant"() <{value = 2.900000e+01 : f64}> : () -> f64
    %31 = "llvm.mlir.constant"() <{value = 3.000000e+01 : f64}> : () -> f64
    %32 = "llvm.mlir.constant"() <{value = 3.100000e+01 : f64}> : () -> f64
    %33 = "llvm.mlir.constant"() <{value = 3.200000e+01 : f64}> : () -> f64
    %34 = "llvm.mlir.constant"() <{value = 3.300000e+01 : f64}> : () -> f64
    %35 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 1.000100e+00 : f64}> : () -> f64
    %37 = "llvm.mlir.constant"() <{value = 1.000000e-01 : f64}> : () -> f64
    %38 = "llvm.mlir.constant"() <{value = 1.000000e-02 : f64}> : () -> f64
    %39 = "llvm.mlir.constant"() <{value = 5.000000e-01 : f64}> : () -> f64
    %40 = "llvm.mlir.constant"() <{value = 2.500000e-01 : f64}> : () -> f64
    %41 = "llvm.mlir.constant"() <{value = 1.250000e-01 : f64}> : () -> f64
    %42 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %43 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %44 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %45 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %46 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %47 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %48 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %49 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %50 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %51 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %52 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %53 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %54 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %55 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %56 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %57 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %58 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %59 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %60 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %61 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %62 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %63 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %64 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %65 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %66 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %67 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %68 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %69 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %70 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %71 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %72 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %73 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %74 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %75 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %76 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %77 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    %78 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %79 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = f64}> : (i32) -> !llvm.ptr
    "llvm.store"(%arg0, %42) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.store"(%arg1, %43) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%1, %44) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%2, %45) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%3, %46) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%4, %47) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%5, %48) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%6, %49) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%7, %50) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%8, %51) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%9, %52) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%10, %53) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%11, %54) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%12, %55) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%13, %56) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%14, %57) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%15, %58) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%16, %59) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%17, %60) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%18, %61) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%19, %62) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%20, %63) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%21, %64) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%22, %65) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%23, %66) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%24, %67) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%25, %68) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%26, %69) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%27, %70) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%28, %71) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%29, %72) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%30, %73) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%31, %74) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%32, %75) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%33, %76) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%34, %77) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%35, %78) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %80 = "llvm.load"(%78) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %81 = "llvm.load"(%43) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %82 = "llvm.icmp"(%80, %81) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%82)[^bb2, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %83 = "llvm.load"(%42) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %84 = "llvm.load"(%78) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %85 = "llvm.getelementptr"(%83, %84) <{elem_type = f64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %86 = "llvm.load"(%85) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.store"(%86, %79) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %87 = "llvm.load"(%79) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %88 = "llvm.load"(%44) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %89 = "llvm.fadd"(%88, %87) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%89, %44) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %90 = "llvm.load"(%45) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %91 = "llvm.fmul"(%90, %36) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%91, %45) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %92 = "llvm.load"(%79) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %93 = "llvm.load"(%46) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %94 = "llvm.fsub"(%93, %92) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%94, %46) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %95 = "llvm.load"(%45) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %96 = "llvm.load"(%47) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %97 = "llvm.fadd"(%96, %95) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%97, %47) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %98 = "llvm.load"(%46) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %99 = "llvm.load"(%48) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %100 = "llvm.intr.fmuladd"(%98, %37, %99) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%100, %48) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %101 = "llvm.load"(%47) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %102 = "llvm.load"(%49) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %103 = "llvm.fneg"(%101) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %104 = "llvm.intr.fmuladd"(%103, %38, %102) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%104, %49) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %105 = "llvm.load"(%48) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %106 = "llvm.load"(%50) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %107 = "llvm.fadd"(%106, %105) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%107, %50) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %108 = "llvm.load"(%49) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %109 = "llvm.load"(%51) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %110 = "llvm.fsub"(%109, %108) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%110, %51) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %111 = "llvm.load"(%50) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %112 = "llvm.load"(%52) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %113 = "llvm.intr.fmuladd"(%111, %39, %112) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%113, %52) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %114 = "llvm.load"(%51) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %115 = "llvm.load"(%53) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %116 = "llvm.fneg"(%114) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %117 = "llvm.intr.fmuladd"(%116, %39, %115) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%117, %53) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %118 = "llvm.load"(%52) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %119 = "llvm.load"(%54) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %120 = "llvm.fadd"(%119, %118) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%120, %54) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %121 = "llvm.load"(%53) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %122 = "llvm.load"(%55) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %123 = "llvm.fadd"(%122, %121) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%123, %55) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %124 = "llvm.load"(%54) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %125 = "llvm.load"(%56) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %126 = "llvm.intr.fmuladd"(%124, %40, %125) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%126, %56) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %127 = "llvm.load"(%55) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %128 = "llvm.load"(%57) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %129 = "llvm.fneg"(%127) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %130 = "llvm.intr.fmuladd"(%129, %40, %128) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%130, %57) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %131 = "llvm.load"(%56) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %132 = "llvm.load"(%58) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %133 = "llvm.fadd"(%132, %131) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%133, %58) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %134 = "llvm.load"(%57) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %135 = "llvm.load"(%59) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %136 = "llvm.fsub"(%135, %134) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%136, %59) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %137 = "llvm.load"(%58) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %138 = "llvm.load"(%60) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %139 = "llvm.fadd"(%138, %137) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%139, %60) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %140 = "llvm.load"(%59) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %141 = "llvm.load"(%61) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %142 = "llvm.fsub"(%141, %140) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%142, %61) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %143 = "llvm.load"(%60) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %144 = "llvm.load"(%62) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %145 = "llvm.intr.fmuladd"(%143, %41, %144) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%145, %62) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %146 = "llvm.load"(%61) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %147 = "llvm.load"(%63) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %148 = "llvm.fneg"(%146) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %149 = "llvm.intr.fmuladd"(%148, %41, %147) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%149, %63) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %150 = "llvm.load"(%62) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %151 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %152 = "llvm.fadd"(%151, %150) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%152, %64) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %153 = "llvm.load"(%63) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %154 = "llvm.load"(%65) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %155 = "llvm.fsub"(%154, %153) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%155, %65) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %156 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %157 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %158 = "llvm.fadd"(%157, %156) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%158, %66) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %159 = "llvm.load"(%65) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %160 = "llvm.load"(%67) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %161 = "llvm.fsub"(%160, %159) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%161, %67) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %162 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %163 = "llvm.load"(%68) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %164 = "llvm.fadd"(%163, %162) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%164, %68) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %165 = "llvm.load"(%67) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %166 = "llvm.load"(%69) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %167 = "llvm.fsub"(%166, %165) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%167, %69) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %168 = "llvm.load"(%68) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %169 = "llvm.load"(%70) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %170 = "llvm.fadd"(%169, %168) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%170, %70) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %171 = "llvm.load"(%69) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %172 = "llvm.load"(%71) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %173 = "llvm.fsub"(%172, %171) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%173, %71) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %174 = "llvm.load"(%70) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %175 = "llvm.load"(%72) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %176 = "llvm.fadd"(%175, %174) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%176, %72) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %177 = "llvm.load"(%71) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %178 = "llvm.load"(%73) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %179 = "llvm.fsub"(%178, %177) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%179, %73) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %180 = "llvm.load"(%72) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %181 = "llvm.load"(%74) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %182 = "llvm.fadd"(%181, %180) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%182, %74) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %183 = "llvm.load"(%73) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %184 = "llvm.load"(%75) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %185 = "llvm.fsub"(%184, %183) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%185, %75) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %186 = "llvm.load"(%74) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %187 = "llvm.load"(%76) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %188 = "llvm.fadd"(%187, %186) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%188, %76) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    %189 = "llvm.load"(%75) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %190 = "llvm.load"(%77) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %191 = "llvm.fsub"(%190, %189) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%191, %77) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %192 = "llvm.load"(%78) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %193 = "llvm.add"(%192, %0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%193, %78) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb4:  // pred: ^bb1
    %194 = "llvm.load"(%44) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %195 = "llvm.load"(%45) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %196 = "llvm.fadd"(%194, %195) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %197 = "llvm.load"(%46) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %198 = "llvm.fadd"(%196, %197) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %199 = "llvm.load"(%47) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %200 = "llvm.fadd"(%198, %199) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %201 = "llvm.load"(%48) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %202 = "llvm.fadd"(%200, %201) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %203 = "llvm.load"(%49) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %204 = "llvm.fadd"(%202, %203) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %205 = "llvm.load"(%50) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %206 = "llvm.fadd"(%204, %205) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %207 = "llvm.load"(%51) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %208 = "llvm.fadd"(%206, %207) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %209 = "llvm.load"(%52) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %210 = "llvm.fadd"(%208, %209) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %211 = "llvm.load"(%53) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %212 = "llvm.fadd"(%210, %211) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %213 = "llvm.load"(%54) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %214 = "llvm.fadd"(%212, %213) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %215 = "llvm.load"(%55) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %216 = "llvm.fadd"(%214, %215) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %217 = "llvm.load"(%56) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %218 = "llvm.fadd"(%216, %217) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %219 = "llvm.load"(%57) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %220 = "llvm.fadd"(%218, %219) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %221 = "llvm.load"(%58) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %222 = "llvm.fadd"(%220, %221) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %223 = "llvm.load"(%59) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %224 = "llvm.fadd"(%222, %223) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %225 = "llvm.load"(%60) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %226 = "llvm.fadd"(%224, %225) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %227 = "llvm.load"(%61) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %228 = "llvm.fadd"(%226, %227) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %229 = "llvm.load"(%62) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %230 = "llvm.fadd"(%228, %229) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %231 = "llvm.load"(%63) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %232 = "llvm.fadd"(%230, %231) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %233 = "llvm.load"(%64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %234 = "llvm.fadd"(%232, %233) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %235 = "llvm.load"(%65) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %236 = "llvm.fadd"(%234, %235) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %237 = "llvm.load"(%66) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %238 = "llvm.fadd"(%236, %237) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %239 = "llvm.load"(%67) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %240 = "llvm.fadd"(%238, %239) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %241 = "llvm.load"(%68) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %242 = "llvm.fadd"(%240, %241) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %243 = "llvm.load"(%69) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %244 = "llvm.fadd"(%242, %243) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %245 = "llvm.load"(%70) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %246 = "llvm.fadd"(%244, %245) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %247 = "llvm.load"(%71) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %248 = "llvm.fadd"(%246, %247) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %249 = "llvm.load"(%72) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %250 = "llvm.fadd"(%248, %249) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %251 = "llvm.load"(%73) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %252 = "llvm.fadd"(%250, %251) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %253 = "llvm.load"(%74) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %254 = "llvm.fadd"(%252, %253) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %255 = "llvm.load"(%75) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %256 = "llvm.fadd"(%254, %255) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %257 = "llvm.load"(%76) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %258 = "llvm.fadd"(%256, %257) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %259 = "llvm.load"(%77) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    %260 = "llvm.fadd"(%258, %259) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.return"(%260) : (f64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

