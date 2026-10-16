"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "abs_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32):
    %123 = "llvm.intr.abs"(%arg27) <{is_int_min_poison = true}> : (i32) -> i32
    "llvm.return"(%123) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "abs_i32_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32):
    %122 = "llvm.intr.abs"(%arg26) <{is_int_min_poison = true}> : (i32) -> i32
    "llvm.return"(%122) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "abs_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i64):
    %121 = "llvm.intr.abs"(%arg25) <{is_int_min_poison = true}> : (i64) -> i64
    "llvm.return"(%121) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "pack_i64_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %120 = "llvm.mlir.constant"() <{value = 289077004467372545 : i64}> : () -> i64
    "llvm.return"(%120) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "li_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %119 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    "llvm.return"(%119) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "pli_b_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %118 = "llvm.mlir.constant"() <{value = 84215045 : i32}> : () -> i32
    "llvm.return"(%118) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "pli_b_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %117 = "llvm.mlir.constant"() <{value = -9187201950435737472 : i64}> : () -> i64
    "llvm.return"(%117) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "pli_h_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %116 = "llvm.mlir.constant"() <{value = -3014703 : i32}> : () -> i32
    "llvm.return"(%116) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "pli_h_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %115 = "llvm.mlir.constant"() <{value = 81910468077355299 : i64}> : () -> i64
    "llvm.return"(%115) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "pli_w_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %114 = "llvm.mlir.constant"() <{value = -1249835483428 : i64}> : () -> i64
    "llvm.return"(%114) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "pli_b_store_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr):
    %113 = "llvm.mlir.constant"() <{value = 1094795585 : i32}> : () -> i32
    "llvm.store"(%113, %arg24) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i64, %arg23: i64):
    %108 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %109 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %110 = "llvm.and"(%arg22, %108) : (i64, i64) -> i64
    %111 = "llvm.shl"(%arg23, %109) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %112 = "llvm.or"(%111, %110) : (i64, i64) -> i64
    "llvm.return"(%112) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32):
    %103 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %104 = "llvm.zext"(%arg20) : (i32) -> i64
    %105 = "llvm.zext"(%arg21) : (i32) -> i64
    %106 = "llvm.shl"(%105, %103) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %107 = "llvm.or"(%106, %104) : (i64, i64) -> i64
    "llvm.return"(%107) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "pack_i64_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: !llvm.ptr):
    %96 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %97 = "llvm.load"(%arg18) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %98 = "llvm.zext"(%97) : (i32) -> i64
    %99 = "llvm.shl"(%98, %96) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %100 = "llvm.load"(%arg19) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %101 = "llvm.zext"(%100) : (i32) -> i64
    %102 = "llvm.or"(%99, %101) : (i64, i64) -> i64
    "llvm.return"(%102) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, sym_name = "cls_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i8):
    %90 = "llvm.mlir.constant"() <{value = 7 : i8}> : () -> i8
    %91 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %92 = "llvm.ashr"(%arg17, %90) : (i8, i8) -> i8
    %93 = "llvm.xor"(%arg17, %92) : (i8, i8) -> i8
    %94 = "llvm.intr.ctlz"(%93) <{is_zero_poison = false}> : (i8) -> i8
    %95 = "llvm.sub"(%94, %91) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%95) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, sym_name = "cls_i8_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i8):
    %83 = "llvm.mlir.constant"() <{value = 7 : i8}> : () -> i8
    %84 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %85 = "llvm.ashr"(%arg16, %83) : (i8, i8) -> i8
    %86 = "llvm.xor"(%arg16, %85) : (i8, i8) -> i8
    %87 = "llvm.shl"(%86, %84) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %88 = "llvm.or"(%87, %84) : (i8, i8) -> i8
    %89 = "llvm.intr.ctlz"(%88) <{is_zero_poison = true}> : (i8) -> i8
    "llvm.return"(%89) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, sym_name = "cls_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i16):
    %77 = "llvm.mlir.constant"() <{value = 15 : i16}> : () -> i16
    %78 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %79 = "llvm.ashr"(%arg15, %77) : (i16, i16) -> i16
    %80 = "llvm.xor"(%arg15, %79) : (i16, i16) -> i16
    %81 = "llvm.intr.ctlz"(%80) <{is_zero_poison = false}> : (i16) -> i16
    %82 = "llvm.sub"(%81, %78) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%82) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, sym_name = "cls_i16_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i16):
    %70 = "llvm.mlir.constant"() <{value = 15 : i16}> : () -> i16
    %71 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %72 = "llvm.ashr"(%arg14, %70) : (i16, i16) -> i16
    %73 = "llvm.xor"(%arg14, %72) : (i16, i16) -> i16
    %74 = "llvm.shl"(%73, %71) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %75 = "llvm.or"(%74, %71) : (i16, i16) -> i16
    %76 = "llvm.intr.ctlz"(%75) <{is_zero_poison = true}> : (i16) -> i16
    "llvm.return"(%76) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "cls_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %64 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %65 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %66 = "llvm.ashr"(%arg13, %64) : (i32, i32) -> i32
    %67 = "llvm.xor"(%arg13, %66) : (i32, i32) -> i32
    %68 = "llvm.intr.ctlz"(%67) <{is_zero_poison = false}> : (i32) -> i32
    %69 = "llvm.sub"(%68, %65) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "cls_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %57 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %58 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %59 = "llvm.ashr"(%arg12, %57) : (i32, i32) -> i32
    %60 = "llvm.xor"(%arg12, %59) : (i32, i32) -> i32
    %61 = "llvm.shl"(%60, %58) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %62 = "llvm.or"(%61, %58) : (i32, i32) -> i32
    %63 = "llvm.intr.ctlz"(%62) <{is_zero_poison = true}> : (i32) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "cls_i32_knownbits", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %50 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %52 = "llvm.ashr"(%arg11, %50) : (i32, i32) -> i32
    %53 = "llvm.xor"(%arg11, %52) : (i32, i32) -> i32
    %54 = "llvm.intr.ctlz"(%53) <{is_zero_poison = false}> : (i32) -> i32
    %55 = "llvm.sub"(%54, %51) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %56 = "llvm.and"(%55, %50) : (i32, i32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, sym_name = "cls_i32_knownbits_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i16):
    %41 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %42 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %44 = "llvm.sext"(%arg10) : (i16) -> i32
    %45 = "llvm.ashr"(%44, %41) : (i32, i32) -> i32
    %46 = "llvm.xor"(%44, %45) : (i32, i32) -> i32
    %47 = "llvm.intr.ctlz"(%46) <{is_zero_poison = false}> : (i32) -> i32
    %48 = "llvm.sub"(%47, %42) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %49 = "llvm.or"(%48, %43) : (i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, sym_name = "cls_i32_knownbits_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i8):
    %32 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %33 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %34 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %35 = "llvm.sext"(%arg9) : (i8) -> i32
    %36 = "llvm.ashr"(%35, %32) : (i32, i32) -> i32
    %37 = "llvm.xor"(%35, %36) : (i32, i32) -> i32
    %38 = "llvm.intr.ctlz"(%37) <{is_zero_poison = false}> : (i32) -> i32
    %39 = "llvm.sub"(%38, %33) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %40 = "llvm.or"(%39, %34) : (i32, i32) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "cls_i32_knownbits_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %23 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %25 = "llvm.shl"(%arg8, %23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %26 = "llvm.ashr"(%25, %23) : (i32, i32) -> i32
    %27 = "llvm.ashr"(%26, %24) : (i32, i32) -> i32
    %28 = "llvm.xor"(%26, %27) : (i32, i32) -> i32
    %29 = "llvm.intr.ctlz"(%28) <{is_zero_poison = false}> : (i32) -> i32
    %30 = "llvm.sub"(%29, %23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %31 = "llvm.or"(%30, %23) : (i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "cls_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %17 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %18 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %19 = "llvm.ashr"(%arg7, %17) : (i64, i64) -> i64
    %20 = "llvm.xor"(%arg7, %19) : (i64, i64) -> i64
    %21 = "llvm.intr.ctlz"(%20) <{is_zero_poison = false}> : (i64) -> i64
    %22 = "llvm.sub"(%21, %18) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%22) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "cls_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %10 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %12 = "llvm.ashr"(%arg6, %10) : (i64, i64) -> i64
    %13 = "llvm.xor"(%arg6, %12) : (i64, i64) -> i64
    %14 = "llvm.shl"(%13, %11) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %15 = "llvm.or"(%14, %11) : (i64, i64) -> i64
    %16 = "llvm.intr.ctlz"(%15) <{is_zero_poison = true}> : (i64) -> i64
    "llvm.return"(%16) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, sym_name = "slx_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i128, %arg5: i128):
    %7 = "llvm.mlir.constant"() <{value = 63 : i128}> : () -> i128
    %8 = "llvm.and"(%arg5, %7) : (i128, i128) -> i128
    %9 = "llvm.shl"(%arg4, %8) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%9) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128)>, linkage = #llvm.linkage<external>, sym_name = "slxi_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i128):
    %5 = "llvm.mlir.constant"() <{value = 49 : i128}> : () -> i128
    %6 = "llvm.shl"(%arg3, %5) <{overflowFlags = 0 : i32}> : (i128, i128) -> i128
    "llvm.return"(%6) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, sym_name = "srx_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i128, %arg2: i128):
    %2 = "llvm.mlir.constant"() <{value = 63 : i128}> : () -> i128
    %3 = "llvm.and"(%arg2, %2) : (i128, i128) -> i128
    %4 = "llvm.lshr"(%arg1, %3) : (i128, i128) -> i128
    "llvm.return"(%4) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128)>, linkage = #llvm.linkage<external>, sym_name = "srxi_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i128):
    %0 = "llvm.mlir.constant"() <{value = 49 : i128}> : () -> i128
    %1 = "llvm.lshr"(%arg0, %0) : (i128, i128) -> i128
    "llvm.return"(%1) : (i128) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

