"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg117: !llvm.ptr, %arg118: i1, %arg119: i32):
    %159 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %160 = "llvm.getelementptr"(%arg117, %159) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %161 = "llvm.load"(%160) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %162 = "llvm.sext"(%161) : (i8) -> i32
    %163 = "llvm.select"(%arg118, %162, %arg119) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%163) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg114: !llvm.ptr, %arg115: i1, %arg116: i32):
    %154 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %155 = "llvm.getelementptr"(%arg114, %154) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %156 = "llvm.load"(%155) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %157 = "llvm.zext"(%156) : (i8) -> i32
    %158 = "llvm.select"(%arg115, %157, %arg116) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%158) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg111: !llvm.ptr, %arg112: i1, %arg113: i32):
    %149 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %150 = "llvm.getelementptr"(%arg111, %149) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %151 = "llvm.load"(%150) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %152 = "llvm.sext"(%151) : (i16) -> i32
    %153 = "llvm.select"(%arg112, %152, %arg113) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%153) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: !llvm.ptr, %arg109: i1, %arg110: i32):
    %144 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %145 = "llvm.getelementptr"(%arg108, %144) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %146 = "llvm.load"(%145) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %147 = "llvm.zext"(%146) : (i16) -> i32
    %148 = "llvm.select"(%arg109, %147, %arg110) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%148) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg105: !llvm.ptr, %arg106: i1, %arg107: i32):
    %140 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %141 = "llvm.getelementptr"(%arg105, %140) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %142 = "llvm.load"(%141) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %143 = "llvm.select"(%arg106, %142, %arg107) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%143) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg100: !llvm.ptr, %arg101: i1, %arg102: i32, %arg103: !llvm.ptr, %arg104: i32):
    %135 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %136 = "llvm.getelementptr"(%arg100, %135) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %137 = "llvm.load"(%136) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %138 = "llvm.sext"(%137) : (i8) -> i32
    "llvm.store"(%arg104, %arg103) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %139 = "llvm.select"(%arg101, %138, %arg102) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%139) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg95: !llvm.ptr, %arg96: i1, %arg97: i32, %arg98: !llvm.ptr, %arg99: i32):
    %130 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %131 = "llvm.getelementptr"(%arg95, %130) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %132 = "llvm.load"(%131) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %133 = "llvm.zext"(%132) : (i8) -> i32
    "llvm.store"(%arg99, %arg98) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %134 = "llvm.select"(%arg96, %133, %arg97) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%134) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg90: !llvm.ptr, %arg91: i1, %arg92: i32, %arg93: !llvm.ptr, %arg94: i32):
    %125 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %126 = "llvm.getelementptr"(%arg90, %125) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %127 = "llvm.load"(%126) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %128 = "llvm.sext"(%127) : (i16) -> i32
    "llvm.store"(%arg94, %arg93) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %129 = "llvm.select"(%arg91, %128, %arg92) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%129) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg85: !llvm.ptr, %arg86: i1, %arg87: i32, %arg88: !llvm.ptr, %arg89: i32):
    %120 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %121 = "llvm.getelementptr"(%arg85, %120) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %122 = "llvm.load"(%121) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %123 = "llvm.zext"(%122) : (i16) -> i32
    "llvm.store"(%arg89, %arg88) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %124 = "llvm.select"(%arg86, %123, %arg87) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%124) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: !llvm.ptr, %arg81: i1, %arg82: i32, %arg83: !llvm.ptr, %arg84: i32):
    %116 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %117 = "llvm.getelementptr"(%arg80, %116) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %118 = "llvm.load"(%117) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%arg84, %arg83) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %119 = "llvm.select"(%arg81, %118, %arg82) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%119) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: !llvm.ptr, %arg77: i1, %arg78: i32, %arg79: !llvm.ptr):
    %109 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %110 = "llvm.getelementptr"(%arg76, %109) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %111 = "llvm.load"(%110) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %112 = "llvm.sext"(%111) : (i8) -> i32
    %113 = "llvm.load"(%arg79) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %114 = "llvm.select"(%arg77, %112, %arg78) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %115 = "llvm.add"(%114, %113) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%115) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: !llvm.ptr, %arg73: i1, %arg74: i32, %arg75: !llvm.ptr):
    %102 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %103 = "llvm.getelementptr"(%arg72, %102) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %104 = "llvm.load"(%103) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %105 = "llvm.zext"(%104) : (i8) -> i32
    %106 = "llvm.load"(%arg75) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %107 = "llvm.select"(%arg73, %105, %arg74) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %108 = "llvm.add"(%107, %106) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%108) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: !llvm.ptr, %arg69: i1, %arg70: i32, %arg71: !llvm.ptr):
    %95 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %96 = "llvm.getelementptr"(%arg68, %95) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %97 = "llvm.load"(%96) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %98 = "llvm.sext"(%97) : (i16) -> i32
    %99 = "llvm.load"(%arg71) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %100 = "llvm.select"(%arg69, %98, %arg70) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %101 = "llvm.add"(%100, %99) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%101) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: !llvm.ptr, %arg65: i1, %arg66: i32, %arg67: !llvm.ptr):
    %88 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %89 = "llvm.getelementptr"(%arg64, %88) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %90 = "llvm.load"(%89) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %91 = "llvm.zext"(%90) : (i16) -> i32
    %92 = "llvm.load"(%arg67) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %93 = "llvm.select"(%arg65, %91, %arg66) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %94 = "llvm.add"(%93, %92) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%94) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_volatile", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: !llvm.ptr, %arg61: i1, %arg62: i32, %arg63: !llvm.ptr):
    %82 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %83 = "llvm.getelementptr"(%arg60, %82) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %84 = "llvm.load"(%83) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %85 = "llvm.load"(%arg63) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %86 = "llvm.select"(%arg61, %84, %arg62) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %87 = "llvm.add"(%86, %85) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: !llvm.ptr, %arg58: i1, %arg59: i32):
    %77 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %78 = "llvm.getelementptr"(%arg57, %77) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %79 = "llvm.load"(%78) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %80 = "llvm.sext"(%79) : (i8) -> i32
    %81 = "llvm.select"(%arg58, %arg59, %80) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: !llvm.ptr, %arg55: i1, %arg56: i32):
    %72 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %73 = "llvm.getelementptr"(%arg54, %72) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %74 = "llvm.load"(%73) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %75 = "llvm.zext"(%74) : (i8) -> i32
    %76 = "llvm.select"(%arg55, %arg56, %75) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%76) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: !llvm.ptr, %arg52: i1, %arg53: i32):
    %67 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %68 = "llvm.getelementptr"(%arg51, %67) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %69 = "llvm.load"(%68) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %70 = "llvm.sext"(%69) : (i16) -> i32
    %71 = "llvm.select"(%arg52, %arg53, %70) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: !llvm.ptr, %arg49: i1, %arg50: i32):
    %62 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %63 = "llvm.getelementptr"(%arg48, %62) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %64 = "llvm.load"(%63) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %65 = "llvm.zext"(%64) : (i16) -> i32
    %66 = "llvm.select"(%arg49, %arg50, %65) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: !llvm.ptr, %arg46: i1, %arg47: i32):
    %58 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %59 = "llvm.getelementptr"(%arg45, %58) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %60 = "llvm.load"(%59) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %61 = "llvm.select"(%arg46, %arg47, %60) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_store_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: !llvm.ptr, %arg41: i1, %arg42: i32, %arg43: !llvm.ptr, %arg44: i32):
    %53 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %54 = "llvm.getelementptr"(%arg40, %53) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %55 = "llvm.load"(%54) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %56 = "llvm.sext"(%55) : (i8) -> i32
    "llvm.store"(%arg44, %arg43) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %57 = "llvm.select"(%arg41, %arg42, %56) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%57) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_store_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: !llvm.ptr, %arg36: i1, %arg37: i32, %arg38: !llvm.ptr, %arg39: i32):
    %48 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %49 = "llvm.getelementptr"(%arg35, %48) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %50 = "llvm.load"(%49) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %51 = "llvm.zext"(%50) : (i8) -> i32
    "llvm.store"(%arg39, %arg38) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %52 = "llvm.select"(%arg36, %arg37, %51) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%52) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_store_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr, %arg31: i1, %arg32: i32, %arg33: !llvm.ptr, %arg34: i32):
    %43 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %44 = "llvm.getelementptr"(%arg30, %43) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %45 = "llvm.load"(%44) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %46 = "llvm.sext"(%45) : (i16) -> i32
    "llvm.store"(%arg34, %arg33) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %47 = "llvm.select"(%arg31, %arg32, %46) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_store_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: !llvm.ptr, %arg26: i1, %arg27: i32, %arg28: !llvm.ptr, %arg29: i32):
    %38 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %39 = "llvm.getelementptr"(%arg25, %38) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %40 = "llvm.load"(%39) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %41 = "llvm.zext"(%40) : (i16) -> i32
    "llvm.store"(%arg29, %arg28) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %42 = "llvm.select"(%arg26, %arg27, %41) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%42) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_store_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: !llvm.ptr, %arg21: i1, %arg22: i32, %arg23: !llvm.ptr, %arg24: i32):
    %34 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %35 = "llvm.getelementptr"(%arg20, %34) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %36 = "llvm.load"(%35) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%arg24, %arg23) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %37 = "llvm.select"(%arg21, %arg22, %36) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr, %arg17: i1, %arg18: i32, %arg19: !llvm.ptr):
    %27 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %28 = "llvm.getelementptr"(%arg16, %27) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %29 = "llvm.load"(%28) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %30 = "llvm.sext"(%29) : (i8) -> i32
    %31 = "llvm.load"(%arg19) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %32 = "llvm.select"(%arg17, %arg18, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %33 = "llvm.add"(%32, %31) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: i1, %arg14: i32, %arg15: !llvm.ptr):
    %20 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %21 = "llvm.getelementptr"(%arg12, %20) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %22 = "llvm.load"(%21) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %23 = "llvm.zext"(%22) : (i8) -> i32
    %24 = "llvm.load"(%arg15) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %25 = "llvm.select"(%arg13, %arg14, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %26 = "llvm.add"(%25, %24) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: i1, %arg10: i32, %arg11: !llvm.ptr):
    %13 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %14 = "llvm.getelementptr"(%arg8, %13) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %15 = "llvm.load"(%14) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %16 = "llvm.sext"(%15) : (i16) -> i32
    %17 = "llvm.load"(%arg11) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %18 = "llvm.select"(%arg9, %arg10, %16) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %19 = "llvm.add"(%18, %17) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: i1, %arg6: i32, %arg7: !llvm.ptr):
    %6 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %7 = "llvm.getelementptr"(%arg4, %6) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %8 = "llvm.load"(%7) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %9 = "llvm.zext"(%8) : (i16) -> i32
    %10 = "llvm.load"(%arg7) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %11 = "llvm.select"(%arg5, %arg6, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %12 = "llvm.add"(%11, %10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%12) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_volatile_op", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i1, %arg2: i32, %arg3: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 10000 : i32}> : () -> i32
    %1 = "llvm.getelementptr"(%arg0, %0) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %2 = "llvm.load"(%1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %3 = "llvm.load"(%arg3) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %4 = "llvm.select"(%arg1, %arg2, %2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %5 = "llvm.add"(%4, %3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

