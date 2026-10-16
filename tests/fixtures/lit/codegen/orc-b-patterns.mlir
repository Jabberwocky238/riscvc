"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "orc_b_i32_mul255", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32):
    %99 = "llvm.mlir.constant"() <{value = 16843009 : i32}> : () -> i32
    %100 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %101 = "llvm.and"(%arg20, %99) : (i32, i32) -> i32
    %102 = "llvm.mul"(%101, %100) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    "llvm.return"(%102) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_lsb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32):
    %95 = "llvm.mlir.constant"() <{value = 16843009 : i32}> : () -> i32
    %96 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %97 = "llvm.and"(%arg19, %95) : (i32, i32) -> i32
    %98 = "llvm.mul"(%97, %96) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.return"(%98) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_lsb_preshifted", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %89 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %90 = "llvm.mlir.constant"() <{value = 16843009 : i32}> : () -> i32
    %91 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %92 = "llvm.lshr"(%arg18, %89) : (i32, i32) -> i32
    %93 = "llvm.and"(%92, %90) : (i32, i32) -> i32
    %94 = "llvm.mul"(%93, %91) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.return"(%94) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_b1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %82 = "llvm.mlir.constant"() <{value = 33686018 : i32}> : () -> i32
    %83 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %84 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %85 = "llvm.and"(%arg17, %82) : (i32, i32) -> i32
    %86 = "llvm.shl"(%85, %83) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %87 = "llvm.lshr"(%85, %84) <{isExact}> : (i32, i32) -> i32
    %88 = "llvm.sub"(%86, %87) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%88) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_b2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %75 = "llvm.mlir.constant"() <{value = 67372036 : i32}> : () -> i32
    %76 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %77 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %78 = "llvm.and"(%arg16, %75) : (i32, i32) -> i32
    %79 = "llvm.shl"(%78, %76) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %80 = "llvm.lshr"(%78, %77) <{isExact}> : (i32, i32) -> i32
    %81 = "llvm.sub"(%79, %80) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_b3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %68 = "llvm.mlir.constant"() <{value = 101058054 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %70 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %71 = "llvm.and"(%arg15, %68) : (i32, i32) -> i32
    %72 = "llvm.shl"(%71, %69) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %73 = "llvm.lshr"(%71, %70) : (i32, i32) -> i32
    %74 = "llvm.sub"(%72, %73) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%74) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_b4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %62 = "llvm.mlir.constant"() <{value = 134744072 : i32}> : () -> i32
    %63 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %64 = "llvm.and"(%arg14, %62) : (i32, i32) -> i32
    %65 = "llvm.shl"(%64, %63) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %66 = "llvm.lshr"(%64, %63) : (i32, i32) -> i32
    %67 = "llvm.sub"(%65, %66) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%67) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_b5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %55 = "llvm.mlir.constant"() <{value = 269488144 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %58 = "llvm.and"(%arg13, %55) : (i32, i32) -> i32
    %59 = "llvm.shl"(%58, %56) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %60 = "llvm.lshr"(%58, %57) : (i32, i32) -> i32
    %61 = "llvm.sub"(%59, %60) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_b6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %48 = "llvm.mlir.constant"() <{value = 538976288 : i32}> : () -> i32
    %49 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %51 = "llvm.and"(%arg12, %48) : (i32, i32) -> i32
    %52 = "llvm.shl"(%51, %49) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %53 = "llvm.lshr"(%51, %50) : (i32, i32) -> i32
    %54 = "llvm.sub"(%52, %53) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_b7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %41 = "llvm.mlir.constant"() <{value = 1077952576 : i32}> : () -> i32
    %42 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %44 = "llvm.and"(%arg11, %41) : (i32, i32) -> i32
    %45 = "llvm.shl"(%44, %42) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %46 = "llvm.lshr"(%44, %43) : (i32, i32) -> i32
    %47 = "llvm.sub"(%45, %46) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_b1_shl_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32, %arg10: !llvm.ptr):
    %34 = "llvm.mlir.constant"() <{value = 33686018 : i32}> : () -> i32
    %35 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %37 = "llvm.and"(%arg9, %34) : (i32, i32) -> i32
    %38 = "llvm.shl"(%37, %35) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %39 = "llvm.lshr"(%37, %36) <{isExact}> : (i32, i32) -> i32
    "llvm.store"(%39, %arg10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %40 = "llvm.sub"(%38, %39) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_b1_srl_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32, %arg8: !llvm.ptr):
    %27 = "llvm.mlir.constant"() <{value = 33686018 : i32}> : () -> i32
    %28 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %30 = "llvm.and"(%arg7, %27) : (i32, i32) -> i32
    %31 = "llvm.shl"(%30, %28) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %32 = "llvm.lshr"(%30, %29) <{isExact}> : (i32, i32) -> i32
    "llvm.store"(%31, %arg8) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %33 = "llvm.sub"(%31, %32) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_b1_not_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32, %arg6: !llvm.ptr):
    %20 = "llvm.mlir.constant"() <{value = 33686018 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %23 = "llvm.and"(%arg5, %20) : (i32, i32) -> i32
    %24 = "llvm.shl"(%23, %21) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %25 = "llvm.lshr"(%23, %22) <{isExact}> : (i32, i32) -> i32
    %26 = "llvm.sub"(%24, %25) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_shl_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: !llvm.ptr):
    %14 = "llvm.mlir.constant"() <{value = 16843009 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %17 = "llvm.and"(%arg3, %14) : (i32, i32) -> i32
    %18 = "llvm.shl"(%17, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%18, %arg4) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %19 = "llvm.mul"(%17, %16) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_shl8x_x_b1_both_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32, %arg2: !llvm.ptr):
    %5 = "llvm.mlir.constant"() <{value = 33686018 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %9 = "llvm.and"(%arg1, %5) : (i32, i32) -> i32
    %10 = "llvm.shl"(%9, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.lshr"(%9, %7) <{isExact}> : (i32, i32) -> i32
    "llvm.store"(%10, %arg2) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %12 = "llvm.getelementptr"(%arg2, %8) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%11, %12) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %13 = "llvm.sub"(%10, %11) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32_sub_x_shr8x", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 16843009 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %2 = "llvm.and"(%arg0, %0) : (i32, i32) -> i32
    %3 = "llvm.lshr"(%2, %1) : (i32, i32) -> i32
    %4 = "llvm.sub"(%2, %3) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

