"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: !llvm.ptr, %arg38: i32, %arg39: i32):
    %135 = "llvm.mlir.constant"() <{value = 400 : i64}> : () -> i64
    %136 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %137 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %138 = "llvm.getelementptr"(%arg37, %135) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %139 = "llvm.add"(%arg38, %136) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %140 = "llvm.getelementptr"(%138, %137, %139) <{elem_type = !llvm.array<100 x i64>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %141 = "llvm.load"(%140) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %142 = "llvm.getelementptr"(%138, %137, %arg39) <{elem_type = !llvm.array<100 x i64>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %143 = "llvm.load"(%142) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %144 = "llvm.add"(%143, %141) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%144) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: !llvm.ptr, %arg35: i32, %arg36: i32):
    %125 = "llvm.mlir.constant"() <{value = 1200 : i64}> : () -> i64
    %126 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %127 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %128 = "llvm.getelementptr"(%arg34, %125) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %129 = "llvm.getelementptr"(%128, %126, %arg35) <{elem_type = !llvm.array<100 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %130 = "llvm.load"(%129) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %131 = "llvm.add"(%arg36, %127) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %132 = "llvm.getelementptr"(%128, %126, %131) <{elem_type = !llvm.array<100 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %133 = "llvm.load"(%132) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %134 = "llvm.add"(%133, %130) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%134) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_sh1add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: !llvm.ptr, %arg32: i32, %arg33: i32):
    %115 = "llvm.mlir.constant"() <{value = 1600 : i64}> : () -> i64
    %116 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %117 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %118 = "llvm.getelementptr"(%arg31, %115) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %119 = "llvm.getelementptr"(%118, %116, %arg32) <{elem_type = !llvm.array<100 x i16>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %120 = "llvm.load"(%119) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %121 = "llvm.add"(%arg33, %117) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %122 = "llvm.getelementptr"(%118, %116, %121) <{elem_type = !llvm.array<100 x i16>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %123 = "llvm.load"(%122) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %124 = "llvm.add"(%123, %120) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%124) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "test_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: !llvm.ptr, %arg29: i32, %arg30: i32):
    %105 = "llvm.mlir.constant"() <{value = 1800 : i64}> : () -> i64
    %106 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %107 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %108 = "llvm.getelementptr"(%arg28, %105) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %109 = "llvm.getelementptr"(%108, %106, %arg29) <{elem_type = !llvm.array<1000 x i8>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %110 = "llvm.load"(%109) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %111 = "llvm.add"(%arg30, %107) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %112 = "llvm.getelementptr"(%108, %106, %111) <{elem_type = !llvm.array<1000 x i8>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %113 = "llvm.load"(%112) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %114 = "llvm.add"(%113, %110) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%114) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i64 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_sh3add_uw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: !llvm.ptr, %arg26: i32, %arg27: i32):
    %95 = "llvm.mlir.constant"() <{value = 400 : i64}> : () -> i64
    %96 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %97 = "llvm.getelementptr"(%arg25, %95) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %98 = "llvm.zext"(%arg26) : (i32) -> i64
    %99 = "llvm.getelementptr"(%97, %96, %98) <{elem_type = !llvm.array<100 x i64>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %100 = "llvm.load"(%99) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %101 = "llvm.zext"(%arg27) : (i32) -> i64
    %102 = "llvm.getelementptr"(%97, %96, %101) <{elem_type = !llvm.array<100 x i64>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %103 = "llvm.load"(%102) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %104 = "llvm.add"(%103, %100) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%104) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_sh2add_uw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: !llvm.ptr, %arg23: i32, %arg24: i32):
    %85 = "llvm.mlir.constant"() <{value = 1200 : i64}> : () -> i64
    %86 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %87 = "llvm.getelementptr"(%arg22, %85) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %88 = "llvm.zext"(%arg23) : (i32) -> i64
    %89 = "llvm.getelementptr"(%87, %86, %88) <{elem_type = !llvm.array<100 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %90 = "llvm.load"(%89) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %91 = "llvm.zext"(%arg24) : (i32) -> i64
    %92 = "llvm.getelementptr"(%87, %86, %91) <{elem_type = !llvm.array<100 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %93 = "llvm.load"(%92) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %94 = "llvm.add"(%93, %90) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%94) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i16 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_sh1add_uw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: !llvm.ptr, %arg20: i32, %arg21: i32):
    %73 = "llvm.mlir.constant"() <{value = 1600 : i64}> : () -> i64
    %74 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %75 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %76 = "llvm.getelementptr"(%arg19, %73) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %77 = "llvm.zext"(%arg20) : (i32) -> i64
    %78 = "llvm.getelementptr"(%76, %74, %77) <{elem_type = !llvm.array<100 x i16>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %79 = "llvm.load"(%78) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %80 = "llvm.add"(%arg21, %75) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %81 = "llvm.zext"(%80) : (i32) -> i64
    %82 = "llvm.getelementptr"(%76, %74, %81) <{elem_type = !llvm.array<100 x i16>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %83 = "llvm.load"(%82) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %84 = "llvm.add"(%83, %79) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%84) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i8 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "test_add_uw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr, %arg17: i32, %arg18: i32):
    %63 = "llvm.mlir.constant"() <{value = 1800 : i64}> : () -> i64
    %64 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %65 = "llvm.getelementptr"(%arg16, %63) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %66 = "llvm.zext"(%arg17) : (i32) -> i64
    %67 = "llvm.getelementptr"(%65, %64, %66) <{elem_type = !llvm.array<1000 x i8>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %68 = "llvm.load"(%67) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %69 = "llvm.zext"(%arg18) : (i32) -> i64
    %70 = "llvm.getelementptr"(%65, %64, %69) <{elem_type = !llvm.array<1000 x i8>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %71 = "llvm.load"(%70) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %72 = "llvm.add"(%71, %68) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%72) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_scaled_index_addi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr, %arg15: i32):
    %50 = "llvm.mlir.constant"() <{value = 1200 : i64}> : () -> i64
    %51 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %52 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %53 = "llvm.mlir.constant"() <{value = 1600 : i64}> : () -> i64
    %54 = "llvm.getelementptr"(%arg14, %50) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %55 = "llvm.add"(%arg15, %51) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %56 = "llvm.getelementptr"(%54, %52, %55) <{elem_type = !llvm.array<100 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %57 = "llvm.load"(%56) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %58 = "llvm.getelementptr"(%arg14, %53) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %59 = "llvm.getelementptr"(%58, %52, %55) <{elem_type = !llvm.array<100 x i16>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %60 = "llvm.load"(%59) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %61 = "llvm.sext"(%60) : (i16) -> i32
    %62 = "llvm.add"(%57, %61) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_medium_offset", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: !llvm.ptr, %arg12: i32, %arg13: i32):
    %40 = "llvm.mlir.constant"() <{value = 2800 : i64}> : () -> i64
    %41 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %42 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %43 = "llvm.getelementptr"(%arg11, %40) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %44 = "llvm.getelementptr"(%43, %41, %arg12) <{elem_type = !llvm.array<1000 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %45 = "llvm.load"(%44) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %46 = "llvm.add"(%arg13, %42) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %47 = "llvm.getelementptr"(%43, %41, %46) <{elem_type = !llvm.array<1000 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %48 = "llvm.load"(%47) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %49 = "llvm.add"(%48, %45) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_large_offset", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: i32, %arg10: i32):
    %30 = "llvm.mlir.constant"() <{value = 6800 : i64}> : () -> i64
    %31 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %32 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %33 = "llvm.getelementptr"(%arg8, %30) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %34 = "llvm.getelementptr"(%33, %31, %arg9) <{elem_type = !llvm.array<200 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %35 = "llvm.load"(%34) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %36 = "llvm.add"(%arg10, %32) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %37 = "llvm.getelementptr"(%33, %31, %36) <{elem_type = !llvm.array<200 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %38 = "llvm.load"(%37) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %39 = "llvm.add"(%38, %35) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "test_cse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: i32):
    %20 = "llvm.mlir.constant"() <{value = 1200 : i64}> : () -> i64
    %21 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %22 = "llvm.mlir.constant"() <{value = 2800 : i64}> : () -> i64
    %23 = "llvm.getelementptr"(%arg6, %20) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %24 = "llvm.getelementptr"(%23, %21, %arg7) <{elem_type = !llvm.array<100 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %25 = "llvm.load"(%24) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %26 = "llvm.getelementptr"(%arg6, %22) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %27 = "llvm.getelementptr"(%26, %21, %arg7) <{elem_type = !llvm.array<1000 x i32>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %28 = "llvm.load"(%27) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %29 = "llvm.add"(%28, %25) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, passthrough = ["optsize"], res_attrs = [{llvm.zeroext}], sym_name = "test_optsize", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: i32, %arg5: i32):
    %10 = "llvm.mlir.constant"() <{value = 1800 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %12 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %13 = "llvm.getelementptr"(%arg3, %10) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %14 = "llvm.getelementptr"(%13, %11, %arg4) <{elem_type = !llvm.array<1000 x i8>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %15 = "llvm.load"(%14) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %16 = "llvm.add"(%arg5, %12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %17 = "llvm.getelementptr"(%13, %11, %16) <{elem_type = !llvm.array<1000 x i8>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %18 = "llvm.load"(%17) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %19 = "llvm.add"(%18, %15) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%19) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], res_attrs = [{llvm.zeroext}], sym_name = "test_minsize", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i32, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 1800 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "llvm.getelementptr"(%arg0, %0) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %4 = "llvm.getelementptr"(%3, %1, %arg1) <{elem_type = !llvm.array<1000 x i8>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %5 = "llvm.load"(%4) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %6 = "llvm.add"(%arg2, %2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %7 = "llvm.getelementptr"(%3, %1, %6) <{elem_type = !llvm.array<1000 x i8>, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i32) -> !llvm.ptr
    %8 = "llvm.load"(%7) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %9 = "llvm.add"(%8, %5) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.return"(%9) : (i8) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

