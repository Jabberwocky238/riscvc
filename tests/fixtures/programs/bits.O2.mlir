#loop_annotation = #llvm.loop_annotation<mustProgress = true>
"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = -559038737 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 81985529216486895 : i64}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = 69069 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 6364136223846793005 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 1442695040888963407 : i64}> : () -> i64
    %7 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 17 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 1023 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 30 : i64}> : () -> i64
    %17 = "llvm.mlir.constant"() <{value = 4193280 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 500 : i32}> : () -> i32
    "llvm.br"(%0, %1, %0, %2)[^bb2] : (i32, i32, i32, i64) -> ()
  ^bb1:  // pred: ^bb4
    "llvm.return"(%71) : (i32) -> ()
  ^bb2(%19: i32, %20: i32, %21: i32, %22: i64):  // 2 preds: ^bb0, ^bb4
    %23 = "llvm.mul"(%20, %3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %24 = "llvm.add"(%23, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %25 = "llvm.mul"(%22, %5) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %26 = "llvm.add"(%25, %6) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %27 = "llvm.and"(%21, %7) : (i32, i32) -> i32
    %28 = "llvm.lshr"(%24, %27) : (i32, i32) -> i32
    %29 = "llvm.and"(%21, %8) : (i32, i32) -> i32
    %30 = "llvm.zext"(%29) <{nonNeg}> : (i32) -> i64
    %31 = "llvm.lshr"(%26, %30) : (i64, i64) -> i64
    %32 = "llvm.intr.ctpop"(%28) : (i32) -> i32
    %33 = "llvm.intr.ctpop"(%31) : (i64) -> i64
    %34 = "llvm.trunc"(%33) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %35 = "llvm.mul"(%34, %9) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %36 = "llvm.icmp"(%28, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %37 = "llvm.intr.ctlz"(%28) <{is_zero_poison = false}> : (i32) -> i32
    %38 = "llvm.icmp"(%31, %10) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%38, %0, %11)[^bb4, ^bb3] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i32, i32) -> ()
  ^bb3:  // pred: ^bb2
    %39 = "llvm.intr.cttz"(%31) <{is_zero_poison = true}> : (i64) -> i64
    %40 = "llvm.trunc"(%39) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %41 = "llvm.mul"(%40, %12) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %42 = "llvm.add"(%40, %4) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    "llvm.br"(%42, %41)[^bb4] : (i32, i32) -> ()
  ^bb4(%43: i32, %44: i32):  // 2 preds: ^bb2, ^bb3
    %45 = "llvm.intr.cttz"(%28) <{is_zero_poison = true}> : (i32) -> i32
    %46 = "llvm.add"(%45, %4) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %47 = "llvm.select"(%36, %0, %46) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %48 = "llvm.add"(%32, %19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %49 = "llvm.add"(%48, %37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %50 = "llvm.add"(%49, %35) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %51 = "llvm.add"(%50, %43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %52 = "llvm.add"(%51, %47) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %53 = "llvm.add"(%52, %44) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %54 = "llvm.intr.bswap"(%28) : (i32) -> i32
    %55 = "llvm.intr.bswap"(%31) : (i64) -> i64
    %56 = "llvm.lshr"(%55, %13) : (i64, i64) -> i64
    %57 = "llvm.trunc"(%56) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %58 = "llvm.add"(%54, %57) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %59 = "llvm.xor"(%53, %58) : (i32, i32) -> i32
    %60 = "llvm.intr.fshr"(%28, %28, %21) : (i32, i32, i32) -> i32
    %61 = "llvm.intr.bitreverse"(%28) : (i32) -> i32
    %62 = "llvm.xor"(%60, %61) : (i32, i32) -> i32
    %63 = "llvm.lshr"(%28, %14) : (i32, i32) -> i32
    %64 = "llvm.and"(%63, %15) : (i32, i32) -> i32
    %65 = "llvm.lshr"(%31, %16) : (i64, i64) -> i64
    %66 = "llvm.trunc"(%65) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %67 = "llvm.and"(%66, %17) : (i32, i32) -> i32
    %68 = "llvm.or"(%64, %67) <{isDisjoint}> : (i32, i32) -> i32
    %69 = "llvm.add"(%68, %62) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %70 = "llvm.add"(%69, %59) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %71 = "llvm.intr.fshl"(%70, %70, %4) : (i32, i32, i32) -> i32
    %72 = "llvm.add"(%21, %4) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %73 = "llvm.icmp"(%72, %18) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%73, %71, %24, %72, %26)[^bb1, ^bb2] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 4>}> : (i1, i32, i32, i32, i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

