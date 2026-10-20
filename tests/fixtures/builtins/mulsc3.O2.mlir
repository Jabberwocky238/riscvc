"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}, {llvm.noundef}], dso_local, function_type = !llvm.func<struct<(f32, f32)> (f32, f32, f32, f32)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["mustprogress", "nofree", "norecurse", "nosync", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "__mulsc3", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64, will_return}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: f32, %arg3: f32):
    %0 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "llvm.mlir.constant"() <{value = 0x7F800000 : f32}> : () -> f32
    %2 = "llvm.mlir.poison"() : () -> !llvm.struct<(f32, f32)>
    %3 = "llvm.fmul"(%arg0, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %4 = "llvm.fmul"(%arg1, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %5 = "llvm.fmul"(%arg0, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %6 = "llvm.fmul"(%arg1, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %7 = "llvm.fsub"(%3, %4) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %8 = "llvm.fadd"(%6, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %9 = "llvm.fcmp"(%7, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %10 = "llvm.fcmp"(%8, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %11 = "llvm.and"(%9, %10) : (i1, i1) -> i1
    "llvm.cond_br"(%11, %8, %7)[^bb1, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, f32, f32) -> ()
  ^bb1:  // pred: ^bb0
    %12 = "llvm.intr.fabs"(%arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %13 = "llvm.fcmp"(%12, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %14 = "llvm.intr.fabs"(%arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %15 = "llvm.fcmp"(%14, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %16 = "llvm.or"(%13, %15) : (i1, i1) -> i1
    "llvm.cond_br"(%16, %arg3, %arg2, %arg1, %arg0)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 4>}> : (i1, f32, f32, f32, f32) -> ()
  ^bb2:  // pred: ^bb1
    %17 = "llvm.uitofp"(%13) : (i1) -> f32
    %18 = "llvm.intr.copysign"(%17, %arg0) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %19 = "llvm.uitofp"(%15) : (i1) -> f32
    %20 = "llvm.intr.copysign"(%19, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %21 = "llvm.fcmp"(%arg2, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %22 = "llvm.intr.copysign"(%0, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %23 = "llvm.select"(%21, %22, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    %24 = "llvm.fcmp"(%arg3, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %25 = "llvm.intr.copysign"(%0, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %26 = "llvm.select"(%24, %25, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.br"(%26, %23, %20, %18)[^bb3] : (f32, f32, f32, f32) -> ()
  ^bb3(%27: f32, %28: f32, %29: f32, %30: f32):  // 2 preds: ^bb1, ^bb2
    %31 = "llvm.intr.fabs"(%28) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %32 = "llvm.fcmp"(%31, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %33 = "llvm.intr.fabs"(%27) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %34 = "llvm.fcmp"(%33, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %35 = "llvm.or"(%34, %32) : (i1, i1) -> i1
    "llvm.cond_br"(%35)[^bb4, ^bb5] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb4:  // pred: ^bb3
    %36 = "llvm.uitofp"(%32) : (i1) -> f32
    %37 = "llvm.intr.copysign"(%36, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %38 = "llvm.uitofp"(%34) : (i1) -> f32
    %39 = "llvm.intr.copysign"(%38, %27) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %40 = "llvm.fcmp"(%30, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %41 = "llvm.intr.copysign"(%0, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %42 = "llvm.select"(%40, %41, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    %43 = "llvm.fcmp"(%29, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %44 = "llvm.intr.copysign"(%0, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %45 = "llvm.select"(%43, %44, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.br"(%39, %37, %45, %42)[^bb8] : (f32, f32, f32, f32) -> ()
  ^bb5:  // pred: ^bb3
    "llvm.cond_br"(%16, %27, %28, %29, %30)[^bb8, ^bb6] <{operandSegmentSizes = array<i32: 1, 4, 0>}> : (i1, f32, f32, f32, f32) -> ()
  ^bb6:  // pred: ^bb5
    %46 = "llvm.intr.fabs"(%3) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %47 = "llvm.fcmp"(%46, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %48 = "llvm.intr.fabs"(%4) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %49 = "llvm.fcmp"(%48, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %50 = "llvm.or"(%47, %49) : (i1, i1) -> i1
    %51 = "llvm.intr.fabs"(%5) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %52 = "llvm.fcmp"(%51, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %53 = "llvm.or"(%52, %50) : (i1, i1) -> i1
    %54 = "llvm.intr.fabs"(%6) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %55 = "llvm.fcmp"(%54, %1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %56 = "llvm.or"(%55, %53) : (i1, i1) -> i1
    "llvm.cond_br"(%56, %8, %7)[^bb7, ^bb9] <{operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, f32, f32) -> ()
  ^bb7:  // pred: ^bb6
    %57 = "llvm.fcmp"(%30, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %58 = "llvm.intr.copysign"(%0, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %59 = "llvm.select"(%57, %58, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    %60 = "llvm.fcmp"(%29, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %61 = "llvm.intr.copysign"(%0, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %62 = "llvm.select"(%60, %61, %29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    %63 = "llvm.fcmp"(%28, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %64 = "llvm.intr.copysign"(%0, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %65 = "llvm.select"(%63, %64, %28) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    %66 = "llvm.fcmp"(%27, %0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 14 : i64}> : (f32, f32) -> i1
    %67 = "llvm.intr.copysign"(%0, %27) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %68 = "llvm.select"(%66, %67, %27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, f32, f32) -> f32
    "llvm.br"(%68, %65, %62, %59)[^bb8] : (f32, f32, f32, f32) -> ()
  ^bb8(%69: f32, %70: f32, %71: f32, %72: f32):  // 3 preds: ^bb4, ^bb5, ^bb7
    %73 = "llvm.fneg"(%69) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %74 = "llvm.fmul"(%71, %73) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %75 = "llvm.intr.fmuladd"(%72, %70, %74) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    %76 = "llvm.fmul"(%75, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %77 = "llvm.fmul"(%70, %71) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %78 = "llvm.intr.fmuladd"(%72, %69, %77) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    %79 = "llvm.fmul"(%78, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.br"(%79, %76)[^bb9] : (f32, f32) -> ()
  ^bb9(%80: f32, %81: f32):  // 3 preds: ^bb0, ^bb6, ^bb8
    %82 = "llvm.insertvalue"(%2, %81) <{position = array<i64: 0>}> : (!llvm.struct<(f32, f32)>, f32) -> !llvm.struct<(f32, f32)>
    %83 = "llvm.insertvalue"(%82, %80) <{position = array<i64: 1>}> : (!llvm.struct<(f32, f32)>, f32) -> !llvm.struct<(f32, f32)>
    "llvm.return"(%83) : (!llvm.struct<(f32, f32)>) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

