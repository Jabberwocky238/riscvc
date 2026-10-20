"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64, llvm.noalias, llvm.nocapture, llvm.sret = !llvm.struct<(f64, f64)>, llvm.writeonly}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<void (ptr, f64, f64, f64, f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = write, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__divdc3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: f64, %arg2: f64, %arg3: f64, %arg4: f64):
    %0 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %1 = "llvm.mlir.constant"() <{value = 52 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = 0xFFF0000000000000 : f64}> : () -> f64
    %4 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = -1023 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = -11 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = -1012 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 0x7FF0000000000000 : f64}> : () -> f64
    %10 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %12 = "llvm.mlir.constant"() <{value = 4503599627370495 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = -4503599627370497 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %16 = "llvm.mlir.constant"() <{value = 2046 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 4503599627370496 : i64}> : () -> i64
    %19 = "llvm.mlir.constant"() <{value = -1021 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 1022 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 8.9884656743115795E+307 : f64}> : () -> f64
    %22 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %23 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %24 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %25 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %26 = "llvm.intr.fabs"(%arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %27 = "llvm.intr.fabs"(%arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %28 = "llvm.fcmp"(%arg3, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %29 = "llvm.fcmp"(%26, %27) <{fastmathFlags = #llvm.fastmath<none>, predicate = 4 : i64}> : (f64, f64) -> i1
    %30 = "llvm.or"(%28, %29) : (i1, i1) -> i1
    %31 = "llvm.select"(%30, %27, %26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %32 = "llvm.bitcast"(%31) : (f64) -> i64
    %33 = "llvm.lshr"(%32, %1) : (i64, i64) -> i64
    %34 = "llvm.trunc"(%33) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %35 = "llvm.icmp"(%33, %2) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%35, %31)[^bb5, ^bb1] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f64) -> ()
  ^bb1:  // pred: ^bb0
    %36 = "llvm.fcmp"(%31, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    "llvm.cond_br"(%36, %3)[^bb5, ^bb2] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f64) -> ()
  ^bb2:  // pred: ^bb1
    %37 = "llvm.icmp"(%33, %4) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%37)[^bb4, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    %38 = "llvm.add"(%34, %5) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %39 = "llvm.sitofp"(%38) : (i32) -> f64
    "llvm.br"(%39)[^bb5] : (f64) -> ()
  ^bb4:  // pred: ^bb2
    %40 = "llvm.intr.ctlz"(%32) <{is_zero_poison = true}> : (i64) -> i64
    %41 = "llvm.trunc"(%40) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %42 = "llvm.add"(%41, %6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %43 = "llvm.zext"(%42) <{nonNeg}> : (i32) -> i64
    %44 = "llvm.shl"(%32, %43) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %45 = "llvm.lshr"(%44, %1) : (i64, i64) -> i64
    %46 = "llvm.trunc"(%45) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %47 = "llvm.and"(%46, %7) : (i32, i32) -> i32
    %48 = "llvm.sub"(%47, %41) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %49 = "llvm.add"(%48, %8) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %50 = "llvm.sitofp"(%49) : (i32) -> f64
    "llvm.br"(%50)[^bb5] : (f64) -> ()
  ^bb5(%51: f64):  // 4 preds: ^bb0, ^bb1, ^bb3, ^bb4
    %52 = "llvm.intr.fabs"(%51) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %53 = "llvm.fcmp"(%52, %9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 8 : i64}> : (f64, f64) -> i1
    "llvm.cond_br"(%53, %arg3, %arg4, %10)[^bb22, ^bb6] <{operandSegmentSizes = array<i32: 1, 3, 0>}> : (i1, f64, f64, i32) -> ()
  ^bb6:  // pred: ^bb5
    %54 = "llvm.fptosi"(%51) : (f64) -> i32
    %55 = "llvm.sub"(%10, %54) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %56 = "llvm.bitcast"(%arg3) : (f64) -> i64
    %57 = "llvm.lshr"(%56, %1) : (i64, i64) -> i64
    %58 = "llvm.trunc"(%57) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %59 = "llvm.and"(%58, %7) : (i32, i32) -> i32
    %60 = "llvm.fcmp"(%arg3, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %61 = "llvm.icmp"(%59, %7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %62 = "llvm.select"(%60, %11, %61) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%62, %arg3)[^bb14, ^bb7] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f64) -> ()
  ^bb7:  // pred: ^bb6
    %63 = "llvm.and"(%56, %12) : (i64, i64) -> i64
    %64 = "llvm.icmp"(%59, %10) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%64, %63, %59)[^bb8, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i64, i32) -> ()
  ^bb8:  // pred: ^bb7
    %65 = "llvm.intr.ctlz"(%63) <{is_zero_poison = true}> : (i64) -> i64
    %66 = "llvm.trunc"(%65) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %67 = "llvm.add"(%66, %6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %68 = "llvm.zext"(%67) <{nonNeg}> : (i32) -> i64
    %69 = "llvm.shl"(%63, %68) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %70 = "llvm.sub"(%13, %66) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %71 = "llvm.and"(%69, %14) : (i64, i64) -> i64
    "llvm.br"(%71, %70)[^bb9] : (i64, i32) -> ()
  ^bb9(%72: i64, %73: i32):  // 2 preds: ^bb7, ^bb8
    %74 = "llvm.intr.sadd.sat"(%73, %55) : (i32, i32) -> i32
    %75 = "llvm.and"(%56, %15) : (i64, i64) -> i64
    %76 = "llvm.icmp"(%74, %16) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%76)[^bb10, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb10:  // pred: ^bb9
    %77 = "llvm.intr.copysign"(%21, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %78 = "llvm.fmul"(%77, %22) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%78)[^bb14] : (f64) -> ()
  ^bb11:  // pred: ^bb9
    %79 = "llvm.icmp"(%74, %17) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%79)[^bb12, ^bb13] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb12:  // pred: ^bb11
    %80 = "llvm.or"(%72, %75) : (i64, i64) -> i64
    %81 = "llvm.or"(%80, %18) <{isDisjoint}> : (i64, i64) -> i64
    %82 = "llvm.bitcast"(%81) : (i64) -> f64
    %83 = "llvm.intr.smax"(%74, %19) : (i32, i32) -> i32
    %84 = "llvm.add"(%83, %20) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %85 = "llvm.zext"(%84) <{nonNeg}> : (i32) -> i64
    %86 = "llvm.shl"(%85, %1) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %87 = "llvm.bitcast"(%86) : (i64) -> f64
    %88 = "llvm.fmul"(%82, %87) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%88)[^bb14] : (f64) -> ()
  ^bb13:  // pred: ^bb11
    %89 = "llvm.zext"(%74) <{nonNeg}> : (i32) -> i64
    %90 = "llvm.shl"(%89, %1) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %91 = "llvm.or"(%90, %75) <{isDisjoint}> : (i64, i64) -> i64
    %92 = "llvm.or"(%91, %72) : (i64, i64) -> i64
    %93 = "llvm.bitcast"(%92) : (i64) -> f64
    "llvm.br"(%93)[^bb14] : (f64) -> ()
  ^bb14(%94: f64):  // 4 preds: ^bb6, ^bb10, ^bb12, ^bb13
    %95 = "llvm.bitcast"(%arg4) : (f64) -> i64
    %96 = "llvm.lshr"(%95, %1) : (i64, i64) -> i64
    %97 = "llvm.trunc"(%96) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %98 = "llvm.and"(%97, %7) : (i32, i32) -> i32
    %99 = "llvm.fcmp"(%arg4, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %100 = "llvm.icmp"(%98, %7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %101 = "llvm.select"(%99, %11, %100) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%101, %94, %arg4, %54)[^bb22, ^bb15] <{operandSegmentSizes = array<i32: 1, 3, 0>}> : (i1, f64, f64, i32) -> ()
  ^bb15:  // pred: ^bb14
    %102 = "llvm.and"(%95, %12) : (i64, i64) -> i64
    %103 = "llvm.icmp"(%98, %10) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%103, %102, %98)[^bb16, ^bb17] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i64, i32) -> ()
  ^bb16:  // pred: ^bb15
    %104 = "llvm.intr.ctlz"(%102) <{is_zero_poison = true}> : (i64) -> i64
    %105 = "llvm.trunc"(%104) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %106 = "llvm.add"(%105, %6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %107 = "llvm.zext"(%106) <{nonNeg}> : (i32) -> i64
    %108 = "llvm.shl"(%102, %107) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %109 = "llvm.sub"(%13, %105) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %110 = "llvm.and"(%108, %14) : (i64, i64) -> i64
    "llvm.br"(%110, %109)[^bb17] : (i64, i32) -> ()
  ^bb17(%111: i64, %112: i32):  // 2 preds: ^bb15, ^bb16
    %113 = "llvm.intr.sadd.sat"(%112, %55) : (i32, i32) -> i32
    %114 = "llvm.and"(%95, %15) : (i64, i64) -> i64
    %115 = "llvm.icmp"(%113, %16) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%115)[^bb18, ^bb19] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb18:  // pred: ^bb17
    %116 = "llvm.intr.copysign"(%21, %arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %117 = "llvm.fmul"(%116, %22) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%94, %117, %54)[^bb22] : (f64, f64, i32) -> ()
  ^bb19:  // pred: ^bb17
    %118 = "llvm.icmp"(%113, %17) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%118)[^bb20, ^bb21] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb20:  // pred: ^bb19
    %119 = "llvm.or"(%111, %114) : (i64, i64) -> i64
    %120 = "llvm.or"(%119, %18) <{isDisjoint}> : (i64, i64) -> i64
    %121 = "llvm.bitcast"(%120) : (i64) -> f64
    %122 = "llvm.intr.smax"(%113, %19) : (i32, i32) -> i32
    %123 = "llvm.add"(%122, %20) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %124 = "llvm.zext"(%123) <{nonNeg}> : (i32) -> i64
    %125 = "llvm.shl"(%124, %1) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %126 = "llvm.bitcast"(%125) : (i64) -> f64
    %127 = "llvm.fmul"(%121, %126) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%94, %127, %54)[^bb22] : (f64, f64, i32) -> ()
  ^bb21:  // pred: ^bb19
    %128 = "llvm.zext"(%113) <{nonNeg}> : (i32) -> i64
    %129 = "llvm.shl"(%128, %1) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %130 = "llvm.or"(%129, %114) <{isDisjoint}> : (i64, i64) -> i64
    %131 = "llvm.or"(%130, %111) : (i64, i64) -> i64
    %132 = "llvm.bitcast"(%131) : (i64) -> f64
    "llvm.br"(%94, %132, %54)[^bb22] : (f64, f64, i32) -> ()
  ^bb22(%133: f64, %134: f64, %135: i32):  // 5 preds: ^bb5, ^bb14, ^bb18, ^bb20, ^bb21
    %136 = "llvm.fmul"(%134, %134) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %137 = "llvm.intr.fmuladd"(%133, %133, %136) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %138 = "llvm.fmul"(%arg2, %134) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %139 = "llvm.intr.fmuladd"(%arg1, %133, %138) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %140 = "llvm.fdiv"(%139, %137) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %141 = "llvm.sub"(%10, %135) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %142 = "llvm.bitcast"(%140) : (f64) -> i64
    %143 = "llvm.lshr"(%142, %1) : (i64, i64) -> i64
    %144 = "llvm.trunc"(%143) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %145 = "llvm.and"(%144, %7) : (i32, i32) -> i32
    %146 = "llvm.fcmp"(%140, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %147 = "llvm.icmp"(%145, %7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %148 = "llvm.select"(%146, %11, %147) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%148, %140)[^bb30, ^bb23] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f64) -> ()
  ^bb23:  // pred: ^bb22
    %149 = "llvm.and"(%142, %12) : (i64, i64) -> i64
    %150 = "llvm.icmp"(%145, %10) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%150, %149, %145)[^bb24, ^bb25] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i64, i32) -> ()
  ^bb24:  // pred: ^bb23
    %151 = "llvm.intr.ctlz"(%149) <{is_zero_poison = true}> : (i64) -> i64
    %152 = "llvm.trunc"(%151) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %153 = "llvm.add"(%152, %6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %154 = "llvm.zext"(%153) <{nonNeg}> : (i32) -> i64
    %155 = "llvm.shl"(%149, %154) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %156 = "llvm.sub"(%13, %152) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %157 = "llvm.and"(%155, %14) : (i64, i64) -> i64
    "llvm.br"(%157, %156)[^bb25] : (i64, i32) -> ()
  ^bb25(%158: i64, %159: i32):  // 2 preds: ^bb23, ^bb24
    %160 = "llvm.intr.sadd.sat"(%159, %141) : (i32, i32) -> i32
    %161 = "llvm.and"(%142, %15) : (i64, i64) -> i64
    %162 = "llvm.icmp"(%160, %16) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%162)[^bb26, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb26:  // pred: ^bb25
    %163 = "llvm.intr.copysign"(%21, %140) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %164 = "llvm.fmul"(%163, %22) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%164)[^bb30] : (f64) -> ()
  ^bb27:  // pred: ^bb25
    %165 = "llvm.icmp"(%160, %17) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%165)[^bb28, ^bb29] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb28:  // pred: ^bb27
    %166 = "llvm.or"(%158, %161) : (i64, i64) -> i64
    %167 = "llvm.or"(%166, %18) <{isDisjoint}> : (i64, i64) -> i64
    %168 = "llvm.bitcast"(%167) : (i64) -> f64
    %169 = "llvm.intr.smax"(%160, %19) : (i32, i32) -> i32
    %170 = "llvm.add"(%169, %20) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %171 = "llvm.zext"(%170) <{nonNeg}> : (i32) -> i64
    %172 = "llvm.shl"(%171, %1) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %173 = "llvm.bitcast"(%172) : (i64) -> f64
    %174 = "llvm.fmul"(%168, %173) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%174)[^bb30] : (f64) -> ()
  ^bb29:  // pred: ^bb27
    %175 = "llvm.zext"(%160) <{nonNeg}> : (i32) -> i64
    %176 = "llvm.shl"(%175, %1) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %177 = "llvm.or"(%176, %161) <{isDisjoint}> : (i64, i64) -> i64
    %178 = "llvm.or"(%177, %158) : (i64, i64) -> i64
    %179 = "llvm.bitcast"(%178) : (i64) -> f64
    "llvm.br"(%179)[^bb30] : (f64) -> ()
  ^bb30(%180: f64):  // 4 preds: ^bb22, ^bb26, ^bb28, ^bb29
    %181 = "llvm.fneg"(%134) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %182 = "llvm.fmul"(%arg1, %181) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %183 = "llvm.intr.fmuladd"(%arg2, %133, %182) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %184 = "llvm.fdiv"(%183, %137) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %185 = "llvm.bitcast"(%184) : (f64) -> i64
    %186 = "llvm.lshr"(%185, %1) : (i64, i64) -> i64
    %187 = "llvm.trunc"(%186) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %188 = "llvm.and"(%187, %7) : (i32, i32) -> i32
    %189 = "llvm.fcmp"(%184, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %190 = "llvm.icmp"(%188, %7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %191 = "llvm.select"(%189, %11, %190) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%191, %184)[^bb38, ^bb31] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f64) -> ()
  ^bb31:  // pred: ^bb30
    %192 = "llvm.and"(%185, %12) : (i64, i64) -> i64
    %193 = "llvm.icmp"(%188, %10) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%193, %192, %188)[^bb32, ^bb33] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i64, i32) -> ()
  ^bb32:  // pred: ^bb31
    %194 = "llvm.intr.ctlz"(%192) <{is_zero_poison = true}> : (i64) -> i64
    %195 = "llvm.trunc"(%194) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %196 = "llvm.add"(%195, %6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %197 = "llvm.zext"(%196) <{nonNeg}> : (i32) -> i64
    %198 = "llvm.shl"(%192, %197) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %199 = "llvm.sub"(%13, %195) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %200 = "llvm.and"(%198, %14) : (i64, i64) -> i64
    "llvm.br"(%200, %199)[^bb33] : (i64, i32) -> ()
  ^bb33(%201: i64, %202: i32):  // 2 preds: ^bb31, ^bb32
    %203 = "llvm.intr.sadd.sat"(%202, %141) : (i32, i32) -> i32
    %204 = "llvm.and"(%185, %15) : (i64, i64) -> i64
    %205 = "llvm.icmp"(%203, %16) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%205)[^bb34, ^bb35] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb34:  // pred: ^bb33
    %206 = "llvm.intr.copysign"(%21, %184) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %207 = "llvm.fmul"(%206, %22) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%207, %180)[^bb46] : (f64, f64) -> ()
  ^bb35:  // pred: ^bb33
    %208 = "llvm.icmp"(%203, %17) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%208)[^bb36, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb36:  // pred: ^bb35
    %209 = "llvm.or"(%201, %204) : (i64, i64) -> i64
    %210 = "llvm.or"(%209, %18) <{isDisjoint}> : (i64, i64) -> i64
    %211 = "llvm.bitcast"(%210) : (i64) -> f64
    %212 = "llvm.intr.smax"(%203, %19) : (i32, i32) -> i32
    %213 = "llvm.add"(%212, %20) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %214 = "llvm.zext"(%213) <{nonNeg}> : (i32) -> i64
    %215 = "llvm.shl"(%214, %1) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %216 = "llvm.bitcast"(%215) : (i64) -> f64
    %217 = "llvm.fmul"(%211, %216) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%217)[^bb38] : (f64) -> ()
  ^bb37:  // pred: ^bb35
    %218 = "llvm.zext"(%203) <{nonNeg}> : (i32) -> i64
    %219 = "llvm.shl"(%218, %1) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %220 = "llvm.or"(%219, %204) <{isDisjoint}> : (i64, i64) -> i64
    %221 = "llvm.or"(%220, %201) : (i64, i64) -> i64
    %222 = "llvm.bitcast"(%221) : (i64) -> f64
    "llvm.br"(%222)[^bb38] : (f64) -> ()
  ^bb38(%223: f64):  // 3 preds: ^bb30, ^bb36, ^bb37
    %224 = "llvm.fcmp"(%180, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %225 = "llvm.fcmp"(%223, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %226 = "llvm.select"(%224, %225, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%226, %223, %180)[^bb39, ^bb46] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, f64, f64) -> ()
  ^bb39:  // pred: ^bb38
    %227 = "llvm.fcmp"(%137, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    "llvm.cond_br"(%227)[^bb40, ^bb42] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb40:  // pred: ^bb39
    %228 = "llvm.fcmp"(%arg1, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %229 = "llvm.fcmp"(%arg2, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f64, f64) -> i1
    %230 = "llvm.and"(%228, %229) : (i1, i1) -> i1
    "llvm.cond_br"(%230)[^bb42, ^bb41] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb41:  // pred: ^bb40
    %231 = "llvm.intr.copysign"(%9, %133) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %232 = "llvm.fmul"(%arg1, %231) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %233 = "llvm.fmul"(%arg2, %231) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%233, %232)[^bb46] : (f64, f64) -> ()
  ^bb42:  // 2 preds: ^bb39, ^bb40
    %234 = "llvm.intr.fabs"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %235 = "llvm.fcmp"(%234, %9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 13 : i64}> : (f64, f64) -> i1
    %236 = "llvm.intr.fabs"(%arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %237 = "llvm.fcmp"(%236, %9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 13 : i64}> : (f64, f64) -> i1
    %238 = "llvm.and"(%235, %237) : (i1, i1) -> i1
    %239 = "llvm.intr.fabs"(%133) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %240 = "llvm.fcmp"(%239, %9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 8 : i64}> : (f64, f64) -> i1
    %241 = "llvm.select"(%238, %11, %240) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    %242 = "llvm.intr.fabs"(%134) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %243 = "llvm.fcmp"(%242, %9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 8 : i64}> : (f64, f64) -> i1
    %244 = "llvm.select"(%241, %11, %243) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%244)[^bb44, ^bb43] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb43:  // pred: ^bb42
    %245 = "llvm.select"(%235, %0, %24) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %246 = "llvm.intr.copysign"(%245, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %247 = "llvm.select"(%237, %0, %24) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %248 = "llvm.intr.copysign"(%247, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %249 = "llvm.fmul"(%248, %134) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %250 = "llvm.intr.fmuladd"(%246, %133, %249) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %251 = "llvm.fmul"(%250, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %252 = "llvm.fmul"(%246, %181) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %253 = "llvm.intr.fmuladd"(%248, %133, %252) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %254 = "llvm.fmul"(%253, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%254, %251)[^bb46] : (f64, f64) -> ()
  ^bb44:  // pred: ^bb42
    %255 = "llvm.fcmp"(%51, %9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 13 : i64}> : (f64, f64) -> i1
    %256 = "llvm.fcmp"(%234, %9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 8 : i64}> : (f64, f64) -> i1
    %257 = "llvm.or"(%256, %255) : (i1, i1) -> i1
    %258 = "llvm.fcmp"(%236, %9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 8 : i64}> : (f64, f64) -> i1
    %259 = "llvm.or"(%258, %257) : (i1, i1) -> i1
    "llvm.cond_br"(%259, %223, %180)[^bb46, ^bb45] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, f64, f64) -> ()
  ^bb45:  // pred: ^bb44
    %260 = "llvm.fcmp"(%239, %9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %261 = "llvm.select"(%260, %24, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %262 = "llvm.intr.copysign"(%261, %133) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %263 = "llvm.fcmp"(%242, %9) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %264 = "llvm.select"(%263, %24, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %265 = "llvm.intr.copysign"(%264, %134) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %266 = "llvm.fmul"(%arg2, %265) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %267 = "llvm.intr.fmuladd"(%arg1, %262, %266) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %268 = "llvm.fmul"(%267, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %269 = "llvm.fneg"(%265) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %270 = "llvm.fmul"(%arg1, %269) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %271 = "llvm.intr.fmuladd"(%arg2, %262, %270) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %272 = "llvm.fmul"(%271, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.br"(%272, %268)[^bb46] : (f64, f64) -> ()
  ^bb46(%273: f64, %274: f64):  // 6 preds: ^bb34, ^bb38, ^bb41, ^bb43, ^bb44, ^bb45
    %275 = "llvm.getelementptr"(%arg0, %25) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%274, %arg0) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.store"(%273, %275) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

