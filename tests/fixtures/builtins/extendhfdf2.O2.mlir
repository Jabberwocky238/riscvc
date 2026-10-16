"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, function_type = !llvm.func<f64 (f16)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_inline, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__extendhfdf2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: f16):
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
    %14 = "llvm.bitcast"(%arg0) : (f16) -> i16
    %15 = "llvm.lshr"(%14, %0) : (i16, i16) -> i16
    %16 = "llvm.and"(%15, %1) : (i16, i16) -> i16
    %17 = "llvm.and"(%14, %2) : (i16, i16) -> i16
    "llvm.switch"(%16)[^bb1, ^bb2, ^bb3] <{case_operand_segments = array<i32: 0, 0>, case_values = dense<[31, 0]> : vector<2xi16>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i16) -> ()
  ^bb1:  // pred: ^bb0
    %18 = "llvm.add"(%16, %10) <{overflowFlags = 3 : i32}> : (i16, i16) -> i16
    %19 = "llvm.zext"(%18) <{nonNeg}> : (i16) -> i64
    %20 = "llvm.zext"(%17) <{nonNeg}> : (i16) -> i64
    %21 = "llvm.shl"(%20, %8) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    "llvm.br"(%21, %19)[^bb5] : (i64, i64) -> ()
  ^bb2:  // pred: ^bb0
    %22 = "llvm.zext"(%17) <{nonNeg}> : (i16) -> i64
    %23 = "llvm.shl"(%22, %8) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    "llvm.br"(%23, %9)[^bb5] : (i64, i64) -> ()
  ^bb3:  // pred: ^bb0
    %24 = "llvm.icmp"(%17, %3) <{predicate = 0 : i64}> : (i16, i16) -> i1
    "llvm.cond_br"(%24, %4, %4)[^bb5, ^bb4] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i64, i64) -> ()
  ^bb4:  // pred: ^bb3
    %25 = "llvm.zext"(%17) <{nonNeg}> : (i16) -> i32
    %26 = "llvm.intr.ctlz"(%25) <{is_zero_poison = true}> : (i32) -> i32
    %27 = "llvm.sub"(%5, %26) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %28 = "llvm.zext"(%27) <{nonNeg}> : (i32) -> i64
    %29 = "llvm.zext"(%17) <{nonNeg}> : (i16) -> i64
    %30 = "llvm.add"(%26, %6) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %31 = "llvm.zext"(%30) <{nonNeg}> : (i32) -> i64
    %32 = "llvm.shl"(%29, %31) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %33 = "llvm.xor"(%32, %7) : (i64, i64) -> i64
    "llvm.br"(%33, %28)[^bb5] : (i64, i64) -> ()
  ^bb5(%34: i64, %35: i64):  // 4 preds: ^bb1, ^bb2, ^bb3, ^bb4
    %36 = "llvm.lshr"(%14, %11) : (i16, i16) -> i16
    %37 = "llvm.zext"(%36) <{nonNeg}> : (i16) -> i64
    %38 = "llvm.shl"(%37, %12) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %39 = "llvm.shl"(%35, %13) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %40 = "llvm.or"(%39, %38) <{isDisjoint}> : (i64, i64) -> i64
    %41 = "llvm.or"(%40, %34) : (i64, i64) -> i64
    %42 = "llvm.bitcast"(%41) : (i64) -> f64
    "llvm.return"(%42) : (f64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

