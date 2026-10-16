"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr_4bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: !llvm.ptr, %arg61: !llvm.ptr, %arg62: !llvm.ptr):
    %100 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %101 = "llvm.load"(%arg60) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %102 = "llvm.load"(%arg61) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %103 = "llvm.shl"(%102, %100) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %104 = "llvm.lshr"(%101, %103) : (i32, i32) -> i32
    "llvm.store"(%104, %arg62) <{alignment = 1 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl_4bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: !llvm.ptr, %arg58: !llvm.ptr, %arg59: !llvm.ptr):
    %95 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %96 = "llvm.load"(%arg57) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %97 = "llvm.load"(%arg58) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %98 = "llvm.shl"(%97, %95) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %99 = "llvm.shl"(%96, %98) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%99, %arg59) <{alignment = 1 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr_4bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: !llvm.ptr, %arg55: !llvm.ptr, %arg56: !llvm.ptr):
    %90 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %91 = "llvm.load"(%arg54) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %92 = "llvm.load"(%arg55) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %93 = "llvm.shl"(%92, %90) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %94 = "llvm.ashr"(%91, %93) : (i32, i32) -> i32
    "llvm.store"(%94, %arg56) <{alignment = 1 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr_8bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: !llvm.ptr, %arg52: !llvm.ptr, %arg53: !llvm.ptr):
    %85 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %86 = "llvm.load"(%arg51) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %87 = "llvm.load"(%arg52) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %88 = "llvm.shl"(%87, %85) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %89 = "llvm.lshr"(%86, %88) : (i64, i64) -> i64
    "llvm.store"(%89, %arg53) <{alignment = 1 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl_8bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: !llvm.ptr, %arg49: !llvm.ptr, %arg50: !llvm.ptr):
    %80 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %81 = "llvm.load"(%arg48) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %82 = "llvm.load"(%arg49) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %83 = "llvm.shl"(%82, %80) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %84 = "llvm.shl"(%81, %83) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%84, %arg50) <{alignment = 1 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr_8bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: !llvm.ptr, %arg46: !llvm.ptr, %arg47: !llvm.ptr):
    %75 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %76 = "llvm.load"(%arg45) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %77 = "llvm.load"(%arg46) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %78 = "llvm.shl"(%77, %75) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %79 = "llvm.ashr"(%76, %78) : (i64, i64) -> i64
    "llvm.store"(%79, %arg47) <{alignment = 1 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr_16bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: !llvm.ptr, %arg43: !llvm.ptr, %arg44: !llvm.ptr):
    %70 = "llvm.mlir.constant"() <{value = 3 : i128}> : () -> i128
    %71 = "llvm.load"(%arg42) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %72 = "llvm.load"(%arg43) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %73 = "llvm.shl"(%72, %70) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %74 = "llvm.lshr"(%71, %73) : (i128, i128) -> i128
    "llvm.store"(%74, %arg44) <{alignment = 1 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr_16bytes_wordOff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: !llvm.ptr, %arg40: !llvm.ptr, %arg41: !llvm.ptr):
    %65 = "llvm.mlir.constant"() <{value = 5 : i128}> : () -> i128
    %66 = "llvm.load"(%arg39) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %67 = "llvm.load"(%arg40) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %68 = "llvm.shl"(%67, %65) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %69 = "llvm.lshr"(%66, %68) : (i128, i128) -> i128
    "llvm.store"(%69, %arg41) <{alignment = 1 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl_16bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: !llvm.ptr, %arg37: !llvm.ptr, %arg38: !llvm.ptr):
    %60 = "llvm.mlir.constant"() <{value = 3 : i128}> : () -> i128
    %61 = "llvm.load"(%arg36) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %62 = "llvm.load"(%arg37) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %63 = "llvm.shl"(%62, %60) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %64 = "llvm.shl"(%61, %63) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.store"(%64, %arg38) <{alignment = 1 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl_16bytes_wordOff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: !llvm.ptr, %arg34: !llvm.ptr, %arg35: !llvm.ptr):
    %55 = "llvm.mlir.constant"() <{value = 5 : i128}> : () -> i128
    %56 = "llvm.load"(%arg33) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %57 = "llvm.load"(%arg34) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %58 = "llvm.shl"(%57, %55) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %59 = "llvm.shl"(%56, %58) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.store"(%59, %arg35) <{alignment = 1 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr_16bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr, %arg31: !llvm.ptr, %arg32: !llvm.ptr):
    %50 = "llvm.mlir.constant"() <{value = 3 : i128}> : () -> i128
    %51 = "llvm.load"(%arg30) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %52 = "llvm.load"(%arg31) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %53 = "llvm.shl"(%52, %50) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %54 = "llvm.ashr"(%51, %53) : (i128, i128) -> i128
    "llvm.store"(%54, %arg32) <{alignment = 1 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr_16bytes_wordOff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: !llvm.ptr, %arg28: !llvm.ptr, %arg29: !llvm.ptr):
    %45 = "llvm.mlir.constant"() <{value = 5 : i128}> : () -> i128
    %46 = "llvm.load"(%arg27) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %47 = "llvm.load"(%arg28) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %48 = "llvm.shl"(%47, %45) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    %49 = "llvm.ashr"(%46, %48) : (i128, i128) -> i128
    "llvm.store"(%49, %arg29) <{alignment = 1 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr_32bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr, %arg25: !llvm.ptr, %arg26: !llvm.ptr):
    %40 = "llvm.mlir.constant"() <{value = 3 : i256}> : () -> i256
    %41 = "llvm.load"(%arg24) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %42 = "llvm.load"(%arg25) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %43 = "llvm.shl"(%42, %40) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %44 = "llvm.lshr"(%41, %43) : (i256, i256) -> i256
    "llvm.store"(%44, %arg26) <{alignment = 1 : i64, ordering = 0 : i64}> : (i256, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr_32bytes_wordOff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: !llvm.ptr, %arg22: !llvm.ptr, %arg23: !llvm.ptr):
    %35 = "llvm.mlir.constant"() <{value = 5 : i256}> : () -> i256
    %36 = "llvm.load"(%arg21) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %37 = "llvm.load"(%arg22) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %38 = "llvm.shl"(%37, %35) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %39 = "llvm.lshr"(%36, %38) : (i256, i256) -> i256
    "llvm.store"(%39, %arg23) <{alignment = 1 : i64, ordering = 0 : i64}> : (i256, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr_32bytes_dwordOff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: !llvm.ptr, %arg20: !llvm.ptr):
    %30 = "llvm.mlir.constant"() <{value = 6 : i256}> : () -> i256
    %31 = "llvm.load"(%arg18) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %32 = "llvm.load"(%arg19) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %33 = "llvm.shl"(%32, %30) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %34 = "llvm.lshr"(%31, %33) : (i256, i256) -> i256
    "llvm.store"(%34, %arg20) <{alignment = 1 : i64, ordering = 0 : i64}> : (i256, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl_32bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr, %arg16: !llvm.ptr, %arg17: !llvm.ptr):
    %25 = "llvm.mlir.constant"() <{value = 3 : i256}> : () -> i256
    %26 = "llvm.load"(%arg15) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %27 = "llvm.load"(%arg16) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %28 = "llvm.shl"(%27, %25) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %29 = "llvm.shl"(%26, %28) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    "llvm.store"(%29, %arg17) <{alignment = 1 : i64, ordering = 0 : i64}> : (i256, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl_32bytes_wordOff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: !llvm.ptr):
    %20 = "llvm.mlir.constant"() <{value = 5 : i256}> : () -> i256
    %21 = "llvm.load"(%arg12) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %22 = "llvm.load"(%arg13) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %23 = "llvm.shl"(%22, %20) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %24 = "llvm.shl"(%21, %23) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    "llvm.store"(%24, %arg14) <{alignment = 1 : i64, ordering = 0 : i64}> : (i256, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl_32bytes_dwordOff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: !llvm.ptr):
    %15 = "llvm.mlir.constant"() <{value = 6 : i256}> : () -> i256
    %16 = "llvm.load"(%arg9) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %17 = "llvm.load"(%arg10) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %18 = "llvm.shl"(%17, %15) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %19 = "llvm.shl"(%16, %18) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    "llvm.store"(%19, %arg11) <{alignment = 1 : i64, ordering = 0 : i64}> : (i256, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr_32bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: !llvm.ptr):
    %10 = "llvm.mlir.constant"() <{value = 3 : i256}> : () -> i256
    %11 = "llvm.load"(%arg6) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %12 = "llvm.load"(%arg7) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %13 = "llvm.shl"(%12, %10) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %14 = "llvm.ashr"(%11, %13) : (i256, i256) -> i256
    "llvm.store"(%14, %arg8) <{alignment = 1 : i64, ordering = 0 : i64}> : (i256, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr_32bytes_wordOff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: !llvm.ptr):
    %5 = "llvm.mlir.constant"() <{value = 5 : i256}> : () -> i256
    %6 = "llvm.load"(%arg3) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %7 = "llvm.load"(%arg4) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %8 = "llvm.shl"(%7, %5) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %9 = "llvm.ashr"(%6, %8) : (i256, i256) -> i256
    "llvm.store"(%9, %arg5) <{alignment = 1 : i64, ordering = 0 : i64}> : (i256, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr_32bytes_dwordOff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 6 : i256}> : () -> i256
    %1 = "llvm.load"(%arg0) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %2 = "llvm.load"(%arg1) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %3 = "llvm.shl"(%2, %0) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    %4 = "llvm.ashr"(%1, %3) : (i256, i256) -> i256
    "llvm.store"(%4, %arg2) <{alignment = 1 : i64, ordering = 0 : i64}> : (i256, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

