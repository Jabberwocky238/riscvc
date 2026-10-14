"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<f64 (f64, f64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__divdf3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
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
    %13 = "llvm.mlir.constant"() <{value = -12 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 1023 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 11 : i64}> : () -> i64
    %16 = "llvm.mlir.constant"() <{value = 21 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 1963258675 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %19 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %20 = "llvm.mlir.constant"() <{value = 31 : i64}> : () -> i64
    %21 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 4294965248 : i64}> : () -> i64
    %23 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %24 = "llvm.mlir.constant"() <{value = -225 : i64}> : () -> i64
    %25 = "llvm.mlir.constant"() <{value = 4294967294 : i64}> : () -> i64
    %26 = "llvm.mlir.constant"() <{value = 9007199254740992 : i64}> : () -> i64
    %27 = "llvm.mlir.constant"() <{value = 1022 : i32}> : () -> i32
    %28 = "llvm.mlir.constant"() <{value = 53 : i64}> : () -> i64
    %29 = "llvm.mlir.constant"() <{value = 2046 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = -52 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 52 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %33 = "llvm.mlir.constant"() <{value = 0x7FF8000000000000 : f64}> : () -> f64
    %34 = "llvm.mlir.constant"() <{value = 2251799813685248 : i64}> : () -> i64
    %35 = "llvm.bitcast"(%arg0) : (f64) -> i64
    %36 = "llvm.lshr"(%35, %0) : (i64, i64) -> i64
    %37 = "llvm.trunc"(%36) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %38 = "llvm.and"(%37, %1) : (i32, i32) -> i32
    %39 = "llvm.bitcast"(%arg1) : (f64) -> i64
    %40 = "llvm.lshr"(%39, %0) : (i64, i64) -> i64
    %41 = "llvm.trunc"(%40) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %42 = "llvm.and"(%41, %1) : (i32, i32) -> i32
    %43 = "llvm.xor"(%39, %35) : (i64, i64) -> i64
    %44 = "llvm.and"(%43, %2) : (i64, i64) -> i64
    %45 = "llvm.and"(%35, %3) : (i64, i64) -> i64
    %46 = "llvm.and"(%39, %3) : (i64, i64) -> i64
    %47 = "llvm.add"(%38, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %48 = "llvm.icmp"(%47, %5) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %49 = "llvm.add"(%42, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %50 = "llvm.icmp"(%49, %5) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %51 = "llvm.select"(%48, %6, %50) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%51, %46, %45, %7)[^bb1, ^bb18] <{operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i64, i64, i32) -> ()
  ^bb1:  // pred: ^bb0
    %52 = "llvm.intr.fabs"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %53 = "llvm.bitcast"(%52) : (f64) -> i64
    %54 = "llvm.intr.fabs"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %55 = "llvm.bitcast"(%54) : (f64) -> i64
    %56 = "llvm.icmp"(%53, %8) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%56)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %57 = "llvm.or"(%35, %34) : (i64, i64) -> i64
    %58 = "llvm.bitcast"(%57) : (i64) -> f64
    "llvm.br"(%58)[^bb29] : (f64) -> ()
  ^bb3:  // pred: ^bb1
    %59 = "llvm.icmp"(%55, %8) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%59)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %60 = "llvm.or"(%39, %34) : (i64, i64) -> i64
    %61 = "llvm.bitcast"(%60) : (i64) -> f64
    "llvm.br"(%61)[^bb29] : (f64) -> ()
  ^bb5:  // pred: ^bb3
    %62 = "llvm.icmp"(%53, %8) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %63 = "llvm.icmp"(%55, %8) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%62)[^bb6, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb6:  // pred: ^bb5
    "llvm.cond_br"(%63, %33)[^bb29, ^bb7] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f64) -> ()
  ^bb7:  // pred: ^bb6
    %64 = "llvm.or"(%44, %8) <{isDisjoint}> : (i64, i64) -> i64
    %65 = "llvm.bitcast"(%64) : (i64) -> f64
    "llvm.br"(%65)[^bb29] : (f64) -> ()
  ^bb8:  // pred: ^bb5
    "llvm.cond_br"(%63)[^bb9, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    %66 = "llvm.bitcast"(%44) : (i64) -> f64
    "llvm.br"(%66)[^bb29] : (f64) -> ()
  ^bb10:  // pred: ^bb8
    %67 = "llvm.icmp"(%53, %9) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %68 = "llvm.icmp"(%55, %9) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%67)[^bb11, ^bb12] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    %69 = "llvm.bitcast"(%44) : (i64) -> f64
    %70 = "llvm.select"(%68, %33, %69) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    "llvm.br"(%70)[^bb29] : (f64) -> ()
  ^bb12:  // pred: ^bb10
    "llvm.cond_br"(%68)[^bb13, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb13:  // pred: ^bb12
    %71 = "llvm.or"(%44, %8) <{isDisjoint}> : (i64, i64) -> i64
    %72 = "llvm.bitcast"(%71) : (i64) -> f64
    "llvm.br"(%72)[^bb29] : (f64) -> ()
  ^bb14:  // pred: ^bb12
    %73 = "llvm.icmp"(%53, %10) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%73, %45, %7)[^bb15, ^bb16] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i64, i32) -> ()
  ^bb15:  // pred: ^bb14
    %74 = "llvm.intr.ctlz"(%45) <{is_zero_poison = true}> : (i64) -> i64
    %75 = "llvm.trunc"(%74) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %76 = "llvm.add"(%75, %11) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %77 = "llvm.zext"(%76) <{nonNeg}> : (i32) -> i64
    %78 = "llvm.shl"(%45, %77) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %79 = "llvm.sub"(%12, %75) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%78, %79)[^bb16] : (i64, i32) -> ()
  ^bb16(%80: i64, %81: i32):  // 2 preds: ^bb14, ^bb15
    %82 = "llvm.icmp"(%55, %10) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%82, %46, %80, %81)[^bb17, ^bb18] <{operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i64, i64, i32) -> ()
  ^bb17:  // pred: ^bb16
    %83 = "llvm.intr.ctlz"(%46) <{is_zero_poison = true}> : (i64) -> i64
    %84 = "llvm.trunc"(%83) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %85 = "llvm.add"(%84, %11) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %86 = "llvm.zext"(%85) <{nonNeg}> : (i32) -> i64
    %87 = "llvm.shl"(%46, %86) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %88 = "llvm.add"(%84, %13) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %89 = "llvm.add"(%88, %81) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%87, %80, %89)[^bb18] : (i64, i64, i32) -> ()
  ^bb18(%90: i64, %91: i64, %92: i32):  // 3 preds: ^bb0, ^bb16, ^bb17
    %93 = "llvm.or"(%91, %10) : (i64, i64) -> i64
    %94 = "llvm.or"(%90, %10) : (i64, i64) -> i64
    %95 = "llvm.sub"(%38, %42) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %96 = "llvm.add"(%92, %95) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %97 = "llvm.add"(%96, %14) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %98 = "llvm.shl"(%90, %15) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %99 = "llvm.lshr"(%94, %16) : (i64, i64) -> i64
    %100 = "llvm.trunc"(%99) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %101 = "llvm.sub"(%17, %100) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %102 = "llvm.zext"(%101) : (i32) -> i64
    %103 = "llvm.and"(%99, %18) : (i64, i64) -> i64
    %104 = "llvm.mul"(%103, %102) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %105 = "llvm.lshr"(%104, %19) : (i64, i64) -> i64
    %106 = "llvm.trunc"(%105) <{overflowFlags = 2 : i32}> : (i64) -> i32
    %107 = "llvm.sub"(%7, %106) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %108 = "llvm.zext"(%107) : (i32) -> i64
    %109 = "llvm.mul"(%108, %102) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %110 = "llvm.lshr"(%109, %20) : (i64, i64) -> i64
    %111 = "llvm.and"(%110, %18) : (i64, i64) -> i64
    %112 = "llvm.mul"(%111, %103) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %113 = "llvm.lshr"(%112, %19) : (i64, i64) -> i64
    %114 = "llvm.trunc"(%113) <{overflowFlags = 2 : i32}> : (i64) -> i32
    %115 = "llvm.sub"(%7, %114) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %116 = "llvm.zext"(%115) : (i32) -> i64
    %117 = "llvm.mul"(%111, %116) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %118 = "llvm.lshr"(%117, %20) : (i64, i64) -> i64
    %119 = "llvm.and"(%118, %18) : (i64, i64) -> i64
    %120 = "llvm.mul"(%119, %103) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %121 = "llvm.lshr"(%120, %19) : (i64, i64) -> i64
    %122 = "llvm.trunc"(%121) <{overflowFlags = 2 : i32}> : (i64) -> i32
    %123 = "llvm.sub"(%7, %122) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %124 = "llvm.zext"(%123) : (i32) -> i64
    %125 = "llvm.mul"(%119, %124) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %126 = "llvm.lshr"(%125, %20) : (i64, i64) -> i64
    %127 = "llvm.trunc"(%126) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %128 = "llvm.add"(%127, %21) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %129 = "llvm.zext"(%128) : (i32) -> i64
    %130 = "llvm.and"(%98, %22) : (i64, i64) -> i64
    %131 = "llvm.mul"(%103, %129) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %132 = "llvm.mul"(%130, %129) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %133 = "llvm.lshr"(%132, %19) : (i64, i64) -> i64
    %134 = "llvm.add"(%131, %133) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %135 = "llvm.sub"(%23, %134) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %136 = "llvm.and"(%135, %18) : (i64, i64) -> i64
    %137 = "llvm.lshr"(%135, %19) : (i64, i64) -> i64
    %138 = "llvm.shl"(%129, %23) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %139 = "llvm.mul"(%138, %137) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %140 = "llvm.mul"(%136, %129) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %141 = "llvm.lshr"(%140, %20) : (i64, i64) -> i64
    %142 = "llvm.add"(%139, %24) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %143 = "llvm.add"(%142, %141) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %144 = "llvm.shl"(%93, %23) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %145 = "llvm.and"(%143, %18) : (i64, i64) -> i64
    %146 = "llvm.and"(%144, %25) : (i64, i64) -> i64
    %147 = "llvm.mul"(%145, %146) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %148 = "llvm.lshr"(%144, %19) : (i64, i64) -> i64
    %149 = "llvm.mul"(%145, %148) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %150 = "llvm.lshr"(%143, %19) : (i64, i64) -> i64
    %151 = "llvm.mul"(%150, %146) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %152 = "llvm.mul"(%150, %148) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %153 = "llvm.lshr"(%147, %19) : (i64, i64) -> i64
    %154 = "llvm.and"(%149, %18) : (i64, i64) -> i64
    %155 = "llvm.add"(%153, %154) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %156 = "llvm.and"(%151, %25) : (i64, i64) -> i64
    %157 = "llvm.add"(%155, %156) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %158 = "llvm.lshr"(%149, %19) : (i64, i64) -> i64
    %159 = "llvm.lshr"(%151, %19) : (i64, i64) -> i64
    %160 = "llvm.lshr"(%157, %19) : (i64, i64) -> i64
    %161 = "llvm.add"(%159, %152) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %162 = "llvm.add"(%161, %158) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %163 = "llvm.add"(%162, %160) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %164 = "llvm.icmp"(%163, %26) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%164)[^bb19, ^bb20] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb19:  // pred: ^bb18
    %165 = "llvm.icmp"(%163, %10) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %166 = "llvm.add"(%96, %27) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %167 = "llvm.zext"(%165) : (i1) -> i64
    %168 = "llvm.shl"(%163, %167) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %169 = "llvm.select"(%165, %166, %97) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %170 = "llvm.shl"(%91, %28) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %171 = "llvm.mul"(%168, %94) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %172 = "llvm.sub"(%170, %171) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %173 = "llvm.add"(%169, %21) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%168, %144, %173, %172)[^bb21] : (i64, i64, i32, i64) -> ()
  ^bb20:  // pred: ^bb18
    %174 = "llvm.lshr"(%163, %23) : (i64, i64) -> i64
    %175 = "llvm.shl"(%91, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %176 = "llvm.mul"(%174, %94) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %177 = "llvm.sub"(%175, %176) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"(%174, %93, %97, %177)[^bb21] : (i64, i64, i32, i64) -> ()
  ^bb21(%178: i64, %179: i64, %180: i32, %181: i64):  // 2 preds: ^bb19, ^bb20
    %182 = "llvm.icmp"(%180, %29) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%182)[^bb22, ^bb23] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb22:  // pred: ^bb21
    %183 = "llvm.or"(%44, %8) <{isDisjoint}> : (i64, i64) -> i64
    %184 = "llvm.bitcast"(%183) : (i64) -> f64
    "llvm.br"(%184)[^bb29] : (f64) -> ()
  ^bb23:  // pred: ^bb21
    %185 = "llvm.icmp"(%180, %7) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%185)[^bb24, ^bb25] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb24:  // pred: ^bb23
    %186 = "llvm.and"(%178, %3) : (i64, i64) -> i64
    %187 = "llvm.zext"(%180) <{nonNeg}> : (i32) -> i64
    %188 = "llvm.shl"(%187, %0) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %189 = "llvm.or"(%188, %186) <{isDisjoint}> : (i64, i64) -> i64
    %190 = "llvm.shl"(%181, %23) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"(%190, %189)[^bb28] : (i64, i64) -> ()
  ^bb25:  // pred: ^bb23
    %191 = "llvm.icmp"(%180, %30) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%191)[^bb26, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb26:  // pred: ^bb25
    %192 = "llvm.bitcast"(%44) : (i64) -> f64
    "llvm.br"(%192)[^bb29] : (f64) -> ()
  ^bb27:  // pred: ^bb25
    %193 = "llvm.add"(%180, %31) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %194 = "llvm.sub"(%32, %180) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %195 = "llvm.zext"(%194) <{nonNeg}> : (i32) -> i64
    %196 = "llvm.lshr"(%178, %195) : (i64, i64) -> i64
    %197 = "llvm.zext"(%193) <{nonNeg}> : (i32) -> i64
    %198 = "llvm.shl"(%179, %197) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %199 = "llvm.shl"(%94, %23) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %200 = "llvm.mul"(%199, %196) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %201 = "llvm.sub"(%198, %200) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"(%201, %196)[^bb28] : (i64, i64) -> ()
  ^bb28(%202: i64, %203: i64):  // 2 preds: ^bb24, ^bb27
    %204 = "llvm.and"(%203, %23) : (i64, i64) -> i64
    %205 = "llvm.add"(%204, %202) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %206 = "llvm.icmp"(%205, %94) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %207 = "llvm.zext"(%206) : (i1) -> i64
    %208 = "llvm.add"(%203, %207) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %209 = "llvm.or"(%208, %44) : (i64, i64) -> i64
    %210 = "llvm.bitcast"(%209) : (i64) -> f64
    "llvm.br"(%210)[^bb29] : (f64) -> ()
  ^bb29(%211: f64):  // 10 preds: ^bb2, ^bb4, ^bb6, ^bb7, ^bb9, ^bb11, ^bb13, ^bb22, ^bb26, ^bb28
    "llvm.return"(%211) : (f64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

