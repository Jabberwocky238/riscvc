"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, function_type = !llvm.func<f64 (f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__extendsfdf2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: f32):
    %0 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 8388607 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %4 = "llvm.mlir.constant"() <{value = 905 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 21 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 4503599627370496 : i64}> : () -> i64
    %7 = "llvm.mlir.constant"() <{value = 29 : i64}> : () -> i64
    %8 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 896 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = 52 : i64}> : () -> i64
    %14 = "llvm.bitcast"(%arg0) : (f32) -> i32
    %15 = "llvm.lshr"(%14, %0) : (i32, i32) -> i32
    %16 = "llvm.and"(%14, %1) : (i32, i32) -> i32
    %17 = "llvm.trunc"(%15) <{overflowFlags = 0 : i32}> : (i32) -> i8
    "llvm.switch"(%17)[^bb1, ^bb2, ^bb3] <{case_operand_segments = array<i32: 0, 0>, case_values = dense<[-1, 0]> : vector<2xi8>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i8) -> ()
  ^bb1:  // pred: ^bb0
    %18 = "llvm.and"(%15, %9) : (i32, i32) -> i32
    %19 = "llvm.add"(%18, %10) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %20 = "llvm.zext"(%16) <{nonNeg}> : (i32) -> i64
    %21 = "llvm.shl"(%20, %7) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    "llvm.br"(%21, %19)[^bb5] : (i64, i32) -> ()
  ^bb2:  // pred: ^bb0
    %22 = "llvm.zext"(%16) <{nonNeg}> : (i32) -> i64
    %23 = "llvm.shl"(%22, %7) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    "llvm.br"(%23, %8)[^bb5] : (i64, i32) -> ()
  ^bb3:  // pred: ^bb0
    %24 = "llvm.icmp"(%16, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%24, %3, %2)[^bb5, ^bb4] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i64, i32) -> ()
  ^bb4:  // pred: ^bb3
    %25 = "llvm.intr.ctlz"(%16) <{is_zero_poison = true}> : (i32) -> i32
    %26 = "llvm.sub"(%4, %25) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %27 = "llvm.zext"(%16) <{nonNeg}> : (i32) -> i64
    %28 = "llvm.add"(%25, %5) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %29 = "llvm.zext"(%28) <{nonNeg}> : (i32) -> i64
    %30 = "llvm.shl"(%27, %29) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %31 = "llvm.xor"(%30, %6) : (i64, i64) -> i64
    "llvm.br"(%31, %26)[^bb5] : (i64, i32) -> ()
  ^bb5(%32: i64, %33: i32):  // 4 preds: ^bb1, ^bb2, ^bb3, ^bb4
    %34 = "llvm.lshr"(%14, %11) : (i32, i32) -> i32
    %35 = "llvm.zext"(%33) <{nonNeg}> : (i32) -> i64
    %36 = "llvm.zext"(%34) <{nonNeg}> : (i32) -> i64
    %37 = "llvm.shl"(%36, %12) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %38 = "llvm.shl"(%35, %13) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %39 = "llvm.or"(%38, %37) <{isDisjoint}> : (i64, i64) -> i64
    %40 = "llvm.or"(%39, %32) : (i64, i64) -> i64
    %41 = "llvm.bitcast"(%40) : (i64) -> f64
    "llvm.return"(%41) : (f64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

