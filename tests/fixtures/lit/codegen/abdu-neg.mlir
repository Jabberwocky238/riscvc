"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i8, %arg45: i8):
    %119 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %120 = "llvm.zext"(%arg44) : (i8) -> i64
    %121 = "llvm.zext"(%arg45) : (i8) -> i64
    %122 = "llvm.sub"(%120, %121) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %123 = "llvm.intr.abs"(%122) <{is_int_min_poison = false}> : (i64) -> i64
    %124 = "llvm.sub"(%119, %123) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %125 = "llvm.trunc"(%124) <{overflowFlags = 0 : i32}> : (i64) -> i8
    "llvm.return"(%125) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i8_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i8, %arg43: i16):
    %112 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %113 = "llvm.zext"(%arg42) : (i8) -> i64
    %114 = "llvm.zext"(%arg43) : (i16) -> i64
    %115 = "llvm.sub"(%113, %114) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %116 = "llvm.intr.abs"(%115) <{is_int_min_poison = false}> : (i64) -> i64
    %117 = "llvm.sub"(%112, %116) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %118 = "llvm.trunc"(%117) <{overflowFlags = 0 : i32}> : (i64) -> i8
    "llvm.return"(%118) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i8_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i8, %arg41: i8):
    %105 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %106 = "llvm.zext"(%arg40) : (i8) -> i64
    %107 = "llvm.zext"(%arg41) : (i8) -> i64
    %108 = "llvm.sub"(%106, %107) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %109 = "llvm.intr.abs"(%108) <{is_int_min_poison = true}> : (i64) -> i64
    %110 = "llvm.sub"(%105, %109) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %111 = "llvm.trunc"(%110) <{overflowFlags = 0 : i32}> : (i64) -> i8
    "llvm.return"(%111) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i16, %arg39: i16):
    %98 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %99 = "llvm.zext"(%arg38) : (i16) -> i64
    %100 = "llvm.zext"(%arg39) : (i16) -> i64
    %101 = "llvm.sub"(%99, %100) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %102 = "llvm.intr.abs"(%101) <{is_int_min_poison = false}> : (i64) -> i64
    %103 = "llvm.sub"(%98, %102) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %104 = "llvm.trunc"(%103) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.return"(%104) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i16_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i16, %arg37: i32):
    %91 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %92 = "llvm.zext"(%arg36) : (i16) -> i64
    %93 = "llvm.zext"(%arg37) : (i32) -> i64
    %94 = "llvm.sub"(%92, %93) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %95 = "llvm.intr.abs"(%94) <{is_int_min_poison = false}> : (i64) -> i64
    %96 = "llvm.sub"(%91, %95) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %97 = "llvm.trunc"(%96) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.return"(%97) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i16_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i16, %arg35: i16):
    %84 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %85 = "llvm.zext"(%arg34) : (i16) -> i64
    %86 = "llvm.zext"(%arg35) : (i16) -> i64
    %87 = "llvm.sub"(%85, %86) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %88 = "llvm.intr.abs"(%87) <{is_int_min_poison = true}> : (i64) -> i64
    %89 = "llvm.sub"(%84, %88) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %90 = "llvm.trunc"(%89) <{overflowFlags = 0 : i32}> : (i64) -> i16
    "llvm.return"(%90) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32, %arg33: i32):
    %77 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %78 = "llvm.zext"(%arg32) : (i32) -> i64
    %79 = "llvm.zext"(%arg33) : (i32) -> i64
    %80 = "llvm.sub"(%78, %79) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %81 = "llvm.intr.abs"(%80) <{is_int_min_poison = false}> : (i64) -> i64
    %82 = "llvm.sub"(%77, %81) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %83 = "llvm.trunc"(%82) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%83) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i32_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32, %arg31: i16):
    %70 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %71 = "llvm.zext"(%arg30) : (i32) -> i64
    %72 = "llvm.zext"(%arg31) : (i16) -> i64
    %73 = "llvm.sub"(%71, %72) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %74 = "llvm.intr.abs"(%73) <{is_int_min_poison = false}> : (i64) -> i64
    %75 = "llvm.sub"(%70, %74) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %76 = "llvm.trunc"(%75) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%76) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i32_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32, %arg29: i32):
    %63 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %64 = "llvm.zext"(%arg28) : (i32) -> i64
    %65 = "llvm.zext"(%arg29) : (i32) -> i64
    %66 = "llvm.sub"(%64, %65) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %67 = "llvm.intr.abs"(%66) <{is_int_min_poison = true}> : (i64) -> i64
    %68 = "llvm.sub"(%63, %67) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %69 = "llvm.trunc"(%68) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i64, %arg27: i64):
    %56 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %57 = "llvm.zext"(%arg26) : (i64) -> i128
    %58 = "llvm.zext"(%arg27) : (i64) -> i128
    %59 = "llvm.sub"(%57, %58) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %60 = "llvm.intr.abs"(%59) <{is_int_min_poison = false}> : (i128) -> i128
    %61 = "llvm.sub"(%56, %60) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %62 = "llvm.trunc"(%61) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%62) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i64_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i64, %arg25: i64):
    %49 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %50 = "llvm.zext"(%arg24) : (i64) -> i128
    %51 = "llvm.zext"(%arg25) : (i64) -> i128
    %52 = "llvm.sub"(%50, %51) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %53 = "llvm.intr.abs"(%52) <{is_int_min_poison = true}> : (i128) -> i128
    %54 = "llvm.sub"(%49, %53) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %55 = "llvm.trunc"(%54) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%55) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i128, %arg23: i128):
    %42 = "llvm.mlir.constant"() <{value = 0 : i256}> : () -> i256
    %43 = "llvm.zext"(%arg22) : (i128) -> i256
    %44 = "llvm.zext"(%arg23) : (i128) -> i256
    %45 = "llvm.sub"(%43, %44) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %46 = "llvm.intr.abs"(%45) <{is_int_min_poison = false}> : (i256) -> i256
    %47 = "llvm.sub"(%42, %46) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %48 = "llvm.trunc"(%47) <{overflowFlags = 0 : i32}> : (i256) -> i128
    "llvm.return"(%48) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_ext_i128_undef", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i128, %arg21: i128):
    %35 = "llvm.mlir.constant"() <{value = 0 : i256}> : () -> i256
    %36 = "llvm.zext"(%arg20) : (i128) -> i256
    %37 = "llvm.zext"(%arg21) : (i128) -> i256
    %38 = "llvm.sub"(%36, %37) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %39 = "llvm.intr.abs"(%38) <{is_int_min_poison = true}> : (i256) -> i256
    %40 = "llvm.sub"(%35, %39) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %41 = "llvm.trunc"(%40) <{overflowFlags = 0 : i32}> : (i256) -> i128
    "llvm.return"(%41) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i8, %arg19: i8):
    %32 = "llvm.intr.umin"(%arg18, %arg19) : (i8, i8) -> i8
    %33 = "llvm.intr.umax"(%arg18, %arg19) : (i8, i8) -> i8
    %34 = "llvm.sub"(%32, %33) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%34) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i16, %arg17: i16):
    %29 = "llvm.intr.umin"(%arg16, %arg17) : (i16, i16) -> i16
    %30 = "llvm.intr.umax"(%arg16, %arg17) : (i16, i16) -> i16
    %31 = "llvm.sub"(%29, %30) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%31) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32, %arg15: i32):
    %26 = "llvm.intr.umin"(%arg14, %arg15) : (i32, i32) -> i32
    %27 = "llvm.intr.umax"(%arg14, %arg15) : (i32, i32) -> i32
    %28 = "llvm.sub"(%26, %27) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%28) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64, %arg13: i64):
    %23 = "llvm.intr.umin"(%arg12, %arg13) : (i64, i64) -> i64
    %24 = "llvm.intr.umax"(%arg12, %arg13) : (i64, i64) -> i64
    %25 = "llvm.sub"(%23, %24) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_minmax_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i128, %arg11: i128):
    %20 = "llvm.intr.umin"(%arg10, %arg11) : (i128, i128) -> i128
    %21 = "llvm.intr.umax"(%arg10, %arg11) : (i128, i128) -> i128
    %22 = "llvm.sub"(%20, %21) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%22) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i8, %arg9: i8):
    %16 = "llvm.icmp"(%arg8, %arg9) <{predicate = 7 : i64}> : (i8, i8) -> i1
    %17 = "llvm.sub"(%arg8, %arg9) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %18 = "llvm.sub"(%arg9, %arg8) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %19 = "llvm.select"(%16, %17, %18) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    "llvm.return"(%19) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i16, %arg7: i16):
    %12 = "llvm.icmp"(%arg6, %arg7) <{predicate = 6 : i64}> : (i16, i16) -> i1
    %13 = "llvm.sub"(%arg6, %arg7) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %14 = "llvm.sub"(%arg7, %arg6) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %15 = "llvm.select"(%12, %13, %14) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%15) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %8 = "llvm.icmp"(%arg4, %arg5) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %9 = "llvm.sub"(%arg4, %arg5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %10 = "llvm.sub"(%arg5, %arg4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.select"(%8, %10, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: i64):
    %4 = "llvm.icmp"(%arg2, %arg3) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %5 = "llvm.sub"(%arg2, %arg3) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %6 = "llvm.sub"(%arg3, %arg2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %7 = "llvm.select"(%4, %5, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "abd_cmp_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i128, %arg1: i128):
    %0 = "llvm.icmp"(%arg0, %arg1) <{predicate = 6 : i64}> : (i128, i128) -> i1
    %1 = "llvm.sub"(%arg0, %arg1) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %2 = "llvm.sub"(%arg1, %arg0) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %3 = "llvm.select"(%0, %1, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    "llvm.return"(%3) : (i128) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

