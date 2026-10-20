"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}], dso_local, function_type = !llvm.func<f32 (i64)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__floatdisf", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %3 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 40 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = -40 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %8 = "llvm.mlir.constant"() <{value = 38 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 26 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 67108864 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %16 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 1065353216 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 8388607 : i32}> : () -> i32
    %20 = "llvm.icmp"(%arg0, %0) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%20, %1)[^bb9, ^bb1] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, f32) -> ()
  ^bb1:  // pred: ^bb0
    %21 = "llvm.ashr"(%arg0, %2) : (i64, i64) -> i64
    %22 = "llvm.xor"(%21, %arg0) : (i64, i64) -> i64
    %23 = "llvm.sub"(%22, %21) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %24 = "llvm.intr.ctlz"(%23) <{is_zero_poison = true}> : (i64) -> i64
    %25 = "llvm.trunc"(%24) <{overflowFlags = 3 : i32}> : (i64) -> i32
    %26 = "llvm.sub"(%3, %25) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %27 = "llvm.xor"(%25, %4) : (i32, i32) -> i32
    %28 = "llvm.icmp"(%25, %5) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%28)[^bb2, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.switch"(%25, %23)[^bb4, ^bb3, ^bb5] <{case_operand_segments = array<i32: 0, 1>, case_values = dense<[39, 38]> : vector<2xi32>, operandSegmentSizes = array<i32: 1, 0, 1>}> : (i32, i64) -> ()
  ^bb3:  // pred: ^bb2
    %29 = "llvm.shl"(%23, %7) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.br"(%29)[^bb5] : (i64) -> ()
  ^bb4:  // pred: ^bb2
    %30 = "llvm.sub"(%8, %25) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %31 = "llvm.zext"(%30) <{nonNeg}> : (i32) -> i64
    %32 = "llvm.lshr"(%23, %31) : (i64, i64) -> i64
    %33 = "llvm.add"(%25, %9) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %34 = "llvm.zext"(%33) <{nonNeg}> : (i32) -> i64
    %35 = "llvm.lshr"(%10, %34) : (i64, i64) -> i64
    %36 = "llvm.and"(%35, %23) : (i64, i64) -> i64
    %37 = "llvm.icmp"(%36, %0) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %38 = "llvm.zext"(%37) : (i1) -> i64
    %39 = "llvm.or"(%32, %38) : (i64, i64) -> i64
    "llvm.br"(%39)[^bb5] : (i64) -> ()
  ^bb5(%40: i64):  // 3 preds: ^bb2, ^bb3, ^bb4
    %41 = "llvm.trunc"(%40) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %42 = "llvm.lshr"(%41, %11) : (i32, i32) -> i32
    %43 = "llvm.and"(%42, %12) : (i32, i32) -> i32
    %44 = "llvm.zext"(%43) <{nonNeg}> : (i32) -> i64
    %45 = "llvm.or"(%40, %44) : (i64, i64) -> i64
    %46 = "llvm.add"(%45, %7) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %47 = "llvm.lshr"(%46, %13) : (i64, i64) -> i64
    %48 = "llvm.and"(%46, %14) : (i64, i64) -> i64
    %49 = "llvm.icmp"(%48, %0) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %50 = "llvm.trunc"(%47) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.cond_br"(%49, %27, %50)[^bb8, ^bb6] <{operandSegmentSizes = array<i32: 1, 2, 0>}> : (i1, i32, i32) -> ()
  ^bb6:  // pred: ^bb5
    %51 = "llvm.lshr"(%46, %15) : (i64, i64) -> i64
    %52 = "llvm.trunc"(%51) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.br"(%26, %52)[^bb8] : (i32, i32) -> ()
  ^bb7:  // pred: ^bb1
    %53 = "llvm.add"(%25, %6) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %54 = "llvm.zext"(%53) <{nonNeg}> : (i32) -> i64
    %55 = "llvm.shl"(%23, %54) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %56 = "llvm.trunc"(%55) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.br"(%27, %56)[^bb8] : (i32, i32) -> ()
  ^bb8(%57: i32, %58: i32):  // 3 preds: ^bb5, ^bb6, ^bb7
    %59 = "llvm.trunc"(%21) <{overflowFlags = 1 : i32}> : (i64) -> i32
    %60 = "llvm.and"(%59, %16) : (i32, i32) -> i32
    %61 = "llvm.shl"(%57, %17) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %62 = "llvm.add"(%61, %18) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %63 = "llvm.or"(%62, %60) <{isDisjoint}> : (i32, i32) -> i32
    %64 = "llvm.and"(%58, %19) : (i32, i32) -> i32
    %65 = "llvm.or"(%63, %64) <{isDisjoint}> : (i32, i32) -> i32
    %66 = "llvm.bitcast"(%65) : (i32) -> f32
    "llvm.br"(%66)[^bb9] : (f32) -> ()
  ^bb9(%67: f32):  // 2 preds: ^bb0, ^bb8
    "llvm.return"(%67) : (f32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

