#loop_annotation = #llvm.loop_annotation<mustProgress = true>
"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, constant, dso_local, global_type = !llvm.array<15 x i32>, linkage = #llvm.linkage<internal>, sym_name = "primes", unnamed_addr = 0 : i64, value = dense<[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]> : tensor<15xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.array<16 x i32>, linkage = #llvm.linkage<internal>, sym_name = "counts", unnamed_addr = 0 : i64, value = dense<[0, 0, 0, 7, 0, 0, 0, 0, 0, -2, 0, 0, 0, 0, 0, 0]> : tensor<16xi32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, constant, dso_local, global_type = !llvm.array<6 x ptr>, linkage = #llvm.linkage<internal>, sym_name = "names", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %190 = "llvm.mlir.addressof"() <{global_name = @".str.5"}> : () -> !llvm.ptr
    %191 = "llvm.mlir.addressof"() <{global_name = @".str.4"}> : () -> !llvm.ptr
    %192 = "llvm.mlir.addressof"() <{global_name = @".str.3"}> : () -> !llvm.ptr
    %193 = "llvm.mlir.addressof"() <{global_name = @".str.2"}> : () -> !llvm.ptr
    %194 = "llvm.mlir.addressof"() <{global_name = @".str.1"}> : () -> !llvm.ptr
    %195 = "llvm.mlir.addressof"() <{global_name = @".str"}> : () -> !llvm.ptr
    %196 = "llvm.mlir.undef"() : () -> !llvm.array<6 x ptr>
    %197 = "llvm.insertvalue"(%196, %195) <{position = array<i64: 0>}> : (!llvm.array<6 x ptr>, !llvm.ptr) -> !llvm.array<6 x ptr>
    %198 = "llvm.insertvalue"(%197, %194) <{position = array<i64: 1>}> : (!llvm.array<6 x ptr>, !llvm.ptr) -> !llvm.array<6 x ptr>
    %199 = "llvm.insertvalue"(%198, %193) <{position = array<i64: 2>}> : (!llvm.array<6 x ptr>, !llvm.ptr) -> !llvm.array<6 x ptr>
    %200 = "llvm.insertvalue"(%199, %192) <{position = array<i64: 3>}> : (!llvm.array<6 x ptr>, !llvm.ptr) -> !llvm.array<6 x ptr>
    %201 = "llvm.insertvalue"(%200, %191) <{position = array<i64: 4>}> : (!llvm.array<6 x ptr>, !llvm.ptr) -> !llvm.array<6 x ptr>
    %202 = "llvm.insertvalue"(%201, %190) <{position = array<i64: 5>}> : (!llvm.array<6 x ptr>, !llvm.ptr) -> !llvm.array<6 x ptr>
    "llvm.return"(%202) : (!llvm.array<6 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 2 : i64, constant, dso_local, global_type = !llvm.array<4 x array<5 x i16>>, linkage = #llvm.linkage<internal>, sym_name = "grid", unnamed_addr = 0 : i64, value = dense<[[1, 2, 3, 4, 5], [-1, -2, -3, 0, 0], [0, 0, 0, 0, 9], [7, 0, 0, 0, 0]]> : tensor<4x5xi16>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<5 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str", unnamed_addr = 2 : i64, value = "zero\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<4 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str.1", unnamed_addr = 2 : i64, value = "one\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<4 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str.2", unnamed_addr = 2 : i64, value = "two\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<6 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str.3", unnamed_addr = 2 : i64, value = "three\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<5 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str.4", unnamed_addr = 2 : i64, value = "four\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, constant, dso_local, global_type = !llvm.array<5 x i8>, linkage = #llvm.linkage<private>, sym_name = ".str.5", unnamed_addr = 2 : i64, value = "five\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.array<3 x struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>>, linkage = #llvm.linkage<internal>, sym_name = "mixed", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %156 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %157 = "llvm.mlir.constant"() <{value = dense<0> : tensor<2xi8>}> : () -> !llvm.array<2 x i8>
    %158 = "llvm.mlir.constant"() <{value = -6 : i16}> : () -> i16
    %159 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %160 = "llvm.mlir.constant"() <{value = dense<0> : tensor<3xi8>}> : () -> !llvm.array<3 x i8>
    %161 = "llvm.mlir.constant"() <{value = 99 : i8}> : () -> i8
    %162 = "llvm.mlir.undef"() : () -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %163 = "llvm.insertvalue"(%162, %161) <{position = array<i64: 0>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, i8) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %164 = "llvm.insertvalue"(%163, %160) <{position = array<i64: 1>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, !llvm.array<3 x i8>) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %165 = "llvm.insertvalue"(%164, %159) <{position = array<i64: 2>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, i32) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %166 = "llvm.insertvalue"(%165, %158) <{position = array<i64: 3>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, i16) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %167 = "llvm.insertvalue"(%166, %157) <{position = array<i64: 4>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, !llvm.array<2 x i8>) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %168 = "llvm.mlir.constant"() <{value = 4 : i16}> : () -> i16
    %169 = "llvm.mlir.constant"() <{value = -3 : i32}> : () -> i32
    %170 = "llvm.mlir.constant"() <{value = 98 : i8}> : () -> i8
    %171 = "llvm.mlir.undef"() : () -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %172 = "llvm.insertvalue"(%171, %170) <{position = array<i64: 0>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, i8) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %173 = "llvm.insertvalue"(%172, %160) <{position = array<i64: 1>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, !llvm.array<3 x i8>) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %174 = "llvm.insertvalue"(%173, %169) <{position = array<i64: 2>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, i32) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %175 = "llvm.insertvalue"(%174, %168) <{position = array<i64: 3>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, i16) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %176 = "llvm.insertvalue"(%175, %157) <{position = array<i64: 4>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, !llvm.array<2 x i8>) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %177 = "llvm.mlir.constant"() <{value = 2 : i16}> : () -> i16
    %178 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %179 = "llvm.mlir.constant"() <{value = 97 : i8}> : () -> i8
    %180 = "llvm.mlir.undef"() : () -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %181 = "llvm.insertvalue"(%180, %179) <{position = array<i64: 0>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, i8) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %182 = "llvm.insertvalue"(%181, %160) <{position = array<i64: 1>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, !llvm.array<3 x i8>) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %183 = "llvm.insertvalue"(%182, %178) <{position = array<i64: 2>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, i32) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %184 = "llvm.insertvalue"(%183, %177) <{position = array<i64: 3>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, i16) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %185 = "llvm.insertvalue"(%184, %157) <{position = array<i64: 4>}> : (!llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>, !llvm.array<2 x i8>) -> !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>
    %186 = "llvm.mlir.undef"() : () -> !llvm.array<3 x struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>>
    %187 = "llvm.insertvalue"(%186, %185) <{position = array<i64: 0>}> : (!llvm.array<3 x struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>>, !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>) -> !llvm.array<3 x struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>>
    %188 = "llvm.insertvalue"(%187, %176) <{position = array<i64: 1>}> : (!llvm.array<3 x struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>>, !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>) -> !llvm.array<3 x struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>>
    %189 = "llvm.insertvalue"(%188, %167) <{position = array<i64: 2>}> : (!llvm.array<3 x struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>>, !llvm.struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>) -> !llvm.array<3 x struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>>
    "llvm.return"(%189) : (!llvm.array<3 x struct<(i8, array<3 x i8>, i32, i16, array<2 x i8>)>>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "tick.n", unnamed_addr = 0 : i64, value = 100 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<max, "frame-pointer", 2 : i32>, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "main", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %4 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 20 : i64}> : () -> i64
    %8 = "llvm.mlir.addressof"() <{global_name = @counts}> : () -> !llvm.ptr
    %9 = "llvm.getelementptr"(%8, %7) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %10 = "llvm.mlir.constant"() <{value = 1000 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %13 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %14 = "llvm.mlir.addressof"() <{global_name = @grid}> : () -> !llvm.ptr
    %15 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 14 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %19 = "llvm.mlir.addressof"() <{global_name = @mixed}> : () -> !llvm.ptr
    %20 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %23 = "llvm.mlir.addressof"() <{global_name = @names}> : () -> !llvm.ptr
    %24 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %25 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %27 = "llvm.mlir.addressof"() <{global_name = @primes}> : () -> !llvm.ptr
    %28 = "llvm.alloca"(%4) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %29 = "llvm.alloca"(%4) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %30 = "llvm.alloca"(%4) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %31 = "llvm.alloca"(%4) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %32 = "llvm.alloca"(%4) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %33 = "llvm.alloca"(%4) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %34 = "llvm.alloca"(%4) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %35 = "llvm.alloca"(%4) <{alignment = 4 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    %36 = "llvm.alloca"(%4) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    %37 = "llvm.alloca"(%4) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.store"(%5, %28) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%5, %29) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %38 = "llvm.load"(%29) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %39 = "llvm.icmp"(%38, %6) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%39)[^bb2, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %40 = "llvm.load"(%29) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %41 = "llvm.getelementptr"(%27, %5, %40) <{elem_type = !llvm.array<15 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %42 = "llvm.load"(%41) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %43 = "llvm.load"(%29) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %44 = "llvm.getelementptr"(%27, %5, %43) <{elem_type = !llvm.array<15 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %45 = "llvm.load"(%44) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %46 = "llvm.srem"(%45, %11) : (i32, i32) -> i32
    %47 = "llvm.getelementptr"(%8, %5, %46) <{elem_type = !llvm.array<16 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %48 = "llvm.load"(%47) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %49 = "llvm.add"(%48, %42) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%49, %47) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %50 = "llvm.load"(%28) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %51 = "llvm.mul"(%50, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %52 = "llvm.load"(%29) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %53 = "llvm.getelementptr"(%27, %5, %52) <{elem_type = !llvm.array<15 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %54 = "llvm.load"(%53) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %55 = "llvm.add"(%51, %54) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%55, %28) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // pred: ^bb2
    %56 = "llvm.load"(%29) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %57 = "llvm.add"(%56, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%57, %29) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb4:  // pred: ^bb1
    %58 = "llvm.load"(%9) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %59 = "llvm.add"(%58, %10) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%59, %9) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%5, %30) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb5] : () -> ()
  ^bb5:  // 2 preds: ^bb4, ^bb7
    %60 = "llvm.load"(%30) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %61 = "llvm.icmp"(%60, %11) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%61)[^bb6, ^bb8] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb6:  // pred: ^bb5
    %62 = "llvm.load"(%30) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %63 = "llvm.getelementptr"(%8, %5, %62) <{elem_type = !llvm.array<16 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %64 = "llvm.load"(%63) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %65 = "llvm.load"(%30) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %66 = "llvm.srem"(%65, %26) : (i32, i32) -> i32
    %67 = "llvm.shl"(%64, %66) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %68 = "llvm.load"(%28) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %69 = "llvm.xor"(%68, %67) : (i32, i32) -> i32
    "llvm.store"(%69, %28) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb7] : () -> ()
  ^bb7:  // pred: ^bb6
    %70 = "llvm.load"(%30) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %71 = "llvm.add"(%70, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%71, %30) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb5] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb8:  // pred: ^bb5
    "llvm.store"(%5, %31) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb9] : () -> ()
  ^bb9:  // 2 preds: ^bb8, ^bb15
    %72 = "llvm.load"(%31) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %73 = "llvm.icmp"(%72, %12) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%73)[^bb10, ^bb16] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb10:  // pred: ^bb9
    %74 = "llvm.load"(%31) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %75 = "llvm.getelementptr"(%23, %5, %74) <{elem_type = !llvm.array<6 x ptr>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %76 = "llvm.load"(%75) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.store"(%76, %32) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb11] : () -> ()
  ^bb11:  // 2 preds: ^bb10, ^bb13
    %77 = "llvm.load"(%32) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %78 = "llvm.load"(%77) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %79 = "llvm.icmp"(%78, %24) <{predicate = 1 : i64}> : (i8, i8) -> i1
    "llvm.cond_br"(%79)[^bb12, ^bb14] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb12:  // pred: ^bb11
    %80 = "llvm.load"(%28) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %81 = "llvm.mul"(%80, %25) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %82 = "llvm.load"(%32) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %83 = "llvm.load"(%82) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %84 = "llvm.zext"(%83) : (i8) -> i32
    %85 = "llvm.add"(%81, %84) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%85, %28) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb13] : () -> ()
  ^bb13:  // pred: ^bb12
    %86 = "llvm.load"(%32) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %87 = "llvm.getelementptr"(%86, %4) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%87, %32) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.br"()[^bb11] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb14:  // pred: ^bb11
    "llvm.br"()[^bb15] : () -> ()
  ^bb15:  // pred: ^bb14
    %88 = "llvm.load"(%31) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %89 = "llvm.add"(%88, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%89, %31) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb9] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb16:  // pred: ^bb9
    "llvm.store"(%5, %33) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb17] : () -> ()
  ^bb17:  // 2 preds: ^bb16, ^bb23
    %90 = "llvm.load"(%33) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %91 = "llvm.icmp"(%90, %13) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%91)[^bb18, ^bb24] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb18:  // pred: ^bb17
    "llvm.store"(%5, %34) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb19] : () -> ()
  ^bb19:  // 2 preds: ^bb18, ^bb21
    %92 = "llvm.load"(%34) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %93 = "llvm.icmp"(%92, %18) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%93)[^bb20, ^bb22] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb20:  // pred: ^bb19
    %94 = "llvm.load"(%33) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %95 = "llvm.getelementptr"(%14, %5, %94) <{elem_type = !llvm.array<4 x array<5 x i16>>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %96 = "llvm.load"(%34) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %97 = "llvm.getelementptr"(%95, %5, %96) <{elem_type = !llvm.array<5 x i16>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %98 = "llvm.load"(%97) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %99 = "llvm.sext"(%98) : (i16) -> i32
    %100 = "llvm.load"(%33) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %101 = "llvm.add"(%100, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %102 = "llvm.mul"(%99, %101) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %103 = "llvm.load"(%34) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %104 = "llvm.add"(%103, %21) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %105 = "llvm.mul"(%102, %104) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %106 = "llvm.load"(%28) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %107 = "llvm.add"(%106, %105) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%107, %28) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb21] : () -> ()
  ^bb21:  // pred: ^bb20
    %108 = "llvm.load"(%34) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %109 = "llvm.add"(%108, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%109, %34) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb19] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb22:  // pred: ^bb19
    "llvm.br"()[^bb23] : () -> ()
  ^bb23:  // pred: ^bb22
    %110 = "llvm.load"(%33) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %111 = "llvm.add"(%110, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%111, %33) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb17] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb24:  // pred: ^bb17
    "llvm.store"(%14, %35) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    %112 = "llvm.load"(%35) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %113 = "llvm.getelementptr"(%112, %15) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %114 = "llvm.load"(%113) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %115 = "llvm.sext"(%114) : (i16) -> i32
    %116 = "llvm.load"(%35) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> !llvm.ptr
    %117 = "llvm.getelementptr"(%116, %16) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %118 = "llvm.load"(%117) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %119 = "llvm.sext"(%118) : (i16) -> i32
    %120 = "llvm.mul"(%119, %17) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %121 = "llvm.add"(%115, %120) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %122 = "llvm.load"(%28) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %123 = "llvm.add"(%122, %121) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%123, %28) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%5, %36) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb25] : () -> ()
  ^bb25:  // 2 preds: ^bb24, ^bb27
    %124 = "llvm.load"(%36) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %125 = "llvm.icmp"(%124, %17) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%125)[^bb26, ^bb28] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb26:  // pred: ^bb25
    %126 = "llvm.load"(%36) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %127 = "llvm.getelementptr"(%19, %5, %126) <{elem_type = !llvm.array<3 x struct<"struct.anon", (i8, i32, i16)>>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %128 = "llvm.getelementptr"(%127, %5) <{elem_type = !llvm.struct<"struct.anon", (i8, i32, i16)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %129 = "llvm.load"(%128) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %130 = "llvm.zext"(%129) : (i8) -> i32
    %131 = "llvm.load"(%36) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %132 = "llvm.getelementptr"(%19, %5, %131) <{elem_type = !llvm.array<3 x struct<"struct.anon", (i8, i32, i16)>>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %133 = "llvm.getelementptr"(%132, %5) <{elem_type = !llvm.struct<"struct.anon", (i8, i32, i16)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %134 = "llvm.load"(%133) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %135 = "llvm.mul"(%134, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %136 = "llvm.add"(%130, %135) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %137 = "llvm.load"(%36) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %138 = "llvm.getelementptr"(%19, %5, %137) <{elem_type = !llvm.array<3 x struct<"struct.anon", (i8, i32, i16)>>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %139 = "llvm.getelementptr"(%138, %5) <{elem_type = !llvm.struct<"struct.anon", (i8, i32, i16)>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %140 = "llvm.load"(%139) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %141 = "llvm.sext"(%140) : (i16) -> i32
    %142 = "llvm.mul"(%141, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %143 = "llvm.add"(%136, %142) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %144 = "llvm.load"(%28) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %145 = "llvm.add"(%144, %143) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%145, %28) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb27] : () -> ()
  ^bb27:  // pred: ^bb26
    %146 = "llvm.load"(%36) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %147 = "llvm.add"(%146, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%147, %36) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb25] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb28:  // pred: ^bb25
    "llvm.store"(%5, %37) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb29] : () -> ()
  ^bb29:  // 2 preds: ^bb28, ^bb31
    %148 = "llvm.load"(%37) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %149 = "llvm.icmp"(%148, %18) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%149)[^bb30, ^bb32] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb30:  // pred: ^bb29
    %150 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @tick, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> i32
    %151 = "llvm.load"(%28) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %152 = "llvm.add"(%151, %150) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%152, %28) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb31] : () -> ()
  ^bb31:  // pred: ^bb30
    %153 = "llvm.load"(%37) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %154 = "llvm.add"(%153, %4) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%154, %37) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb29] <{loop_annotation = #loop_annotation}> : () -> ()
  ^bb32:  // pred: ^bb29
    %155 = "llvm.load"(%28) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%155) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<internal>, no_inline, no_unwind, optimize_none, passthrough = ["no-builtins", ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "generic-rv32"]], sym_name = "tick", target_cpu = "generic-rv32", target_features = #llvm.target_features<["+32bit", "+f", "+i", "+m", "+zicsr", "+zmmul", "-a", "-b", "-c", "-d", "-e", "-experimental-p", "-experimental-smpmpmt", "-experimental-svukte", "-experimental-xrivosvisni", "-experimental-xrivosvizip", "-experimental-xsfmclic", "-experimental-xsfsclic", "-experimental-zibi", "-experimental-zicfilp", "-experimental-zicfiss", "-experimental-zvbc32e", "-experimental-zvfbfa", "-experimental-zvfofp8min", "-experimental-zvkgs", "-experimental-zvqdotq", "-h", "-q", "-relax", "-sdext", "-sdtrig", "-sha", "-shcounterenw", "-shgatpa", "-shlcofideleg", "-shtvala", "-shvsatpa", "-shvstvala", "-shvstvecd", "-smaia", "-smcdeleg", "-smcntrpmf", "-smcsrind", "-smctr", "-smdbltrp", "-smepmp", "-smmpm", "-smnpm", "-smrnmi", "-smstateen", "-ssaia", "-ssccfg", "-ssccptr", "-sscofpmf", "-sscounterenw", "-sscsrind", "-ssctr", "-ssdbltrp", "-ssnpm", "-sspm", "-ssqosid", "-ssstateen", "-ssstrict", "-sstc", "-sstvala", "-sstvecd", "-ssu64xl", "-supm", "-svade", "-svadu", "-svbare", "-svinval", "-svnapot", "-svpbmt", "-svvptc", "-v", "-xandesbfhcvt", "-xandesperf", "-xandesvbfhcvt", "-xandesvdot", "-xandesvpackfph", "-xandesvsinth", "-xandesvsintload", "-xcalculet", "-xcvalu", "-xcvbi", "-xcvbitmanip", "-xcvelw", "-xcvmac", "-xcvmem", "-xcvsimd", "-xmipscbop", "-xmipscmov", "-xmipsexectl", "-xmipslsp", "-xqccmp", "-xqci", "-xqcia", "-xqciac", "-xqcibi", "-xqcibm", "-xqcicli", "-xqcicm", "-xqcics", "-xqcicsr", "-xqciint", "-xqciio", "-xqcilb", "-xqcili", "-xqcilia", "-xqcilo", "-xqcilsm", "-xqcisim", "-xqcisls", "-xqcisync", "-xsfcease", "-xsfmm128t", "-xsfmm16t", "-xsfmm32a16f", "-xsfmm32a32f", "-xsfmm32a8f", "-xsfmm32a8i", "-xsfmm32t", "-xsfmm64a64f", "-xsfmm64t", "-xsfmmbase", "-xsfvcp", "-xsfvfbfexp16e", "-xsfvfexp16e", "-xsfvfexp32e", "-xsfvfexpa", "-xsfvfexpa64e", "-xsfvfnrclipxfqf", "-xsfvfwmaccqqq", "-xsfvqmaccdod", "-xsfvqmaccqoq", "-xsifivecdiscarddlone", "-xsifivecflushdlone", "-xsmtvdot", "-xtheadba", "-xtheadbb", "-xtheadbs", "-xtheadcmo", "-xtheadcondmov", "-xtheadfmemidx", "-xtheadmac", "-xtheadmemidx", "-xtheadmempair", "-xtheadsync", "-xtheadvdot", "-xventanacondops", "-xwchc", "-za128rs", "-za64rs", "-zaamo", "-zabha", "-zacas", "-zalasr", "-zalrsc", "-zama16b", "-zawrs", "-zba", "-zbb", "-zbc", "-zbkb", "-zbkc", "-zbkx", "-zbs", "-zca", "-zcb", "-zcd", "-zce", "-zcf", "-zclsd", "-zcmop", "-zcmp", "-zcmt", "-zdinx", "-zfa", "-zfbfmin", "-zfh", "-zfhmin", "-zfinx", "-zhinx", "-zhinxmin", "-zic64b", "-zicbom", "-zicbop", "-zicboz", "-ziccamoa", "-ziccamoc", "-ziccif", "-zicclsm", "-ziccrse", "-zicntr", "-zicond", "-zifencei", "-zihintntl", "-zihintpause", "-zihpm", "-zilsd", "-zimop", "-zk", "-zkn", "-zknd", "-zkne", "-zknh", "-zkr", "-zks", "-zksed", "-zksh", "-zkt", "-ztso", "-zvbb", "-zvbc", "-zve32f", "-zve32x", "-zve64d", "-zve64f", "-zve64x", "-zvfbfmin", "-zvfbfwma", "-zvfh", "-zvfhmin", "-zvkb", "-zvkg", "-zvkn", "-zvknc", "-zvkned", "-zvkng", "-zvknha", "-zvknhb", "-zvks", "-zvksc", "-zvksed", "-zvksg", "-zvksh", "-zvkt", "-zvl1024b", "-zvl128b", "-zvl16384b", "-zvl2048b", "-zvl256b", "-zvl32768b", "-zvl32b", "-zvl4096b", "-zvl512b", "-zvl64b", "-zvl65536b", "-zvl8192b"]>, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.addressof"() <{global_name = @tick.n}> : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %3 = "llvm.add"(%2, %1) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.store"(%3, %0) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

