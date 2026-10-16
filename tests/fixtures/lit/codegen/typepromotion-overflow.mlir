"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "overflow_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i16, %arg30: i16):
    %129 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %130 = "llvm.mlir.constant"() <{value = 1024 : i16}> : () -> i16
    %131 = "llvm.mlir.constant"() <{value = 2 : i16}> : () -> i16
    %132 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %133 = "llvm.add"(%arg30, %arg29) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %134 = "llvm.or"(%133, %129) : (i16, i16) -> i16
    %135 = "llvm.icmp"(%134, %130) <{predicate = 8 : i64}> : (i16, i16) -> i1
    %136 = "llvm.select"(%135, %131, %132) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%136) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "overflow_sub", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i16, %arg28: i16):
    %121 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %122 = "llvm.mlir.constant"() <{value = 1024 : i16}> : () -> i16
    %123 = "llvm.mlir.constant"() <{value = 2 : i16}> : () -> i16
    %124 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %125 = "llvm.sub"(%arg27, %arg28) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %126 = "llvm.or"(%125, %121) : (i16, i16) -> i16
    %127 = "llvm.icmp"(%126, %122) <{predicate = 8 : i64}> : (i16, i16) -> i1
    %128 = "llvm.select"(%127, %123, %124) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%128) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "overflow_mul", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i16, %arg26: i16):
    %113 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %114 = "llvm.mlir.constant"() <{value = 1024 : i16}> : () -> i16
    %115 = "llvm.mlir.constant"() <{value = 2 : i16}> : () -> i16
    %116 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %117 = "llvm.mul"(%arg26, %arg25) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %118 = "llvm.or"(%117, %113) : (i16, i16) -> i16
    %119 = "llvm.icmp"(%118, %114) <{predicate = 8 : i64}> : (i16, i16) -> i1
    %120 = "llvm.select"(%119, %115, %116) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%120) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "overflow_shl", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i16, %arg24: i16):
    %105 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %106 = "llvm.mlir.constant"() <{value = 1024 : i16}> : () -> i16
    %107 = "llvm.mlir.constant"() <{value = 2 : i16}> : () -> i16
    %108 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %109 = "llvm.shl"(%arg23, %arg24) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %110 = "llvm.or"(%109, %105) : (i16, i16) -> i16
    %111 = "llvm.icmp"(%110, %106) <{predicate = 8 : i64}> : (i16, i16) -> i1
    %112 = "llvm.select"(%111, %107, %108) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%112) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "overflow_add_no_consts", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i8, %arg21: i8, %arg22: i8):
    %100 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %101 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %102 = "llvm.add"(%arg21, %arg20) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %103 = "llvm.icmp"(%102, %arg22) <{predicate = 8 : i64}> : (i8, i8) -> i1
    %104 = "llvm.select"(%103, %100, %101) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%104) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "overflow_add_const_limit", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i8, %arg19: i8):
    %94 = "llvm.mlir.constant"() <{value = -128 : i8}> : () -> i8
    %95 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %96 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %97 = "llvm.add"(%arg19, %arg18) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %98 = "llvm.icmp"(%97, %94) <{predicate = 8 : i64}> : (i8, i8) -> i1
    %99 = "llvm.select"(%98, %95, %96) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%99) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, sym_name = "overflow_add_positive_const_limit", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i8):
    %89 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %90 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %91 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %92 = "llvm.icmp"(%arg17, %89) <{predicate = 2 : i64}> : (i8, i8) -> i1
    %93 = "llvm.select"(%92, %90, %91) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%93) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, sym_name = "unsafe_add_underflow", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i8):
    %84 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %85 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %86 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %87 = "llvm.icmp"(%arg16, %84) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %88 = "llvm.select"(%87, %85, %86) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%88) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, sym_name = "safe_add_underflow", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i8):
    %79 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %80 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %81 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %82 = "llvm.icmp"(%arg15, %79) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %83 = "llvm.select"(%82, %80, %81) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%83) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, sym_name = "safe_add_underflow_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i8):
    %72 = "llvm.mlir.constant"() <{value = -2 : i8}> : () -> i8
    %73 = "llvm.mlir.constant"() <{value = -5 : i8}> : () -> i8
    %74 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %75 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %76 = "llvm.add"(%arg14, %72) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %77 = "llvm.icmp"(%76, %73) <{predicate = 6 : i64}> : (i8, i8) -> i1
    %78 = "llvm.select"(%77, %74, %75) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%78) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, sym_name = "overflow_sub_negative_const_limit", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i8):
    %67 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %68 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %70 = "llvm.icmp"(%arg13, %67) <{predicate = 2 : i64}> : (i8, i8) -> i1
    %71 = "llvm.select"(%70, %68, %69) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, sym_name = "sext_sub_underflow", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i8):
    %61 = "llvm.mlir.constant"() <{value = -6 : i8}> : () -> i8
    %62 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %63 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %64 = "llvm.add"(%arg12, %61) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %65 = "llvm.icmp"(%64, %61) <{predicate = 8 : i64}> : (i8, i8) -> i1
    %66 = "llvm.select"(%65, %62, %63) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, sym_name = "safe_sub_underflow", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i8):
    %56 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %57 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %58 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %59 = "llvm.icmp"(%arg11, %56) <{predicate = 0 : i64}> : (i8, i8) -> i1
    %60 = "llvm.select"(%59, %57, %58) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%60) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, sym_name = "safe_sub_underflow_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i8):
    %49 = "llvm.mlir.constant"() <{value = -4 : i8}> : () -> i8
    %50 = "llvm.mlir.constant"() <{value = -6 : i8}> : () -> i8
    %51 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %52 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %53 = "llvm.add"(%arg10, %49) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %54 = "llvm.icmp"(%53, %50) <{predicate = 8 : i64}> : (i8, i8) -> i1
    %55 = "llvm.select"(%54, %51, %52) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%55) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, sym_name = "sext_sub_underflow_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i8):
    %42 = "llvm.mlir.constant"() <{value = -4 : i8}> : () -> i8
    %43 = "llvm.mlir.constant"() <{value = -3 : i8}> : () -> i8
    %44 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %45 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %46 = "llvm.add"(%arg9, %42) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %47 = "llvm.icmp"(%46, %43) <{predicate = 6 : i64}> : (i8, i8) -> i1
    %48 = "llvm.select"(%47, %44, %45) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture, llvm.readonly}], function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "safe_sub_imm_var", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr):
    %41 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture, llvm.readonly}], function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "safe_sub_var_imm", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr):
    %35 = "llvm.mlir.constant"() <{value = 8 : i8}> : () -> i8
    %36 = "llvm.mlir.constant"() <{value = -4 : i8}> : () -> i8
    %37 = "llvm.load"(%arg7) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %38 = "llvm.add"(%37, %35) <{overflowFlags = 1 : i32}> : (i8, i8) -> i8
    %39 = "llvm.icmp"(%38, %36) <{predicate = 8 : i64}> : (i8, i8) -> i1
    %40 = "llvm.zext"(%39) : (i1) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture, llvm.readnone}], function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "safe_add_imm_var", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr):
    %34 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.nocapture, llvm.readnone}], function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "safe_add_var_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: !llvm.ptr):
    %33 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, sym_name = "convert_add_order", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i8):
    %20 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %21 = "llvm.mlir.constant"() <{value = 50 : i8}> : () -> i8
    %22 = "llvm.mlir.constant"() <{value = -40 : i8}> : () -> i8
    %23 = "llvm.mlir.constant"() <{value = 20 : i8}> : () -> i8
    %24 = "llvm.mlir.constant"() <{value = 2 : i8}> : () -> i8
    %25 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %26 = "llvm.or"(%arg4, %20) : (i8, i8) -> i8
    %27 = "llvm.icmp"(%26, %21) <{predicate = 6 : i64}> : (i8, i8) -> i1
    %28 = "llvm.add"(%26, %22) <{overflowFlags = 1 : i32}> : (i8, i8) -> i8
    %29 = "llvm.icmp"(%28, %23) <{predicate = 6 : i64}> : (i8, i8) -> i1
    %30 = "llvm.select"(%29, %20, %24) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    %31 = "llvm.select"(%27, %30, %25) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    %32 = "llvm.and"(%31, %arg4) : (i8, i8) -> i8
    "llvm.return"(%32) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i8 (i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "underflow_if_sub", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32, %arg3: i8):
    %10 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = -11 : i8}> : () -> i8
    %12 = "llvm.mlir.constant"() <{value = 100 : i8}> : () -> i8
    %13 = "llvm.icmp"(%arg2, %10) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %14 = "llvm.zext"(%13) : (i1) -> i32
    %15 = "llvm.and"(%14, %arg2) : (i32, i32) -> i32
    %16 = "llvm.trunc"(%15) <{overflowFlags = 0 : i32}> : (i32) -> i8
    %17 = "llvm.add"(%16, %11) <{overflowFlags = 3 : i32}> : (i8, i8) -> i8
    %18 = "llvm.icmp"(%17, %arg3) <{predicate = 6 : i64}> : (i8, i8) -> i1
    %19 = "llvm.select"(%18, %17, %12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    "llvm.return"(%19) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i8 (i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "underflow_if_sub_signext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i8):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = -11 : i8}> : () -> i8
    %2 = "llvm.mlir.constant"() <{value = 100 : i8}> : () -> i8
    %3 = "llvm.icmp"(%arg0, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %4 = "llvm.zext"(%3) : (i1) -> i32
    %5 = "llvm.and"(%4, %arg0) : (i32, i32) -> i32
    %6 = "llvm.trunc"(%5) <{overflowFlags = 0 : i32}> : (i32) -> i8
    %7 = "llvm.add"(%6, %1) <{overflowFlags = 3 : i32}> : (i8, i8) -> i8
    %8 = "llvm.icmp"(%7, %arg1) <{predicate = 6 : i64}> : (i8, i8) -> i1
    %9 = "llvm.select"(%8, %7, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    "llvm.return"(%9) : (i8) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

