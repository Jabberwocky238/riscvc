"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg173: !llvm.ptr, %arg174: i1, %arg175: i32):
    %207 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %208 = "llvm.getelementptr"(%arg173, %207) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %209 = "llvm.load"(%208) <{alignment = 1 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i8
    %210 = "llvm.sext"(%209) : (i8) -> i32
    %211 = "llvm.select"(%arg174, %210, %arg175) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%211) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg170: !llvm.ptr, %arg171: i1, %arg172: i32):
    %202 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %203 = "llvm.getelementptr"(%arg170, %202) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %204 = "llvm.load"(%203) <{alignment = 1 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i8
    %205 = "llvm.zext"(%204) : (i8) -> i32
    %206 = "llvm.select"(%arg171, %205, %arg172) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%206) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg167: !llvm.ptr, %arg168: i1, %arg169: i32):
    %197 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %198 = "llvm.getelementptr"(%arg167, %197) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %199 = "llvm.load"(%198) <{alignment = 2 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i16
    %200 = "llvm.sext"(%199) : (i16) -> i32
    %201 = "llvm.select"(%arg168, %200, %arg169) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%201) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg164: !llvm.ptr, %arg165: i1, %arg166: i32):
    %192 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %193 = "llvm.getelementptr"(%arg164, %192) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %194 = "llvm.load"(%193) <{alignment = 2 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i16
    %195 = "llvm.zext"(%194) : (i16) -> i32
    %196 = "llvm.select"(%arg165, %195, %arg166) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%196) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg161: !llvm.ptr, %arg162: i1, %arg163: i32):
    %188 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %189 = "llvm.getelementptr"(%arg161, %188) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %190 = "llvm.load"(%189) <{alignment = 4 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i32
    %191 = "llvm.select"(%arg162, %190, %arg163) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%191) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_store_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg156: !llvm.ptr, %arg157: i1, %arg158: i32, %arg159: !llvm.ptr, %arg160: i32):
    %183 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %184 = "llvm.getelementptr"(%arg156, %183) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %185 = "llvm.load"(%184) <{alignment = 1 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i8
    %186 = "llvm.sext"(%185) : (i8) -> i32
    "llvm.store"(%arg160, %arg159) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %187 = "llvm.select"(%arg157, %186, %arg158) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%187) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_store_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg151: !llvm.ptr, %arg152: i1, %arg153: i32, %arg154: !llvm.ptr, %arg155: i32):
    %178 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %179 = "llvm.getelementptr"(%arg151, %178) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %180 = "llvm.load"(%179) <{alignment = 1 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i8
    %181 = "llvm.zext"(%180) : (i8) -> i32
    "llvm.store"(%arg155, %arg154) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %182 = "llvm.select"(%arg152, %181, %arg153) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%182) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_store_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg146: !llvm.ptr, %arg147: i1, %arg148: i32, %arg149: !llvm.ptr, %arg150: i32):
    %173 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %174 = "llvm.getelementptr"(%arg146, %173) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %175 = "llvm.load"(%174) <{alignment = 2 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i16
    %176 = "llvm.sext"(%175) : (i16) -> i32
    "llvm.store"(%arg150, %arg149) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %177 = "llvm.select"(%arg147, %176, %arg148) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%177) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_store_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg141: !llvm.ptr, %arg142: i1, %arg143: i32, %arg144: !llvm.ptr, %arg145: i32):
    %168 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %169 = "llvm.getelementptr"(%arg141, %168) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %170 = "llvm.load"(%169) <{alignment = 2 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i16
    %171 = "llvm.zext"(%170) : (i16) -> i32
    "llvm.store"(%arg145, %arg144) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %172 = "llvm.select"(%arg142, %171, %arg143) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%172) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_store_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg136: !llvm.ptr, %arg137: i1, %arg138: i32, %arg139: !llvm.ptr, %arg140: i32):
    %164 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %165 = "llvm.getelementptr"(%arg136, %164) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %166 = "llvm.load"(%165) <{alignment = 4 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%arg140, %arg139) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %167 = "llvm.select"(%arg137, %166, %arg138) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%167) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_1_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg133: !llvm.ptr, %arg134: i1, %arg135: i64):
    %159 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %160 = "llvm.getelementptr"(%arg133, %159) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %161 = "llvm.load"(%160) <{alignment = 1 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i8
    %162 = "llvm.sext"(%161) : (i8) -> i64
    %163 = "llvm.select"(%arg134, %162, %arg135) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%163) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_1_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg130: !llvm.ptr, %arg131: i1, %arg132: i64):
    %154 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %155 = "llvm.getelementptr"(%arg130, %154) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %156 = "llvm.load"(%155) <{alignment = 1 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i8
    %157 = "llvm.zext"(%156) : (i8) -> i64
    %158 = "llvm.select"(%arg131, %157, %arg132) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%158) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_1_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg127: !llvm.ptr, %arg128: i1, %arg129: i64):
    %149 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %150 = "llvm.getelementptr"(%arg127, %149) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %151 = "llvm.load"(%150) <{alignment = 2 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i16
    %152 = "llvm.sext"(%151) : (i16) -> i64
    %153 = "llvm.select"(%arg128, %152, %arg129) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%153) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_1_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: !llvm.ptr, %arg125: i1, %arg126: i64):
    %144 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %145 = "llvm.getelementptr"(%arg124, %144) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %146 = "llvm.load"(%145) <{alignment = 2 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i16
    %147 = "llvm.zext"(%146) : (i16) -> i64
    %148 = "llvm.select"(%arg125, %147, %arg126) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%148) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_z_1_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg121: !llvm.ptr, %arg122: i1, %arg123: i64):
    %139 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %140 = "llvm.getelementptr"(%arg121, %139) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %141 = "llvm.load"(%140) <{alignment = 4 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i32
    %142 = "llvm.zext"(%141) : (i32) -> i64
    %143 = "llvm.select"(%arg122, %142, %arg123) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%143) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i64_1_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg118: !llvm.ptr, %arg119: i1, %arg120: i64):
    %135 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %136 = "llvm.getelementptr"(%arg118, %135) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %137 = "llvm.load"(%136) <{alignment = 8 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i64
    %138 = "llvm.select"(%arg119, %137, %arg120) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%138) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_store_64_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg113: !llvm.ptr, %arg114: i1, %arg115: i64, %arg116: !llvm.ptr, %arg117: i64):
    %130 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %131 = "llvm.getelementptr"(%arg113, %130) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %132 = "llvm.load"(%131) <{alignment = 1 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i8
    %133 = "llvm.sext"(%132) : (i8) -> i64
    "llvm.store"(%arg117, %arg116) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %134 = "llvm.select"(%arg114, %133, %arg115) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%134) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_store_64_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: !llvm.ptr, %arg109: i1, %arg110: i64, %arg111: !llvm.ptr, %arg112: i64):
    %125 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %126 = "llvm.getelementptr"(%arg108, %125) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %127 = "llvm.load"(%126) <{alignment = 1 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i8
    %128 = "llvm.zext"(%127) : (i8) -> i64
    "llvm.store"(%arg112, %arg111) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %129 = "llvm.select"(%arg109, %128, %arg110) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%129) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_store_64_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg103: !llvm.ptr, %arg104: i1, %arg105: i64, %arg106: !llvm.ptr, %arg107: i64):
    %120 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %121 = "llvm.getelementptr"(%arg103, %120) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %122 = "llvm.load"(%121) <{alignment = 2 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i16
    %123 = "llvm.sext"(%122) : (i16) -> i64
    "llvm.store"(%arg107, %arg106) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %124 = "llvm.select"(%arg104, %123, %arg105) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%124) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_store_64_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg98: !llvm.ptr, %arg99: i1, %arg100: i64, %arg101: !llvm.ptr, %arg102: i64):
    %115 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %116 = "llvm.getelementptr"(%arg98, %115) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %117 = "llvm.load"(%116) <{alignment = 2 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i16
    %118 = "llvm.zext"(%117) : (i16) -> i64
    "llvm.store"(%arg102, %arg101) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %119 = "llvm.select"(%arg99, %118, %arg100) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%119) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_z_store_64_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg93: !llvm.ptr, %arg94: i1, %arg95: i64, %arg96: !llvm.ptr, %arg97: i64):
    %110 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %111 = "llvm.getelementptr"(%arg93, %110) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %112 = "llvm.load"(%111) <{alignment = 4 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i32
    %113 = "llvm.zext"(%112) : (i32) -> i64
    "llvm.store"(%arg97, %arg96) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %114 = "llvm.select"(%arg94, %113, %arg95) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%114) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i64_store_64_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: !llvm.ptr, %arg89: i1, %arg90: i64, %arg91: !llvm.ptr, %arg92: i64):
    %106 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %107 = "llvm.getelementptr"(%arg88, %106) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %108 = "llvm.load"(%107) <{alignment = 8 : i64, ordering = 4 : i64}> : (!llvm.ptr) -> i64
    "llvm.store"(%arg92, %arg91) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %109 = "llvm.select"(%arg89, %108, %arg90) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%109) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg85: !llvm.ptr, %arg86: i1, %arg87: i32):
    %101 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %102 = "llvm.getelementptr"(%arg85, %101) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %103 = "llvm.load"(%102) <{alignment = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i8
    %104 = "llvm.sext"(%103) : (i8) -> i32
    %105 = "llvm.select"(%arg86, %104, %arg87) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%105) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg82: !llvm.ptr, %arg83: i1, %arg84: i32):
    %96 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %97 = "llvm.getelementptr"(%arg82, %96) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %98 = "llvm.load"(%97) <{alignment = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i8
    %99 = "llvm.zext"(%98) : (i8) -> i32
    %100 = "llvm.select"(%arg83, %99, %arg84) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%100) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg79: !llvm.ptr, %arg80: i1, %arg81: i32):
    %91 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %92 = "llvm.getelementptr"(%arg79, %91) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %93 = "llvm.load"(%92) <{alignment = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i16
    %94 = "llvm.sext"(%93) : (i16) -> i32
    %95 = "llvm.select"(%arg80, %94, %arg81) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: !llvm.ptr, %arg77: i1, %arg78: i32):
    %86 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %87 = "llvm.getelementptr"(%arg76, %86) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %88 = "llvm.load"(%87) <{alignment = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i16
    %89 = "llvm.zext"(%88) : (i16) -> i32
    %90 = "llvm.select"(%arg77, %89, %arg78) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%90) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (ptr, i1, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg73: !llvm.ptr, %arg74: i1, %arg75: i32):
    %82 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %83 = "llvm.getelementptr"(%arg73, %82) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %84 = "llvm.load"(%83) <{alignment = 4 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i32
    %85 = "llvm.select"(%arg74, %84, %arg75) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%85) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_store_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: !llvm.ptr, %arg69: i1, %arg70: i32, %arg71: !llvm.ptr, %arg72: i32):
    %77 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %78 = "llvm.getelementptr"(%arg68, %77) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %79 = "llvm.load"(%78) <{alignment = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i8
    %80 = "llvm.sext"(%79) : (i8) -> i32
    "llvm.store"(%arg72, %arg71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %81 = "llvm.select"(%arg69, %80, %arg70) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_store_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: !llvm.ptr, %arg64: i1, %arg65: i32, %arg66: !llvm.ptr, %arg67: i32):
    %72 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %73 = "llvm.getelementptr"(%arg63, %72) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %74 = "llvm.load"(%73) <{alignment = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i8
    %75 = "llvm.zext"(%74) : (i8) -> i32
    "llvm.store"(%arg67, %arg66) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %76 = "llvm.select"(%arg64, %75, %arg65) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%76) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_store_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: !llvm.ptr, %arg59: i1, %arg60: i32, %arg61: !llvm.ptr, %arg62: i32):
    %67 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %68 = "llvm.getelementptr"(%arg58, %67) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %69 = "llvm.load"(%68) <{alignment = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i16
    %70 = "llvm.sext"(%69) : (i16) -> i32
    "llvm.store"(%arg62, %arg61) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %71 = "llvm.select"(%arg59, %70, %arg60) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_store_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: !llvm.ptr, %arg54: i1, %arg55: i32, %arg56: !llvm.ptr, %arg57: i32):
    %62 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %63 = "llvm.getelementptr"(%arg53, %62) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %64 = "llvm.load"(%63) <{alignment = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i16
    %65 = "llvm.zext"(%64) : (i16) -> i32
    "llvm.store"(%arg57, %arg56) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %66 = "llvm.select"(%arg54, %65, %arg55) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i32 (ptr, i1, i32, ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_store_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: !llvm.ptr, %arg49: i1, %arg50: i32, %arg51: !llvm.ptr, %arg52: i32):
    %58 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %59 = "llvm.getelementptr"(%arg48, %58) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %60 = "llvm.load"(%59) <{alignment = 4 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%arg52, %arg51) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %61 = "llvm.select"(%arg49, %60, %arg50) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_1_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: !llvm.ptr, %arg46: i1, %arg47: i64):
    %53 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %54 = "llvm.getelementptr"(%arg45, %53) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %55 = "llvm.load"(%54) <{alignment = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i8
    %56 = "llvm.sext"(%55) : (i8) -> i64
    %57 = "llvm.select"(%arg46, %56, %arg47) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%57) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_1_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: !llvm.ptr, %arg43: i1, %arg44: i64):
    %48 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %49 = "llvm.getelementptr"(%arg42, %48) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %50 = "llvm.load"(%49) <{alignment = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i8
    %51 = "llvm.zext"(%50) : (i8) -> i64
    %52 = "llvm.select"(%arg43, %51, %arg44) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%52) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_1_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: !llvm.ptr, %arg40: i1, %arg41: i64):
    %43 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %44 = "llvm.getelementptr"(%arg39, %43) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %45 = "llvm.load"(%44) <{alignment = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i16
    %46 = "llvm.sext"(%45) : (i16) -> i64
    %47 = "llvm.select"(%arg40, %46, %arg41) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%47) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_1_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: !llvm.ptr, %arg37: i1, %arg38: i64):
    %38 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %39 = "llvm.getelementptr"(%arg36, %38) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %40 = "llvm.load"(%39) <{alignment = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i16
    %41 = "llvm.zext"(%40) : (i16) -> i64
    %42 = "llvm.select"(%arg37, %41, %arg38) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%42) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_z_1_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: !llvm.ptr, %arg34: i1, %arg35: i64):
    %33 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %34 = "llvm.getelementptr"(%arg33, %33) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %35 = "llvm.load"(%34) <{alignment = 4 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i32
    %36 = "llvm.zext"(%35) : (i32) -> i64
    %37 = "llvm.select"(%arg34, %36, %arg35) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%37) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}], function_type = !llvm.func<i64 (ptr, i1, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i64_1_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr, %arg31: i1, %arg32: i64):
    %29 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %30 = "llvm.getelementptr"(%arg30, %29) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %31 = "llvm.load"(%30) <{alignment = 8 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i64
    %32 = "llvm.select"(%arg31, %31, %arg32) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%32) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_s_store_64_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: !llvm.ptr, %arg26: i1, %arg27: i64, %arg28: !llvm.ptr, %arg29: i64):
    %24 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %25 = "llvm.getelementptr"(%arg25, %24) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %26 = "llvm.load"(%25) <{alignment = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i8
    %27 = "llvm.sext"(%26) : (i8) -> i64
    "llvm.store"(%arg29, %arg28) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %28 = "llvm.select"(%arg26, %27, %arg27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%28) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i8_z_store_64_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: !llvm.ptr, %arg21: i1, %arg22: i64, %arg23: !llvm.ptr, %arg24: i64):
    %19 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %20 = "llvm.getelementptr"(%arg20, %19) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %21 = "llvm.load"(%20) <{alignment = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i8
    %22 = "llvm.zext"(%21) : (i8) -> i64
    "llvm.store"(%arg24, %arg23) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %23 = "llvm.select"(%arg21, %22, %arg22) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%23) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_s_store_64_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr, %arg16: i1, %arg17: i64, %arg18: !llvm.ptr, %arg19: i64):
    %14 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %15 = "llvm.getelementptr"(%arg15, %14) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %16 = "llvm.load"(%15) <{alignment = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i16
    %17 = "llvm.sext"(%16) : (i16) -> i64
    "llvm.store"(%arg19, %arg18) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %18 = "llvm.select"(%arg16, %17, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%18) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i16_z_store_64_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: i1, %arg12: i64, %arg13: !llvm.ptr, %arg14: i64):
    %9 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %10 = "llvm.getelementptr"(%arg10, %9) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %11 = "llvm.load"(%10) <{alignment = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i16
    %12 = "llvm.zext"(%11) : (i16) -> i64
    "llvm.store"(%arg14, %arg13) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %13 = "llvm.select"(%arg11, %12, %arg12) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i32_z_store_64_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: !llvm.ptr, %arg6: i1, %arg7: i64, %arg8: !llvm.ptr, %arg9: i64):
    %4 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %5 = "llvm.getelementptr"(%arg5, %4) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %6 = "llvm.load"(%5) <{alignment = 4 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i32
    %7 = "llvm.zext"(%6) : (i32) -> i64
    "llvm.store"(%arg9, %arg8) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %8 = "llvm.select"(%arg6, %7, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {}, {}, {}], function_type = !llvm.func<i64 (ptr, i1, i64, ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_i64_store_64_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i1, %arg2: i64, %arg3: !llvm.ptr, %arg4: i64):
    %0 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %1 = "llvm.getelementptr"(%arg0, %0) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %2 = "llvm.load"(%1) <{alignment = 8 : i64, ordering = 7 : i64}> : (!llvm.ptr) -> i64
    "llvm.store"(%arg4, %arg3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %3 = "llvm.select"(%arg1, %2, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

