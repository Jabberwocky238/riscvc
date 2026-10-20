"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, function_type = !llvm.func<f16 (f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_inline, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__truncsfhf2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg1: f32):
    %1 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 8388607 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = -113 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 30 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 142 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %9 = "llvm.mlir.constant"() <{value = 31 : i16}> : () -> i16
    %10 = "llvm.mlir.constant"() <{value = 112 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 113 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 8388608 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %15 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 8191 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 4096 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %20 = "llvm.mlir.constant"() <{value = 1023 : i16}> : () -> i16
    %21 = "llvm.mlir.constant"() <{value = 1024 : i16}> : () -> i16
    %22 = "llvm.mlir.constant"() <{value = 512 : i16}> : () -> i16
    %23 = "llvm.mlir.constant"() <{value = -111 : i16}> : () -> i16
    %24 = "llvm.mlir.constant"() <{value = -112 : i16}> : () -> i16
    %25 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = -32768 : i16}> : () -> i16
    %27 = "llvm.mlir.constant"() <{value = 10 : i16}> : () -> i16
    %28 = "llvm.bitcast"(%arg1) : (f32) -> i32
    %29 = "llvm.lshr"(%28, %1) : (i32, i32) -> i32
    %30 = "llvm.and"(%29, %2) : (i32, i32) -> i32
    %31 = "llvm.and"(%28, %3) : (i32, i32) -> i32
    %32 = "llvm.add"(%30, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %33 = "llvm.icmp"(%32, %5) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%33)[^bb1, ^bb6] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %34 = "llvm.trunc"(%30) <{overflowFlags = 3 : i32}> : (i32) -> i16
    %35 = "llvm.lshr"(%31, %15) : (i32, i32) -> i32
    %36 = "llvm.trunc"(%35) <{overflowFlags = 3 : i32}> : (i32) -> i16
    %37 = "llvm.and"(%28, %16) : (i32, i32) -> i32
    %38 = "llvm.icmp"(%37, %17) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%38)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %39 = "llvm.add"(%36, %19) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    "llvm.br"(%39)[^bb5] : (i16) -> ()
  ^bb3:  // pred: ^bb1
    %40 = "llvm.icmp"(%37, %17) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%40, %36)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i16) -> ()
  ^bb4:  // pred: ^bb3
    %41 = "llvm.and"(%35, %18) : (i32, i32) -> i32
    %42 = "llvm.add"(%41, %35) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %43 = "llvm.trunc"(%42) <{overflowFlags = 3 : i32}> : (i32) -> i16
    "llvm.br"(%43)[^bb5] : (i16) -> ()
  ^bb5(%44: i16):  // 3 preds: ^bb2, ^bb3, ^bb4
    %45 = "llvm.icmp"(%44, %20) <{predicate = 8 : i64}> : (i16, i16) -> i1
    %46 = "llvm.select"(%45, %8, %44) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %47 = "llvm.select"(%45, %23, %24) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %48 = "llvm.add"(%47, %34) <{overflowFlags = 1 : i32}> : (i16, i16) -> i16
    "llvm.br"(%46, %48)[^bb15] : (i16, i16) -> ()
  ^bb6:  // pred: ^bb0
    %49 = "llvm.icmp"(%30, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %50 = "llvm.icmp"(%31, %6) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %51 = "llvm.and"(%50, %49) : (i1, i1) -> i1
    "llvm.cond_br"(%51)[^bb7, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb7:  // pred: ^bb6
    %52 = "llvm.lshr"(%31, %15) : (i32, i32) -> i32
    %53 = "llvm.trunc"(%52) <{overflowFlags = 3 : i32}> : (i32) -> i16
    %54 = "llvm.or"(%53, %22) : (i16, i16) -> i16
    "llvm.br"(%54, %9)[^bb15] : (i16, i16) -> ()
  ^bb8:  // pred: ^bb6
    %55 = "llvm.icmp"(%30, %7) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%55, %8, %9)[^bb15, ^bb9] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i16, i16) -> ()
  ^bb9:  // pred: ^bb8
    %56 = "llvm.icmp"(%30, %6) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %57 = "llvm.select"(%56, %10, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %58 = "llvm.sub"(%57, %30) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %59 = "llvm.icmp"(%58, %1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%59, %8, %8)[^bb15, ^bb10] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i16, i16) -> ()
  ^bb10:  // pred: ^bb9
    %60 = "llvm.or"(%31, %12) <{isDisjoint}> : (i32, i32) -> i32
    %61 = "llvm.select"(%56, %31, %60) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %62 = "llvm.icmp"(%57, %30) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %63 = "llvm.sub"(%13, %58) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %64 = "llvm.shl"(%61, %63) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %65 = "llvm.icmp"(%64, %6) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %66 = "llvm.select"(%62, %65, %14) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    %67 = "llvm.zext"(%66) : (i1) -> i32
    %68 = "llvm.lshr"(%61, %58) : (i32, i32) -> i32
    %69 = "llvm.lshr"(%68, %15) : (i32, i32) -> i32
    %70 = "llvm.trunc"(%69) <{overflowFlags = 3 : i32}> : (i32) -> i16
    %71 = "llvm.and"(%68, %16) : (i32, i32) -> i32
    %72 = "llvm.or"(%71, %67) : (i32, i32) -> i32
    %73 = "llvm.icmp"(%72, %17) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%73)[^bb11, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    %74 = "llvm.add"(%70, %19) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    "llvm.br"(%74)[^bb14] : (i16) -> ()
  ^bb12:  // pred: ^bb10
    %75 = "llvm.icmp"(%72, %17) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%75, %70)[^bb13, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i16) -> ()
  ^bb13:  // pred: ^bb12
    %76 = "llvm.and"(%69, %18) : (i32, i32) -> i32
    %77 = "llvm.add"(%76, %69) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %78 = "llvm.trunc"(%77) <{overflowFlags = 3 : i32}> : (i32) -> i16
    "llvm.br"(%78)[^bb14] : (i16) -> ()
  ^bb14(%79: i16):  // 3 preds: ^bb11, ^bb12, ^bb13
    %80 = "llvm.icmp"(%79, %20) <{predicate = 8 : i64}> : (i16, i16) -> i1
    %81 = "llvm.xor"(%79, %21) : (i16, i16) -> i16
    %82 = "llvm.select"(%80, %81, %79) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %83 = "llvm.zext"(%80) : (i1) -> i16
    "llvm.br"(%82, %83)[^bb15] : (i16, i16) -> ()
  ^bb15(%84: i16, %85: i16):  // 5 preds: ^bb5, ^bb7, ^bb8, ^bb9, ^bb14
    %86 = "llvm.lshr"(%28, %25) : (i32, i32) -> i32
    %87 = "llvm.trunc"(%86) <{overflowFlags = 2 : i32}> : (i32) -> i16
    %88 = "llvm.and"(%87, %26) : (i16, i16) -> i16
    %89 = "llvm.shl"(%85, %27) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    %90 = "llvm.or"(%89, %88) <{isDisjoint}> : (i16, i16) -> i16
    %91 = "llvm.or"(%90, %84) : (i16, i16) -> i16
    %92 = "llvm.bitcast"(%91) : (i16) -> f16
    "llvm.return"(%92) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, function_type = !llvm.func<f16 (f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__gnu_f2h_ieee", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: f32):
    %0 = "llvm.call"(%arg0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, arg_attrs = [{llvm.noundef}], callee = @__truncsfhf2, fastmathFlags = #llvm.fastmath<none>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f32) -> f16
    "llvm.return"(%0) : (f16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

