"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr_4bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: !llvm.ptr, %arg34: !llvm.ptr, %arg35: !llvm.ptr):
    %33 = "llvm.load"(%arg33) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %34 = "llvm.load"(%arg34) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %35 = "llvm.lshr"(%33, %34) : (i32, i32) -> i32
    "llvm.store"(%35, %arg35) <{alignment = 1 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl_4bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr, %arg31: !llvm.ptr, %arg32: !llvm.ptr):
    %30 = "llvm.load"(%arg30) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %31 = "llvm.load"(%arg31) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %32 = "llvm.shl"(%30, %31) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%32, %arg32) <{alignment = 1 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr_4bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: !llvm.ptr, %arg28: !llvm.ptr, %arg29: !llvm.ptr):
    %27 = "llvm.load"(%arg27) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %28 = "llvm.load"(%arg28) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %29 = "llvm.ashr"(%27, %28) : (i32, i32) -> i32
    "llvm.store"(%29, %arg29) <{alignment = 1 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr_8bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr, %arg25: !llvm.ptr, %arg26: !llvm.ptr):
    %24 = "llvm.load"(%arg24) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %25 = "llvm.load"(%arg25) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %26 = "llvm.lshr"(%24, %25) : (i64, i64) -> i64
    "llvm.store"(%26, %arg26) <{alignment = 1 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl_8bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: !llvm.ptr, %arg22: !llvm.ptr, %arg23: !llvm.ptr):
    %21 = "llvm.load"(%arg21) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %22 = "llvm.load"(%arg22) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %23 = "llvm.shl"(%21, %22) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%23, %arg23) <{alignment = 1 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr_8bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: !llvm.ptr, %arg20: !llvm.ptr):
    %18 = "llvm.load"(%arg18) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %19 = "llvm.load"(%arg19) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %20 = "llvm.ashr"(%18, %19) : (i64, i64) -> i64
    "llvm.store"(%20, %arg20) <{alignment = 1 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr_16bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr, %arg16: !llvm.ptr, %arg17: !llvm.ptr):
    %15 = "llvm.load"(%arg15) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %16 = "llvm.load"(%arg16) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %17 = "llvm.lshr"(%15, %16) : (i128, i128) -> i128
    "llvm.store"(%17, %arg17) <{alignment = 1 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl_16bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: !llvm.ptr):
    %12 = "llvm.load"(%arg12) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %13 = "llvm.load"(%arg13) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %14 = "llvm.shl"(%12, %13) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.store"(%14, %arg14) <{alignment = 1 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr_16bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: !llvm.ptr):
    %9 = "llvm.load"(%arg9) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %10 = "llvm.load"(%arg10) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    %11 = "llvm.ashr"(%9, %10) : (i128, i128) -> i128
    "llvm.store"(%11, %arg11) <{alignment = 1 : i64, ordering = 0 : i64}> : (i128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "lshr_32bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: !llvm.ptr):
    %6 = "llvm.load"(%arg6) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %7 = "llvm.load"(%arg7) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %8 = "llvm.lshr"(%6, %7) : (i256, i256) -> i256
    "llvm.store"(%8, %arg8) <{alignment = 1 : i64, ordering = 0 : i64}> : (i256, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "shl_32bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: !llvm.ptr):
    %3 = "llvm.load"(%arg3) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %4 = "llvm.load"(%arg4) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %5 = "llvm.shl"(%3, %4) <{overflowFlags = 0 : i32}> : (i256, i256) -> i256
    "llvm.store"(%5, %arg5) <{alignment = 1 : i64, ordering = 0 : i64}> : (i256, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ashr_32bytes", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr):
    %0 = "llvm.load"(%arg0) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %1 = "llvm.load"(%arg1) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i256
    %2 = "llvm.ashr"(%0, %1) : (i256, i256) -> i256
    "llvm.store"(%2, %arg2) <{alignment = 1 : i64, ordering = 0 : i64}> : (i256, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

