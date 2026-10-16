"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "lbia", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: !llvm.ptr, %arg133: !llvm.ptr, %arg134: i8):
    %216 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %217 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %218 = "llvm.getelementptr"(%arg132, %216) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %219 = "llvm.load"(%218) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %220 = "llvm.getelementptr"(%arg132, %217) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %221 = "llvm.add"(%219, %arg134) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.store"(%221, %arg133) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"(%220) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "lbib", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg130: !llvm.ptr, %arg131: i8):
    %210 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %211 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %212 = "llvm.getelementptr"(%arg130, %210) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %213 = "llvm.load"(%212) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %214 = "llvm.getelementptr"(%arg130, %211) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %215 = "llvm.add"(%213, %arg131) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.store"(%215, %214) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"(%212) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lbuia", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg127: !llvm.ptr, %arg128: !llvm.ptr, %arg129: i32):
    %203 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %204 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %205 = "llvm.getelementptr"(%arg127, %203) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %206 = "llvm.load"(%205) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %207 = "llvm.zext"(%206) : (i8) -> i32
    %208 = "llvm.getelementptr"(%arg127, %204) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %209 = "llvm.add"(%207, %arg129) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%209, %arg128) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%208) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "lbuib", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: !llvm.ptr, %arg125: i32, %arg126: !llvm.ptr):
    %198 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %199 = "llvm.getelementptr"(%arg124, %198) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %200 = "llvm.load"(%199) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %201 = "llvm.zext"(%200) : (i8) -> i32
    %202 = "llvm.add"(%201, %arg125) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%202, %arg126) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%199) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "lhia", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg121: !llvm.ptr, %arg122: !llvm.ptr, %arg123: i16):
    %192 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %193 = "llvm.mlir.constant"() <{value = -16 : i32}> : () -> i32
    %194 = "llvm.getelementptr"(%arg121, %192) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %195 = "llvm.load"(%194) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %196 = "llvm.getelementptr"(%arg121, %193) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %197 = "llvm.add"(%195, %arg123) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.store"(%197, %arg122) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"(%196) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "lhib", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg119: !llvm.ptr, %arg120: i16):
    %186 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %187 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %188 = "llvm.getelementptr"(%arg119, %186) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %189 = "llvm.load"(%188) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %190 = "llvm.getelementptr"(%arg119, %187) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %191 = "llvm.add"(%189, %arg120) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.store"(%191, %190) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"(%188) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lhuia", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg116: !llvm.ptr, %arg117: !llvm.ptr, %arg118: i32):
    %179 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %180 = "llvm.mlir.constant"() <{value = -16 : i32}> : () -> i32
    %181 = "llvm.getelementptr"(%arg116, %179) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %182 = "llvm.load"(%181) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %183 = "llvm.zext"(%182) : (i16) -> i32
    %184 = "llvm.getelementptr"(%arg116, %180) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %185 = "llvm.add"(%183, %arg118) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%185, %arg117) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%184) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "lhuib", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg113: !llvm.ptr, %arg114: i32, %arg115: !llvm.ptr):
    %174 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %175 = "llvm.getelementptr"(%arg113, %174) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %176 = "llvm.load"(%175) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %177 = "llvm.zext"(%176) : (i16) -> i32
    %178 = "llvm.add"(%177, %arg114) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%178, %arg115) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%175) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lwia", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg110: !llvm.ptr, %arg111: !llvm.ptr, %arg112: i32):
    %168 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %169 = "llvm.mlir.constant"() <{value = -16 : i32}> : () -> i32
    %170 = "llvm.getelementptr"(%arg110, %168) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %171 = "llvm.load"(%170) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %172 = "llvm.getelementptr"(%arg110, %169) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %173 = "llvm.add"(%171, %arg112) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%173, %arg111) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%172) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lwib", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: !llvm.ptr, %arg109: i32):
    %162 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %163 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %164 = "llvm.getelementptr"(%arg108, %162) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %165 = "llvm.load"(%164) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %166 = "llvm.getelementptr"(%arg108, %163) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %167 = "llvm.add"(%165, %arg109) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%167, %166) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%164) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "lwuia", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg105: !llvm.ptr, %arg106: !llvm.ptr, %arg107: i64):
    %155 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %156 = "llvm.mlir.constant"() <{value = -16 : i32}> : () -> i32
    %157 = "llvm.getelementptr"(%arg105, %155) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %158 = "llvm.load"(%157) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %159 = "llvm.zext"(%158) : (i32) -> i64
    %160 = "llvm.getelementptr"(%arg105, %156) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %161 = "llvm.add"(%159, %arg107) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%161, %arg106) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%160) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "lwuib", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg102: !llvm.ptr, %arg103: i64, %arg104: !llvm.ptr):
    %150 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %151 = "llvm.getelementptr"(%arg102, %150) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %152 = "llvm.load"(%151) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %153 = "llvm.zext"(%152) : (i32) -> i64
    %154 = "llvm.add"(%153, %arg103) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%154, %arg104) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%151) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "ldia", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: !llvm.ptr, %arg100: !llvm.ptr, %arg101: i64):
    %144 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %145 = "llvm.mlir.constant"() <{value = -16 : i32}> : () -> i32
    %146 = "llvm.getelementptr"(%arg99, %144) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %147 = "llvm.load"(%146) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %148 = "llvm.getelementptr"(%arg99, %145) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %149 = "llvm.add"(%147, %arg101) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%149, %arg100) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%148) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "ldib", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg97: !llvm.ptr, %arg98: i64):
    %138 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %139 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %140 = "llvm.getelementptr"(%arg97, %138) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %141 = "llvm.load"(%140) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %142 = "llvm.getelementptr"(%arg97, %139) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %143 = "llvm.add"(%141, %arg98) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%143, %142) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%140) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "sbia", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg94: !llvm.ptr, %arg95: i8, %arg96: i8):
    %135 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %136 = "llvm.getelementptr"(%arg94, %135) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %137 = "llvm.add"(%arg95, %arg96) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.store"(%137, %arg94) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"(%136) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "sbib", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg91: !llvm.ptr, %arg92: i8, %arg93: i8):
    %132 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %133 = "llvm.getelementptr"(%arg91, %132) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %134 = "llvm.add"(%arg92, %arg93) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.store"(%134, %133) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"(%133) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "shia", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: !llvm.ptr, %arg89: i16, %arg90: i16):
    %129 = "llvm.mlir.constant"() <{value = -9 : i32}> : () -> i32
    %130 = "llvm.getelementptr"(%arg88, %129) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %131 = "llvm.add"(%arg89, %arg90) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.store"(%131, %arg88) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"(%130) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "shib", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg85: !llvm.ptr, %arg86: i16, %arg87: i16):
    %126 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %127 = "llvm.getelementptr"(%arg85, %126) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %128 = "llvm.add"(%arg86, %arg87) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.store"(%128, %127) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"(%127) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "swia", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg82: !llvm.ptr, %arg83: i32, %arg84: i32):
    %123 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %124 = "llvm.getelementptr"(%arg82, %123) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %125 = "llvm.add"(%arg83, %arg84) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%125, %arg82) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%124) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "swib", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg79: !llvm.ptr, %arg80: i32, %arg81: i32):
    %120 = "llvm.mlir.constant"() <{value = -26 : i32}> : () -> i32
    %121 = "llvm.getelementptr"(%arg79, %120) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %122 = "llvm.add"(%arg80, %arg81) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%122, %121) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%121) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sdia", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: !llvm.ptr, %arg77: i64, %arg78: i64):
    %117 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %118 = "llvm.getelementptr"(%arg76, %117) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %119 = "llvm.add"(%arg77, %arg78) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%119, %arg76) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%118) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sdib", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg73: !llvm.ptr, %arg74: i64, %arg75: i64):
    %114 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %115 = "llvm.getelementptr"(%arg73, %114) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %116 = "llvm.add"(%arg74, %arg75) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%116, %115) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%115) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lrb_anyext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg71: !llvm.ptr, %arg72: i32):
    %112 = "llvm.getelementptr"(%arg71, %arg72) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %113 = "llvm.load"(%112) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%113) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lrb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: !llvm.ptr, %arg70: i32):
    %108 = "llvm.getelementptr"(%arg69, %arg70) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %109 = "llvm.load"(%108) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %110 = "llvm.sext"(%109) : (i8) -> i32
    %111 = "llvm.add"(%110, %110) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%111) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lurb_anyext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg67: !llvm.ptr, %arg68: i32):
    %105 = "llvm.zext"(%arg68) : (i32) -> i64
    %106 = "llvm.getelementptr"(%arg67, %105) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %107 = "llvm.load"(%106) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%107) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lurb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: !llvm.ptr, %arg66: i32):
    %100 = "llvm.zext"(%arg66) : (i32) -> i64
    %101 = "llvm.getelementptr"(%arg65, %100) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %102 = "llvm.load"(%101) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %103 = "llvm.sext"(%102) : (i8) -> i32
    %104 = "llvm.add"(%103, %103) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%104) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lrbu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: !llvm.ptr, %arg64: i32):
    %96 = "llvm.getelementptr"(%arg63, %arg64) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %97 = "llvm.load"(%96) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %98 = "llvm.zext"(%97) : (i8) -> i32
    %99 = "llvm.add"(%98, %98) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%99) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lurbu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: !llvm.ptr, %arg62: i32):
    %91 = "llvm.zext"(%arg62) : (i32) -> i64
    %92 = "llvm.getelementptr"(%arg61, %91) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %93 = "llvm.load"(%92) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %94 = "llvm.zext"(%93) : (i8) -> i32
    %95 = "llvm.add"(%94, %94) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lrh_anyext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: !llvm.ptr, %arg60: i32):
    %89 = "llvm.getelementptr"(%arg59, %arg60) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %90 = "llvm.load"(%89) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%90) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lrh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: !llvm.ptr, %arg58: i32):
    %85 = "llvm.getelementptr"(%arg57, %arg58) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %86 = "llvm.load"(%85) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %87 = "llvm.sext"(%86) : (i16) -> i32
    %88 = "llvm.add"(%87, %87) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%88) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lurh_anyext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: !llvm.ptr, %arg56: i32):
    %82 = "llvm.zext"(%arg56) : (i32) -> i64
    %83 = "llvm.getelementptr"(%arg55, %82) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %84 = "llvm.load"(%83) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%84) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lurh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: !llvm.ptr, %arg54: i32):
    %77 = "llvm.zext"(%arg54) : (i32) -> i64
    %78 = "llvm.getelementptr"(%arg53, %77) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %79 = "llvm.load"(%78) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %80 = "llvm.sext"(%79) : (i16) -> i32
    %81 = "llvm.add"(%80, %80) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lrhu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: !llvm.ptr, %arg52: i32):
    %73 = "llvm.getelementptr"(%arg51, %arg52) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %74 = "llvm.load"(%73) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %75 = "llvm.zext"(%74) : (i16) -> i32
    %76 = "llvm.add"(%75, %75) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%76) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lurhu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: !llvm.ptr, %arg50: i32):
    %68 = "llvm.zext"(%arg50) : (i32) -> i64
    %69 = "llvm.getelementptr"(%arg49, %68) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %70 = "llvm.load"(%69) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %71 = "llvm.zext"(%70) : (i16) -> i32
    %72 = "llvm.add"(%71, %71) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%72) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lrw_anyext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: !llvm.ptr, %arg48: i32):
    %66 = "llvm.getelementptr"(%arg47, %arg48) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %67 = "llvm.load"(%66) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%67) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lrw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: !llvm.ptr, %arg46: i32):
    %62 = "llvm.getelementptr"(%arg45, %arg46) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %63 = "llvm.load"(%62) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %64 = "llvm.sext"(%63) : (i32) -> i64
    %65 = "llvm.add"(%64, %64) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%65) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lurw_anyext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: !llvm.ptr, %arg44: i32):
    %59 = "llvm.zext"(%arg44) : (i32) -> i64
    %60 = "llvm.getelementptr"(%arg43, %59) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %61 = "llvm.load"(%60) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lurw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: !llvm.ptr, %arg42: i32):
    %54 = "llvm.zext"(%arg42) : (i32) -> i64
    %55 = "llvm.getelementptr"(%arg41, %54) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %56 = "llvm.load"(%55) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %57 = "llvm.sext"(%56) : (i32) -> i64
    %58 = "llvm.add"(%57, %57) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%58) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lrwu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: !llvm.ptr, %arg40: i32):
    %50 = "llvm.getelementptr"(%arg39, %arg40) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %51 = "llvm.load"(%50) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %52 = "llvm.zext"(%51) : (i32) -> i64
    %53 = "llvm.add"(%52, %52) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%53) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lurwu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: !llvm.ptr, %arg38: i32):
    %45 = "llvm.zext"(%arg38) : (i32) -> i64
    %46 = "llvm.getelementptr"(%arg37, %45) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %47 = "llvm.load"(%46) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %48 = "llvm.zext"(%47) : (i32) -> i64
    %49 = "llvm.add"(%48, %48) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%49) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lrd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: !llvm.ptr, %arg36: i32):
    %42 = "llvm.getelementptr"(%arg35, %arg36) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %43 = "llvm.load"(%42) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %44 = "llvm.add"(%43, %43) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%44) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lrd_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: !llvm.ptr, %arg34: i32):
    %37 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %38 = "llvm.add"(%arg34, %37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %39 = "llvm.getelementptr"(%arg33, %38) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %40 = "llvm.load"(%39) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %41 = "llvm.add"(%40, %40) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%41) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lurd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: !llvm.ptr, %arg32: i32):
    %33 = "llvm.zext"(%arg32) : (i32) -> i64
    %34 = "llvm.getelementptr"(%arg31, %33) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %35 = "llvm.load"(%34) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %36 = "llvm.add"(%35, %35) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%36) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "srb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: !llvm.ptr, %arg29: i32, %arg30: i8):
    %31 = "llvm.add"(%arg30, %arg30) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %32 = "llvm.getelementptr"(%arg28, %arg29) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%31, %32) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i8)>, linkage = #llvm.linkage<external>, sym_name = "surb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: !llvm.ptr, %arg26: i32, %arg27: i8):
    %28 = "llvm.zext"(%arg26) : (i32) -> i64
    %29 = "llvm.add"(%arg27, %arg27) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %30 = "llvm.getelementptr"(%arg25, %28) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%29, %30) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i16)>, linkage = #llvm.linkage<external>, sym_name = "srh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: !llvm.ptr, %arg23: i32, %arg24: i16):
    %26 = "llvm.add"(%arg24, %arg24) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %27 = "llvm.getelementptr"(%arg22, %arg23) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%26, %27) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i16)>, linkage = #llvm.linkage<external>, sym_name = "surh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: !llvm.ptr, %arg20: i32, %arg21: i16):
    %23 = "llvm.zext"(%arg20) : (i32) -> i64
    %24 = "llvm.add"(%arg21, %arg21) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %25 = "llvm.getelementptr"(%arg19, %23) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%24, %25) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "srw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr, %arg17: i32, %arg18: i32):
    %21 = "llvm.add"(%arg18, %arg18) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %22 = "llvm.getelementptr"(%arg16, %arg17) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%21, %22) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "surw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: !llvm.ptr, %arg14: i32, %arg15: i32):
    %18 = "llvm.zext"(%arg14) : (i32) -> i64
    %19 = "llvm.add"(%arg15, %arg15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %20 = "llvm.getelementptr"(%arg13, %18) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%19, %20) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i64)>, linkage = #llvm.linkage<external>, sym_name = "srd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: i32, %arg12: i64):
    %16 = "llvm.add"(%arg12, %arg12) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %17 = "llvm.getelementptr"(%arg10, %arg11) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%16, %17) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i64)>, linkage = #llvm.linkage<external>, sym_name = "surd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr, %arg8: i32, %arg9: i64):
    %13 = "llvm.zext"(%arg8) : (i32) -> i64
    %14 = "llvm.add"(%arg9, %arg9) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %15 = "llvm.getelementptr"(%arg7, %13) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%14, %15) <{alignment = 8 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_simm5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: i32, %arg6: i32):
    %10 = "llvm.mlir.constant"() <{value = -12 : i32}> : () -> i32
    %11 = "llvm.getelementptr"(%arg4, %10) <{elem_type = i32, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %12 = "llvm.add"(%arg5, %arg6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%12, %arg4) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%11) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lrd_large_shift", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: i32):
    %4 = "llvm.mlir.constant"() <{value = 12 : i32}> : () -> i32
    %5 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %6 = "llvm.add"(%arg3, %4) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %7 = "llvm.shl"(%6, %5) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %8 = "llvm.getelementptr"(%arg2, %7) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %9 = "llvm.load"(%8) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "lrd_large_offset", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 12000 : i32}> : () -> i32
    %1 = "llvm.add"(%arg1, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %2 = "llvm.getelementptr"(%arg0, %1) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %3 = "llvm.load"(%2) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

