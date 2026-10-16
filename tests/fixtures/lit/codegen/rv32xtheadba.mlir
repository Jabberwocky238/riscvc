"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "th_addsl_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg73: i64, %arg74: !llvm.ptr):
    %138 = "llvm.getelementptr"(%arg74, %arg73) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %139 = "llvm.load"(%138) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%139) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "th_addsl_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg71: i64, %arg72: !llvm.ptr):
    %136 = "llvm.getelementptr"(%arg72, %arg71) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %137 = "llvm.load"(%136) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%137) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "th_addsl_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: i64, %arg70: !llvm.ptr):
    %134 = "llvm.getelementptr"(%arg70, %arg69) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %135 = "llvm.load"(%134) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%135) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "th_addsl_2_extra_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: i32, %arg67: i32, %arg68: i32):
    %126 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %127 = "llvm.shl"(%arg66, %126) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %128 = "llvm.add"(%127, %arg67) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %129 = "llvm.shl"(%arg68, %128) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %130 = "llvm.ashr"(%128, %126) : (i32, i32) -> i32
    %131 = "llvm.sext"(%129) : (i32) -> i64
    %132 = "llvm.sext"(%130) : (i32) -> i64
    %133 = "llvm.mul"(%131, %132) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%133) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i32, %arg65: i32):
    %123 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %124 = "llvm.mul"(%arg64, %123) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %125 = "llvm.add"(%124, %arg65) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%125) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: i32, %arg63: i32):
    %120 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %121 = "llvm.mul"(%arg62, %120) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %122 = "llvm.add"(%121, %arg63) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%122) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i32, %arg61: i32):
    %117 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %118 = "llvm.mul"(%arg60, %117) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %119 = "llvm.add"(%118, %arg61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%119) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul18", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i32, %arg59: i32):
    %114 = "llvm.mlir.constant"() <{value = 18 : i32}> : () -> i32
    %115 = "llvm.mul"(%arg58, %114) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %116 = "llvm.add"(%115, %arg59) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%116) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul20", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i32, %arg57: i32):
    %111 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %112 = "llvm.mul"(%arg56, %111) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %113 = "llvm.add"(%112, %arg57) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%113) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul24", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i32, %arg55: i32):
    %108 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %109 = "llvm.mul"(%arg54, %108) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %110 = "llvm.add"(%109, %arg55) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%110) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul36", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i32, %arg53: i32):
    %105 = "llvm.mlir.constant"() <{value = 36 : i32}> : () -> i32
    %106 = "llvm.mul"(%arg52, %105) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %107 = "llvm.add"(%106, %arg53) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%107) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul40", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i32, %arg51: i32):
    %102 = "llvm.mlir.constant"() <{value = 40 : i32}> : () -> i32
    %103 = "llvm.mul"(%arg50, %102) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %104 = "llvm.add"(%103, %arg51) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%104) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul72", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32, %arg49: i32):
    %99 = "llvm.mlir.constant"() <{value = 72 : i32}> : () -> i32
    %100 = "llvm.mul"(%arg48, %99) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %101 = "llvm.add"(%100, %arg49) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%101) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul96", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i32):
    %97 = "llvm.mlir.constant"() <{value = 96 : i32}> : () -> i32
    %98 = "llvm.mul"(%arg47, %97) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%98) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul160", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i32):
    %95 = "llvm.mlir.constant"() <{value = 160 : i32}> : () -> i32
    %96 = "llvm.mul"(%arg46, %95) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%96) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul200", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i32):
    %93 = "llvm.mlir.constant"() <{value = 200 : i32}> : () -> i32
    %94 = "llvm.mul"(%arg45, %93) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%94) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul288", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32):
    %91 = "llvm.mlir.constant"() <{value = 288 : i32}> : () -> i32
    %92 = "llvm.mul"(%arg44, %91) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%92) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul258", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i32):
    %89 = "llvm.mlir.constant"() <{value = 258 : i32}> : () -> i32
    %90 = "llvm.mul"(%arg43, %89) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%90) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul260", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i32):
    %87 = "llvm.mlir.constant"() <{value = 260 : i32}> : () -> i32
    %88 = "llvm.mul"(%arg42, %87) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%88) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul264", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i32):
    %85 = "llvm.mlir.constant"() <{value = 264 : i32}> : () -> i32
    %86 = "llvm.mul"(%arg41, %85) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%86) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32):
    %83 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %84 = "llvm.mul"(%arg40, %83) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%84) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul19", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i32):
    %81 = "llvm.mlir.constant"() <{value = 19 : i32}> : () -> i32
    %82 = "llvm.mul"(%arg39, %81) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%82) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul13", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32):
    %79 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %80 = "llvm.mul"(%arg38, %79) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%80) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul21", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32):
    %77 = "llvm.mlir.constant"() <{value = 21 : i32}> : () -> i32
    %78 = "llvm.mul"(%arg37, %77) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%78) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul37", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32):
    %75 = "llvm.mlir.constant"() <{value = 37 : i32}> : () -> i32
    %76 = "llvm.mul"(%arg36, %75) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%76) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul25", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i32):
    %73 = "llvm.mlir.constant"() <{value = 25 : i32}> : () -> i32
    %74 = "llvm.mul"(%arg35, %73) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%74) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul41", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i32):
    %71 = "llvm.mlir.constant"() <{value = 41 : i32}> : () -> i32
    %72 = "llvm.mul"(%arg34, %71) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%72) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul73", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32):
    %69 = "llvm.mlir.constant"() <{value = 73 : i32}> : () -> i32
    %70 = "llvm.mul"(%arg33, %69) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%70) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul27", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32):
    %67 = "llvm.mlir.constant"() <{value = 27 : i32}> : () -> i32
    %68 = "llvm.mul"(%arg32, %67) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%68) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul45", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i32):
    %65 = "llvm.mlir.constant"() <{value = 45 : i32}> : () -> i32
    %66 = "llvm.mul"(%arg31, %65) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul81", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32):
    %63 = "llvm.mlir.constant"() <{value = 81 : i32}> : () -> i32
    %64 = "llvm.mul"(%arg30, %63) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul4098", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i32):
    %61 = "llvm.mlir.constant"() <{value = 4098 : i32}> : () -> i32
    %62 = "llvm.mul"(%arg29, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul4100", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32):
    %59 = "llvm.mlir.constant"() <{value = 4100 : i32}> : () -> i32
    %60 = "llvm.mul"(%arg28, %59) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%60) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul4104", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32):
    %57 = "llvm.mlir.constant"() <{value = 4104 : i32}> : () -> i32
    %58 = "llvm.mul"(%arg27, %57) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%58) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add4104", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32):
    %55 = "llvm.mlir.constant"() <{value = 4104 : i32}> : () -> i32
    %56 = "llvm.add"(%arg26, %55) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add8208", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32):
    %53 = "llvm.mlir.constant"() <{value = 8208 : i32}> : () -> i32
    %54 = "llvm.add"(%arg25, %53) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add8192", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32):
    %51 = "llvm.mlir.constant"() <{value = 8192 : i32}> : () -> i32
    %52 = "llvm.add"(%arg24, %51) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%52) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addshl_5_6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32):
    %46 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %47 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %48 = "llvm.shl"(%arg22, %46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %49 = "llvm.shl"(%arg23, %47) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %50 = "llvm.add"(%48, %49) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%50) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addshl_5_7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32, %arg21: i32):
    %41 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %42 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %43 = "llvm.shl"(%arg20, %41) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %44 = "llvm.shl"(%arg21, %42) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %45 = "llvm.add"(%43, %44) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addshl_5_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32, %arg19: i32):
    %36 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %38 = "llvm.shl"(%arg18, %36) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %39 = "llvm.shl"(%arg19, %37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %40 = "llvm.add"(%38, %39) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srli_1_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr, %arg17: i32):
    %32 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %33 = "llvm.lshr"(%arg17, %32) : (i32, i32) -> i32
    %34 = "llvm.getelementptr"(%arg16, %33) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %35 = "llvm.load"(%34) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srli_2_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr, %arg15: i32):
    %28 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %29 = "llvm.lshr"(%arg15, %28) : (i32, i32) -> i32
    %30 = "llvm.getelementptr"(%arg14, %29) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %31 = "llvm.load"(%30) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%31) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srli_2_sh1add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: i32):
    %24 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %25 = "llvm.lshr"(%arg13, %24) : (i32, i32) -> i32
    %26 = "llvm.getelementptr"(%arg12, %25) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %27 = "llvm.load"(%26) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%27) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srli_3_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: i32):
    %20 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %21 = "llvm.lshr"(%arg11, %20) : (i32, i32) -> i32
    %22 = "llvm.getelementptr"(%arg10, %21) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %23 = "llvm.load"(%22) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srli_4_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: i32):
    %16 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %17 = "llvm.lshr"(%arg9, %16) : (i32, i32) -> i32
    %18 = "llvm.getelementptr"(%arg8, %17) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %19 = "llvm.load"(%18) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%19) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %14 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %15 = "llvm.mul"(%arg7, %14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %12 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %13 = "llvm.mul"(%arg6, %12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %10 = "llvm.mlir.constant"() <{value = -3 : i32}> : () -> i32
    %11 = "llvm.mul"(%arg5, %10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %8 = "llvm.mlir.constant"() <{value = -4 : i32}> : () -> i32
    %9 = "llvm.mul"(%arg4, %8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %6 = "llvm.mlir.constant"() <{value = -5 : i32}> : () -> i32
    %7 = "llvm.mul"(%arg3, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %4 = "llvm.mlir.constant"() <{value = -6 : i32}> : () -> i32
    %5 = "llvm.mul"(%arg2, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %2 = "llvm.mlir.constant"() <{value = -7 : i32}> : () -> i32
    %3 = "llvm.mul"(%arg1, %2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %1 = "llvm.mul"(%arg0, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

