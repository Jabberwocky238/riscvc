"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shifts_eqcmp_i16_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i16):
    %114 = "llvm.mlir.constant"() <{value = 8 : i16}> : () -> i16
    %115 = "llvm.shl"(%arg31, %114) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %116 = "llvm.ashr"(%115, %114) <{isExact}> : (i16, i16) -> i16
    %117 = "llvm.icmp"(%116, %arg31) <{predicate = 0 : i64}> : (i16, i16) -> i1
    "llvm.return"(%117) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shifts_eqcmp_i32_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32):
    %110 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %111 = "llvm.shl"(%arg30, %110) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %112 = "llvm.ashr"(%111, %110) <{isExact}> : (i32, i32) -> i32
    %113 = "llvm.icmp"(%112, %arg30) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%113) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shifts_eqcmp_i32_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i32):
    %106 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %107 = "llvm.shl"(%arg29, %106) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %108 = "llvm.ashr"(%107, %106) <{isExact}> : (i32, i32) -> i32
    %109 = "llvm.icmp"(%108, %arg29) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%109) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shifts_eqcmp_i64_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i64):
    %102 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %103 = "llvm.shl"(%arg28, %102) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %104 = "llvm.ashr"(%103, %102) <{isExact}> : (i64, i64) -> i64
    %105 = "llvm.icmp"(%104, %arg28) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%105) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shifts_eqcmp_i64_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i64):
    %98 = "llvm.mlir.constant"() <{value = 48 : i64}> : () -> i64
    %99 = "llvm.shl"(%arg27, %98) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %100 = "llvm.ashr"(%99, %98) <{isExact}> : (i64, i64) -> i64
    %101 = "llvm.icmp"(%100, %arg27) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%101) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shifts_eqcmp_i64_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i64):
    %94 = "llvm.mlir.constant"() <{value = 56 : i64}> : () -> i64
    %95 = "llvm.shl"(%arg26, %94) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %96 = "llvm.ashr"(%95, %94) <{isExact}> : (i64, i64) -> i64
    %97 = "llvm.icmp"(%96, %arg26) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%97) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ugecmp_i16_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i16):
    %90 = "llvm.mlir.constant"() <{value = -128 : i16}> : () -> i16
    %91 = "llvm.mlir.constant"() <{value = -256 : i16}> : () -> i16
    %92 = "llvm.add"(%arg25, %90) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %93 = "llvm.icmp"(%92, %91) <{predicate = 9 : i64}> : (i16, i16) -> i1
    "llvm.return"(%93) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ugecmp_i32_i16_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i16):
    %85 = "llvm.mlir.constant"() <{value = -128 : i32}> : () -> i32
    %86 = "llvm.mlir.constant"() <{value = -256 : i32}> : () -> i32
    %87 = "llvm.zext"(%arg24) : (i16) -> i32
    %88 = "llvm.add"(%87, %85) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %89 = "llvm.icmp"(%88, %86) <{predicate = 9 : i64}> : (i32, i32) -> i1
    "llvm.return"(%89) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ugecmp_i32_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32):
    %81 = "llvm.mlir.constant"() <{value = -32768 : i32}> : () -> i32
    %82 = "llvm.mlir.constant"() <{value = -65536 : i32}> : () -> i32
    %83 = "llvm.add"(%arg23, %81) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %84 = "llvm.icmp"(%83, %82) <{predicate = 9 : i64}> : (i32, i32) -> i1
    "llvm.return"(%84) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ugecmp_i32_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32):
    %77 = "llvm.mlir.constant"() <{value = -128 : i32}> : () -> i32
    %78 = "llvm.mlir.constant"() <{value = -256 : i32}> : () -> i32
    %79 = "llvm.add"(%arg22, %77) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %80 = "llvm.icmp"(%79, %78) <{predicate = 9 : i64}> : (i32, i32) -> i1
    "llvm.return"(%80) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ugecmp_i64_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i64):
    %73 = "llvm.mlir.constant"() <{value = -2147483648 : i64}> : () -> i64
    %74 = "llvm.mlir.constant"() <{value = -4294967296 : i64}> : () -> i64
    %75 = "llvm.add"(%arg21, %73) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %76 = "llvm.icmp"(%75, %74) <{predicate = 9 : i64}> : (i64, i64) -> i1
    "llvm.return"(%76) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ugecmp_i64_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i64):
    %69 = "llvm.mlir.constant"() <{value = -32768 : i64}> : () -> i64
    %70 = "llvm.mlir.constant"() <{value = -65536 : i64}> : () -> i64
    %71 = "llvm.add"(%arg20, %69) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %72 = "llvm.icmp"(%71, %70) <{predicate = 9 : i64}> : (i64, i64) -> i1
    "llvm.return"(%72) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ugecmp_i64_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i64):
    %65 = "llvm.mlir.constant"() <{value = -128 : i64}> : () -> i64
    %66 = "llvm.mlir.constant"() <{value = -256 : i64}> : () -> i64
    %67 = "llvm.add"(%arg19, %65) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %68 = "llvm.icmp"(%67, %66) <{predicate = 9 : i64}> : (i64, i64) -> i1
    "llvm.return"(%68) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ugtcmp_i16_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i16):
    %61 = "llvm.mlir.constant"() <{value = -128 : i16}> : () -> i16
    %62 = "llvm.mlir.constant"() <{value = -257 : i16}> : () -> i16
    %63 = "llvm.add"(%arg18, %61) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %64 = "llvm.icmp"(%63, %62) <{predicate = 8 : i64}> : (i16, i16) -> i1
    "llvm.return"(%64) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_i16_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i16):
    %57 = "llvm.mlir.constant"() <{value = 128 : i16}> : () -> i16
    %58 = "llvm.mlir.constant"() <{value = 256 : i16}> : () -> i16
    %59 = "llvm.add"(%arg17, %57) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %60 = "llvm.icmp"(%59, %58) <{predicate = 6 : i64}> : (i16, i16) -> i1
    "llvm.return"(%60) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_i32_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %53 = "llvm.mlir.constant"() <{value = 32768 : i32}> : () -> i32
    %54 = "llvm.mlir.constant"() <{value = 65536 : i32}> : () -> i32
    %55 = "llvm.add"(%arg16, %53) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %56 = "llvm.icmp"(%55, %54) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.return"(%56) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_i32_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %49 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = 256 : i32}> : () -> i32
    %51 = "llvm.add"(%arg15, %49) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %52 = "llvm.icmp"(%51, %50) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.return"(%52) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_i64_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64):
    %45 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %46 = "llvm.mlir.constant"() <{value = 4294967296 : i64}> : () -> i64
    %47 = "llvm.add"(%arg14, %45) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %48 = "llvm.icmp"(%47, %46) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.return"(%48) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_i64_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64):
    %41 = "llvm.mlir.constant"() <{value = 32768 : i64}> : () -> i64
    %42 = "llvm.mlir.constant"() <{value = 65536 : i64}> : () -> i64
    %43 = "llvm.add"(%arg13, %41) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %44 = "llvm.icmp"(%43, %42) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.return"(%44) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_i64_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %37 = "llvm.mlir.constant"() <{value = 128 : i64}> : () -> i64
    %38 = "llvm.mlir.constant"() <{value = 256 : i64}> : () -> i64
    %39 = "llvm.add"(%arg12, %37) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %40 = "llvm.icmp"(%39, %38) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.return"(%40) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ulecmp_i16_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i16):
    %33 = "llvm.mlir.constant"() <{value = 128 : i16}> : () -> i16
    %34 = "llvm.mlir.constant"() <{value = 255 : i16}> : () -> i16
    %35 = "llvm.add"(%arg11, %33) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %36 = "llvm.icmp"(%35, %34) <{predicate = 7 : i64}> : (i16, i16) -> i1
    "llvm.return"(%36) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_bad_i16_i8_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i16, %arg10: i16):
    %30 = "llvm.mlir.constant"() <{value = 256 : i16}> : () -> i16
    %31 = "llvm.add"(%arg9, %arg10) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %32 = "llvm.icmp"(%31, %30) <{predicate = 6 : i64}> : (i16, i16) -> i1
    "llvm.return"(%32) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_bad_i16_i8_cmp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i16, %arg8: i16):
    %27 = "llvm.mlir.constant"() <{value = 128 : i16}> : () -> i16
    %28 = "llvm.add"(%arg7, %27) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %29 = "llvm.icmp"(%28, %arg8) <{predicate = 6 : i64}> : (i16, i16) -> i1
    "llvm.return"(%29) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_bad_i8_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i16):
    %24 = "llvm.mlir.constant"() <{value = 128 : i16}> : () -> i16
    %25 = "llvm.add"(%arg6, %24) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %26 = "llvm.icmp"(%25, %24) <{predicate = 6 : i64}> : (i16, i16) -> i1
    "llvm.return"(%26) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_bad_i16_i8_c0notpoweroftwo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i16):
    %20 = "llvm.mlir.constant"() <{value = 192 : i16}> : () -> i16
    %21 = "llvm.mlir.constant"() <{value = 256 : i16}> : () -> i16
    %22 = "llvm.add"(%arg5, %20) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %23 = "llvm.icmp"(%22, %21) <{predicate = 6 : i64}> : (i16, i16) -> i1
    "llvm.return"(%23) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_bad_i16_i8_c1notpoweroftwo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i16):
    %16 = "llvm.mlir.constant"() <{value = 128 : i16}> : () -> i16
    %17 = "llvm.mlir.constant"() <{value = 768 : i16}> : () -> i16
    %18 = "llvm.add"(%arg4, %16) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %19 = "llvm.icmp"(%18, %17) <{predicate = 6 : i64}> : (i16, i16) -> i1
    "llvm.return"(%19) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_bad_i16_i8_magic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i16):
    %12 = "llvm.mlir.constant"() <{value = 64 : i16}> : () -> i16
    %13 = "llvm.mlir.constant"() <{value = 256 : i16}> : () -> i16
    %14 = "llvm.add"(%arg3, %12) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %15 = "llvm.icmp"(%14, %13) <{predicate = 6 : i64}> : (i16, i16) -> i1
    "llvm.return"(%15) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_bad_i16_i4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i16):
    %8 = "llvm.mlir.constant"() <{value = 8 : i16}> : () -> i16
    %9 = "llvm.mlir.constant"() <{value = 16 : i16}> : () -> i16
    %10 = "llvm.add"(%arg2, %8) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %11 = "llvm.icmp"(%10, %9) <{predicate = 6 : i64}> : (i16, i16) -> i1
    "llvm.return"(%11) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i24)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ultcmp_bad_i24_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i24):
    %4 = "llvm.mlir.constant"() <{value = 128 : i24}> : () -> i24
    %5 = "llvm.mlir.constant"() <{value = 256 : i24}> : () -> i24
    %6 = "llvm.add"(%arg1, %4) <{overflowFlags = 0 : i32}> : (i24, i24) -> i24
    %7 = "llvm.icmp"(%6, %5) <{predicate = 6 : i64}> : (i24, i24) -> i1
    "llvm.return"(%7) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_ulecmp_bad_i16_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i16):
    %0 = "llvm.mlir.constant"() <{value = 128 : i16}> : () -> i16
    %1 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %2 = "llvm.add"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %3 = "llvm.icmp"(%2, %1) <{predicate = 7 : i64}> : (i16, i16) -> i1
    "llvm.return"(%3) : (i1) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

