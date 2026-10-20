#loop_annotation = #llvm.loop_annotation<mustProgress = true>
#tbaa_root = #llvm.tbaa_root<id = "Simple C/C++ TBAA">
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "long long", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef, llvm.writeonly}], dso_local, function_type = !llvm.func<i64 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = write, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__udivmoddi4", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %6 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %7 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = -32 : i32}> : () -> i32
    %12 = "llvm.mlir.poison"() : () -> i64
    %13 = "llvm.mlir.constant"() <{value = 30 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %16 = "llvm.mlir.constant"() <{value = 33 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %18 = "llvm.mlir.constant"() <{value = 4294967296 : i64}> : () -> i64
    %19 = "llvm.mlir.constant"() <{value = 4294967294 : i64}> : () -> i64
    %20 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %21 = "llvm.trunc"(%arg0) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %22 = "llvm.lshr"(%arg0, %0) : (i64, i64) -> i64
    %23 = "llvm.trunc"(%22) <{overflowFlags = 2 : i32}> : (i64) -> i32
    %24 = "llvm.trunc"(%arg1) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %25 = "llvm.lshr"(%arg1, %0) : (i64, i64) -> i64
    %26 = "llvm.trunc"(%25) <{overflowFlags = 2 : i32}> : (i64) -> i32
    %27 = "llvm.icmp"(%22, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%27)[^bb1, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %28 = "llvm.icmp"(%25, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %29 = "llvm.icmp"(%arg2, %6) <{predicate = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    "llvm.cond_br"(%28)[^bb2, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %30 = "llvm.udiv"(%21, %24) : (i32, i32) -> i32
    "llvm.cond_br"(%29)[^bb4, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    %31 = "llvm.mul"(%30, %24) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %32 = "llvm.sub"(%21, %31) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %33 = "llvm.zext"(%32) : (i32) -> i64
    "llvm.store"(%33, %arg2) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb4] : () -> ()
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %34 = "llvm.zext"(%30) : (i32) -> i64
    "llvm.br"(%34)[^bb41] : (i64) -> ()
  ^bb5:  // pred: ^bb1
    "llvm.cond_br"(%29, %1)[^bb41, ^bb6] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i64) -> ()
  ^bb6:  // pred: ^bb5
    "llvm.store"(%arg0, %arg2) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i64, !llvm.ptr) -> ()
    "llvm.br"(%1)[^bb41] : (i64) -> ()
  ^bb7:  // pred: ^bb0
    %35 = "llvm.icmp"(%24, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %36 = "llvm.icmp"(%25, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%35)[^bb8, ^bb21] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb8:  // pred: ^bb7
    "llvm.cond_br"(%36, %12)[^bb41, ^bb9] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i64) -> ()
  ^bb9:  // pred: ^bb8
    %37 = "llvm.icmp"(%21, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%37)[^bb10, ^bb13] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb10:  // pred: ^bb9
    %38 = "llvm.icmp"(%arg2, %6) <{predicate = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    %39 = "llvm.udiv"(%23, %26) : (i32, i32) -> i32
    "llvm.cond_br"(%38)[^bb12, ^bb11] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb11:  // pred: ^bb10
    %40 = "llvm.mul"(%39, %26) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %41 = "llvm.sub"(%23, %40) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %42 = "llvm.zext"(%41) : (i32) -> i64
    %43 = "llvm.shl"(%42, %0) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.store"(%43, %arg2) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb12] : () -> ()
  ^bb12:  // 2 preds: ^bb10, ^bb11
    %44 = "llvm.zext"(%39) : (i32) -> i64
    "llvm.br"(%44)[^bb41] : (i64) -> ()
  ^bb13:  // pred: ^bb9
    %45 = "llvm.add"(%26, %7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %46 = "llvm.intr.ctpop"(%26) : (i32) -> i32
    %47 = "llvm.icmp"(%46, %8) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%47)[^bb14, ^bb17] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb14:  // pred: ^bb13
    %48 = "llvm.icmp"(%arg2, %6) <{predicate = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    "llvm.cond_br"(%48)[^bb16, ^bb15] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb15:  // pred: ^bb14
    %49 = "llvm.and"(%45, %23) : (i32, i32) -> i32
    %50 = "llvm.zext"(%49) : (i32) -> i64
    %51 = "llvm.shl"(%50, %0) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %52 = "llvm.and"(%arg0, %20) : (i64, i64) -> i64
    %53 = "llvm.or"(%51, %52) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.store"(%53, %arg2) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb16] : () -> ()
  ^bb16:  // 2 preds: ^bb14, ^bb15
    %54 = "llvm.intr.cttz"(%26) <{is_zero_poison = true}> : (i32) -> i32
    %55 = "llvm.lshr"(%23, %54) : (i32, i32) -> i32
    %56 = "llvm.zext"(%55) : (i32) -> i64
    "llvm.br"(%56)[^bb41] : (i64) -> ()
  ^bb17:  // pred: ^bb13
    %57 = "llvm.intr.ctlz"(%26) <{is_zero_poison = true}> : (i32) -> i32
    %58 = "llvm.intr.ctlz"(%23) <{is_zero_poison = true}> : (i32) -> i32
    %59 = "llvm.sub"(%57, %58) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %60 = "llvm.icmp"(%59, %13) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%60)[^bb18, ^bb20] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb18:  // pred: ^bb17
    %61 = "llvm.icmp"(%arg2, %6) <{predicate = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    "llvm.cond_br"(%61, %1)[^bb41, ^bb19] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i64) -> ()
  ^bb19:  // pred: ^bb18
    "llvm.store"(%arg0, %arg2) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i64, !llvm.ptr) -> ()
    "llvm.br"(%1)[^bb41] : (i64) -> ()
  ^bb20:  // pred: ^bb17
    %62 = "llvm.add"(%59, %4) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %63 = "llvm.sub"(%3, %59) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %64 = "llvm.shl"(%21, %63) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %65 = "llvm.lshr"(%23, %62) : (i32, i32) -> i32
    %66 = "llvm.shl"(%23, %63) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %67 = "llvm.lshr"(%21, %62) : (i32, i32) -> i32
    %68 = "llvm.or"(%66, %67) : (i32, i32) -> i32
    "llvm.br"(%62, %68, %65, %2, %64)[^bb36] : (i32, i32, i32, i32, i32) -> ()
  ^bb21:  // pred: ^bb7
    "llvm.cond_br"(%36)[^bb22, ^bb31] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb22:  // pred: ^bb21
    %69 = "llvm.add"(%24, %7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %70 = "llvm.intr.ctpop"(%24) : (i32) -> i32
    %71 = "llvm.icmp"(%70, %8) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%71)[^bb23, ^bb27] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb23:  // pred: ^bb22
    %72 = "llvm.icmp"(%arg2, %6) <{predicate = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    "llvm.cond_br"(%72)[^bb25, ^bb24] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb24:  // pred: ^bb23
    %73 = "llvm.and"(%69, %21) : (i32, i32) -> i32
    %74 = "llvm.zext"(%73) : (i32) -> i64
    "llvm.store"(%74, %arg2) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb25] : () -> ()
  ^bb25:  // 2 preds: ^bb23, ^bb24
    %75 = "llvm.icmp"(%24, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%75, %arg0)[^bb41, ^bb26] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i64) -> ()
  ^bb26:  // pred: ^bb25
    %76 = "llvm.intr.cttz"(%24) <{is_zero_poison = true}> : (i32) -> i32
    %77 = "llvm.lshr"(%23, %76) : (i32, i32) -> i32
    %78 = "llvm.intr.fshr"(%23, %21, %76) : (i32, i32, i32) -> i32
    %79 = "llvm.zext"(%77) : (i32) -> i64
    %80 = "llvm.shl"(%79, %0) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %81 = "llvm.zext"(%78) : (i32) -> i64
    %82 = "llvm.or"(%80, %81) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.br"(%82)[^bb41] : (i64) -> ()
  ^bb27:  // pred: ^bb22
    %83 = "llvm.intr.ctlz"(%24) <{is_zero_poison = true}> : (i32) -> i32
    %84 = "llvm.add"(%83, %9) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %85 = "llvm.intr.ctlz"(%23) <{is_zero_poison = true}> : (i32) -> i32
    %86 = "llvm.sub"(%84, %85) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %87 = "llvm.icmp"(%86, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%87, %5, %23, %2, %2, %21)[^bb36, ^bb28] <{operandSegmentSizes = array<i32: 1, 5, 0>}> : (i1, i32, i32, i32, i32, i32) -> ()
  ^bb28:  // pred: ^bb27
    %88 = "llvm.icmp"(%86, %5) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%88)[^bb29, ^bb30] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb29:  // pred: ^bb28
    %89 = "llvm.sub"(%5, %86) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %90 = "llvm.shl"(%21, %89) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %91 = "llvm.lshr"(%23, %86) : (i32, i32) -> i32
    %92 = "llvm.shl"(%23, %89) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %93 = "llvm.lshr"(%21, %86) : (i32, i32) -> i32
    %94 = "llvm.or"(%92, %93) <{isDisjoint}> : (i32, i32) -> i32
    "llvm.br"(%86, %94, %91, %2, %90)[^bb36] : (i32, i32, i32, i32, i32) -> ()
  ^bb30:  // pred: ^bb28
    %95 = "llvm.sub"(%10, %86) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %96 = "llvm.shl"(%21, %95) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %97 = "llvm.shl"(%23, %95) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %98 = "llvm.add"(%86, %11) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %99 = "llvm.lshr"(%21, %98) : (i32, i32) -> i32
    %100 = "llvm.or"(%97, %99) : (i32, i32) -> i32
    %101 = "llvm.lshr"(%23, %98) : (i32, i32) -> i32
    "llvm.br"(%86, %101, %2, %96, %100)[^bb36] : (i32, i32, i32, i32, i32) -> ()
  ^bb31:  // pred: ^bb21
    %102 = "llvm.intr.ctlz"(%26) <{is_zero_poison = true}> : (i32) -> i32
    %103 = "llvm.intr.ctlz"(%23) <{is_zero_poison = true}> : (i32) -> i32
    %104 = "llvm.sub"(%102, %103) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %105 = "llvm.icmp"(%104, %3) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%105)[^bb32, ^bb34] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb32:  // pred: ^bb31
    %106 = "llvm.icmp"(%arg2, %6) <{predicate = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    "llvm.cond_br"(%106, %1)[^bb41, ^bb33] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i64) -> ()
  ^bb33:  // pred: ^bb32
    "llvm.store"(%arg0, %arg2) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i64, !llvm.ptr) -> ()
    "llvm.br"(%1)[^bb41] : (i64) -> ()
  ^bb34:  // pred: ^bb31
    %107 = "llvm.add"(%104, %4) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %108 = "llvm.icmp"(%107, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%108, %5, %23, %2, %2, %21)[^bb36, ^bb35] <{operandSegmentSizes = array<i32: 1, 5, 0>}> : (i1, i32, i32, i32, i32, i32) -> ()
  ^bb35:  // pred: ^bb34
    %109 = "llvm.sub"(%3, %104) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %110 = "llvm.shl"(%21, %109) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %111 = "llvm.lshr"(%23, %107) : (i32, i32) -> i32
    %112 = "llvm.shl"(%23, %109) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %113 = "llvm.lshr"(%21, %107) : (i32, i32) -> i32
    %114 = "llvm.or"(%112, %113) : (i32, i32) -> i32
    "llvm.br"(%107, %114, %111, %2, %110)[^bb36] : (i32, i32, i32, i32, i32) -> ()
  ^bb36(%115: i32, %116: i32, %117: i32, %118: i32, %119: i32):  // 6 preds: ^bb20, ^bb27, ^bb29, ^bb30, ^bb34, ^bb35
    "llvm.br"(%2, %115, %116, %117, %118, %119)[^bb37] : (i32, i32, i32, i32, i32, i32) -> ()
  ^bb37(%120: i32, %121: i32, %122: i32, %123: i32, %124: i32, %125: i32):  // 2 preds: ^bb36, ^bb37
    %126 = "llvm.intr.fshl"(%123, %122, %4) : (i32, i32, i32) -> i32
    %127 = "llvm.intr.fshl"(%122, %125, %4) : (i32, i32, i32) -> i32
    %128 = "llvm.intr.fshl"(%125, %124, %4) : (i32, i32, i32) -> i32
    %129 = "llvm.shl"(%124, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %130 = "llvm.or"(%120, %129) : (i32, i32) -> i32
    %131 = "llvm.zext"(%126) : (i32) -> i64
    %132 = "llvm.shl"(%131, %0) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %133 = "llvm.zext"(%127) : (i32) -> i64
    %134 = "llvm.or"(%132, %133) <{isDisjoint}> : (i64, i64) -> i64
    %135 = "llvm.xor"(%134, %14) : (i64, i64) -> i64
    %136 = "llvm.add"(%arg1, %135) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %137 = "llvm.lshr"(%136, %15) : (i64, i64) -> i64
    %138 = "llvm.trunc"(%137) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %139 = "llvm.icmp"(%136, %1) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %140 = "llvm.select"(%139, %arg1, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %141 = "llvm.sub"(%134, %140) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %142 = "llvm.trunc"(%141) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %143 = "llvm.lshr"(%141, %0) : (i64, i64) -> i64
    %144 = "llvm.trunc"(%143) <{overflowFlags = 2 : i32}> : (i64) -> i32
    %145 = "llvm.add"(%121, %7) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %146 = "llvm.icmp"(%145, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%146, %138, %145, %142, %144, %130, %128)[^bb38, ^bb37] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 6>}> : (i1, i32, i32, i32, i32, i32, i32) -> ()
  ^bb38:  // pred: ^bb37
    %147 = "llvm.zext"(%128) : (i32) -> i64
    %148 = "llvm.zext"(%130) : (i32) -> i64
    %149 = "llvm.shl"(%147, %16) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %150 = "llvm.shl"(%148, %17) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %151 = "llvm.and"(%150, %18) : (i64, i64) -> i64
    %152 = "llvm.or"(%151, %149) <{isDisjoint}> : (i64, i64) -> i64
    %153 = "llvm.icmp"(%arg2, %6) <{predicate = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    "llvm.cond_br"(%153)[^bb40, ^bb39] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb39:  // pred: ^bb38
    "llvm.store"(%141, %arg2) <{alignment = 8 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb40] : () -> ()
  ^bb40:  // 2 preds: ^bb38, ^bb39
    %154 = "llvm.and"(%150, %19) : (i64, i64) -> i64
    %155 = "llvm.or"(%137, %154) <{isDisjoint}> : (i64, i64) -> i64
    %156 = "llvm.or"(%152, %155) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.br"(%156)[^bb41] : (i64) -> ()
  ^bb41(%157: i64):  // 13 preds: ^bb4, ^bb5, ^bb6, ^bb8, ^bb12, ^bb16, ^bb18, ^bb19, ^bb25, ^bb26, ^bb32, ^bb33, ^bb40
    "llvm.return"(%157) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

