"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__muldf3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: f64, %arg1: f64):
    %0 = "llvm.mlir.constant"() <{value = 52 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = 4503599627370495 : i64}> : () -> i64
    %4 = "llvm.mlir.constant"() <{value = -2047 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = -2046 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %7 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 9218868437227405312 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = 4503599627370496 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = -11 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 11 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = 4294965248 : i64}> : () -> i64
    %16 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %18 = "llvm.mlir.constant"() <{value = 1048576 : i64}> : () -> i64
    %19 = "llvm.mlir.constant"() <{value = -1023 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %22 = "llvm.mlir.constant"() <{value = 2046 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = 0x7FF8000000000000 : f64}> : () -> f64
    %26 = "llvm.mlir.constant"() <{value = 2251799813685248 : i64}> : () -> i64
    %27 = "llvm.bitcast"(%arg0) : (f64) -> i64
    %28 = "llvm.lshr"(%27, %0) : (i64, i64) -> i64
    %29 = "llvm.trunc"(%28) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %30 = "llvm.and"(%29, %1) : (i32, i32) -> i32
    %31 = "llvm.bitcast"(%arg1) : (f64) -> i64
    %32 = "llvm.lshr"(%31, %0) : (i64, i64) -> i64
    %33 = "llvm.trunc"(%32) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %34 = "llvm.and"(%33, %1) : (i32, i32) -> i32
    %35 = "llvm.xor"(%31, %27) : (i64, i64) -> i64
    %36 = "llvm.and"(%35, %2) : (i64, i64) -> i64
    %37 = "llvm.and"(%27, %3) : (i64, i64) -> i64
    %38 = "llvm.and"(%31, %3) : (i64, i64) -> i64
    %39 = "llvm.add"(%30, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %40 = "llvm.icmp"(%39, %5) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %41 = "llvm.add"(%34, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %42 = "llvm.icmp"(%41, %5) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %43 = "llvm.select"(%40, %6, %42) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%43, %37, %38, %7)[^bb1, ^bb19] <{operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i64, i64, i32) -> ()
  ^bb1:  // pred: ^bb0
    %44 = "llvm.intr.fabs"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %45 = "llvm.bitcast"(%44) : (f64) -> i64
    %46 = "llvm.intr.fabs"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %47 = "llvm.bitcast"(%46) : (f64) -> i64
    %48 = "llvm.icmp"(%45, %8) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%48)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %49 = "llvm.or"(%27, %26) : (i64, i64) -> i64
    %50 = "llvm.bitcast"(%49) : (i64) -> f64
    "llvm.br"(%50)[^bb34] : (f64) -> ()
  ^bb3:  // pred: ^bb1
    %51 = "llvm.icmp"(%47, %8) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%51)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %52 = "llvm.or"(%31, %26) : (i64, i64) -> i64
    %53 = "llvm.bitcast"(%52) : (i64) -> f64
    "llvm.br"(%53)[^bb34] : (f64) -> ()
  ^bb5:  // pred: ^bb3
    %54 = "llvm.icmp"(%45, %8) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%54)[^bb6, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb6:  // pred: ^bb5
    %55 = "llvm.icmp"(%47, %9) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%55, %25)[^bb34, ^bb7] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f64) -> ()
  ^bb7:  // pred: ^bb6
    %56 = "llvm.or"(%36, %8) <{isDisjoint}> : (i64, i64) -> i64
    %57 = "llvm.bitcast"(%56) : (i64) -> f64
    "llvm.br"(%57)[^bb34] : (f64) -> ()
  ^bb8:  // pred: ^bb5
    %58 = "llvm.icmp"(%47, %8) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %59 = "llvm.icmp"(%45, %9) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%58)[^bb9, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    "llvm.cond_br"(%59, %25)[^bb34, ^bb10] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f64) -> ()
  ^bb10:  // pred: ^bb9
    %60 = "llvm.or"(%36, %8) <{isDisjoint}> : (i64, i64) -> i64
    %61 = "llvm.bitcast"(%60) : (i64) -> f64
    "llvm.br"(%61)[^bb34] : (f64) -> ()
  ^bb11:  // pred: ^bb8
    "llvm.cond_br"(%59)[^bb12, ^bb13] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb12:  // pred: ^bb11
    %62 = "llvm.bitcast"(%36) : (i64) -> f64
    "llvm.br"(%62)[^bb34] : (f64) -> ()
  ^bb13:  // pred: ^bb11
    %63 = "llvm.icmp"(%47, %9) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%63)[^bb14, ^bb15] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb14:  // pred: ^bb13
    %64 = "llvm.bitcast"(%36) : (i64) -> f64
    "llvm.br"(%64)[^bb34] : (f64) -> ()
  ^bb15:  // pred: ^bb13
    %65 = "llvm.icmp"(%45, %10) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%65, %37, %7)[^bb16, ^bb17] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i64, i32) -> ()
  ^bb16:  // pred: ^bb15
    %66 = "llvm.intr.ctlz"(%37) <{is_zero_poison = true}> : (i64) -> i64
    %67 = "llvm.trunc"(%66) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %68 = "llvm.add"(%67, %11) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %69 = "llvm.zext"(%68) <{nonNeg}> : (i32) -> i64
    %70 = "llvm.shl"(%37, %69) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %71 = "llvm.sub"(%12, %67) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%70, %71)[^bb17] : (i64, i32) -> ()
  ^bb17(%72: i64, %73: i32):  // 2 preds: ^bb15, ^bb16
    %74 = "llvm.icmp"(%47, %10) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%74, %72, %38, %73)[^bb18, ^bb19] <{operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i64, i64, i32) -> ()
  ^bb18:  // pred: ^bb17
    %75 = "llvm.intr.ctlz"(%38) <{is_zero_poison = true}> : (i64) -> i64
    %76 = "llvm.trunc"(%75) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %77 = "llvm.add"(%76, %11) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %78 = "llvm.zext"(%77) <{nonNeg}> : (i32) -> i64
    %79 = "llvm.shl"(%38, %78) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %80 = "llvm.sub"(%73, %76) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %81 = "llvm.add"(%80, %12) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%72, %79, %81)[^bb19] : (i64, i64, i32) -> ()
  ^bb19(%82: i64, %83: i64, %84: i32):  // 3 preds: ^bb0, ^bb17, ^bb18
    %85 = "llvm.shl"(%83, %13) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %86 = "llvm.and"(%82, %14) : (i64, i64) -> i64
    %87 = "llvm.and"(%85, %15) : (i64, i64) -> i64
    %88 = "llvm.mul"(%87, %86) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %89 = "llvm.lshr"(%85, %16) : (i64, i64) -> i64
    %90 = "llvm.or"(%89, %17) : (i64, i64) -> i64
    %91 = "llvm.mul"(%90, %86) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %92 = "llvm.lshr"(%82, %16) : (i64, i64) -> i64
    %93 = "llvm.or"(%92, %18) : (i64, i64) -> i64
    %94 = "llvm.mul"(%87, %93) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %95 = "llvm.mul"(%90, %93) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %96 = "llvm.and"(%88, %15) : (i64, i64) -> i64
    %97 = "llvm.lshr"(%88, %16) : (i64, i64) -> i64
    %98 = "llvm.and"(%91, %14) : (i64, i64) -> i64
    %99 = "llvm.and"(%94, %15) : (i64, i64) -> i64
    %100 = "llvm.add"(%99, %97) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %101 = "llvm.add"(%100, %98) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %102 = "llvm.shl"(%101, %16) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %103 = "llvm.or"(%102, %96) <{isDisjoint}> : (i64, i64) -> i64
    %104 = "llvm.lshr"(%91, %16) : (i64, i64) -> i64
    %105 = "llvm.lshr"(%94, %16) : (i64, i64) -> i64
    %106 = "llvm.lshr"(%101, %16) : (i64, i64) -> i64
    %107 = "llvm.add"(%105, %95) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %108 = "llvm.add"(%107, %104) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %109 = "llvm.add"(%108, %106) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %110 = "llvm.add"(%30, %19) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %111 = "llvm.add"(%110, %34) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %112 = "llvm.add"(%111, %84) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %113 = "llvm.and"(%109, %10) : (i64, i64) -> i64
    %114 = "llvm.icmp"(%113, %9) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%114)[^bb21, ^bb20] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb20:  // pred: ^bb19
    %115 = "llvm.add"(%112, %20) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%109, %103, %115)[^bb22] : (i64, i64, i32) -> ()
  ^bb21:  // pred: ^bb19
    %116 = "llvm.intr.fshl"(%109, %102, %21) : (i64, i64, i64) -> i64
    %117 = "llvm.shl"(%103, %21) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"(%116, %117, %112)[^bb22] : (i64, i64, i32) -> ()
  ^bb22(%118: i64, %119: i64, %120: i32):  // 2 preds: ^bb20, ^bb21
    %121 = "llvm.icmp"(%120, %22) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%121)[^bb23, ^bb24] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb23:  // pred: ^bb22
    %122 = "llvm.or"(%36, %8) <{isDisjoint}> : (i64, i64) -> i64
    %123 = "llvm.bitcast"(%122) : (i64) -> f64
    "llvm.br"(%123)[^bb34] : (f64) -> ()
  ^bb24:  // pred: ^bb22
    %124 = "llvm.icmp"(%120, %20) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%124)[^bb25, ^bb28] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb25:  // pred: ^bb24
    %125 = "llvm.sub"(%20, %120) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %126 = "llvm.icmp"(%125, %23) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%126)[^bb26, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb26:  // pred: ^bb25
    %127 = "llvm.add"(%120, %24) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %128 = "llvm.zext"(%127) <{nonNeg}> : (i32) -> i64
    %129 = "llvm.shl"(%119, %128) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %130 = "llvm.icmp"(%129, %9) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %131 = "llvm.shl"(%118, %128) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %132 = "llvm.zext"(%125) <{nonNeg}> : (i32) -> i64
    %133 = "llvm.lshr"(%119, %132) : (i64, i64) -> i64
    %134 = "llvm.or"(%131, %133) : (i64, i64) -> i64
    %135 = "llvm.zext"(%130) : (i1) -> i64
    %136 = "llvm.or"(%134, %135) : (i64, i64) -> i64
    %137 = "llvm.lshr"(%118, %132) : (i64, i64) -> i64
    "llvm.br"(%137, %136)[^bb29] : (i64, i64) -> ()
  ^bb27:  // pred: ^bb25
    %138 = "llvm.bitcast"(%36) : (i64) -> f64
    "llvm.br"(%138)[^bb34] : (f64) -> ()
  ^bb28:  // pred: ^bb24
    %139 = "llvm.and"(%118, %3) : (i64, i64) -> i64
    %140 = "llvm.zext"(%120) <{nonNeg}> : (i32) -> i64
    %141 = "llvm.shl"(%140, %0) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %142 = "llvm.or"(%141, %139) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.br"(%142, %119)[^bb29] : (i64, i64) -> ()
  ^bb29(%143: i64, %144: i64):  // 2 preds: ^bb26, ^bb28
    %145 = "llvm.or"(%143, %36) : (i64, i64) -> i64
    %146 = "llvm.icmp"(%144, %2) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%146)[^bb30, ^bb31] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb30:  // pred: ^bb29
    %147 = "llvm.add"(%145, %21) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"(%147)[^bb33] : (i64) -> ()
  ^bb31:  // pred: ^bb29
    %148 = "llvm.icmp"(%144, %2) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%148, %145)[^bb32, ^bb33] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i64) -> ()
  ^bb32:  // pred: ^bb31
    %149 = "llvm.and"(%143, %21) : (i64, i64) -> i64
    %150 = "llvm.add"(%145, %149) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"(%150)[^bb33] : (i64) -> ()
  ^bb33(%151: i64):  // 3 preds: ^bb30, ^bb31, ^bb32
    %152 = "llvm.bitcast"(%151) : (i64) -> f64
    "llvm.br"(%152)[^bb34] : (f64) -> ()
  ^bb34(%153: f64):  // 11 preds: ^bb2, ^bb4, ^bb6, ^bb7, ^bb9, ^bb10, ^bb12, ^bb14, ^bb23, ^bb27, ^bb33
    "llvm.return"(%153) : (f64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

