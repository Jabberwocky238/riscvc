"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "and0xabcdefff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32):
    %63 = "llvm.mlir.constant"() <{value = -1412567041 : i32}> : () -> i32
    %64 = "llvm.and"(%arg21, %63) : (i32, i32) -> i32
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orlow13", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32):
    %61 = "llvm.mlir.constant"() <{value = 8191 : i32}> : () -> i32
    %62 = "llvm.or"(%arg20, %61) : (i32, i32) -> i32
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "orlow24", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i64):
    %59 = "llvm.mlir.constant"() <{value = 16777215 : i64}> : () -> i64
    %60 = "llvm.or"(%arg19, %59) : (i64, i64) -> i64
    "llvm.return"(%60) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "xorlow16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %57 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %58 = "llvm.xor"(%arg18, %57) : (i32, i32) -> i32
    "llvm.return"(%58) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "xorlow31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %55 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %56 = "llvm.xor"(%arg17, %55) : (i32, i32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "oraddlow16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %52 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %53 = "llvm.or"(%arg16, %52) : (i32, i32) -> i32
    %54 = "llvm.add"(%53, %52) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "addorlow16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %49 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %50 = "llvm.add"(%arg15, %49) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %51 = "llvm.or"(%50, %49) : (i32, i32) -> i32
    "llvm.return"(%51) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "andxorlow16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %46 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %47 = "llvm.and"(%arg14, %46) : (i32, i32) -> i32
    %48 = "llvm.xor"(%47, %46) : (i32, i32) -> i32
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "orarray100", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: !llvm.ptr):
    %36 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %37 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %38 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %39 = "llvm.mlir.constant"() <{value = 100 : i64}> : () -> i64
    "llvm.br"(%36)[^bb2] : (i64) -> ()
  ^bb1:  // pred: ^bb2
    "llvm.return"() : () -> ()
  ^bb2(%40: i64):  // 2 preds: ^bb0, ^bb2
    %41 = "llvm.getelementptr"(%arg13, %40) <{elem_type = i32, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %42 = "llvm.load"(%41) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %43 = "llvm.or"(%42, %37) : (i32, i32) -> i32
    "llvm.store"(%43, %41) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %44 = "llvm.add"(%40, %38) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    %45 = "llvm.icmp"(%44, %39) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%45, %44)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "orarray3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr):
    %25 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %27 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %28 = "llvm.load"(%arg12) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %29 = "llvm.or"(%28, %25) : (i32, i32) -> i32
    "llvm.store"(%29, %arg12) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %30 = "llvm.getelementptr"(%arg12, %26) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %31 = "llvm.load"(%30) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %32 = "llvm.or"(%31, %25) : (i32, i32) -> i32
    "llvm.store"(%32, %30) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %33 = "llvm.getelementptr"(%arg12, %27) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %34 = "llvm.load"(%33) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %35 = "llvm.or"(%34, %25) : (i32, i32) -> i32
    "llvm.store"(%35, %33) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "andlow16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %23 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %24 = "llvm.and"(%arg11, %23) : (i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "andlow24", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %21 = "llvm.mlir.constant"() <{value = 16777215 : i32}> : () -> i32
    %22 = "llvm.and"(%arg10, %21) : (i32, i32) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "compl", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %19 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %20 = "llvm.xor"(%arg9, %19) : (i32, i32) -> i32
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orlow12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %17 = "llvm.mlir.constant"() <{value = 4095 : i32}> : () -> i32
    %18 = "llvm.or"(%arg8, %17) : (i32, i32) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "xorlow12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %15 = "llvm.mlir.constant"() <{value = 4095 : i32}> : () -> i32
    %16 = "llvm.xor"(%arg7, %15) : (i32, i32) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "andimm64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %13 = "llvm.mlir.constant"() <{value = 4278255615 : i64}> : () -> i64
    %14 = "llvm.and"(%arg6, %13) : (i64, i64) -> i64
    "llvm.return"(%14) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "orimm64srli", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64):
    %11 = "llvm.mlir.constant"() <{value = -2305843009180139521 : i64}> : () -> i64
    %12 = "llvm.or"(%arg5, %11) : (i64, i64) -> i64
    "llvm.return"(%12) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "andnofff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %9 = "llvm.mlir.constant"() <{value = -72057594037927681 : i64}> : () -> i64
    %10 = "llvm.and"(%arg4, %9) : (i64, i64) -> i64
    "llvm.return"(%10) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "ornofff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %7 = "llvm.mlir.constant"() <{value = -9223372036854773761 : i64}> : () -> i64
    %8 = "llvm.or"(%arg3, %7) : (i64, i64) -> i64
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "xornofff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %5 = "llvm.mlir.constant"() <{value = -1152921504606846721 : i64}> : () -> i64
    %6 = "llvm.xor"(%arg2, %5) : (i64, i64) -> i64
    "llvm.return"(%6) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "and_or_or", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = -8589934591 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 8589934590 : i64}> : () -> i64
    %2 = "llvm.or"(%arg0, %0) : (i64, i64) -> i64
    %3 = "llvm.or"(%arg1, %1) : (i64, i64) -> i64
    %4 = "llvm.and"(%2, %3) : (i64, i64) -> i64
    "llvm.return"(%4) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

