#loop_annotation = #llvm.loop_annotation<mustProgress = true>
#tbaa_root = #llvm.tbaa_root<id = "Simple C/C++ TBAA">
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc, access_type = #tbaa_type_desc, offset = 0>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "short", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc2 = #llvm.tbaa_type_desc<id = "int", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc3 = #llvm.tbaa_type_desc<id = "float", members = {<#tbaa_type_desc, 0>}>
#tbaa_tag1 = #llvm.tbaa_tag<base_type = #tbaa_type_desc1, access_type = #tbaa_type_desc1, offset = 0>
#tbaa_tag2 = #llvm.tbaa_tag<base_type = #tbaa_type_desc2, access_type = #tbaa_type_desc2, offset = 0>
#tbaa_tag3 = #llvm.tbaa_tag<base_type = #tbaa_type_desc3, access_type = #tbaa_type_desc3, offset = 0>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, dso_local, global_type = i8, linkage = #llvm.linkage<internal>, sym_name = "c8", unnamed_addr = 0 : i64, value = 126 : i8, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, dso_local, global_type = i8, linkage = #llvm.linkage<internal>, sym_name = "s8", unnamed_addr = 0 : i64, value = -3 : i8, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 2 : i64, dso_local, global_type = i16, linkage = #llvm.linkage<internal>, sym_name = "c16", unnamed_addr = 0 : i64, value = -16 : i16, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 2 : i64, dso_local, global_type = i16, linkage = #llvm.linkage<internal>, sym_name = "s16", unnamed_addr = 0 : i64, value = -300 : i16, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "i32", unnamed_addr = 0 : i64, value = 1000 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "u32v", unnamed_addr = 0 : i64, value = -16 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.array<4 x i32>, linkage = #llvm.linkage<internal>, sym_name = "arr", unnamed_addr = 0 : i64, value = dense<[1, 2, 3, 4]> : tensor<4xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.ptr, linkage = #llvm.linkage<internal>, sym_name = "ptr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %375 = "llvm.mlir.addressof"() <{global_name = @arr}> : () -> !llvm.ptr
    "llvm.return"(%375) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = f32, linkage = #llvm.linkage<internal>, sym_name = "f32", unnamed_addr = 0 : i64, value = 1.500000e+00 : f32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["nofree", "norecurse", "no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+a", "+f", "+i", "+m", "+zaamo", "+zalrsc", "+zicsr", "+zmmul", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zabha", "-zacas", "-zalasr", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.addressof"() <{global_name = @c8}> : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = -123 : i8}> : () -> i8
    %2 = "llvm.mlir.constant"() <{value = 7 : i8}> : () -> i8
    %3 = "llvm.mlir.constant"() <{value = 60 : i8}> : () -> i8
    %4 = "llvm.mlir.constant"() <{value = -63 : i8}> : () -> i8
    %5 = "llvm.mlir.constant"() <{value = 90 : i8}> : () -> i8
    %6 = "llvm.mlir.constant"() <{value = 15 : i8}> : () -> i8
    %7 = "llvm.mlir.constant"() <{value = -103 : i8}> : () -> i8
    %8 = "llvm.mlir.addressof"() <{global_name = @s8}> : () -> !llvm.ptr
    %9 = "llvm.mlir.constant"() <{value = 5 : i8}> : () -> i8
    %10 = "llvm.mlir.constant"() <{value = -100 : i8}> : () -> i8
    %11 = "llvm.mlir.constant"() <{value = -16 : i8}> : () -> i8
    %12 = "llvm.mlir.constant"() <{value = 16 : i8}> : () -> i8
    %13 = "llvm.mlir.addressof"() <{global_name = @c16}> : () -> !llvm.ptr
    %14 = "llvm.mlir.constant"() <{value = 32 : i16}> : () -> i16
    %15 = "llvm.mlir.constant"() <{value = 4660 : i16}> : () -> i16
    %16 = "llvm.mlir.constant"() <{value = -3856 : i16}> : () -> i16
    %17 = "llvm.mlir.constant"() <{value = 771 : i16}> : () -> i16
    %18 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %19 = "llvm.mlir.constant"() <{value = 30583 : i16}> : () -> i16
    %20 = "llvm.mlir.addressof"() <{global_name = @s16}> : () -> !llvm.ptr
    %21 = "llvm.mlir.constant"() <{value = -5 : i16}> : () -> i16
    %22 = "llvm.mlir.constant"() <{value = -30000 : i16}> : () -> i16
    %23 = "llvm.mlir.constant"() <{value = -32768 : i16}> : () -> i16
    %24 = "llvm.mlir.constant"() <{value = 256 : i16}> : () -> i16
    %25 = "llvm.mlir.addressof"() <{global_name = @i32}> : () -> !llvm.ptr
    %26 = "llvm.mlir.constant"() <{value = 77 : i32}> : () -> i32
    %27 = "llvm.mlir.constant"() <{value = 2000 : i32}> : () -> i32
    %28 = "llvm.mlir.constant"() <{value = 4080 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = 4097 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 16711935 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 12345 : i32}> : () -> i32
    %33 = "llvm.mlir.constant"() <{value = -12345 : i32}> : () -> i32
    %34 = "llvm.mlir.addressof"() <{global_name = @u32v}> : () -> !llvm.ptr
    %35 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %38 = "llvm.mlir.constant"() <{value = 17 : i8}> : () -> i8
    %39 = "llvm.mlir.constant"() <{value = 34 : i8}> : () -> i8
    %40 = "llvm.mlir.constant"() <{value = 51 : i8}> : () -> i8
    %41 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %42 = "llvm.mlir.constant"() <{value = -21555 : i16}> : () -> i16
    %43 = "llvm.mlir.constant"() <{value = -7 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %45 = "llvm.mlir.addressof"() <{global_name = @ptr}> : () -> !llvm.ptr
    %46 = "llvm.mlir.addressof"() <{global_name = @arr}> : () -> !llvm.ptr
    %47 = "llvm.ptrtoint"(%46) : (!llvm.ptr) -> i32
    %48 = "llvm.getelementptr"(%46, %44) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %49 = "llvm.ptrtoint"(%48) : (!llvm.ptr) -> i32
    %50 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %51 = "llvm.getelementptr"(%46, %50) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %52 = "llvm.ptrtoint"(%51) : (!llvm.ptr) -> i32
    %53 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %54 = "llvm.mlir.constant"() <{value = 6 : i16}> : () -> i16
    %55 = "llvm.mlir.addressof"() <{global_name = @f32}> : () -> !llvm.ptr
    %56 = "llvm.mlir.constant"() <{value = 1074790400 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 2.250000e+00 : f32}> : () -> f32
    %58 = "llvm.mlir.constant"() <{value = 5.000000e-01 : f32}> : () -> f32
    %59 = "llvm.mlir.constant"() <{value = -2128831035 : i32}> : () -> i32
    %60 = "llvm.mlir.constant"() <{value = 16777619 : i32}> : () -> i32
    %61 = "llvm.mlir.constant"() <{value = -1640531527 : i32}> : () -> i32
    %62 = "llvm.mlir.constant"() <{value = 153 : i32}> : () -> i32
    %63 = "llvm.mlir.constant"() <{value = 34 : i32}> : () -> i32
    %64 = "llvm.mlir.constant"() <{value = 4.000000e+00 : f32}> : () -> f32
    %65 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %66 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %67 = "llvm.mlir.constant"() <{value = 50 : i32}> : () -> i32
    %68 = "llvm.atomicrmw"(%0, %1) <{alignment = 1 : i64, bin_op = 1 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    %69 = "llvm.atomicrmw"(%0, %2) <{alignment = 1 : i64, bin_op = 2 : i64, ordering = 4 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    %70 = "llvm.atomicrmw"(%0, %3) <{alignment = 1 : i64, bin_op = 3 : i64, ordering = 5 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    %71 = "llvm.atomicrmw"(%0, %4) <{alignment = 1 : i64, bin_op = 5 : i64, ordering = 2 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    %72 = "llvm.atomicrmw"(%0, %5) <{alignment = 1 : i64, bin_op = 6 : i64, ordering = 6 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    %73 = "llvm.atomicrmw"(%0, %6) <{alignment = 1 : i64, bin_op = 4 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    %74 = "llvm.atomicrmw"(%0, %7) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    %75 = "llvm.atomicrmw"(%8, %9) <{alignment = 1 : i64, bin_op = 7 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    %76 = "llvm.atomicrmw"(%8, %10) <{alignment = 1 : i64, bin_op = 8 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    %77 = "llvm.atomicrmw"(%0, %11) <{alignment = 1 : i64, bin_op = 9 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    %78 = "llvm.atomicrmw"(%0, %12) <{alignment = 1 : i64, bin_op = 10 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8) -> i8
    %79 = "llvm.load"(%0) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag], volatile_}> : (!llvm.ptr) -> i8
    %80 = "llvm.load"(%8) <{alignment = 1 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag], volatile_}> : (!llvm.ptr) -> i8
    %81 = "llvm.atomicrmw"(%13, %14) <{alignment = 2 : i64, bin_op = 1 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    %82 = "llvm.atomicrmw"(%13, %15) <{alignment = 2 : i64, bin_op = 2 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    %83 = "llvm.atomicrmw"(%13, %16) <{alignment = 2 : i64, bin_op = 3 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    %84 = "llvm.atomicrmw"(%13, %17) <{alignment = 2 : i64, bin_op = 5 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    %85 = "llvm.atomicrmw"(%13, %18) <{alignment = 2 : i64, bin_op = 6 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    %86 = "llvm.atomicrmw"(%13, %19) <{alignment = 2 : i64, bin_op = 4 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    %87 = "llvm.atomicrmw"(%20, %21) <{alignment = 2 : i64, bin_op = 7 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    %88 = "llvm.atomicrmw"(%20, %22) <{alignment = 2 : i64, bin_op = 8 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    %89 = "llvm.atomicrmw"(%13, %23) <{alignment = 2 : i64, bin_op = 9 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    %90 = "llvm.atomicrmw"(%13, %24) <{alignment = 2 : i64, bin_op = 10 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16) -> i16
    %91 = "llvm.load"(%13) <{alignment = 2 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1], volatile_}> : (!llvm.ptr) -> i16
    %92 = "llvm.load"(%20) <{alignment = 2 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1], volatile_}> : (!llvm.ptr) -> i16
    %93 = "llvm.atomicrmw"(%25, %26) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    %94 = "llvm.atomicrmw"(%25, %27) <{alignment = 4 : i64, bin_op = 2 : i64, ordering = 4 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    %95 = "llvm.atomicrmw"(%25, %28) <{alignment = 4 : i64, bin_op = 3 : i64, ordering = 5 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    %96 = "llvm.atomicrmw"(%25, %29) <{alignment = 4 : i64, bin_op = 5 : i64, ordering = 2 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    %97 = "llvm.atomicrmw"(%25, %30) <{alignment = 4 : i64, bin_op = 6 : i64, ordering = 6 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    %98 = "llvm.atomicrmw"(%25, %31) <{alignment = 4 : i64, bin_op = 4 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    %99 = "llvm.atomicrmw"(%25, %32) <{alignment = 4 : i64, bin_op = 7 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    %100 = "llvm.atomicrmw"(%25, %33) <{alignment = 4 : i64, bin_op = 8 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    %101 = "llvm.atomicrmw"(%34, %35) <{alignment = 4 : i64, bin_op = 9 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    %102 = "llvm.atomicrmw"(%34, %36) <{alignment = 4 : i64, bin_op = 10 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    %103 = "llvm.atomicrmw"(%25, %37) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 5 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    %104 = "llvm.cmpxchg"(%0, %7, %38) <{alignment = 1 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64, volatile_}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    %105 = "llvm.cmpxchg"(%0, %39, %40) <{alignment = 1 : i64, failure_ordering = 2 : i64, success_ordering = 4 : i64, volatile_}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    %106 = "llvm.cmpxchg"(%13, %41, %42) <{alignment = 2 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64, volatile_}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    %107 = "llvm.extractvalue"(%106) <{position = array<i64: 0>}> : (!llvm.struct<(i16, i1)>) -> i16
    %108 = "llvm.cmpxchg"(%13, %107, %42) <{alignment = 2 : i64, failure_ordering = 2 : i64, success_ordering = 5 : i64, volatile_, weak}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    %109 = "llvm.cmpxchg"(%25, %37, %43) <{alignment = 4 : i64, failure_ordering = 4 : i64, success_ordering = 6 : i64, volatile_}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %110 = "llvm.extractvalue"(%109) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %111 = "llvm.cmpxchg"(%25, %110, %44) <{alignment = 4 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %112 = "llvm.cmpxchg"(%45, %47, %49) <{alignment = 4 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %113 = "llvm.load"(%45) <{alignment = 4 : i64, ordering = 4 : i64, volatile_}> : (!llvm.ptr) -> i32
    %114 = "llvm.inttoptr"(%113) : (i32) -> !llvm.ptr
    %115 = "llvm.load"(%114) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag2]}> : (!llvm.ptr) -> i32
    %116 = "llvm.atomicrmw"(%45, %52) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    %117 = "llvm.inttoptr"(%116) : (i32) -> !llvm.ptr
    %118 = "llvm.load"(%117) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag2]}> : (!llvm.ptr) -> i32
    "llvm.store"(%53, %25) <{alignment = 4 : i64, ordering = 7 : i64, volatile_}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%54, %13) <{alignment = 2 : i64, ordering = 5 : i64, volatile_}> : (i16, !llvm.ptr) -> ()
    "llvm.store"(%2, %0) <{alignment = 1 : i64, ordering = 2 : i64, volatile_}> : (i8, !llvm.ptr) -> ()
    "llvm.fence"() <{ordering = 7 : i64}> : () -> ()
    "llvm.fence"() <{ordering = 7 : i64, syncscope = "singlethread"}> : () -> ()
    %119 = "llvm.load"(%25) <{alignment = 4 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr) -> i32
    %120 = "llvm.load"(%13) <{alignment = 2 : i64, ordering = 4 : i64, volatile_}> : (!llvm.ptr) -> i16
    %121 = "llvm.load"(%0) <{alignment = 1 : i64, ordering = 2 : i64, volatile_}> : (!llvm.ptr) -> i8
    %122 = "llvm.atomicrmw"(%55, %56) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32) -> i32
    "llvm.br"(%57)[^bb1] : (f32) -> ()
  ^bb1(%123: f32):  // 2 preds: ^bb0, ^bb1
    %124 = "llvm.fadd"(%123, %58) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %125 = "llvm.bitcast"(%123) : (f32) -> i32
    %126 = "llvm.bitcast"(%124) : (f32) -> i32
    %127 = "llvm.cmpxchg"(%55, %125, %126) <{alignment = 4 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %128 = "llvm.extractvalue"(%127) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %129 = "llvm.extractvalue"(%127) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %130 = "llvm.bitcast"(%129) : (i32) -> f32
    "llvm.cond_br"(%128, %124, %130)[^bb2, ^bb1] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 1, 1>}> : (i1, f32, f32) -> ()
  ^bb2(%131: f32):  // 2 preds: ^bb1, ^bb2
    %132 = "llvm.fadd"(%131, %58) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %133 = "llvm.bitcast"(%131) : (f32) -> i32
    %134 = "llvm.bitcast"(%132) : (f32) -> i32
    %135 = "llvm.cmpxchg"(%55, %133, %134) <{alignment = 4 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %136 = "llvm.extractvalue"(%135) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %137 = "llvm.extractvalue"(%135) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %138 = "llvm.bitcast"(%137) : (i32) -> f32
    "llvm.cond_br"(%136, %132, %138)[^bb3, ^bb2] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 1, 1>}> : (i1, f32, f32) -> ()
  ^bb3(%139: f32):  // 2 preds: ^bb2, ^bb3
    %140 = "llvm.fadd"(%139, %58) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %141 = "llvm.bitcast"(%139) : (f32) -> i32
    %142 = "llvm.bitcast"(%140) : (f32) -> i32
    %143 = "llvm.cmpxchg"(%55, %141, %142) <{alignment = 4 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64, volatile_}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %144 = "llvm.extractvalue"(%143) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %145 = "llvm.extractvalue"(%143) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %146 = "llvm.bitcast"(%145) : (i32) -> f32
    "llvm.cond_br"(%144, %146)[^bb4, ^bb3] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, f32) -> ()
  ^bb4:  // pred: ^bb3
    %147 = "llvm.zext"(%68) : (i8) -> i32
    %148 = "llvm.xor"(%147, %59) : (i32, i32) -> i32
    %149 = "llvm.mul"(%148, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %150 = "llvm.add"(%149, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %151 = "llvm.zext"(%69) : (i8) -> i32
    %152 = "llvm.xor"(%150, %151) : (i32, i32) -> i32
    %153 = "llvm.mul"(%152, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %154 = "llvm.add"(%153, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %155 = "llvm.zext"(%70) : (i8) -> i32
    %156 = "llvm.xor"(%154, %155) : (i32, i32) -> i32
    %157 = "llvm.mul"(%156, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %158 = "llvm.add"(%157, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %159 = "llvm.zext"(%71) : (i8) -> i32
    %160 = "llvm.xor"(%158, %159) : (i32, i32) -> i32
    %161 = "llvm.mul"(%160, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %162 = "llvm.add"(%161, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %163 = "llvm.zext"(%72) : (i8) -> i32
    %164 = "llvm.xor"(%162, %163) : (i32, i32) -> i32
    %165 = "llvm.mul"(%164, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %166 = "llvm.add"(%165, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %167 = "llvm.zext"(%73) : (i8) -> i32
    %168 = "llvm.xor"(%166, %167) : (i32, i32) -> i32
    %169 = "llvm.mul"(%168, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %170 = "llvm.add"(%169, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %171 = "llvm.zext"(%74) : (i8) -> i32
    %172 = "llvm.xor"(%170, %171) : (i32, i32) -> i32
    %173 = "llvm.mul"(%172, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %174 = "llvm.add"(%173, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %175 = "llvm.sext"(%75) : (i8) -> i32
    %176 = "llvm.xor"(%174, %175) : (i32, i32) -> i32
    %177 = "llvm.mul"(%176, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %178 = "llvm.add"(%177, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %179 = "llvm.sext"(%76) : (i8) -> i32
    %180 = "llvm.xor"(%178, %179) : (i32, i32) -> i32
    %181 = "llvm.mul"(%180, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %182 = "llvm.add"(%181, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %183 = "llvm.zext"(%77) : (i8) -> i32
    %184 = "llvm.xor"(%182, %183) : (i32, i32) -> i32
    %185 = "llvm.mul"(%184, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %186 = "llvm.add"(%185, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %187 = "llvm.zext"(%78) : (i8) -> i32
    %188 = "llvm.xor"(%186, %187) : (i32, i32) -> i32
    %189 = "llvm.mul"(%188, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %190 = "llvm.add"(%189, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %191 = "llvm.zext"(%79) : (i8) -> i32
    %192 = "llvm.xor"(%190, %191) : (i32, i32) -> i32
    %193 = "llvm.mul"(%192, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %194 = "llvm.add"(%193, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %195 = "llvm.sext"(%80) : (i8) -> i32
    %196 = "llvm.xor"(%194, %195) : (i32, i32) -> i32
    %197 = "llvm.mul"(%196, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %198 = "llvm.add"(%197, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %199 = "llvm.zext"(%81) : (i16) -> i32
    %200 = "llvm.xor"(%198, %199) : (i32, i32) -> i32
    %201 = "llvm.mul"(%200, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %202 = "llvm.add"(%201, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %203 = "llvm.zext"(%82) : (i16) -> i32
    %204 = "llvm.xor"(%202, %203) : (i32, i32) -> i32
    %205 = "llvm.mul"(%204, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %206 = "llvm.add"(%205, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %207 = "llvm.zext"(%83) : (i16) -> i32
    %208 = "llvm.xor"(%206, %207) : (i32, i32) -> i32
    %209 = "llvm.mul"(%208, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %210 = "llvm.add"(%209, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %211 = "llvm.zext"(%84) : (i16) -> i32
    %212 = "llvm.xor"(%210, %211) : (i32, i32) -> i32
    %213 = "llvm.mul"(%212, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %214 = "llvm.add"(%213, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %215 = "llvm.zext"(%85) : (i16) -> i32
    %216 = "llvm.xor"(%214, %215) : (i32, i32) -> i32
    %217 = "llvm.mul"(%216, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %218 = "llvm.add"(%217, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %219 = "llvm.zext"(%86) : (i16) -> i32
    %220 = "llvm.xor"(%218, %219) : (i32, i32) -> i32
    %221 = "llvm.mul"(%220, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %222 = "llvm.add"(%221, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %223 = "llvm.sext"(%87) : (i16) -> i32
    %224 = "llvm.xor"(%222, %223) : (i32, i32) -> i32
    %225 = "llvm.mul"(%224, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %226 = "llvm.add"(%225, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %227 = "llvm.sext"(%88) : (i16) -> i32
    %228 = "llvm.xor"(%226, %227) : (i32, i32) -> i32
    %229 = "llvm.mul"(%228, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %230 = "llvm.add"(%229, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %231 = "llvm.zext"(%89) : (i16) -> i32
    %232 = "llvm.xor"(%230, %231) : (i32, i32) -> i32
    %233 = "llvm.mul"(%232, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %234 = "llvm.add"(%233, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %235 = "llvm.zext"(%90) : (i16) -> i32
    %236 = "llvm.xor"(%234, %235) : (i32, i32) -> i32
    %237 = "llvm.mul"(%236, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %238 = "llvm.add"(%237, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %239 = "llvm.zext"(%91) : (i16) -> i32
    %240 = "llvm.xor"(%238, %239) : (i32, i32) -> i32
    %241 = "llvm.mul"(%240, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %242 = "llvm.add"(%241, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %243 = "llvm.sext"(%92) : (i16) -> i32
    %244 = "llvm.xor"(%242, %243) : (i32, i32) -> i32
    %245 = "llvm.mul"(%244, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %246 = "llvm.add"(%245, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %247 = "llvm.xor"(%246, %93) : (i32, i32) -> i32
    %248 = "llvm.mul"(%247, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %249 = "llvm.add"(%248, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %250 = "llvm.xor"(%249, %94) : (i32, i32) -> i32
    %251 = "llvm.mul"(%250, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %252 = "llvm.add"(%251, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %253 = "llvm.xor"(%252, %95) : (i32, i32) -> i32
    %254 = "llvm.mul"(%253, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %255 = "llvm.add"(%254, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %256 = "llvm.xor"(%255, %96) : (i32, i32) -> i32
    %257 = "llvm.mul"(%256, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %258 = "llvm.add"(%257, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %259 = "llvm.xor"(%258, %97) : (i32, i32) -> i32
    %260 = "llvm.mul"(%259, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %261 = "llvm.add"(%260, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %262 = "llvm.xor"(%261, %98) : (i32, i32) -> i32
    %263 = "llvm.mul"(%262, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %264 = "llvm.add"(%263, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %265 = "llvm.xor"(%264, %99) : (i32, i32) -> i32
    %266 = "llvm.mul"(%265, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %267 = "llvm.add"(%266, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %268 = "llvm.xor"(%267, %100) : (i32, i32) -> i32
    %269 = "llvm.mul"(%268, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %270 = "llvm.add"(%269, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %271 = "llvm.xor"(%270, %101) : (i32, i32) -> i32
    %272 = "llvm.mul"(%271, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %273 = "llvm.add"(%272, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %274 = "llvm.xor"(%273, %102) : (i32, i32) -> i32
    %275 = "llvm.mul"(%274, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %276 = "llvm.add"(%275, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %277 = "llvm.xor"(%276, %103) : (i32, i32) -> i32
    %278 = "llvm.mul"(%277, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %279 = "llvm.add"(%278, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %280 = "llvm.extractvalue"(%104) <{position = array<i64: 1>}> : (!llvm.struct<(i8, i1)>) -> i1
    %281 = "llvm.extractvalue"(%104) <{position = array<i64: 0>}> : (!llvm.struct<(i8, i1)>) -> i8
    %282 = "llvm.zext"(%281) : (i8) -> i32
    %283 = "llvm.select"(%280, %62, %282) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %284 = "llvm.zext"(%280) : (i1) -> i32
    %285 = "llvm.xor"(%279, %284) : (i32, i32) -> i32
    %286 = "llvm.mul"(%285, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %287 = "llvm.add"(%286, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %288 = "llvm.xor"(%287, %283) : (i32, i32) -> i32
    %289 = "llvm.mul"(%288, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %290 = "llvm.add"(%289, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %291 = "llvm.extractvalue"(%105) <{position = array<i64: 1>}> : (!llvm.struct<(i8, i1)>) -> i1
    %292 = "llvm.extractvalue"(%105) <{position = array<i64: 0>}> : (!llvm.struct<(i8, i1)>) -> i8
    %293 = "llvm.zext"(%292) : (i8) -> i32
    %294 = "llvm.select"(%291, %63, %293) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %295 = "llvm.zext"(%291) : (i1) -> i32
    %296 = "llvm.xor"(%290, %295) : (i32, i32) -> i32
    %297 = "llvm.mul"(%296, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %298 = "llvm.add"(%297, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %299 = "llvm.xor"(%298, %294) : (i32, i32) -> i32
    %300 = "llvm.mul"(%299, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %301 = "llvm.add"(%300, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %302 = "llvm.extractvalue"(%106) <{position = array<i64: 1>}> : (!llvm.struct<(i16, i1)>) -> i1
    %303 = "llvm.zext"(%302) : (i1) -> i32
    %304 = "llvm.xor"(%301, %303) : (i32, i32) -> i32
    %305 = "llvm.mul"(%304, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %306 = "llvm.add"(%305, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %307 = "llvm.zext"(%107) : (i16) -> i32
    %308 = "llvm.xor"(%306, %307) : (i32, i32) -> i32
    %309 = "llvm.mul"(%308, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %310 = "llvm.add"(%309, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %311 = "llvm.extractvalue"(%108) <{position = array<i64: 1>}> : (!llvm.struct<(i16, i1)>) -> i1
    %312 = "llvm.zext"(%311) : (i1) -> i32
    %313 = "llvm.xor"(%310, %312) : (i32, i32) -> i32
    %314 = "llvm.mul"(%313, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %315 = "llvm.add"(%314, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %316 = "llvm.extractvalue"(%109) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %317 = "llvm.zext"(%316) : (i1) -> i32
    %318 = "llvm.xor"(%315, %317) : (i32, i32) -> i32
    %319 = "llvm.mul"(%318, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %320 = "llvm.add"(%319, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %321 = "llvm.extractvalue"(%111) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %322 = "llvm.extractvalue"(%111) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    %323 = "llvm.zext"(%321) : (i1) -> i32
    %324 = "llvm.xor"(%320, %323) : (i32, i32) -> i32
    %325 = "llvm.mul"(%324, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %326 = "llvm.add"(%325, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %327 = "llvm.xor"(%326, %322) : (i32, i32) -> i32
    %328 = "llvm.mul"(%327, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %329 = "llvm.add"(%328, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %330 = "llvm.extractvalue"(%112) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    %331 = "llvm.zext"(%330) : (i1) -> i32
    %332 = "llvm.xor"(%329, %331) : (i32, i32) -> i32
    %333 = "llvm.mul"(%332, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %334 = "llvm.add"(%333, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %335 = "llvm.xor"(%334, %115) : (i32, i32) -> i32
    %336 = "llvm.mul"(%335, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %337 = "llvm.add"(%336, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %338 = "llvm.xor"(%337, %118) : (i32, i32) -> i32
    %339 = "llvm.mul"(%338, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %340 = "llvm.add"(%339, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %341 = "llvm.xor"(%340, %119) : (i32, i32) -> i32
    %342 = "llvm.mul"(%341, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %343 = "llvm.add"(%342, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %344 = "llvm.zext"(%120) : (i16) -> i32
    %345 = "llvm.xor"(%343, %344) : (i32, i32) -> i32
    %346 = "llvm.mul"(%345, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %347 = "llvm.add"(%346, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %348 = "llvm.zext"(%121) : (i8) -> i32
    %349 = "llvm.xor"(%347, %348) : (i32, i32) -> i32
    %350 = "llvm.mul"(%349, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %351 = "llvm.add"(%350, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %352 = "llvm.bitcast"(%122) : (i32) -> f32
    %353 = "llvm.fmul"(%352, %64) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %354 = "llvm.fptoui"(%353) : (f32) -> i32
    %355 = "llvm.xor"(%351, %354) : (i32, i32) -> i32
    %356 = "llvm.mul"(%355, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %357 = "llvm.add"(%356, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %358 = "llvm.load"(%55) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag3], volatile_}> : (!llvm.ptr) -> f32
    %359 = "llvm.fmul"(%358, %64) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %360 = "llvm.fptoui"(%359) : (f32) -> i32
    %361 = "llvm.xor"(%357, %360) : (i32, i32) -> i32
    %362 = "llvm.mul"(%361, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %363 = "llvm.add"(%362, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%363, %65)[^bb6] : (i32, i32) -> ()
  ^bb5:  // pred: ^bb6
    "llvm.return"(%373) : (i32) -> ()
  ^bb6(%364: i32, %365: i32):  // 2 preds: ^bb4, ^bb6
    %366 = "llvm.and"(%365, %35) : (i32, i32) -> i32
    %367 = "llvm.getelementptr"(%46, %366) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %368 = "llvm.atomicrmw"(%367, %365) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    %369 = "llvm.add"(%368, %365) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %370 = "llvm.xor"(%369, %364) : (i32, i32) -> i32
    %371 = "llvm.add"(%365, %66) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %372 = "llvm.mul"(%370, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %373 = "llvm.add"(%372, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %374 = "llvm.icmp"(%371, %67) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%374, %373, %371)[^bb5, ^bb6] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 2>}> : (i1, i32, i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

