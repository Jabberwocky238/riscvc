"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, function_type = !llvm.func<bf16 (f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__truncsfbf2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: f32):
    %0 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 8388607 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 254 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 255 : i16}> : () -> i16
    %8 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %9 = "llvm.mlir.constant"() <{value = 8388608 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %13 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 32768 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %16 = "llvm.mlir.constant"() <{value = 127 : i16}> : () -> i16
    %17 = "llvm.mlir.constant"() <{value = 128 : i16}> : () -> i16
    %18 = "llvm.mlir.constant"() <{value = 64 : i16}> : () -> i16
    %19 = "llvm.mlir.constant"() <{value = -32768 : i16}> : () -> i16
    %20 = "llvm.mlir.constant"() <{value = 7 : i16}> : () -> i16
    %21 = "llvm.bitcast"(%arg0) : (f32) -> i32
    %22 = "llvm.lshr"(%21, %0) : (i32, i32) -> i32
    %23 = "llvm.and"(%22, %1) : (i32, i32) -> i32
    %24 = "llvm.and"(%21, %2) : (i32, i32) -> i32
    %25 = "llvm.and"(%21, %3) : (i32, i32) -> i32
    %26 = "llvm.icmp"(%25, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%26)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %27 = "llvm.trunc"(%23) <{overflowFlags = 3 : i32}> : (i32) -> i16
    %28 = "llvm.lshr"(%24, %13) <{isExact}> : (i32, i32) -> i32
    %29 = "llvm.trunc"(%28) <{overflowFlags = 3 : i32}> : (i32) -> i16
    "llvm.br"(%27, %29)[^bb17] : (i16, i16) -> ()
  ^bb2:  // pred: ^bb0
    %30 = "llvm.add"(%23, %5) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %31 = "llvm.icmp"(%30, %6) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%31)[^bb3, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb3:  // pred: ^bb2
    %32 = "llvm.trunc"(%23) <{overflowFlags = 3 : i32}> : (i32) -> i16
    %33 = "llvm.lshr"(%24, %13) : (i32, i32) -> i32
    %34 = "llvm.trunc"(%33) <{overflowFlags = 3 : i32}> : (i32) -> i16
    %35 = "llvm.icmp"(%25, %14) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%35)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %36 = "llvm.add"(%34, %15) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    "llvm.br"(%36)[^bb7] : (i16) -> ()
  ^bb5:  // pred: ^bb3
    %37 = "llvm.icmp"(%25, %14) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%37, %34)[^bb6, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i16) -> ()
  ^bb6:  // pred: ^bb5
    %38 = "llvm.and"(%33, %10) : (i32, i32) -> i32
    %39 = "llvm.add"(%38, %33) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %40 = "llvm.trunc"(%39) <{overflowFlags = 3 : i32}> : (i32) -> i16
    "llvm.br"(%40)[^bb7] : (i16) -> ()
  ^bb7(%41: i16):  // 3 preds: ^bb4, ^bb5, ^bb6
    %42 = "llvm.icmp"(%41, %16) <{predicate = 8 : i64}> : (i16, i16) -> i1
    %43 = "llvm.select"(%42, %8, %41) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %44 = "llvm.zext"(%42) : (i1) -> i16
    %45 = "llvm.add"(%44, %32) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    "llvm.br"(%45, %43)[^bb17] : (i16, i16) -> ()
  ^bb8:  // pred: ^bb2
    %46 = "llvm.icmp"(%23, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %47 = "llvm.icmp"(%24, %4) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %48 = "llvm.and"(%47, %46) : (i1, i1) -> i1
    "llvm.cond_br"(%48)[^bb9, ^bb10] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb9:  // pred: ^bb8
    %49 = "llvm.lshr"(%24, %13) : (i32, i32) -> i32
    %50 = "llvm.trunc"(%49) <{overflowFlags = 3 : i32}> : (i32) -> i16
    %51 = "llvm.or"(%50, %18) : (i16, i16) -> i16
    "llvm.br"(%7, %51)[^bb17] : (i16, i16) -> ()
  ^bb10:  // pred: ^bb8
    %52 = "llvm.trunc"(%22) <{overflowFlags = 0 : i32}> : (i32) -> i8
    "llvm.switch"(%52, %7, %8, %24, %4)[^bb11, ^bb17, ^bb12] <{case_operand_segments = array<i32: 2, 2>, case_values = dense<[-1, 0]> : vector<2xi8>, operandSegmentSizes = array<i32: 1, 0, 4>}> : (i8, i16, i16, i32, i32) -> ()
  ^bb11:  // pred: ^bb10
    %53 = "llvm.or"(%24, %9) <{isDisjoint}> : (i32, i32) -> i32
    "llvm.br"(%53, %10)[^bb12] : (i32, i32) -> ()
  ^bb12(%54: i32, %55: i32):  // 2 preds: ^bb10, ^bb11
    %56 = "llvm.sub"(%55, %23) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %57 = "llvm.icmp"(%55, %23) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %58 = "llvm.sub"(%11, %56) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %59 = "llvm.shl"(%54, %58) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %60 = "llvm.icmp"(%59, %4) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %61 = "llvm.select"(%57, %60, %12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i1, i1) -> i1
    %62 = "llvm.zext"(%61) : (i1) -> i32
    %63 = "llvm.lshr"(%54, %56) : (i32, i32) -> i32
    %64 = "llvm.lshr"(%63, %13) : (i32, i32) -> i32
    %65 = "llvm.trunc"(%64) <{overflowFlags = 3 : i32}> : (i32) -> i16
    %66 = "llvm.and"(%63, %3) : (i32, i32) -> i32
    %67 = "llvm.or"(%66, %62) : (i32, i32) -> i32
    %68 = "llvm.icmp"(%67, %14) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%68)[^bb13, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb13:  // pred: ^bb12
    %69 = "llvm.add"(%65, %15) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    "llvm.br"(%69)[^bb16] : (i16) -> ()
  ^bb14:  // pred: ^bb12
    %70 = "llvm.icmp"(%67, %14) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%70, %65)[^bb15, ^bb16] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i16) -> ()
  ^bb15:  // pred: ^bb14
    %71 = "llvm.and"(%64, %10) : (i32, i32) -> i32
    %72 = "llvm.add"(%71, %64) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %73 = "llvm.trunc"(%72) <{overflowFlags = 3 : i32}> : (i32) -> i16
    "llvm.br"(%73)[^bb16] : (i16) -> ()
  ^bb16(%74: i16):  // 3 preds: ^bb13, ^bb14, ^bb15
    %75 = "llvm.icmp"(%74, %16) <{predicate = 8 : i64}> : (i16, i16) -> i1
    %76 = "llvm.xor"(%74, %17) : (i16, i16) -> i16
    %77 = "llvm.select"(%75, %76, %74) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %78 = "llvm.zext"(%75) : (i1) -> i16
    "llvm.br"(%78, %77)[^bb17] : (i16, i16) -> ()
  ^bb17(%79: i16, %80: i16):  // 5 preds: ^bb1, ^bb7, ^bb9, ^bb10, ^bb16
    %81 = "llvm.lshr"(%21, %13) : (i32, i32) -> i32
    %82 = "llvm.trunc"(%81) <{overflowFlags = 2 : i32}> : (i32) -> i16
    %83 = "llvm.and"(%82, %19) : (i16, i16) -> i16
    %84 = "llvm.shl"(%79, %20) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    %85 = "llvm.or"(%84, %83) <{isDisjoint}> : (i16, i16) -> i16
    %86 = "llvm.or"(%85, %80) : (i16, i16) -> i16
    %87 = "llvm.bitcast"(%86) : (i16) -> bf16
    "llvm.return"(%87) : (bf16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

