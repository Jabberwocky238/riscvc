"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__addsf3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "llvm.mlir.constant"() <{value = -2139095040 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = -2139095039 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %3 = "llvm.mlir.constant"() <{value = 2139095040 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 8388607 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 67108864 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %17 = "llvm.mlir.constant"() <{value = -5 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 134217728 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 254 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %23 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 0x7FC00000 : f32}> : () -> f32
    %25 = "llvm.mlir.constant"() <{value = 4194304 : i32}> : () -> i32
    %26 = "llvm.bitcast"(%arg0) : (f32) -> i32
    %27 = "llvm.bitcast"(%arg1) : (f32) -> i32
    %28 = "llvm.intr.fabs"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %29 = "llvm.bitcast"(%28) : (f32) -> i32
    %30 = "llvm.intr.fabs"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %31 = "llvm.bitcast"(%30) : (f32) -> i32
    %32 = "llvm.add"(%29, %0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %33 = "llvm.icmp"(%32, %1) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %34 = "llvm.add"(%31, %0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %35 = "llvm.icmp"(%34, %1) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %36 = "llvm.select"(%33, %2, %35) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%36)[^bb1, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %37 = "llvm.icmp"(%29, %3) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%37)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %38 = "llvm.or"(%26, %25) : (i32, i32) -> i32
    %39 = "llvm.bitcast"(%38) : (i32) -> f32
    "llvm.br"(%39)[^bb37] : (f32) -> ()
  ^bb3:  // pred: ^bb1
    %40 = "llvm.icmp"(%31, %3) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%40)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %41 = "llvm.or"(%27, %25) : (i32, i32) -> i32
    %42 = "llvm.bitcast"(%41) : (i32) -> f32
    "llvm.br"(%42)[^bb37] : (f32) -> ()
  ^bb5:  // pred: ^bb3
    %43 = "llvm.icmp"(%29, %3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%43)[^bb6, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb6:  // pred: ^bb5
    %44 = "llvm.xor"(%27, %26) : (i32, i32) -> i32
    %45 = "llvm.icmp"(%44, %10) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %46 = "llvm.select"(%45, %24, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.br"(%46)[^bb37] : (f32) -> ()
  ^bb7:  // pred: ^bb5
    %47 = "llvm.icmp"(%31, %3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%47, %arg1)[^bb37, ^bb8] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f32) -> ()
  ^bb8:  // pred: ^bb7
    %48 = "llvm.icmp"(%29, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %49 = "llvm.icmp"(%31, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%48)[^bb9, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    "llvm.cond_br"(%49, %arg1)[^bb10, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, f32) -> ()
  ^bb10:  // pred: ^bb9
    %50 = "llvm.and"(%27, %26) : (i32, i32) -> i32
    %51 = "llvm.bitcast"(%50) : (i32) -> f32
    "llvm.br"(%51)[^bb37] : (f32) -> ()
  ^bb11:  // pred: ^bb8
    "llvm.cond_br"(%49, %arg0)[^bb37, ^bb12] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f32) -> ()
  ^bb12:  // 2 preds: ^bb0, ^bb11
    %52 = "llvm.icmp"(%31, %29) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %53 = "llvm.select"(%52, %26, %27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %54 = "llvm.select"(%52, %27, %26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %55 = "llvm.lshr"(%54, %5) : (i32, i32) -> i32
    %56 = "llvm.and"(%55, %6) : (i32, i32) -> i32
    %57 = "llvm.lshr"(%53, %5) : (i32, i32) -> i32
    %58 = "llvm.and"(%57, %6) : (i32, i32) -> i32
    %59 = "llvm.and"(%54, %7) : (i32, i32) -> i32
    %60 = "llvm.and"(%53, %7) : (i32, i32) -> i32
    %61 = "llvm.icmp"(%56, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%61, %59, %56)[^bb13, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb13:  // pred: ^bb12
    %62 = "llvm.intr.ctlz"(%59) <{is_zero_poison = true}> : (i32) -> i32
    %63 = "llvm.add"(%62, %8) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %64 = "llvm.shl"(%59, %63) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %65 = "llvm.sub"(%9, %62) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%64, %65)[^bb14] : (i32, i32) -> ()
  ^bb14(%66: i32, %67: i32):  // 2 preds: ^bb12, ^bb13
    %68 = "llvm.icmp"(%58, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%68, %60, %58)[^bb15, ^bb16] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb15:  // pred: ^bb14
    %69 = "llvm.intr.ctlz"(%60) <{is_zero_poison = true}> : (i32) -> i32
    %70 = "llvm.add"(%69, %8) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %71 = "llvm.shl"(%60, %70) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %72 = "llvm.sub"(%9, %69) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%71, %72)[^bb16] : (i32, i32) -> ()
  ^bb16(%73: i32, %74: i32):  // 2 preds: ^bb14, ^bb15
    %75 = "llvm.and"(%54, %10) : (i32, i32) -> i32
    %76 = "llvm.xor"(%27, %26) : (i32, i32) -> i32
    %77 = "llvm.icmp"(%76, %11) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %78 = "llvm.shl"(%66, %12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %79 = "llvm.or"(%78, %13) : (i32, i32) -> i32
    %80 = "llvm.shl"(%73, %12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %81 = "llvm.or"(%80, %13) : (i32, i32) -> i32
    %82 = "llvm.sub"(%67, %74) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %83 = "llvm.icmp"(%67, %74) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%83, %81)[^bb19, ^bb17] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb17:  // pred: ^bb16
    %84 = "llvm.icmp"(%82, %14) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%84, %15)[^bb18, ^bb19] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb18:  // pred: ^bb17
    %85 = "llvm.sub"(%14, %82) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %86 = "llvm.shl"(%81, %85) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %87 = "llvm.icmp"(%86, %4) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %88 = "llvm.lshr"(%81, %82) : (i32, i32) -> i32
    %89 = "llvm.zext"(%87) : (i1) -> i32
    %90 = "llvm.or"(%88, %89) : (i32, i32) -> i32
    "llvm.br"(%90)[^bb19] : (i32) -> ()
  ^bb19(%91: i32):  // 3 preds: ^bb16, ^bb17, ^bb18
    "llvm.cond_br"(%77)[^bb23, ^bb20] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb20:  // pred: ^bb19
    %92 = "llvm.sub"(%79, %91) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %93 = "llvm.icmp"(%79, %91) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%93, %16)[^bb37, ^bb21] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f32) -> ()
  ^bb21:  // pred: ^bb20
    %94 = "llvm.icmp"(%92, %13) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%94, %92, %67)[^bb22, ^bb25] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb22:  // pred: ^bb21
    %95 = "llvm.intr.ctlz"(%92) <{is_zero_poison = true}> : (i32) -> i32
    %96 = "llvm.add"(%95, %17) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %97 = "llvm.shl"(%92, %96) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %98 = "llvm.sub"(%67, %96) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%98, %97)[^bb27] : (i32, i32) -> ()
  ^bb23:  // pred: ^bb19
    %99 = "llvm.add"(%91, %79) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %100 = "llvm.and"(%99, %18) : (i32, i32) -> i32
    %101 = "llvm.icmp"(%100, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%101, %99, %67)[^bb25, ^bb24] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i32, i32) -> ()
  ^bb24:  // pred: ^bb23
    %102 = "llvm.and"(%91, %15) : (i32, i32) -> i32
    %103 = "llvm.lshr"(%99, %15) : (i32, i32) -> i32
    %104 = "llvm.or"(%103, %102) : (i32, i32) -> i32
    %105 = "llvm.add"(%67, %15) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%104, %105)[^bb25] : (i32, i32) -> ()
  ^bb25(%106: i32, %107: i32):  // 3 preds: ^bb21, ^bb23, ^bb24
    %108 = "llvm.icmp"(%107, %19) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%108, %107, %106)[^bb26, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb26:  // pred: ^bb25
    %109 = "llvm.or"(%75, %3) <{isDisjoint}> : (i32, i32) -> i32
    %110 = "llvm.bitcast"(%109) : (i32) -> f32
    "llvm.br"(%110)[^bb37] : (f32) -> ()
  ^bb27(%111: i32, %112: i32):  // 2 preds: ^bb22, ^bb25
    %113 = "llvm.icmp"(%111, %15) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%113, %112, %111)[^bb28, ^bb29] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb28:  // pred: ^bb27
    %114 = "llvm.sub"(%15, %111) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %115 = "llvm.add"(%111, %20) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %116 = "llvm.shl"(%112, %115) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %117 = "llvm.icmp"(%116, %4) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %118 = "llvm.lshr"(%112, %114) : (i32, i32) -> i32
    %119 = "llvm.zext"(%117) : (i1) -> i32
    %120 = "llvm.or"(%118, %119) : (i32, i32) -> i32
    "llvm.br"(%120, %4)[^bb29] : (i32, i32) -> ()
  ^bb29(%121: i32, %122: i32):  // 2 preds: ^bb27, ^bb28
    %123 = "llvm.and"(%121, %21) : (i32, i32) -> i32
    %124 = "llvm.lshr"(%121, %12) : (i32, i32) -> i32
    %125 = "llvm.and"(%124, %7) : (i32, i32) -> i32
    %126 = "llvm.shl"(%122, %5) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %127 = "llvm.or"(%125, %126) <{isDisjoint}> : (i32, i32) -> i32
    %128 = "llvm.or"(%127, %75) <{isDisjoint}> : (i32, i32) -> i32
    %129 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @__fe_getround, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> i32
    "llvm.switch"(%129, %128)[^bb34, ^bb30, ^bb32, ^bb33] <{case_operand_segments = array<i32: 0, 0, 0>, case_values = dense<[0, 1, 2]> : vector<3xi32>, operandSegmentSizes = array<i32: 1, 1, 0>}> : (i32, i32) -> ()
  ^bb30:  // pred: ^bb29
    %130 = "llvm.icmp"(%123, %23) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %131 = "llvm.zext"(%130) : (i1) -> i32
    %132 = "llvm.add"(%128, %131) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %133 = "llvm.icmp"(%123, %23) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%133, %132)[^bb31, ^bb34] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb31:  // pred: ^bb30
    %134 = "llvm.and"(%124, %15) : (i32, i32) -> i32
    %135 = "llvm.add"(%128, %134) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%135)[^bb35] : (i32) -> ()
  ^bb32:  // pred: ^bb29
    %136 = "llvm.icmp"(%75, %4) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %137 = "llvm.icmp"(%123, %4) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %138 = "llvm.select"(%136, %137, %22) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    %139 = "llvm.zext"(%138) : (i1) -> i32
    %140 = "llvm.add"(%128, %139) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%140)[^bb34] : (i32) -> ()
  ^bb33:  // pred: ^bb29
    %141 = "llvm.icmp"(%75, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %142 = "llvm.icmp"(%123, %4) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %143 = "llvm.select"(%141, %142, %22) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    %144 = "llvm.zext"(%143) : (i1) -> i32
    %145 = "llvm.add"(%128, %144) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.br"(%145)[^bb34] : (i32) -> ()
  ^bb34(%146: i32):  // 4 preds: ^bb29, ^bb30, ^bb32, ^bb33
    %147 = "llvm.icmp"(%123, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%147, %146, %146)[^bb36, ^bb35] <{operandSegmentSizes = array<i32: 1, 1, 1>}> : (i1, i32, i32) -> ()
  ^bb35(%148: i32):  // 2 preds: ^bb31, ^bb34
    %149 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @__fe_raise_inexact, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> i32
    "llvm.br"(%148)[^bb36] : (i32) -> ()
  ^bb36(%150: i32):  // 2 preds: ^bb34, ^bb35
    %151 = "llvm.bitcast"(%150) : (i32) -> f32
    "llvm.br"(%151)[^bb37] : (f32) -> ()
  ^bb37(%152: f32):  // 10 preds: ^bb2, ^bb4, ^bb6, ^bb7, ^bb9, ^bb10, ^bb11, ^bb20, ^bb26, ^bb36
    "llvm.return"(%152) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__fe_getround", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__fe_raise_inexact", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

