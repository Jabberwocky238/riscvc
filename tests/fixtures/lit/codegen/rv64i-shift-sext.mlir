"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i64):
    %101 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %102 = "llvm.mlir.constant"() <{value = 30 : i64}> : () -> i64
    %103 = "llvm.shl"(%arg28, %101) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %104 = "llvm.ashr"(%103, %102) : (i64, i64) -> i64
    "llvm.return"(%104) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32):
    %96 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %97 = "llvm.mlir.constant"() <{value = 29 : i64}> : () -> i64
    %98 = "llvm.zext"(%arg27) : (i32) -> i64
    %99 = "llvm.shl"(%98, %96) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %100 = "llvm.ashr"(%99, %97) : (i64, i64) -> i64
    "llvm.return"(%100) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: !llvm.ptr):
    %90 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %91 = "llvm.mlir.constant"() <{value = 28 : i64}> : () -> i64
    %92 = "llvm.load"(%arg26) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %93 = "llvm.zext"(%92) : (i32) -> i64
    %94 = "llvm.shl"(%93, %90) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %95 = "llvm.ashr"(%94, %91) : (i64, i64) -> i64
    "llvm.return"(%95) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i32):
    %84 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %85 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %86 = "llvm.add"(%arg24, %arg25) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %87 = "llvm.zext"(%86) : (i32) -> i64
    %88 = "llvm.shl"(%87, %84) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %89 = "llvm.ashr"(%88, %85) : (i64, i64) -> i64
    "llvm.return"(%89) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32):
    %78 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %79 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %80 = "llvm.xor"(%arg22, %arg23) : (i32, i32) -> i32
    %81 = "llvm.zext"(%80) : (i32) -> i64
    %82 = "llvm.shl"(%81, %78) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %83 = "llvm.ashr"(%82, %79) : (i64, i64) -> i64
    "llvm.return"(%83) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32):
    %72 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %73 = "llvm.mlir.constant"() <{value = 16 : i64}> : () -> i64
    %74 = "llvm.shl"(%arg20, %arg21) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %75 = "llvm.zext"(%74) : (i32) -> i64
    %76 = "llvm.shl"(%75, %72) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %77 = "llvm.ashr"(%76, %73) : (i64, i64) -> i64
    "llvm.return"(%77) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "test7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: i64):
    %67 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %68 = "llvm.mlir.constant"() <{value = 4294967296 : i64}> : () -> i64
    %69 = "llvm.shl"(%arg19, %67) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %70 = "llvm.add"(%69, %68) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %71 = "llvm.ashr"(%70, %67) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%71) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "test8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr, %arg17: i64):
    %61 = "llvm.mlir.constant"() <{value = -4294967296 : i64}> : () -> i64
    %62 = "llvm.mlir.constant"() <{value = 4294967296 : i64}> : () -> i64
    %63 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %64 = "llvm.mul"(%arg17, %61) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %65 = "llvm.add"(%64, %62) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %66 = "llvm.ashr"(%65, %63) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%66) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr, %arg15: i64):
    %54 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %55 = "llvm.mlir.constant"() <{value = 17596481011712 : i64}> : () -> i64
    %56 = "llvm.shl"(%arg15, %54) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %57 = "llvm.add"(%56, %55) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %58 = "llvm.ashr"(%57, %54) <{isExact}> : (i64, i64) -> i64
    %59 = "llvm.getelementptr"(%arg14, %58) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %60 = "llvm.load"(%59) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%60) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: i64):
    %46 = "llvm.mlir.constant"() <{value = -4294967296 : i64}> : () -> i64
    %47 = "llvm.mlir.constant"() <{value = 530242871224172544 : i64}> : () -> i64
    %48 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %49 = "llvm.mul"(%arg13, %46) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %50 = "llvm.add"(%49, %47) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %51 = "llvm.ashr"(%50, %48) <{isExact}> : (i64, i64) -> i64
    %52 = "llvm.getelementptr"(%arg12, %51) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %53 = "llvm.load"(%52) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "test11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: i64):
    %40 = "llvm.mlir.constant"() <{value = -4294967296 : i64}> : () -> i64
    %41 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i64}> : () -> i64
    %42 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %43 = "llvm.mul"(%arg11, %40) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %44 = "llvm.add"(%43, %41) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %45 = "llvm.ashr"(%44, %42) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "test12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %36 = "llvm.mlir.constant"() <{value = 17 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %38 = "llvm.shl"(%arg9, %36) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %39 = "llvm.ashr"(%38, %37) : (i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "test13", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr, %arg8: i64):
    %22 = "llvm.mlir.constant"() <{value = -4294967296 : i64}> : () -> i64
    %23 = "llvm.mlir.constant"() <{value = 4294967296 : i64}> : () -> i64
    %24 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %25 = "llvm.mlir.constant"() <{value = 8589934592 : i64}> : () -> i64
    %26 = "llvm.mul"(%arg8, %22) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %27 = "llvm.add"(%26, %23) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %28 = "llvm.ashr"(%27, %24) <{isExact}> : (i64, i64) -> i64
    %29 = "llvm.getelementptr"(%arg7, %28) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %30 = "llvm.load"(%29) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %31 = "llvm.add"(%26, %25) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %32 = "llvm.ashr"(%31, %24) <{isExact}> : (i64, i64) -> i64
    %33 = "llvm.getelementptr"(%arg7, %32) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %34 = "llvm.load"(%33) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %35 = "llvm.add"(%30, %34) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%35) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, ptr, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test14", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: !llvm.ptr, %arg6: i64):
    %10 = "llvm.mlir.constant"() <{value = -4294967296 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = 4294967296 : i64}> : () -> i64
    %12 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %13 = "llvm.mul"(%arg6, %10) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %14 = "llvm.add"(%13, %11) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %15 = "llvm.ashr"(%14, %12) <{isExact}> : (i64, i64) -> i64
    %16 = "llvm.getelementptr"(%arg4, %15) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %17 = "llvm.load"(%16) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %18 = "llvm.zext"(%17) : (i8) -> i32
    %19 = "llvm.getelementptr"(%arg5, %15) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %20 = "llvm.load"(%19) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %21 = "llvm.add"(%18, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test15", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %6 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "llvm.ashr"(%arg2, %6) : (i32, i32) -> i32
    %8 = "llvm.ashr"(%7, %arg3) : (i32, i32) -> i32
    %9 = "llvm.shl"(%8, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 192 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.or"(%arg0, %0) : (i32, i32) -> i32
    %3 = "llvm.intr.bswap"(%2) : (i32) -> i32
    %4 = "llvm.ashr"(%3, %arg1) : (i32, i32) -> i32
    %5 = "llvm.shl"(%4, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

