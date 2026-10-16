"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "mul", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32, %arg41: i32):
    %85 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %86 = "llvm.mul"(%arg41, %85) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%86) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "muliadd", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32, %arg39: i32):
    %82 = "llvm.mlir.constant"() <{value = 165 : i32}> : () -> i32
    %83 = "llvm.mul"(%arg39, %82) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %84 = "llvm.add"(%83, %arg38) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%84) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "muliadd2", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32, %arg37: i32):
    %79 = "llvm.mlir.constant"() <{value = 1111 : i32}> : () -> i32
    %80 = "llvm.mul"(%arg37, %79) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %81 = "llvm.add"(%80, %arg36) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "muliadd_neg", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i32, %arg35: i32):
    %76 = "llvm.mlir.constant"() <{value = -165 : i32}> : () -> i32
    %77 = "llvm.mul"(%arg35, %76) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %78 = "llvm.add"(%77, %arg34) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%78) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "muliadd_neg2", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32, %arg33: i32):
    %73 = "llvm.mlir.constant"() <{value = -2045 : i32}> : () -> i32
    %74 = "llvm.mul"(%arg33, %73) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %75 = "llvm.add"(%74, %arg32) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%75) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "pow2immplus1", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32, %arg31: i32):
    %70 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %71 = "llvm.mul"(%arg31, %70) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %72 = "llvm.add"(%71, %arg30) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%72) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "pow2immminus2", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32, %arg29: i32):
    %67 = "llvm.mlir.constant"() <{value = 126 : i32}> : () -> i32
    %68 = "llvm.mul"(%arg29, %67) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %69 = "llvm.add"(%68, %arg28) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "pow2minuspow2", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32, %arg27: i32):
    %64 = "llvm.mlir.constant"() <{value = 384 : i32}> : () -> i32
    %65 = "llvm.mul"(%arg27, %64) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %66 = "llvm.add"(%65, %arg26) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "gtsimm12", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i32):
    %61 = "llvm.mlir.constant"() <{value = 4573 : i32}> : () -> i32
    %62 = "llvm.mul"(%arg25, %61) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %63 = "llvm.add"(%62, %arg24) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "pow2", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32):
    %58 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %59 = "llvm.mul"(%arg23, %58) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %60 = "llvm.add"(%59, %arg22) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%60) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "shxadd", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32):
    %55 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %56 = "llvm.mul"(%arg21, %55) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %57 = "llvm.add"(%56, %arg20) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%57) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "shladd", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32, %arg19: i32):
    %52 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %53 = "llvm.shl"(%arg19, %52) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %54 = "llvm.add"(%53, %arg18) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "shladd64", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64, %arg17: i64):
    %49 = "llvm.mlir.constant"() <{value = 31 : i64}> : () -> i64
    %50 = "llvm.shl"(%arg17, %49) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %51 = "llvm.add"(%50, %arg16) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%51) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "shladd_ordisjoint", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32, %arg15: i32):
    %46 = "llvm.mlir.constant"() <{value = 22 : i32}> : () -> i32
    %47 = "llvm.shl"(%arg15, %46) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %48 = "llvm.or"(%47, %arg14) <{isDisjoint}> : (i32, i32) -> i32
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "shladdc1c2", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32):
    %41 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %42 = "llvm.mlir.constant"() <{value = 26 : i32}> : () -> i32
    %43 = "llvm.shl"(%arg12, %41) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %44 = "llvm.shl"(%arg13, %42) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %45 = "llvm.add"(%43, %44) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "shxaddc1c2", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32, %arg11: i32):
    %36 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 28 : i32}> : () -> i32
    %38 = "llvm.shl"(%arg10, %36) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %39 = "llvm.shl"(%arg11, %37) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %40 = "llvm.add"(%38, %39) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "shladdc1c264", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64, %arg9: i64):
    %31 = "llvm.mlir.constant"() <{value = 55 : i64}> : () -> i64
    %32 = "llvm.mlir.constant"() <{value = 20 : i64}> : () -> i64
    %33 = "llvm.shl"(%arg8, %31) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %34 = "llvm.shl"(%arg9, %32) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %35 = "llvm.add"(%33, %34) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%35) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "shladdc1equalc2", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32):
    %27 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %28 = "llvm.shl"(%arg6, %27) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %29 = "llvm.shl"(%arg7, %27) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %30 = "llvm.add"(%28, %29) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%30) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "testmuliaddnegimm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %23 = "llvm.mlir.constant"() <{value = -3 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %25 = "llvm.mul"(%arg5, %23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %26 = "llvm.add"(%25, %24) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_OneUse_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %18 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %20 = "llvm.or"(%arg4, %18) : (i32, i32) -> i32
    %21 = "llvm.shl"(%20, %19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %22 = "llvm.add"(%21, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_OneUse_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %13 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %15 = "llvm.or"(%arg3, %13) : (i32, i32) -> i32
    %16 = "llvm.shl"(%15, %14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %17 = "llvm.add"(%16, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_OneUse_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %8 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %10 = "llvm.or"(%arg2, %8) : (i32, i32) -> i32
    %11 = "llvm.shl"(%10, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %12 = "llvm.add"(%11, %10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%12) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_shl_moreOneUse_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %3 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %5 = "llvm.or"(%arg1, %3) : (i32, i32) -> i32
    %6 = "llvm.shl"(%5, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %7 = "llvm.add"(%6, %5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select65", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i1):
    %0 = "llvm.mlir.constant"() <{value = 65 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.select"(%arg0, %0, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

