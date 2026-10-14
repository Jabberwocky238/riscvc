"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__clzsi2", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 65536 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 65280 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 240 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %11 = "llvm.icmp"(%arg0, %0) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %12 = "llvm.select"(%11, %1, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %13 = "llvm.sub"(%1, %12) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %14 = "llvm.lshr"(%arg0, %13) : (i32, i32) -> i32
    %15 = "llvm.and"(%14, %3) : (i32, i32) -> i32
    %16 = "llvm.icmp"(%15, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %17 = "llvm.select"(%16, %4, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %18 = "llvm.sub"(%4, %17) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %19 = "llvm.lshr"(%14, %18) : (i32, i32) -> i32
    %20 = "llvm.or"(%17, %12) <{isDisjoint}> : (i32, i32) -> i32
    %21 = "llvm.and"(%19, %5) : (i32, i32) -> i32
    %22 = "llvm.icmp"(%21, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %23 = "llvm.select"(%22, %6, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %24 = "llvm.sub"(%6, %23) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %25 = "llvm.lshr"(%19, %24) : (i32, i32) -> i32
    %26 = "llvm.or"(%20, %23) <{isDisjoint}> : (i32, i32) -> i32
    %27 = "llvm.and"(%25, %7) : (i32, i32) -> i32
    %28 = "llvm.icmp"(%27, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %29 = "llvm.select"(%28, %8, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %30 = "llvm.sub"(%8, %29) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %31 = "llvm.lshr"(%25, %30) : (i32, i32) -> i32
    %32 = "llvm.or"(%26, %29) <{isDisjoint}> : (i32, i32) -> i32
    %33 = "llvm.sub"(%8, %31) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %34 = "llvm.lshr"(%31, %9) : (i32, i32) -> i32
    %35 = "llvm.or"(%34, %10) : (i32, i32) -> i32
    %36 = "llvm.add"(%35, %9) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %37 = "llvm.and"(%36, %33) : (i32, i32) -> i32
    %38 = "llvm.add"(%32, %37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%38) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

