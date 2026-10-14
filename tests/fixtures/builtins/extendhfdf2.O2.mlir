"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef, llvm.zeroext}], dso_local, function_type = !llvm.func<f64 (i16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_inline, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__extendhfdf2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: i16):
    %0 = "llvm.mlir.constant"() <{value = 10 : i16}> : () -> i16
    %1 = "llvm.mlir.constant"() <{value = 31 : i16}> : () -> i16
    %2 = "llvm.mlir.constant"() <{value = 1023 : i16}> : () -> i16
    %3 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %4 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = 1030 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 21 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 4503599627370496 : i64}> : () -> i64
    %8 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = 2047 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = 1008 : i16}> : () -> i16
    %11 = "llvm.mlir.constant"() <{value = 15 : i16}> : () -> i16
    %12 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = 52 : i64}> : () -> i64
    %14 = "llvm.lshr"(%arg0, %0) : (i16, i16) -> i16
    %15 = "llvm.and"(%14, %1) : (i16, i16) -> i16
    %16 = "llvm.and"(%arg0, %2) : (i16, i16) -> i16
    "llvm.switch"(%15)[^bb1, ^bb2, ^bb3] <{case_operand_segments = array<i32: 0, 0>, case_values = dense<[31, 0]> : vector<2xi16>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i16) -> ()
  ^bb1:  // pred: ^bb0
    %17 = "llvm.add"(%15, %10) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    %18 = "llvm.zext"(%17) <{nonNeg}> : (i16) -> i64
    %19 = "llvm.zext"(%16) <{nonNeg}> : (i16) -> i64
    %20 = "llvm.shl"(%19, %8) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    "llvm.br"(%20, %18)[^bb5] : (i64, i64) -> ()
  ^bb2:  // pred: ^bb0
    %21 = "llvm.zext"(%16) <{nonNeg}> : (i16) -> i64
    %22 = "llvm.shl"(%21, %8) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    "llvm.br"(%22, %9)[^bb5] : (i64, i64) -> ()
  ^bb3:  // pred: ^bb0
    %23 = "llvm.icmp"(%16, %3) <{predicate = 0 : i64}> : (i16, i16) -> i1
    "llvm.cond_br"(%23, %4, %4)[^bb5, ^bb4] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i64, i64) -> ()
  ^bb4:  // pred: ^bb3
    %24 = "llvm.zext"(%16) <{nonNeg}> : (i16) -> i32
    %25 = "llvm.intr.ctlz"(%24) <{is_zero_poison = true}> : (i32) -> i32
    %26 = "llvm.sub"(%5, %25) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %27 = "llvm.zext"(%26) <{nonNeg}> : (i32) -> i64
    %28 = "llvm.zext"(%16) <{nonNeg}> : (i16) -> i64
    %29 = "llvm.add"(%25, %6) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %30 = "llvm.zext"(%29) <{nonNeg}> : (i32) -> i64
    %31 = "llvm.shl"(%28, %30) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %32 = "llvm.xor"(%31, %7) : (i64, i64) -> i64
    "llvm.br"(%32, %27)[^bb5] : (i64, i64) -> ()
  ^bb5(%33: i64, %34: i64):  // 4 preds: ^bb1, ^bb2, ^bb3, ^bb4
    %35 = "llvm.lshr"(%arg0, %11) : (i16, i16) -> i16
    %36 = "llvm.zext"(%35) <{nonNeg}> : (i16) -> i64
    %37 = "llvm.shl"(%36, %12) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %38 = "llvm.shl"(%34, %13) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %39 = "llvm.or"(%38, %37) <{isDisjoint}> : (i64, i64) -> i64
    %40 = "llvm.or"(%39, %33) : (i64, i64) -> i64
    %41 = "llvm.bitcast"(%40) : (i64) -> f64
    "llvm.return"(%41) : (f64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

