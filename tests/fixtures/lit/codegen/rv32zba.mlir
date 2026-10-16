"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "sh1add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg77: i64, %arg78: !llvm.ptr):
    %153 = "llvm.getelementptr"(%arg78, %arg77) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %154 = "llvm.load"(%153) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%154) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg75: i64, %arg76: !llvm.ptr):
    %151 = "llvm.getelementptr"(%arg76, %arg75) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %152 = "llvm.load"(%151) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%152) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg73: i64, %arg74: !llvm.ptr):
    %149 = "llvm.getelementptr"(%arg74, %arg73) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %150 = "llvm.load"(%149) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%150) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg71: i32, %arg72: i32):
    %146 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %147 = "llvm.mul"(%arg71, %146) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %148 = "llvm.add"(%147, %arg72) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%148) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: i32, %arg70: i32):
    %143 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %144 = "llvm.mul"(%arg69, %143) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %145 = "llvm.add"(%144, %arg70) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%145) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg67: i32, %arg68: i32):
    %140 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %141 = "llvm.mul"(%arg67, %140) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %142 = "llvm.add"(%141, %arg68) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%142) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul18", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: i32, %arg66: i32):
    %137 = "llvm.mlir.constant"() <{value = 18 : i32}> : () -> i32
    %138 = "llvm.mul"(%arg65, %137) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %139 = "llvm.add"(%138, %arg66) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%139) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul20", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: i32, %arg64: i32):
    %134 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %135 = "llvm.mul"(%arg63, %134) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %136 = "llvm.add"(%135, %arg64) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%136) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul24", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: i32, %arg62: i32):
    %131 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %132 = "llvm.mul"(%arg61, %131) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %133 = "llvm.add"(%132, %arg62) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%133) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul36", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: i32, %arg60: i32):
    %128 = "llvm.mlir.constant"() <{value = 36 : i32}> : () -> i32
    %129 = "llvm.mul"(%arg59, %128) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %130 = "llvm.add"(%129, %arg60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%130) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul40", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: i32, %arg58: i32):
    %125 = "llvm.mlir.constant"() <{value = 40 : i32}> : () -> i32
    %126 = "llvm.mul"(%arg57, %125) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %127 = "llvm.add"(%126, %arg58) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%127) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addmul72", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: i32, %arg56: i32):
    %122 = "llvm.mlir.constant"() <{value = 72 : i32}> : () -> i32
    %123 = "llvm.mul"(%arg55, %122) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %124 = "llvm.add"(%123, %arg56) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%124) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul96", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i32):
    %120 = "llvm.mlir.constant"() <{value = 96 : i32}> : () -> i32
    %121 = "llvm.mul"(%arg54, %120) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%121) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul160", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: i32):
    %118 = "llvm.mlir.constant"() <{value = 160 : i32}> : () -> i32
    %119 = "llvm.mul"(%arg53, %118) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%119) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul288", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i32):
    %116 = "llvm.mlir.constant"() <{value = 288 : i32}> : () -> i32
    %117 = "llvm.mul"(%arg52, %116) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%117) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul258", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: i32):
    %114 = "llvm.mlir.constant"() <{value = 258 : i32}> : () -> i32
    %115 = "llvm.mul"(%arg51, %114) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%115) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul260", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i32):
    %112 = "llvm.mlir.constant"() <{value = 260 : i32}> : () -> i32
    %113 = "llvm.mul"(%arg50, %112) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%113) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul264", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i32):
    %110 = "llvm.mlir.constant"() <{value = 264 : i32}> : () -> i32
    %111 = "llvm.mul"(%arg49, %110) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%111) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32):
    %108 = "llvm.mlir.constant"() <{value = 11 : i32}> : () -> i32
    %109 = "llvm.mul"(%arg48, %108) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%109) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul19", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i32):
    %106 = "llvm.mlir.constant"() <{value = 19 : i32}> : () -> i32
    %107 = "llvm.mul"(%arg47, %106) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%107) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul13", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i32):
    %104 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %105 = "llvm.mul"(%arg46, %104) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%105) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul21", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i32):
    %102 = "llvm.mlir.constant"() <{value = 21 : i32}> : () -> i32
    %103 = "llvm.mul"(%arg45, %102) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%103) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul37", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32):
    %100 = "llvm.mlir.constant"() <{value = 37 : i32}> : () -> i32
    %101 = "llvm.mul"(%arg44, %100) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%101) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul25", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i32):
    %98 = "llvm.mlir.constant"() <{value = 25 : i32}> : () -> i32
    %99 = "llvm.mul"(%arg43, %98) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%99) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul41", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i32):
    %96 = "llvm.mlir.constant"() <{value = 41 : i32}> : () -> i32
    %97 = "llvm.mul"(%arg42, %96) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%97) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul73", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i32):
    %94 = "llvm.mlir.constant"() <{value = 73 : i32}> : () -> i32
    %95 = "llvm.mul"(%arg41, %94) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul27", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32):
    %92 = "llvm.mlir.constant"() <{value = 27 : i32}> : () -> i32
    %93 = "llvm.mul"(%arg40, %92) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%93) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul45", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i32):
    %90 = "llvm.mlir.constant"() <{value = 45 : i32}> : () -> i32
    %91 = "llvm.mul"(%arg39, %90) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%91) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul81", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32):
    %88 = "llvm.mlir.constant"() <{value = 81 : i32}> : () -> i32
    %89 = "llvm.mul"(%arg38, %88) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%89) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul4098", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32):
    %86 = "llvm.mlir.constant"() <{value = 4098 : i32}> : () -> i32
    %87 = "llvm.mul"(%arg37, %86) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul4100", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32):
    %84 = "llvm.mlir.constant"() <{value = 4100 : i32}> : () -> i32
    %85 = "llvm.mul"(%arg36, %84) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%85) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul4104", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i32):
    %82 = "llvm.mlir.constant"() <{value = 4104 : i32}> : () -> i32
    %83 = "llvm.mul"(%arg35, %82) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%83) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add4104", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i32):
    %80 = "llvm.mlir.constant"() <{value = 4104 : i32}> : () -> i32
    %81 = "llvm.add"(%arg34, %80) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add8208", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32):
    %78 = "llvm.mlir.constant"() <{value = 8208 : i32}> : () -> i32
    %79 = "llvm.add"(%arg33, %78) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add8192", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32):
    %76 = "llvm.mlir.constant"() <{value = 8192 : i32}> : () -> i32
    %77 = "llvm.add"(%arg32, %76) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%77) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addshl_5_6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32, %arg31: i32):
    %71 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %72 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %73 = "llvm.shl"(%arg30, %71) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %74 = "llvm.shl"(%arg31, %72) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %75 = "llvm.add"(%73, %74) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%75) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addshl_5_7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32, %arg29: i32):
    %66 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %67 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %68 = "llvm.shl"(%arg28, %66) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %69 = "llvm.shl"(%arg29, %67) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %70 = "llvm.add"(%68, %69) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%70) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "addshl_5_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32, %arg27: i32):
    %61 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %62 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %63 = "llvm.shl"(%arg26, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %64 = "llvm.shl"(%arg27, %62) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %65 = "llvm.add"(%63, %64) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%65) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srli_1_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr, %arg25: i32):
    %57 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %58 = "llvm.lshr"(%arg25, %57) : (i32, i32) -> i32
    %59 = "llvm.getelementptr"(%arg24, %58) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %60 = "llvm.load"(%59) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%60) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srli_2_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: !llvm.ptr, %arg23: i32):
    %53 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %54 = "llvm.lshr"(%arg23, %53) : (i32, i32) -> i32
    %55 = "llvm.getelementptr"(%arg22, %54) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %56 = "llvm.load"(%55) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%56) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srli_2_sh1add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: !llvm.ptr, %arg21: i32):
    %49 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %50 = "llvm.lshr"(%arg21, %49) : (i32, i32) -> i32
    %51 = "llvm.getelementptr"(%arg20, %50) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %52 = "llvm.load"(%51) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%52) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srli_3_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: i32):
    %45 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %46 = "llvm.lshr"(%arg19, %45) : (i32, i32) -> i32
    %47 = "llvm.getelementptr"(%arg18, %46) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %48 = "llvm.load"(%47) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srli_4_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr, %arg17: i32):
    %41 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %42 = "llvm.lshr"(%arg17, %41) : (i32, i32) -> i32
    %43 = "llvm.getelementptr"(%arg16, %42) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %44 = "llvm.load"(%43) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%44) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %39 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %40 = "llvm.mul"(%arg15, %39) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %37 = "llvm.mlir.constant"() <{value = -2 : i32}> : () -> i32
    %38 = "llvm.mul"(%arg14, %37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%38) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %35 = "llvm.mlir.constant"() <{value = -3 : i32}> : () -> i32
    %36 = "llvm.mul"(%arg13, %35) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%36) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %33 = "llvm.mlir.constant"() <{value = -4 : i32}> : () -> i32
    %34 = "llvm.mul"(%arg12, %33) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %31 = "llvm.mlir.constant"() <{value = -5 : i32}> : () -> i32
    %32 = "llvm.mul"(%arg11, %31) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %29 = "llvm.mlir.constant"() <{value = -6 : i32}> : () -> i32
    %30 = "llvm.mul"(%arg10, %29) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%30) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %27 = "llvm.mlir.constant"() <{value = -7 : i32}> : () -> i32
    %28 = "llvm.mul"(%arg9, %27) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%28) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %25 = "llvm.mlir.constant"() <{value = -8 : i32}> : () -> i32
    %26 = "llvm.mul"(%arg8, %25) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select3i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i1):
    %22 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %24 = "llvm.select"(%arg7, %22, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select5i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i1):
    %19 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %21 = "llvm.select"(%arg6, %19, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select9i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i1):
    %16 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %18 = "llvm.select"(%arg5, %16, %17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i64 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select3i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i1):
    %13 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %15 = "llvm.select"(%arg4, %13, %14) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i64 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select5i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i1):
    %10 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %11 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %12 = "llvm.select"(%arg3, %10, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%12) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i64 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select9i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i1):
    %7 = "llvm.mlir.constant"() <{value = 9 : i64}> : () -> i64
    %8 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %9 = "llvm.select"(%arg2, %7, %8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "shl_add_knownbits", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 16383 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "llvm.and"(%arg1, %0) : (i32, i32) -> i32
    %4 = "llvm.mul"(%3, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %5 = "llvm.lshr"(%4, %2) : (i32, i32) -> i32
    %6 = "llvm.getelementptr"(%arg0, %5) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.return"(%6) : (!llvm.ptr) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

