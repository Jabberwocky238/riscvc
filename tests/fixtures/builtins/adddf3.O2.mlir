"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__adddf3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f64, %arg1: f64):
    %0 = "llvm.mlir.constant"() <{value = -9218868437227405312 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = -9218868437227405311 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %3 = "llvm.mlir.constant"() <{value = 9218868437227405312 : i64}> : () -> i64
    %4 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = 52 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 4503599627370495 : i64}> : () -> i64
    %8 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = -11 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %12 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 36028797018963968 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %18 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 72057594037927936 : i64}> : () -> i64
    %20 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 2046 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %25 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 0x7FF8000000000000 : f64}> : () -> f64
    %27 = "llvm.mlir.constant"() <{value = 2251799813685248 : i64}> : () -> i64
    %28 = "llvm.bitcast"(%arg0) : (f64) -> i64
    %29 = "llvm.bitcast"(%arg1) : (f64) -> i64
    %30 = "llvm.intr.fabs"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %31 = "llvm.bitcast"(%30) : (f64) -> i64
    %32 = "llvm.intr.fabs"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %33 = "llvm.bitcast"(%32) : (f64) -> i64
    %34 = "llvm.add"(%31, %0) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %35 = "llvm.icmp"(%34, %1) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %36 = "llvm.add"(%33, %0) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %37 = "llvm.icmp"(%36, %1) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %38 = "llvm.select"(%35, %2, %37) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%38)[^bb1, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %39 = "llvm.icmp"(%31, %3) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%39)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %40 = "llvm.or"(%28, %27) : (i64, i64) -> i64
    %41 = "llvm.bitcast"(%40) : (i64) -> f64
    "llvm.br"(%41)[^bb37] : (f64) -> ()
  ^bb3:  // pred: ^bb1
    %42 = "llvm.icmp"(%33, %3) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%42)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %43 = "llvm.or"(%29, %27) : (i64, i64) -> i64
    %44 = "llvm.bitcast"(%43) : (i64) -> f64
    "llvm.br"(%44)[^bb37] : (f64) -> ()
  ^bb5:  // pred: ^bb3
    %45 = "llvm.icmp"(%31, %3) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%45)[^bb6, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb6:  // pred: ^bb5
    %46 = "llvm.xor"(%29, %28) : (i64, i64) -> i64
    %47 = "llvm.icmp"(%46, %11) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %48 = "llvm.select"(%47, %26, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    "llvm.br"(%48)[^bb37] : (f64) -> ()
  ^bb7:  // pred: ^bb5
    %49 = "llvm.icmp"(%33, %3) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%49, %arg1)[^bb37, ^bb8] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f64) -> ()
  ^bb8:  // pred: ^bb7
    %50 = "llvm.icmp"(%31, %4) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %51 = "llvm.icmp"(%33, %4) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%50)[^bb9, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    "llvm.cond_br"(%51, %arg1)[^bb10, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, f64) -> ()
  ^bb10:  // pred: ^bb9
    %52 = "llvm.and"(%29, %28) : (i64, i64) -> i64
    %53 = "llvm.bitcast"(%52) : (i64) -> f64
    "llvm.br"(%53)[^bb37] : (f64) -> ()
  ^bb11:  // pred: ^bb8
    "llvm.cond_br"(%51, %arg0)[^bb37, ^bb12] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f64) -> ()
  ^bb12:  // 2 preds: ^bb0, ^bb11
    %54 = "llvm.icmp"(%33, %31) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %55 = "llvm.select"(%54, %28, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %56 = "llvm.select"(%54, %29, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %57 = "llvm.lshr"(%56, %5) : (i64, i64) -> i64
    %58 = "llvm.trunc"(%57) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %59 = "llvm.and"(%58, %6) : (i32, i32) -> i32
    %60 = "llvm.lshr"(%55, %5) : (i64, i64) -> i64
    %61 = "llvm.trunc"(%60) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %62 = "llvm.and"(%61, %6) : (i32, i32) -> i32
    %63 = "llvm.and"(%56, %7) : (i64, i64) -> i64
    %64 = "llvm.and"(%55, %7) : (i64, i64) -> i64
    %65 = "llvm.icmp"(%59, %8) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%65, %63, %59)[^bb13, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i64, i32) -> ()
  ^bb13:  // pred: ^bb12
    %66 = "llvm.intr.ctlz"(%63) <{is_zero_poison = true}> : (i64) -> i64
    %67 = "llvm.trunc"(%66) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %68 = "llvm.add"(%67, %9) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %69 = "llvm.zext"(%68) <{nonNeg}> : (i32) -> i64
    %70 = "llvm.shl"(%63, %69) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %71 = "llvm.sub"(%10, %67) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%70, %71)[^bb14] : (i64, i32) -> ()
  ^bb14(%72: i64, %73: i32):  // 2 preds: ^bb12, ^bb13
    %74 = "llvm.icmp"(%62, %8) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%74, %64, %62)[^bb15, ^bb16] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i64, i32) -> ()
  ^bb15:  // pred: ^bb14
    %75 = "llvm.intr.ctlz"(%64) <{is_zero_poison = true}> : (i64) -> i64
    %76 = "llvm.trunc"(%75) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %77 = "llvm.add"(%76, %9) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %78 = "llvm.zext"(%77) <{nonNeg}> : (i32) -> i64
    %79 = "llvm.shl"(%64, %78) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %80 = "llvm.sub"(%10, %76) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%79, %80)[^bb16] : (i64, i32) -> ()
  ^bb16(%81: i64, %82: i32):  // 2 preds: ^bb14, ^bb15
    %83 = "llvm.and"(%56, %11) : (i64, i64) -> i64
    %84 = "llvm.xor"(%29, %28) : (i64, i64) -> i64
    %85 = "llvm.icmp"(%84, %12) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %86 = "llvm.shl"(%72, %13) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %87 = "llvm.or"(%86, %14) : (i64, i64) -> i64
    %88 = "llvm.shl"(%81, %13) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %89 = "llvm.or"(%88, %14) : (i64, i64) -> i64
    %90 = "llvm.sub"(%73, %82) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %91 = "llvm.icmp"(%73, %82) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%91, %89)[^bb19, ^bb17] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i64) -> ()
  ^bb17:  // pred: ^bb16
    %92 = "llvm.icmp"(%90, %15) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%92, %16)[^bb18, ^bb19] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i64) -> ()
  ^bb18:  // pred: ^bb17
    %93 = "llvm.sub"(%15, %90) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %94 = "llvm.zext"(%93) <{nonNeg}> : (i32) -> i64
    %95 = "llvm.shl"(%89, %94) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %96 = "llvm.icmp"(%95, %4) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %97 = "llvm.zext"(%90) <{nonNeg}> : (i32) -> i64
    %98 = "llvm.lshr"(%89, %97) : (i64, i64) -> i64
    %99 = "llvm.zext"(%96) : (i1) -> i64
    %100 = "llvm.or"(%98, %99) : (i64, i64) -> i64
    "llvm.br"(%100)[^bb19] : (i64) -> ()
  ^bb19(%101: i64):  // 3 preds: ^bb16, ^bb17, ^bb18
    "llvm.cond_br"(%85)[^bb23, ^bb20] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb20:  // pred: ^bb19
    %102 = "llvm.sub"(%87, %101) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %103 = "llvm.icmp"(%87, %101) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%103, %17)[^bb37, ^bb21] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f64) -> ()
  ^bb21:  // pred: ^bb20
    %104 = "llvm.icmp"(%102, %14) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%104, %102, %73)[^bb22, ^bb25] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i64, i32) -> ()
  ^bb22:  // pred: ^bb21
    %105 = "llvm.intr.ctlz"(%102) <{is_zero_poison = true}> : (i64) -> i64
    %106 = "llvm.trunc"(%105) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %107 = "llvm.add"(%106, %18) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %108 = "llvm.zext"(%107) <{nonNeg}> : (i32) -> i64
    %109 = "llvm.shl"(%102, %108) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %110 = "llvm.sub"(%73, %107) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%110, %109)[^bb27] : (i32, i64) -> ()
  ^bb23:  // pred: ^bb19
    %111 = "llvm.add"(%101, %87) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %112 = "llvm.and"(%111, %19) : (i64, i64) -> i64
    %113 = "llvm.icmp"(%112, %4) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%113, %111, %73)[^bb25, ^bb24] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i64, i32) -> ()
  ^bb24:  // pred: ^bb23
    %114 = "llvm.and"(%101, %16) : (i64, i64) -> i64
    %115 = "llvm.lshr"(%111, %16) : (i64, i64) -> i64
    %116 = "llvm.or"(%115, %114) : (i64, i64) -> i64
    %117 = "llvm.add"(%73, %20) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%116, %117)[^bb25] : (i64, i32) -> ()
  ^bb25(%118: i64, %119: i32):  // 3 preds: ^bb21, ^bb23, ^bb24
    %120 = "llvm.icmp"(%119, %21) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%120, %119, %118)[^bb26, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i64) -> ()
  ^bb26:  // pred: ^bb25
    %121 = "llvm.or"(%83, %3) <{isDisjoint}> : (i64, i64) -> i64
    %122 = "llvm.bitcast"(%121) : (i64) -> f64
    "llvm.br"(%122)[^bb37] : (f64) -> ()
  ^bb27(%123: i32, %124: i64):  // 2 preds: ^bb22, ^bb25
    %125 = "llvm.icmp"(%123, %20) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%125, %124, %123)[^bb28, ^bb29] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i64, i32) -> ()
  ^bb28:  // pred: ^bb27
    %126 = "llvm.sub"(%20, %123) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %127 = "llvm.add"(%123, %22) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %128 = "llvm.zext"(%127) <{nonNeg}> : (i32) -> i64
    %129 = "llvm.shl"(%124, %128) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %130 = "llvm.icmp"(%129, %4) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %131 = "llvm.zext"(%126) <{nonNeg}> : (i32) -> i64
    %132 = "llvm.lshr"(%124, %131) : (i64, i64) -> i64
    %133 = "llvm.zext"(%130) : (i1) -> i64
    %134 = "llvm.or"(%132, %133) : (i64, i64) -> i64
    "llvm.br"(%134, %8)[^bb29] : (i64, i32) -> ()
  ^bb29(%135: i64, %136: i32):  // 2 preds: ^bb27, ^bb28
    %137 = "llvm.trunc"(%135) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %138 = "llvm.and"(%137, %23) : (i32, i32) -> i32
    %139 = "llvm.lshr"(%135, %13) : (i64, i64) -> i64
    %140 = "llvm.and"(%139, %7) : (i64, i64) -> i64
    %141 = "llvm.zext"(%136) <{nonNeg}> : (i32) -> i64
    %142 = "llvm.shl"(%141, %5) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %143 = "llvm.or"(%142, %140) <{isDisjoint}> : (i64, i64) -> i64
    %144 = "llvm.or"(%143, %83) <{isDisjoint}> : (i64, i64) -> i64
    %145 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @__fe_getround, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> i32
    "llvm.switch"(%145, %144)[^bb34, ^bb30, ^bb32, ^bb33] <{case_operand_segments = array<i32: 0, 0, 0>, case_values = dense<[0, 1, 2]> : vector<3xi32>, operandSegmentSizes = array<i32: 1, 1, 0>}> : (i32, i64) -> ()
  ^bb30:  // pred: ^bb29
    %146 = "llvm.icmp"(%138, %25) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %147 = "llvm.zext"(%146) : (i1) -> i64
    %148 = "llvm.add"(%144, %147) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %149 = "llvm.icmp"(%138, %25) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%149, %148)[^bb31, ^bb34] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i64) -> ()
  ^bb31:  // pred: ^bb30
    %150 = "llvm.and"(%139, %16) : (i64, i64) -> i64
    %151 = "llvm.add"(%144, %150) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"(%151)[^bb35] : (i64) -> ()
  ^bb32:  // pred: ^bb29
    %152 = "llvm.icmp"(%83, %4) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %153 = "llvm.icmp"(%138, %8) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %154 = "llvm.select"(%152, %153, %24) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    %155 = "llvm.zext"(%154) : (i1) -> i64
    %156 = "llvm.add"(%144, %155) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.br"(%156)[^bb34] : (i64) -> ()
  ^bb33:  // pred: ^bb29
    %157 = "llvm.icmp"(%83, %4) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %158 = "llvm.icmp"(%138, %8) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %159 = "llvm.select"(%157, %158, %24) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    %160 = "llvm.zext"(%159) : (i1) -> i64
    %161 = "llvm.add"(%144, %160) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"(%161)[^bb34] : (i64) -> ()
  ^bb34(%162: i64):  // 4 preds: ^bb29, ^bb30, ^bb32, ^bb33
    %163 = "llvm.icmp"(%138, %8) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%163, %162, %162)[^bb36, ^bb35] <{operandSegmentSizes = array<i32: 1, 1, 1>}> : (i1, i64, i64) -> ()
  ^bb35(%164: i64):  // 2 preds: ^bb31, ^bb34
    %165 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @__fe_raise_inexact, fastmathFlags = #llvm.fastmath<none>, no_unwind, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> i32
    "llvm.br"(%164)[^bb36] : (i64) -> ()
  ^bb36(%166: i64):  // 2 preds: ^bb34, ^bb35
    %167 = "llvm.bitcast"(%166) : (i64) -> f64
    "llvm.br"(%167)[^bb37] : (f64) -> ()
  ^bb37(%168: f64):  // 10 preds: ^bb2, ^bb4, ^bb6, ^bb7, ^bb9, ^bb10, ^bb11, ^bb20, ^bb26, ^bb36
    "llvm.return"(%168) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__fe_getround", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__fe_raise_inexact", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

