"builtin.module"() ({
  "llvm.mlir.alias"() <{alias_type = !llvm.func<i32 (f32, f32)>, dso_local, linkage = #llvm.linkage<external>, sym_name = "__cmpsf2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %63 = "llvm.mlir.addressof"() <{global_name = @__lesf2}> : () -> !llvm.ptr
    "llvm.return"(%63) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.mlir.alias"() <{alias_type = !llvm.func<i32 (f32, f32)>, dso_local, linkage = #llvm.linkage<external>, sym_name = "__eqsf2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %62 = "llvm.mlir.addressof"() <{global_name = @__lesf2}> : () -> !llvm.ptr
    "llvm.return"(%62) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.mlir.alias"() <{alias_type = !llvm.func<i32 (f32, f32)>, dso_local, linkage = #llvm.linkage<external>, sym_name = "__ltsf2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %61 = "llvm.mlir.addressof"() <{global_name = @__lesf2}> : () -> !llvm.ptr
    "llvm.return"(%61) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.mlir.alias"() <{alias_type = !llvm.func<i32 (f32, f32)>, dso_local, linkage = #llvm.linkage<external>, sym_name = "__nesf2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %60 = "llvm.mlir.addressof"() <{global_name = @__lesf2}> : () -> !llvm.ptr
    "llvm.return"(%60) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.mlir.alias"() <{alias_type = !llvm.func<i32 (f32, f32)>, dso_local, linkage = #llvm.linkage<external>, sym_name = "__gtsf2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %59 = "llvm.mlir.addressof"() <{global_name = @__gesf2}> : () -> !llvm.ptr
    "llvm.return"(%59) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<i32 (f32, f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], res_attrs = [{llvm.range = #llvm.constant_range<i32, -1, 2>}], sym_name = "__lesf2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg4: f32, %arg5: f32):
    %34 = "llvm.mlir.constant"() <{value = 2139095040 : i32}> : () -> i32
    %35 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %36 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %38 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %39 = "llvm.bitcast"(%arg4) : (f32) -> i32
    %40 = "llvm.bitcast"(%arg5) : (f32) -> i32
    %41 = "llvm.intr.fabs"(%arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %42 = "llvm.bitcast"(%41) : (f32) -> i32
    %43 = "llvm.intr.fabs"(%arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %44 = "llvm.bitcast"(%43) : (f32) -> i32
    %45 = "llvm.icmp"(%42, %34) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %46 = "llvm.icmp"(%44, %34) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %47 = "llvm.select"(%45, %35, %46) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%47, %36)[^bb7, ^bb1] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb1:  // pred: ^bb0
    %48 = "llvm.or"(%44, %42) : (i32, i32) -> i32
    %49 = "llvm.icmp"(%48, %37) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%49, %37)[^bb7, ^bb2] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    %50 = "llvm.and"(%40, %39) : (i32, i32) -> i32
    %51 = "llvm.icmp"(%50, %38) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%51)[^bb3, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    %52 = "llvm.icmp"(%39, %40) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%52, %38)[^bb7, ^bb4] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb4:  // pred: ^bb3
    %53 = "llvm.icmp"(%39, %40) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %54 = "llvm.zext"(%53) : (i1) -> i32
    "llvm.br"(%54)[^bb7] : (i32) -> ()
  ^bb5:  // pred: ^bb2
    %55 = "llvm.icmp"(%39, %40) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%55, %38)[^bb7, ^bb6] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb6:  // pred: ^bb5
    %56 = "llvm.icmp"(%39, %40) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %57 = "llvm.zext"(%56) : (i1) -> i32
    "llvm.br"(%57)[^bb7] : (i32) -> ()
  ^bb7(%58: i32):  // 6 preds: ^bb0, ^bb1, ^bb3, ^bb4, ^bb5, ^bb6
    "llvm.return"(%58) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<i32 (f32, f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], res_attrs = [{llvm.range = #llvm.constant_range<i32, -1, 2>}], sym_name = "__gesf2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg2: f32, %arg3: f32):
    %10 = "llvm.mlir.constant"() <{value = 2139095040 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %12 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %14 = "llvm.bitcast"(%arg2) : (f32) -> i32
    %15 = "llvm.bitcast"(%arg3) : (f32) -> i32
    %16 = "llvm.intr.fabs"(%arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %17 = "llvm.bitcast"(%16) : (f32) -> i32
    %18 = "llvm.intr.fabs"(%arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %19 = "llvm.bitcast"(%18) : (f32) -> i32
    %20 = "llvm.icmp"(%17, %10) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %21 = "llvm.icmp"(%19, %10) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %22 = "llvm.select"(%20, %11, %21) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%22, %12)[^bb7, ^bb1] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb1:  // pred: ^bb0
    %23 = "llvm.or"(%19, %17) : (i32, i32) -> i32
    %24 = "llvm.icmp"(%23, %13) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%24, %13)[^bb7, ^bb2] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    %25 = "llvm.and"(%15, %14) : (i32, i32) -> i32
    %26 = "llvm.icmp"(%25, %12) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%26)[^bb3, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    %27 = "llvm.icmp"(%14, %15) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%27, %12)[^bb7, ^bb4] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb4:  // pred: ^bb3
    %28 = "llvm.icmp"(%14, %15) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %29 = "llvm.zext"(%28) : (i1) -> i32
    "llvm.br"(%29)[^bb7] : (i32) -> ()
  ^bb5:  // pred: ^bb2
    %30 = "llvm.icmp"(%14, %15) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%30, %12)[^bb7, ^bb6] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb6:  // pred: ^bb5
    %31 = "llvm.icmp"(%14, %15) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %32 = "llvm.zext"(%31) : (i1) -> i32
    "llvm.br"(%32)[^bb7] : (i32) -> ()
  ^bb7(%33: i32):  // 6 preds: ^bb0, ^bb1, ^bb3, ^bb4, ^bb5, ^bb6
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<i32 (f32, f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], res_attrs = [{llvm.range = #llvm.constant_range<i32, 0, 2>}], sym_name = "__unordsf2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "llvm.mlir.constant"() <{value = 2139095040 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %2 = "llvm.intr.fabs"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %3 = "llvm.bitcast"(%2) : (f32) -> i32
    %4 = "llvm.intr.fabs"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %5 = "llvm.bitcast"(%4) : (f32) -> i32
    %6 = "llvm.icmp"(%3, %0) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %7 = "llvm.icmp"(%5, %0) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %8 = "llvm.select"(%6, %1, %7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    %9 = "llvm.zext"(%8) : (i1) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

