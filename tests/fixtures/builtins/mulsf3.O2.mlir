"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<f32 (f32, f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__mulsf3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
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
    %12 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = -127 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 254 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 0x7FC00000 : f32}> : () -> f32
    %20 = "llvm.mlir.constant"() <{value = 4194304 : i32}> : () -> i32
    %21 = "llvm.bitcast"(%arg0) : (f32) -> i32
    %22 = "llvm.lshr"(%21, %0) : (i32, i32) -> i32
    %23 = "llvm.and"(%22, %1) : (i32, i32) -> i32
    %24 = "llvm.bitcast"(%arg1) : (f32) -> i32
    %25 = "llvm.lshr"(%24, %0) : (i32, i32) -> i32
    %26 = "llvm.and"(%25, %1) : (i32, i32) -> i32
    %27 = "llvm.xor"(%24, %21) : (i32, i32) -> i32
    %28 = "llvm.and"(%27, %2) : (i32, i32) -> i32
    %29 = "llvm.and"(%21, %3) : (i32, i32) -> i32
    %30 = "llvm.and"(%24, %3) : (i32, i32) -> i32
    %31 = "llvm.add"(%23, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %32 = "llvm.icmp"(%31, %5) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %33 = "llvm.add"(%26, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %34 = "llvm.icmp"(%33, %5) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %35 = "llvm.select"(%32, %6, %34) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    "llvm.cond_br"(%35, %29, %30, %7)[^bb1, ^bb19] <{operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i32, i32, i32) -> ()
  ^bb1:  // pred: ^bb0
    %36 = "llvm.intr.fabs"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %37 = "llvm.bitcast"(%36) : (f32) -> i32
    %38 = "llvm.intr.fabs"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %39 = "llvm.bitcast"(%38) : (f32) -> i32
    %40 = "llvm.icmp"(%37, %8) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%40)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %41 = "llvm.or"(%21, %20) : (i32, i32) -> i32
    %42 = "llvm.bitcast"(%41) : (i32) -> f32
    "llvm.br"(%42)[^bb34] : (f32) -> ()
  ^bb3:  // pred: ^bb1
    %43 = "llvm.icmp"(%39, %8) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%43)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %44 = "llvm.or"(%24, %20) : (i32, i32) -> i32
    %45 = "llvm.bitcast"(%44) : (i32) -> f32
    "llvm.br"(%45)[^bb34] : (f32) -> ()
  ^bb5:  // pred: ^bb3
    %46 = "llvm.icmp"(%37, %8) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%46)[^bb6, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb6:  // pred: ^bb5
    %47 = "llvm.icmp"(%39, %7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%47, %19)[^bb34, ^bb7] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f32) -> ()
  ^bb7:  // pred: ^bb6
    %48 = "llvm.or"(%28, %8) <{isDisjoint}> : (i32, i32) -> i32
    %49 = "llvm.bitcast"(%48) : (i32) -> f32
    "llvm.br"(%49)[^bb34] : (f32) -> ()
  ^bb8:  // pred: ^bb5
    %50 = "llvm.icmp"(%39, %8) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %51 = "llvm.icmp"(%37, %7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%50)[^bb9, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    "llvm.cond_br"(%51, %19)[^bb34, ^bb10] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f32) -> ()
  ^bb10:  // pred: ^bb9
    %52 = "llvm.or"(%28, %8) <{isDisjoint}> : (i32, i32) -> i32
    %53 = "llvm.bitcast"(%52) : (i32) -> f32
    "llvm.br"(%53)[^bb34] : (f32) -> ()
  ^bb11:  // pred: ^bb8
    "llvm.cond_br"(%51)[^bb12, ^bb13] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb12:  // pred: ^bb11
    %54 = "llvm.bitcast"(%28) : (i32) -> f32
    "llvm.br"(%54)[^bb34] : (f32) -> ()
  ^bb13:  // pred: ^bb11
    %55 = "llvm.icmp"(%39, %7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%55)[^bb14, ^bb15] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb14:  // pred: ^bb13
    %56 = "llvm.bitcast"(%28) : (i32) -> f32
    "llvm.br"(%56)[^bb34] : (f32) -> ()
  ^bb15:  // pred: ^bb13
    %57 = "llvm.icmp"(%37, %9) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%57, %29, %7)[^bb16, ^bb17] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  ^bb16:  // pred: ^bb15
    %58 = "llvm.intr.ctlz"(%29) <{is_zero_poison = true}> : (i32) -> i32
    %59 = "llvm.add"(%58, %10) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %60 = "llvm.shl"(%29, %59) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %61 = "llvm.sub"(%11, %58) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%60, %61)[^bb17] : (i32, i32) -> ()
  ^bb17(%62: i32, %63: i32):  // 2 preds: ^bb15, ^bb16
    %64 = "llvm.icmp"(%39, %9) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%64, %62, %30, %63)[^bb18, ^bb19] <{operandSegmentSizes = array<i32: 1, 0, 3>}> : (i1, i32, i32, i32) -> ()
  ^bb18:  // pred: ^bb17
    %65 = "llvm.intr.ctlz"(%30) <{is_zero_poison = true}> : (i32) -> i32
    %66 = "llvm.add"(%65, %10) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %67 = "llvm.shl"(%30, %66) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %68 = "llvm.sub"(%63, %65) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %69 = "llvm.add"(%68, %11) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%62, %67, %69)[^bb19] : (i32, i32, i32) -> ()
  ^bb19(%70: i32, %71: i32, %72: i32):  // 3 preds: ^bb0, ^bb17, ^bb18
    %73 = "llvm.or"(%70, %9) : (i32, i32) -> i32
    %74 = "llvm.shl"(%71, %12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %75 = "llvm.or"(%74, %2) : (i32, i32) -> i32
    %76 = "llvm.zext"(%73) : (i32) -> i64
    %77 = "llvm.zext"(%75) : (i32) -> i64
    %78 = "llvm.mul"(%77, %76) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %79 = "llvm.lshr"(%78, %13) : (i64, i64) -> i64
    %80 = "llvm.trunc"(%79) <{overflowFlags = 2 : i32}> : (i64) -> i32
    %81 = "llvm.trunc"(%78) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %82 = "llvm.add"(%23, %14) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %83 = "llvm.add"(%82, %26) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %84 = "llvm.add"(%83, %72) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %85 = "llvm.and"(%80, %9) : (i32, i32) -> i32
    %86 = "llvm.icmp"(%85, %7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%86)[^bb21, ^bb20] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb20:  // pred: ^bb19
    %87 = "llvm.add"(%84, %15) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.br"(%80, %81, %87)[^bb22] : (i32, i32, i32) -> ()
  ^bb21:  // pred: ^bb19
    %88 = "llvm.intr.fshl"(%80, %81, %15) : (i32, i32, i32) -> i32
    %89 = "llvm.shl"(%81, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%88, %89, %84)[^bb22] : (i32, i32, i32) -> ()
  ^bb22(%90: i32, %91: i32, %92: i32):  // 2 preds: ^bb20, ^bb21
    %93 = "llvm.icmp"(%92, %16) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%93)[^bb23, ^bb24] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb23:  // pred: ^bb22
    %94 = "llvm.or"(%28, %8) <{isDisjoint}> : (i32, i32) -> i32
    %95 = "llvm.bitcast"(%94) : (i32) -> f32
    "llvm.br"(%95)[^bb34] : (f32) -> ()
  ^bb24:  // pred: ^bb22
    %96 = "llvm.icmp"(%92, %15) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%96)[^bb25, ^bb28] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb25:  // pred: ^bb24
    %97 = "llvm.sub"(%15, %92) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %98 = "llvm.icmp"(%97, %17) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%98)[^bb26, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb26:  // pred: ^bb25
    %99 = "llvm.add"(%92, %18) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %100 = "llvm.shl"(%91, %99) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %101 = "llvm.icmp"(%100, %7) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %102 = "llvm.shl"(%90, %99) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %103 = "llvm.lshr"(%91, %97) : (i32, i32) -> i32
    %104 = "llvm.add"(%102, %103) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %105 = "llvm.zext"(%101) : (i1) -> i32
    %106 = "llvm.or"(%104, %105) : (i32, i32) -> i32
    %107 = "llvm.lshr"(%90, %97) : (i32, i32) -> i32
    "llvm.br"(%107, %106)[^bb29] : (i32, i32) -> ()
  ^bb27:  // pred: ^bb25
    %108 = "llvm.bitcast"(%28) : (i32) -> f32
    "llvm.br"(%108)[^bb34] : (f32) -> ()
  ^bb28:  // pred: ^bb24
    %109 = "llvm.and"(%90, %3) : (i32, i32) -> i32
    %110 = "llvm.shl"(%92, %0) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %111 = "llvm.or"(%110, %109) <{isDisjoint}> : (i32, i32) -> i32
    "llvm.br"(%111, %91)[^bb29] : (i32, i32) -> ()
  ^bb29(%112: i32, %113: i32):  // 2 preds: ^bb26, ^bb28
    %114 = "llvm.or"(%112, %28) : (i32, i32) -> i32
    %115 = "llvm.icmp"(%113, %2) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%115)[^bb30, ^bb31] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb30:  // pred: ^bb29
    %116 = "llvm.add"(%114, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%116)[^bb33] : (i32) -> ()
  ^bb31:  // pred: ^bb29
    %117 = "llvm.icmp"(%113, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%117, %114)[^bb32, ^bb33] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb32:  // pred: ^bb31
    %118 = "llvm.and"(%112, %15) : (i32, i32) -> i32
    %119 = "llvm.add"(%114, %118) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%119)[^bb33] : (i32) -> ()
  ^bb33(%120: i32):  // 3 preds: ^bb30, ^bb31, ^bb32
    %121 = "llvm.bitcast"(%120) : (i32) -> f32
    "llvm.br"(%121)[^bb34] : (f32) -> ()
  ^bb34(%122: f32):  // 11 preds: ^bb2, ^bb4, ^bb6, ^bb7, ^bb9, ^bb10, ^bb12, ^bb14, ^bb23, ^bb27, ^bb33
    "llvm.return"(%122) : (f32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

