"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__divsf3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 8388607 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = -255 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = -254 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %7 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 2139095040 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 8388608 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = -9 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 127 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 1963258675 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 31 : i64}> : () -> i64
    %18 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %19 = "llvm.mlir.constant"() <{value = -12 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 16777216 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 126 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = 254 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = -23 : i32}> : () -> i32
    %27 = "llvm.mlir.constant"() <{value = 0x7FC00000 : f32}> : () -> f32
    %28 = "llvm.mlir.constant"() <{value = 4194304 : i32}> : () -> i32
    %29 = "llvm.bitcast"(%arg0) : (f32) -> i32
    %30 = "llvm.lshr"(%29, %0) : (i32, i32) -> i32
    %31 = "llvm.and"(%30, %1) : (i32, i32) -> i32
    %32 = "llvm.bitcast"(%arg1) : (f32) -> i32
    %33 = "llvm.lshr"(%32, %0) : (i32, i32) -> i32
    %34 = "llvm.and"(%33, %1) : (i32, i32) -> i32
    %35 = "llvm.xor"(%32, %29) : (i32, i32) -> i32
    %36 = "llvm.and"(%35, %2) : (i32, i32) -> i32
    %37 = "llvm.and"(%29, %3) : (i32, i32) -> i32
    %38 = "llvm.and"(%32, %3) : (i32, i32) -> i32
    %39 = "llvm.add"(%31, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %40 = "llvm.icmp"(%39, %5) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %41 = "llvm.add"(%34, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %42 = "llvm.icmp"(%41, %5) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %43 = "llvm.select"(%40, %6, %42) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%43, %38, %37, %7)[^bb1, ^bb18] <{operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i32, i32, i32) -> ()
  ^bb1:  // pred: ^bb0
    %44 = "llvm.intr.fabs"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %45 = "llvm.bitcast"(%44) : (f32) -> i32
    %46 = "llvm.intr.fabs"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %47 = "llvm.bitcast"(%46) : (f32) -> i32
    %48 = "llvm.icmp"(%45, %8) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%48)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %49 = "llvm.or"(%29, %28) : (i32, i32) -> i32
    %50 = "llvm.bitcast"(%49) : (i32) -> f32
    "llvm.br"(%50)[^bb29] : (f32) -> ()
  ^bb3:  // pred: ^bb1
    %51 = "llvm.icmp"(%47, %8) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%51)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %52 = "llvm.or"(%32, %28) : (i32, i32) -> i32
    %53 = "llvm.bitcast"(%52) : (i32) -> f32
    "llvm.br"(%53)[^bb29] : (f32) -> ()
  ^bb5:  // pred: ^bb3
    %54 = "llvm.icmp"(%45, %8) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %55 = "llvm.icmp"(%47, %8) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%54)[^bb6, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb6:  // pred: ^bb5
    "llvm.cond_br"(%55, %27)[^bb29, ^bb7] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f32) -> ()
  ^bb7:  // pred: ^bb6
    %56 = "llvm.or"(%36, %8) <{isDisjoint}> : (i32, i32) -> i32
    %57 = "llvm.bitcast"(%56) : (i32) -> f32
    "llvm.br"(%57)[^bb29] : (f32) -> ()
  ^bb8:  // pred: ^bb5
    "llvm.cond_br"(%55)[^bb9, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    %58 = "llvm.bitcast"(%36) : (i32) -> f32
    "llvm.br"(%58)[^bb29] : (f32) -> ()
  ^bb10:  // pred: ^bb8
    %59 = "llvm.icmp"(%45, %7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %60 = "llvm.icmp"(%47, %7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%59)[^bb11, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    %61 = "llvm.bitcast"(%36) : (i32) -> f32
    %62 = "llvm.select"(%60, %27, %61) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.br"(%62)[^bb29] : (f32) -> ()
  ^bb12:  // pred: ^bb10
    "llvm.cond_br"(%60)[^bb13, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb13:  // pred: ^bb12
    %63 = "llvm.or"(%36, %8) <{isDisjoint}> : (i32, i32) -> i32
    %64 = "llvm.bitcast"(%63) : (i32) -> f32
    "llvm.br"(%64)[^bb29] : (f32) -> ()
  ^bb14:  // pred: ^bb12
    %65 = "llvm.icmp"(%45, %9) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%65, %37, %7)[^bb15, ^bb16] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb15:  // pred: ^bb14
    %66 = "llvm.intr.ctlz"(%37) <{is_zero_poison = true}> : (i32) -> i32
    %67 = "llvm.add"(%66, %10) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %68 = "llvm.shl"(%37, %67) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %69 = "llvm.sub"(%11, %66) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%68, %69)[^bb16] : (i32, i32) -> ()
  ^bb16(%70: i32, %71: i32):  // 2 preds: ^bb14, ^bb15
    %72 = "llvm.icmp"(%47, %9) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%72, %38, %70, %71)[^bb17, ^bb18] <{operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i32, i32, i32) -> ()
  ^bb17:  // pred: ^bb16
    %73 = "llvm.intr.ctlz"(%38) <{is_zero_poison = true}> : (i32) -> i32
    %74 = "llvm.add"(%73, %10) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %75 = "llvm.shl"(%38, %74) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %76 = "llvm.add"(%73, %12) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %77 = "llvm.add"(%76, %71) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%75, %70, %77)[^bb18] : (i32, i32, i32) -> ()
  ^bb18(%78: i32, %79: i32, %80: i32):  // 3 preds: ^bb0, ^bb16, ^bb17
    %81 = "llvm.or"(%79, %9) : (i32, i32) -> i32
    %82 = "llvm.or"(%78, %9) : (i32, i32) -> i32
    %83 = "llvm.sub"(%31, %34) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %84 = "llvm.add"(%80, %83) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %85 = "llvm.add"(%84, %13) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %86 = "llvm.shl"(%82, %14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %87 = "llvm.sub"(%15, %86) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %88 = "llvm.zext"(%87) : (i32) -> i64
    %89 = "llvm.zext"(%86) : (i32) -> i64
    %90 = "llvm.mul"(%88, %89) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %91 = "llvm.lshr"(%90, %16) : (i64, i64) -> i64
    %92 = "llvm.trunc"(%91) <{overflowFlags = 2 : i32}> : (i64) -> i32
    %93 = "llvm.sub"(%7, %92) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %94 = "llvm.zext"(%93) : (i32) -> i64
    %95 = "llvm.mul"(%94, %88) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %96 = "llvm.lshr"(%95, %17) : (i64, i64) -> i64
    %97 = "llvm.and"(%96, %18) : (i64, i64) -> i64
    %98 = "llvm.mul"(%97, %89) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %99 = "llvm.lshr"(%98, %16) : (i64, i64) -> i64
    %100 = "llvm.trunc"(%99) <{overflowFlags = 2 : i32}> : (i64) -> i32
    %101 = "llvm.sub"(%7, %100) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %102 = "llvm.zext"(%101) : (i32) -> i64
    %103 = "llvm.mul"(%97, %102) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %104 = "llvm.lshr"(%103, %17) : (i64, i64) -> i64
    %105 = "llvm.and"(%104, %18) : (i64, i64) -> i64
    %106 = "llvm.mul"(%105, %89) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %107 = "llvm.lshr"(%106, %16) : (i64, i64) -> i64
    %108 = "llvm.trunc"(%107) <{overflowFlags = 2 : i32}> : (i64) -> i32
    %109 = "llvm.sub"(%7, %108) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %110 = "llvm.zext"(%109) : (i32) -> i64
    %111 = "llvm.mul"(%105, %110) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %112 = "llvm.lshr"(%111, %17) : (i64, i64) -> i64
    %113 = "llvm.trunc"(%112) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %114 = "llvm.add"(%113, %19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %115 = "llvm.shl"(%81, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %116 = "llvm.zext"(%114) : (i32) -> i64
    %117 = "llvm.zext"(%115) : (i32) -> i64
    %118 = "llvm.mul"(%116, %117) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %119 = "llvm.lshr"(%118, %16) : (i64, i64) -> i64
    %120 = "llvm.trunc"(%119) <{overflowFlags = 2 : i32}> : (i64) -> i32
    %121 = "llvm.icmp"(%120, %21) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%121)[^bb19, ^bb20] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb19:  // pred: ^bb18
    %122 = "llvm.icmp"(%120, %9) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %123 = "llvm.add"(%84, %22) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %124 = "llvm.zext"(%122) : (i1) -> i32
    %125 = "llvm.shl"(%120, %124) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %126 = "llvm.select"(%122, %123, %85) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %127 = "llvm.shl"(%79, %23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %128 = "llvm.mul"(%125, %82) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %129 = "llvm.sub"(%127, %128) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %130 = "llvm.add"(%126, %24) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%125, %115, %130, %129)[^bb21] : (i32, i32, i32, i32) -> ()
  ^bb20:  // pred: ^bb18
    %131 = "llvm.lshr"(%120, %20) : (i32, i32) -> i32
    %132 = "llvm.shl"(%79, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %133 = "llvm.mul"(%131, %82) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %134 = "llvm.sub"(%132, %133) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%131, %81, %85, %134)[^bb21] : (i32, i32, i32, i32) -> ()
  ^bb21(%135: i32, %136: i32, %137: i32, %138: i32):  // 2 preds: ^bb19, ^bb20
    %139 = "llvm.icmp"(%137, %25) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%139)[^bb22, ^bb23] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb22:  // pred: ^bb21
    %140 = "llvm.or"(%36, %8) <{isDisjoint}> : (i32, i32) -> i32
    %141 = "llvm.bitcast"(%140) : (i32) -> f32
    "llvm.br"(%141)[^bb29] : (f32) -> ()
  ^bb23:  // pred: ^bb21
    %142 = "llvm.icmp"(%137, %7) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%142)[^bb24, ^bb25] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb24:  // pred: ^bb23
    %143 = "llvm.and"(%135, %3) : (i32, i32) -> i32
    %144 = "llvm.shl"(%137, %0) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %145 = "llvm.or"(%144, %143) <{isDisjoint}> : (i32, i32) -> i32
    %146 = "llvm.shl"(%138, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%146, %145)[^bb28] : (i32, i32) -> ()
  ^bb25:  // pred: ^bb23
    %147 = "llvm.icmp"(%137, %26) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%147)[^bb26, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb26:  // pred: ^bb25
    %148 = "llvm.bitcast"(%36) : (i32) -> f32
    "llvm.br"(%148)[^bb29] : (f32) -> ()
  ^bb27:  // pred: ^bb25
    %149 = "llvm.add"(%137, %0) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %150 = "llvm.sub"(%20, %137) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %151 = "llvm.lshr"(%135, %150) : (i32, i32) -> i32
    %152 = "llvm.shl"(%136, %149) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %153 = "llvm.shl"(%82, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %154 = "llvm.mul"(%153, %151) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %155 = "llvm.sub"(%152, %154) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%155, %151)[^bb28] : (i32, i32) -> ()
  ^bb28(%156: i32, %157: i32):  // 2 preds: ^bb24, ^bb27
    %158 = "llvm.and"(%157, %20) : (i32, i32) -> i32
    %159 = "llvm.add"(%158, %156) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %160 = "llvm.icmp"(%159, %82) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %161 = "llvm.zext"(%160) : (i1) -> i32
    %162 = "llvm.add"(%157, %161) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %163 = "llvm.or"(%162, %36) : (i32, i32) -> i32
    %164 = "llvm.bitcast"(%163) : (i32) -> f32
    "llvm.br"(%164)[^bb29] : (f32) -> ()
  ^bb29(%165: f32):  // 10 preds: ^bb2, ^bb4, ^bb6, ^bb7, ^bb9, ^bb11, ^bb13, ^bb22, ^bb26, ^bb28
    "llvm.return"(%165) : (f32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

