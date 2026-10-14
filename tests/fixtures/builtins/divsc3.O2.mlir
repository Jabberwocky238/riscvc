"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<struct<(f32, f32)> (f32, f32, f32, f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__divsc3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: f32, %arg3: f32):
    %0 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 0xFF800000 : f32}> : () -> f32
    %4 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = -127 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = -119 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 0x7F800000 : f32}> : () -> f32
    %9 = "llvm.mlir.constant"() <{value = 8388607 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = -8388609 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 254 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 8388608 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = -125 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 1056964608 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 1.70141183E+38 : f32}> : () -> f32
    %19 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %20 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %21 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %22 = "llvm.mlir.poison"() : () -> !llvm.struct<(f32, f32)>
    %23 = "llvm.intr.fabs"(%arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %24 = "llvm.intr.fabs"(%arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %25 = "llvm.fcmp"(%arg2, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %26 = "llvm.fcmp"(%23, %24) <{fastmathFlags = #llvm.fastmath<none>, predicate = 4 : i64}> : (f32, f32) -> i1
    %27 = "llvm.or"(%25, %26) : (i1, i1) -> i1
    %28 = "llvm.select"(%27, %24, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    %29 = "llvm.bitcast"(%28) : (f32) -> i32
    %30 = "llvm.lshr"(%29, %1) : (i32, i32) -> i32
    %31 = "llvm.icmp"(%30, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%31, %28)[^bb5, ^bb1] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f32) -> ()
  ^bb1:  // pred: ^bb0
    %32 = "llvm.fcmp"(%28, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    "llvm.cond_br"(%32, %3)[^bb5, ^bb2] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f32) -> ()
  ^bb2:  // pred: ^bb1
    %33 = "llvm.icmp"(%30, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%33)[^bb4, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    %34 = "llvm.add"(%30, %5) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %35 = "llvm.sitofp"(%34) : (i32) -> f32
    "llvm.br"(%35)[^bb5] : (f32) -> ()
  ^bb4:  // pred: ^bb2
    %36 = "llvm.intr.ctlz"(%29) <{is_zero_poison = true}> : (i32) -> i32
    %37 = "llvm.add"(%36, %6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %38 = "llvm.shl"(%29, %37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %39 = "llvm.lshr"(%38, %1) : (i32, i32) -> i32
    %40 = "llvm.and"(%39, %2) : (i32, i32) -> i32
    %41 = "llvm.sub"(%40, %36) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %42 = "llvm.add"(%41, %7) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %43 = "llvm.sitofp"(%42) : (i32) -> f32
    "llvm.br"(%43)[^bb5] : (f32) -> ()
  ^bb5(%44: f32):  // 4 preds: ^bb0, ^bb1, ^bb3, ^bb4
    %45 = "llvm.intr.fabs"(%44) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %46 = "llvm.fcmp"(%45, %8) <{fastmathFlags = #llvm.fastmath<none>, predicate = 8 : i64}> : (f32, f32) -> i1
    "llvm.cond_br"(%46, %arg2, %arg3, %4)[^bb22, ^bb6] <{operandSegmentSizes = array<i32: 1, 3, 0>}> : (i1, f32, f32, i32) -> ()
  ^bb6:  // pred: ^bb5
    %47 = "llvm.fptosi"(%44) : (f32) -> i32
    %48 = "llvm.sub"(%4, %47) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %49 = "llvm.bitcast"(%arg2) : (f32) -> i32
    %50 = "llvm.lshr"(%49, %1) : (i32, i32) -> i32
    %51 = "llvm.and"(%50, %2) : (i32, i32) -> i32
    %52 = "llvm.fcmp"(%arg2, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %53 = "llvm.icmp"(%51, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %54 = "llvm.or"(%52, %53) : (i1, i1) -> i1
    "llvm.cond_br"(%54, %arg2)[^bb14, ^bb7] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f32) -> ()
  ^bb7:  // pred: ^bb6
    %55 = "llvm.and"(%49, %9) : (i32, i32) -> i32
    %56 = "llvm.icmp"(%51, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%56, %55, %51)[^bb8, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb8:  // pred: ^bb7
    %57 = "llvm.intr.ctlz"(%55) <{is_zero_poison = true}> : (i32) -> i32
    %58 = "llvm.add"(%57, %6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %59 = "llvm.shl"(%55, %58) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %60 = "llvm.sub"(%10, %57) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %61 = "llvm.and"(%59, %11) : (i32, i32) -> i32
    "llvm.br"(%61, %60)[^bb9] : (i32, i32) -> ()
  ^bb9(%62: i32, %63: i32):  // 2 preds: ^bb7, ^bb8
    %64 = "llvm.intr.sadd.sat"(%63, %48) : (i32, i32) -> i32
    %65 = "llvm.and"(%49, %12) : (i32, i32) -> i32
    %66 = "llvm.icmp"(%64, %13) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%66)[^bb10, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb10:  // pred: ^bb9
    %67 = "llvm.intr.copysign"(%18, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %68 = "llvm.fmul"(%67, %19) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.br"(%68)[^bb14] : (f32) -> ()
  ^bb11:  // pred: ^bb9
    %69 = "llvm.icmp"(%64, %14) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%69)[^bb12, ^bb13] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb12:  // pred: ^bb11
    %70 = "llvm.or"(%62, %65) : (i32, i32) -> i32
    %71 = "llvm.or"(%70, %15) <{isDisjoint}> : (i32, i32) -> i32
    %72 = "llvm.bitcast"(%71) : (i32) -> f32
    %73 = "llvm.intr.smax"(%64, %16) : (i32, i32) -> i32
    %74 = "llvm.shl"(%73, %1) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %75 = "llvm.add"(%74, %17) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %76 = "llvm.bitcast"(%75) : (i32) -> f32
    %77 = "llvm.fmul"(%72, %76) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.br"(%77)[^bb14] : (f32) -> ()
  ^bb13:  // pred: ^bb11
    %78 = "llvm.shl"(%64, %1) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %79 = "llvm.or"(%78, %65) <{isDisjoint}> : (i32, i32) -> i32
    %80 = "llvm.or"(%79, %62) : (i32, i32) -> i32
    %81 = "llvm.bitcast"(%80) : (i32) -> f32
    "llvm.br"(%81)[^bb14] : (f32) -> ()
  ^bb14(%82: f32):  // 4 preds: ^bb6, ^bb10, ^bb12, ^bb13
    %83 = "llvm.bitcast"(%arg3) : (f32) -> i32
    %84 = "llvm.lshr"(%83, %1) : (i32, i32) -> i32
    %85 = "llvm.and"(%84, %2) : (i32, i32) -> i32
    %86 = "llvm.fcmp"(%arg3, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %87 = "llvm.icmp"(%85, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %88 = "llvm.or"(%86, %87) : (i1, i1) -> i1
    "llvm.cond_br"(%88, %82, %arg3, %47)[^bb22, ^bb15] <{operandSegmentSizes = array<i32: 1, 3, 0>}> : (i1, f32, f32, i32) -> ()
  ^bb15:  // pred: ^bb14
    %89 = "llvm.and"(%83, %9) : (i32, i32) -> i32
    %90 = "llvm.icmp"(%85, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%90, %89, %85)[^bb16, ^bb17] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb16:  // pred: ^bb15
    %91 = "llvm.intr.ctlz"(%89) <{is_zero_poison = true}> : (i32) -> i32
    %92 = "llvm.add"(%91, %6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %93 = "llvm.shl"(%89, %92) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %94 = "llvm.sub"(%10, %91) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %95 = "llvm.and"(%93, %11) : (i32, i32) -> i32
    "llvm.br"(%95, %94)[^bb17] : (i32, i32) -> ()
  ^bb17(%96: i32, %97: i32):  // 2 preds: ^bb15, ^bb16
    %98 = "llvm.intr.sadd.sat"(%97, %48) : (i32, i32) -> i32
    %99 = "llvm.and"(%83, %12) : (i32, i32) -> i32
    %100 = "llvm.icmp"(%98, %13) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%100)[^bb18, ^bb19] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb18:  // pred: ^bb17
    %101 = "llvm.intr.copysign"(%18, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %102 = "llvm.fmul"(%101, %19) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.br"(%82, %102, %47)[^bb22] : (f32, f32, i32) -> ()
  ^bb19:  // pred: ^bb17
    %103 = "llvm.icmp"(%98, %14) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%103)[^bb20, ^bb21] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb20:  // pred: ^bb19
    %104 = "llvm.or"(%96, %99) : (i32, i32) -> i32
    %105 = "llvm.or"(%104, %15) <{isDisjoint}> : (i32, i32) -> i32
    %106 = "llvm.bitcast"(%105) : (i32) -> f32
    %107 = "llvm.intr.smax"(%98, %16) : (i32, i32) -> i32
    %108 = "llvm.shl"(%107, %1) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %109 = "llvm.add"(%108, %17) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %110 = "llvm.bitcast"(%109) : (i32) -> f32
    %111 = "llvm.fmul"(%106, %110) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.br"(%82, %111, %47)[^bb22] : (f32, f32, i32) -> ()
  ^bb21:  // pred: ^bb19
    %112 = "llvm.shl"(%98, %1) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %113 = "llvm.or"(%112, %99) <{isDisjoint}> : (i32, i32) -> i32
    %114 = "llvm.or"(%113, %96) : (i32, i32) -> i32
    %115 = "llvm.bitcast"(%114) : (i32) -> f32
    "llvm.br"(%82, %115, %47)[^bb22] : (f32, f32, i32) -> ()
  ^bb22(%116: f32, %117: f32, %118: i32):  // 5 preds: ^bb5, ^bb14, ^bb18, ^bb20, ^bb21
    %119 = "llvm.fmul"(%117, %117) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %120 = "llvm.intr.fmuladd"(%116, %116, %119) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    %121 = "llvm.fmul"(%arg1, %117) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %122 = "llvm.intr.fmuladd"(%arg0, %116, %121) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    %123 = "llvm.fdiv"(%122, %120) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %124 = "llvm.sub"(%4, %118) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %125 = "llvm.bitcast"(%123) : (f32) -> i32
    %126 = "llvm.lshr"(%125, %1) : (i32, i32) -> i32
    %127 = "llvm.and"(%126, %2) : (i32, i32) -> i32
    %128 = "llvm.fcmp"(%123, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %129 = "llvm.icmp"(%127, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %130 = "llvm.or"(%128, %129) : (i1, i1) -> i1
    "llvm.cond_br"(%130, %123)[^bb30, ^bb23] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f32) -> ()
  ^bb23:  // pred: ^bb22
    %131 = "llvm.and"(%125, %9) : (i32, i32) -> i32
    %132 = "llvm.icmp"(%127, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%132, %131, %127)[^bb24, ^bb25] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb24:  // pred: ^bb23
    %133 = "llvm.intr.ctlz"(%131) <{is_zero_poison = true}> : (i32) -> i32
    %134 = "llvm.add"(%133, %6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %135 = "llvm.shl"(%131, %134) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %136 = "llvm.sub"(%10, %133) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %137 = "llvm.and"(%135, %11) : (i32, i32) -> i32
    "llvm.br"(%137, %136)[^bb25] : (i32, i32) -> ()
  ^bb25(%138: i32, %139: i32):  // 2 preds: ^bb23, ^bb24
    %140 = "llvm.intr.sadd.sat"(%139, %124) : (i32, i32) -> i32
    %141 = "llvm.and"(%125, %12) : (i32, i32) -> i32
    %142 = "llvm.icmp"(%140, %13) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%142)[^bb26, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb26:  // pred: ^bb25
    %143 = "llvm.intr.copysign"(%18, %123) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %144 = "llvm.fmul"(%143, %19) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.br"(%144)[^bb30] : (f32) -> ()
  ^bb27:  // pred: ^bb25
    %145 = "llvm.icmp"(%140, %14) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%145)[^bb28, ^bb29] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb28:  // pred: ^bb27
    %146 = "llvm.or"(%138, %141) : (i32, i32) -> i32
    %147 = "llvm.or"(%146, %15) <{isDisjoint}> : (i32, i32) -> i32
    %148 = "llvm.bitcast"(%147) : (i32) -> f32
    %149 = "llvm.intr.smax"(%140, %16) : (i32, i32) -> i32
    %150 = "llvm.shl"(%149, %1) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %151 = "llvm.add"(%150, %17) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %152 = "llvm.bitcast"(%151) : (i32) -> f32
    %153 = "llvm.fmul"(%148, %152) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.br"(%153)[^bb30] : (f32) -> ()
  ^bb29:  // pred: ^bb27
    %154 = "llvm.shl"(%140, %1) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %155 = "llvm.or"(%154, %141) <{isDisjoint}> : (i32, i32) -> i32
    %156 = "llvm.or"(%155, %138) : (i32, i32) -> i32
    %157 = "llvm.bitcast"(%156) : (i32) -> f32
    "llvm.br"(%157)[^bb30] : (f32) -> ()
  ^bb30(%158: f32):  // 4 preds: ^bb22, ^bb26, ^bb28, ^bb29
    %159 = "llvm.fneg"(%117) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %160 = "llvm.fmul"(%arg0, %159) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %161 = "llvm.intr.fmuladd"(%arg1, %116, %160) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    %162 = "llvm.fdiv"(%161, %120) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %163 = "llvm.bitcast"(%162) : (f32) -> i32
    %164 = "llvm.lshr"(%163, %1) : (i32, i32) -> i32
    %165 = "llvm.and"(%164, %2) : (i32, i32) -> i32
    %166 = "llvm.fcmp"(%162, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %167 = "llvm.icmp"(%165, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %168 = "llvm.or"(%166, %167) : (i1, i1) -> i1
    "llvm.cond_br"(%168, %162)[^bb38, ^bb31] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f32) -> ()
  ^bb31:  // pred: ^bb30
    %169 = "llvm.and"(%163, %9) : (i32, i32) -> i32
    %170 = "llvm.icmp"(%165, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%170, %169, %165)[^bb32, ^bb33] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb32:  // pred: ^bb31
    %171 = "llvm.intr.ctlz"(%169) <{is_zero_poison = true}> : (i32) -> i32
    %172 = "llvm.add"(%171, %6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %173 = "llvm.shl"(%169, %172) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %174 = "llvm.sub"(%10, %171) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %175 = "llvm.and"(%173, %11) : (i32, i32) -> i32
    "llvm.br"(%175, %174)[^bb33] : (i32, i32) -> ()
  ^bb33(%176: i32, %177: i32):  // 2 preds: ^bb31, ^bb32
    %178 = "llvm.intr.sadd.sat"(%177, %124) : (i32, i32) -> i32
    %179 = "llvm.and"(%163, %12) : (i32, i32) -> i32
    %180 = "llvm.icmp"(%178, %13) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%180)[^bb34, ^bb35] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb34:  // pred: ^bb33
    %181 = "llvm.intr.copysign"(%18, %162) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %182 = "llvm.fmul"(%181, %19) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.br"(%182, %158)[^bb46] : (f32, f32) -> ()
  ^bb35:  // pred: ^bb33
    %183 = "llvm.icmp"(%178, %14) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%183)[^bb36, ^bb37] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb36:  // pred: ^bb35
    %184 = "llvm.or"(%176, %179) : (i32, i32) -> i32
    %185 = "llvm.or"(%184, %15) <{isDisjoint}> : (i32, i32) -> i32
    %186 = "llvm.bitcast"(%185) : (i32) -> f32
    %187 = "llvm.intr.smax"(%178, %16) : (i32, i32) -> i32
    %188 = "llvm.shl"(%187, %1) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %189 = "llvm.add"(%188, %17) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %190 = "llvm.bitcast"(%189) : (i32) -> f32
    %191 = "llvm.fmul"(%186, %190) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.br"(%191)[^bb38] : (f32) -> ()
  ^bb37:  // pred: ^bb35
    %192 = "llvm.shl"(%178, %1) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %193 = "llvm.or"(%192, %179) <{isDisjoint}> : (i32, i32) -> i32
    %194 = "llvm.or"(%193, %176) : (i32, i32) -> i32
    %195 = "llvm.bitcast"(%194) : (i32) -> f32
    "llvm.br"(%195)[^bb38] : (f32) -> ()
  ^bb38(%196: f32):  // 3 preds: ^bb30, ^bb36, ^bb37
    %197 = "llvm.fcmp"(%158, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %198 = "llvm.fcmp"(%196, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %199 = "llvm.select"(%197, %198, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%199, %196, %158)[^bb39, ^bb46] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, f32, f32) -> ()
  ^bb39:  // pred: ^bb38
    %200 = "llvm.fcmp"(%120, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    "llvm.cond_br"(%200)[^bb40, ^bb42] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb40:  // pred: ^bb39
    %201 = "llvm.fcmp"(%arg0, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %202 = "llvm.fcmp"(%arg1, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %203 = "llvm.and"(%201, %202) : (i1, i1) -> i1
    "llvm.cond_br"(%203)[^bb42, ^bb41] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb41:  // pred: ^bb40
    %204 = "llvm.intr.copysign"(%8, %116) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %205 = "llvm.fmul"(%arg0, %204) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %206 = "llvm.fmul"(%arg1, %204) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.br"(%206, %205)[^bb46] : (f32, f32) -> ()
  ^bb42:  // 2 preds: ^bb39, ^bb40
    %207 = "llvm.intr.fabs"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %208 = "llvm.fcmp"(%207, %8) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %209 = "llvm.intr.fabs"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %210 = "llvm.fcmp"(%209, %8) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %211 = "llvm.or"(%208, %210) : (i1, i1) -> i1
    %212 = "llvm.xor"(%211, %21) : (i1, i1) -> i1
    %213 = "llvm.intr.fabs"(%116) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %214 = "llvm.fcmp"(%213, %8) <{fastmathFlags = #llvm.fastmath<none>, predicate = 8 : i64}> : (f32, f32) -> i1
    %215 = "llvm.select"(%212, %21, %214) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    %216 = "llvm.intr.fabs"(%117) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %217 = "llvm.fcmp"(%216, %8) <{fastmathFlags = #llvm.fastmath<none>, predicate = 8 : i64}> : (f32, f32) -> i1
    %218 = "llvm.select"(%215, %21, %217) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%218)[^bb44, ^bb43] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb43:  // pred: ^bb42
    %219 = "llvm.uitofp"(%208) : (i1) -> f32
    %220 = "llvm.intr.copysign"(%219, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %221 = "llvm.uitofp"(%210) : (i1) -> f32
    %222 = "llvm.intr.copysign"(%221, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %223 = "llvm.fmul"(%222, %117) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %224 = "llvm.intr.fmuladd"(%220, %116, %223) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    %225 = "llvm.fmul"(%224, %8) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %226 = "llvm.fmul"(%220, %159) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %227 = "llvm.intr.fmuladd"(%222, %116, %226) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    %228 = "llvm.fmul"(%227, %8) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.br"(%228, %225)[^bb46] : (f32, f32) -> ()
  ^bb44:  // pred: ^bb42
    %229 = "llvm.fcmp"(%44, %8) <{fastmathFlags = #llvm.fastmath<none>, predicate = 13 : i64}> : (f32, f32) -> i1
    %230 = "llvm.fcmp"(%207, %8) <{fastmathFlags = #llvm.fastmath<none>, predicate = 8 : i64}> : (f32, f32) -> i1
    %231 = "llvm.or"(%230, %229) : (i1, i1) -> i1
    %232 = "llvm.fcmp"(%209, %8) <{fastmathFlags = #llvm.fastmath<none>, predicate = 8 : i64}> : (f32, f32) -> i1
    %233 = "llvm.or"(%232, %231) : (i1, i1) -> i1
    "llvm.cond_br"(%233, %196, %158)[^bb46, ^bb45] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, f32, f32) -> ()
  ^bb45:  // pred: ^bb44
    %234 = "llvm.fcmp"(%213, %8) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %235 = "llvm.uitofp"(%234) : (i1) -> f32
    %236 = "llvm.intr.copysign"(%235, %116) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %237 = "llvm.fcmp"(%216, %8) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %238 = "llvm.uitofp"(%237) : (i1) -> f32
    %239 = "llvm.intr.copysign"(%238, %117) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %240 = "llvm.fmul"(%arg1, %239) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %241 = "llvm.intr.fmuladd"(%arg0, %236, %240) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    %242 = "llvm.fmul"(%241, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %243 = "llvm.fneg"(%239) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %244 = "llvm.fmul"(%arg0, %243) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %245 = "llvm.intr.fmuladd"(%arg1, %236, %244) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    %246 = "llvm.fmul"(%245, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.br"(%246, %242)[^bb46] : (f32, f32) -> ()
  ^bb46(%247: f32, %248: f32):  // 6 preds: ^bb34, ^bb38, ^bb41, ^bb43, ^bb44, ^bb45
    %249 = "llvm.insertvalue"(%22, %248) <{position = array<i64: 0>}> : (!llvm.struct<(f32, f32)>, f32) -> !llvm.struct<(f32, f32)>
    %250 = "llvm.insertvalue"(%249, %247) <{position = array<i64: 1>}> : (!llvm.struct<(f32, f32)>, f32) -> !llvm.struct<(f32, f32)>
    "llvm.return"(%250) : (!llvm.struct<(f32, f32)>) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

