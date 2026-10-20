#loop_annotation = #llvm.loop_annotation<mustProgress = true>
"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 4.000000e+00 : f64}> : () -> f64
    %4 = "llvm.mlir.constant"() <{value = -4.000000e+00 : f64}> : () -> f64
    %5 = "llvm.mlir.constant"() <{value = 200 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %7 = "llvm.mlir.constant"() <{value = -20 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 1.250000e+00 : f64}> : () -> f64
    %9 = "llvm.mlir.constant"() <{value = 5.000000e-01 : f64}> : () -> f64
    %10 = "llvm.mlir.constant"() <{value = 9.000000e+00 : f64}> : () -> f64
    %11 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f64}> : () -> f64
    %12 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 1.000000e+06 : f64}> : () -> f64
    %15 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 1.000000e+09 : f64}> : () -> f64
    %17 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %18 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    "llvm.br"(%0, %1)[^bb1] : (f64, i32) -> ()
  ^bb1(%19: f64, %20: i32):  // 2 preds: ^bb0, ^bb1
    %21 = "llvm.and"(%20, %2) : (i32, i32) -> i32
    %22 = "llvm.icmp"(%21, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %23 = "llvm.select"(%22, %3, %4) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %24 = "llvm.shl"(%20, %2) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %25 = "llvm.or"(%24, %2) <{isDisjoint}> : (i32, i32) -> i32
    %26 = "llvm.uitofp"(%25) <{nonNeg}> : (i32) -> f64
    %27 = "llvm.fdiv"(%23, %26) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %28 = "llvm.fadd"(%19, %27) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %29 = "llvm.add"(%20, %2) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %30 = "llvm.icmp"(%29, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%30, %6, %7, %28, %29)[^bb3, ^bb1] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 2, 2>}> : (i1, i64, i32, f64, i32) -> ()
  ^bb2:  // pred: ^bb3
    %31 = "llvm.bitcast"(%28) : (f64) -> i64
    %32 = "llvm.add"(%82, %31) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %33 = "llvm.lshr"(%32, %18) : (i64, i64) -> i64
    %34 = "llvm.xor"(%33, %32) : (i64, i64) -> i64
    %35 = "llvm.trunc"(%34) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%35) : (i32) -> ()
  ^bb3(%36: i64, %37: i32):  // 2 preds: ^bb1, ^bb3
    %38 = "llvm.sitofp"(%37) : (i32) -> f64
    %39 = "llvm.intr.fmuladd"(%38, %8, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    %40 = "llvm.mul"(%37, %37) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %41 = "llvm.mul"(%40, %37) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %42 = "llvm.sitofp"(%41) : (i32) -> f64
    %43 = "llvm.fdiv"(%42, %10) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %44 = "llvm.fmul"(%39, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %45 = "llvm.bitcast"(%44) : (f64) -> i64
    %46 = "llvm.fcmp"(%43, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %47 = "llvm.select"(%46, %11, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f64, f64) -> f64
    %48 = "llvm.fdiv"(%39, %47) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %49 = "llvm.bitcast"(%48) : (f64) -> i64
    %50 = "llvm.fsub"(%39, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %51 = "llvm.bitcast"(%50) : (f64) -> i64
    %52 = "llvm.xor"(%51, %45) : (i64, i64) -> i64
    %53 = "llvm.xor"(%52, %49) : (i64, i64) -> i64
    %54 = "llvm.fcmp"(%39, %43) <{fastmathFlags = #llvm.fastmath<none>, predicate = 4 : i64}> : (f64, f64) -> i1
    %55 = "llvm.zext"(%54) : (i1) -> i64
    %56 = "llvm.fcmp"(%39, %43) <{fastmathFlags = #llvm.fastmath<none>, predicate = 3 : i64}> : (f64, f64) -> i1
    %57 = "llvm.select"(%56, %12, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %58 = "llvm.or"(%57, %55) <{isDisjoint}> : (i64, i64) -> i64
    %59 = "llvm.fcmp"(%39, %43) <{fastmathFlags = #llvm.fastmath<none>, predicate = 13 : i64}> : (f64, f64) -> i1
    %60 = "llvm.select"(%59, %13, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %61 = "llvm.fmul"(%43, %14) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %62 = "llvm.fptosi"(%61) : (f64) -> i64
    %63 = "llvm.fptosi"(%39) : (f64) -> i32
    %64 = "llvm.sext"(%63) : (i32) -> i64
    %65 = "llvm.add"(%37, %15) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %66 = "llvm.zext"(%65) : (i32) -> i64
    %67 = "llvm.fptrunc"(%43) : (f64) -> f32
    %68 = "llvm.fpext"(%67) : (f32) -> f64
    %69 = "llvm.bitcast"(%68) : (f64) -> i64
    %70 = "llvm.fmul"(%39, %16) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    %71 = "llvm.fptosi"(%70) : (f64) -> i64
    %72 = "llvm.sitofp"(%71) : (i64) -> f64
    %73 = "llvm.bitcast"(%72) : (f64) -> i64
    %74 = "llvm.add"(%36, %66) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %75 = "llvm.add"(%74, %64) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %76 = "llvm.add"(%75, %73) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %77 = "llvm.add"(%76, %62) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %78 = "llvm.add"(%77, %60) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %79 = "llvm.add"(%78, %69) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %80 = "llvm.add"(%79, %58) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %81 = "llvm.add"(%80, %53) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %82 = "llvm.intr.fshl"(%81, %81, %17) : (i64, i64, i64) -> i64
    %83 = "llvm.add"(%37, %2) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %84 = "llvm.icmp"(%83, %15) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%84, %82, %83)[^bb2, ^bb3] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i64, i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

