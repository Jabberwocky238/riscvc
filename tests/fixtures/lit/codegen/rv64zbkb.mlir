"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "pack_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg79: i32, %arg80: i32):
    %196 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %197 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %198 = "llvm.and"(%arg79, %196) : (i32, i32) -> i32
    %199 = "llvm.shl"(%arg80, %197) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %200 = "llvm.or"(%199, %198) : (i32, i32) -> i32
    "llvm.return"(%200) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "pack_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg77: i16, %arg78: i16):
    %191 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %192 = "llvm.zext"(%arg77) : (i16) -> i32
    %193 = "llvm.zext"(%arg78) : (i16) -> i32
    %194 = "llvm.shl"(%193, %191) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %195 = "llvm.or"(%194, %192) : (i32, i32) -> i32
    "llvm.return"(%195) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i16, i16, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "pack_i32_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg74: i16, %arg75: i16, %arg76: i32):
    %185 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %186 = "llvm.zext"(%arg74) : (i16) -> i32
    %187 = "llvm.shl"(%186, %185) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %188 = "llvm.zext"(%arg75) : (i16) -> i32
    %189 = "llvm.or"(%187, %188) : (i32, i32) -> i32
    %190 = "llvm.add"(%189, %arg76) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%190) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: i64, %arg73: i64):
    %180 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %181 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %182 = "llvm.and"(%arg72, %180) : (i64, i64) -> i64
    %183 = "llvm.shl"(%arg73, %181) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %184 = "llvm.or"(%183, %182) : (i64, i64) -> i64
    "llvm.return"(%184) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg70: i32, %arg71: i32):
    %175 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %176 = "llvm.zext"(%arg70) : (i32) -> i64
    %177 = "llvm.zext"(%arg71) : (i32) -> i64
    %178 = "llvm.shl"(%177, %175) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %179 = "llvm.or"(%178, %176) : (i64, i64) -> i64
    "llvm.return"(%179) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "pack_i64_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: !llvm.ptr, %arg69: !llvm.ptr):
    %168 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %169 = "llvm.load"(%arg68) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %170 = "llvm.zext"(%169) : (i32) -> i64
    %171 = "llvm.shl"(%170, %168) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %172 = "llvm.load"(%arg69) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %173 = "llvm.zext"(%172) : (i32) -> i64
    %174 = "llvm.or"(%171, %173) : (i64, i64) -> i64
    "llvm.return"(%174) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "packh_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: i32, %arg67: i32):
    %161 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %162 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %163 = "llvm.mlir.constant"() <{value = 65280 : i32}> : () -> i32
    %164 = "llvm.and"(%arg66, %161) : (i32, i32) -> i32
    %165 = "llvm.shl"(%arg67, %162) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %166 = "llvm.and"(%165, %163) : (i32, i32) -> i32
    %167 = "llvm.or"(%166, %164) : (i32, i32) -> i32
    "llvm.return"(%167) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i32, %arg65: i32):
    %155 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %156 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %157 = "llvm.and"(%arg64, %155) : (i32, i32) -> i32
    %158 = "llvm.and"(%arg65, %155) : (i32, i32) -> i32
    %159 = "llvm.shl"(%158, %156) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %160 = "llvm.or"(%159, %157) : (i32, i32) -> i32
    "llvm.return"(%160) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: i64, %arg63: i64):
    %148 = "llvm.mlir.constant"() <{value = 255 : i64}> : () -> i64
    %149 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %150 = "llvm.mlir.constant"() <{value = 65280 : i64}> : () -> i64
    %151 = "llvm.and"(%arg62, %148) : (i64, i64) -> i64
    %152 = "llvm.shl"(%arg63, %149) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %153 = "llvm.and"(%152, %150) : (i64, i64) -> i64
    %154 = "llvm.or"(%153, %151) : (i64, i64) -> i64
    "llvm.return"(%154) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i64, %arg61: i64):
    %142 = "llvm.mlir.constant"() <{value = 255 : i64}> : () -> i64
    %143 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %144 = "llvm.and"(%arg60, %142) : (i64, i64) -> i64
    %145 = "llvm.and"(%arg61, %142) : (i64, i64) -> i64
    %146 = "llvm.shl"(%145, %143) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %147 = "llvm.or"(%146, %144) : (i64, i64) -> i64
    "llvm.return"(%147) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i16 (i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "packh_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i8, %arg59: i8):
    %137 = "llvm.mlir.constant"() <{value = 8 : i16}> : () -> i16
    %138 = "llvm.zext"(%arg58) : (i8) -> i16
    %139 = "llvm.zext"(%arg59) : (i8) -> i16
    %140 = "llvm.shl"(%139, %137) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %141 = "llvm.or"(%140, %138) : (i16, i16) -> i16
    "llvm.return"(%141) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i16 (i8, i8, i8)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.zeroext}], sym_name = "packh_i16_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: i8, %arg56: i8, %arg57: i8):
    %131 = "llvm.mlir.constant"() <{value = 8 : i16}> : () -> i16
    %132 = "llvm.add"(%arg56, %arg55) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %133 = "llvm.zext"(%132) : (i8) -> i16
    %134 = "llvm.shl"(%133, %131) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %135 = "llvm.zext"(%arg57) : (i8) -> i16
    %136 = "llvm.or"(%134, %135) : (i16, i16) -> i16
    "llvm.return"(%136) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}, {}], function_type = !llvm.func<void (i8, i8, i8, ptr)>, linkage = #llvm.linkage<external>, sym_name = "packh_i16_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: i8, %arg52: i8, %arg53: i8, %arg54: !llvm.ptr):
    %125 = "llvm.mlir.constant"() <{value = 8 : i16}> : () -> i16
    %126 = "llvm.add"(%arg52, %arg51) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %127 = "llvm.zext"(%126) : (i8) -> i16
    %128 = "llvm.shl"(%127, %125) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %129 = "llvm.zext"(%arg53) : (i8) -> i16
    %130 = "llvm.or"(%128, %129) : (i16, i16) -> i16
    "llvm.store"(%130, %arg54) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i64 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "pack_i64_allWUsers", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32, %arg49: i32, %arg50: i32):
    %119 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %120 = "llvm.add"(%arg49, %arg48) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %121 = "llvm.zext"(%120) : (i32) -> i64
    %122 = "llvm.shl"(%121, %119) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %123 = "llvm.zext"(%arg50) : (i32) -> i64
    %124 = "llvm.or"(%122, %123) : (i64, i64) -> i64
    "llvm.return"(%124) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i16, i16, i16)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "pack_i32_allWUsers", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i16, %arg46: i16, %arg47: i16):
    %113 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %114 = "llvm.add"(%arg46, %arg45) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %115 = "llvm.zext"(%114) : (i16) -> i32
    %116 = "llvm.shl"(%115, %113) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %117 = "llvm.zext"(%arg47) : (i16) -> i32
    %118 = "llvm.or"(%116, %117) : (i32, i32) -> i32
    "llvm.return"(%118) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "pack_i64_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %112 = "llvm.mlir.constant"() <{value = 1157442765409226768 : i64}> : () -> i64
    "llvm.return"(%112) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zexth_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32):
    %110 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %111 = "llvm.and"(%arg44, %110) : (i32, i32) -> i32
    "llvm.return"(%111) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zexth_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i64):
    %108 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %109 = "llvm.and"(%arg43, %108) : (i64, i64) -> i64
    "llvm.return"(%109) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i16_to_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i16):
    %107 = "llvm.zext"(%arg42) : (i16) -> i32
    "llvm.return"(%107) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zext_i16_to_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i16):
    %106 = "llvm.zext"(%arg41) : (i16) -> i64
    "llvm.return"(%106) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}, {}], function_type = !llvm.func<void (i8, i8, i8, i8, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_lo_packh_hi_packh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i8, %arg37: i8, %arg38: i8, %arg39: i8, %arg40: !llvm.ptr):
    %93 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %94 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %95 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %96 = "llvm.zext"(%arg36) : (i8) -> i32
    %97 = "llvm.zext"(%arg37) : (i8) -> i32
    %98 = "llvm.zext"(%arg38) : (i8) -> i32
    %99 = "llvm.zext"(%arg39) : (i8) -> i32
    %100 = "llvm.shl"(%97, %93) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %101 = "llvm.shl"(%98, %94) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %102 = "llvm.shl"(%99, %95) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %103 = "llvm.or"(%96, %100) : (i32, i32) -> i32
    %104 = "llvm.or"(%103, %101) : (i32, i32) -> i32
    %105 = "llvm.or"(%104, %102) : (i32, i32) -> i32
    "llvm.store"(%105, %arg40) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}, {}], function_type = !llvm.func<void (i8, i8, i8, i8, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_lo_packh_hi_packh_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i8, %arg32: i8, %arg33: i8, %arg34: i8, %arg35: !llvm.ptr):
    %80 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %81 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %82 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %83 = "llvm.zext"(%arg31) : (i8) -> i32
    %84 = "llvm.zext"(%arg32) : (i8) -> i32
    %85 = "llvm.zext"(%arg33) : (i8) -> i32
    %86 = "llvm.zext"(%arg34) : (i8) -> i32
    %87 = "llvm.shl"(%84, %80) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %88 = "llvm.shl"(%85, %81) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %89 = "llvm.shl"(%86, %82) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %90 = "llvm.or"(%83, %87) : (i32, i32) -> i32
    %91 = "llvm.or"(%89, %90) : (i32, i32) -> i32
    %92 = "llvm.or"(%88, %91) : (i32, i32) -> i32
    "llvm.store"(%92, %arg35) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i8, i8, i8, i8, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_lo_packh_hi_packh_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i8, %arg27: i8, %arg28: i8, %arg29: i8, %arg30: !llvm.ptr):
    %67 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %68 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %70 = "llvm.zext"(%arg26) : (i8) -> i32
    %71 = "llvm.zext"(%arg27) : (i8) -> i32
    %72 = "llvm.zext"(%arg28) : (i8) -> i32
    %73 = "llvm.zext"(%arg29) : (i8) -> i32
    %74 = "llvm.shl"(%71, %67) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %75 = "llvm.shl"(%72, %68) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %76 = "llvm.shl"(%73, %69) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %77 = "llvm.or"(%70, %74) : (i32, i32) -> i32
    %78 = "llvm.or"(%76, %77) : (i32, i32) -> i32
    %79 = "llvm.or"(%75, %78) : (i32, i32) -> i32
    "llvm.store"(%79, %arg30) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}, {}], function_type = !llvm.func<i32 (i8, i8, i8, i8, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_lo_packh_hi_packh_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i8, %arg22: i8, %arg23: i8, %arg24: i8, %arg25: !llvm.ptr):
    %54 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %55 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %57 = "llvm.zext"(%arg21) : (i8) -> i32
    %58 = "llvm.zext"(%arg22) : (i8) -> i32
    %59 = "llvm.zext"(%arg23) : (i8) -> i32
    %60 = "llvm.zext"(%arg24) : (i8) -> i32
    %61 = "llvm.shl"(%58, %54) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %62 = "llvm.shl"(%59, %55) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %63 = "llvm.shl"(%60, %56) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %64 = "llvm.or"(%57, %61) : (i32, i32) -> i32
    %65 = "llvm.or"(%64, %62) : (i32, i32) -> i32
    %66 = "llvm.or"(%65, %63) : (i32, i32) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}, {llvm.zeroext}, {}], function_type = !llvm.func<void (i16, i8, i8, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_lo_zext_hi_packh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i16, %arg18: i8, %arg19: i8, %arg20: !llvm.ptr):
    %45 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %46 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %47 = "llvm.zext"(%arg17) : (i16) -> i32
    %48 = "llvm.zext"(%arg18) : (i8) -> i32
    %49 = "llvm.zext"(%arg19) : (i8) -> i32
    %50 = "llvm.shl"(%49, %45) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %51 = "llvm.or"(%48, %50) : (i32, i32) -> i32
    %52 = "llvm.shl"(%51, %46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %53 = "llvm.or"(%52, %47) : (i32, i32) -> i32
    "llvm.store"(%53, %arg20) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}, {llvm.zeroext}, {}], function_type = !llvm.func<void (i32, i8, i8, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_lo_noext_hi_packh", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32, %arg14: i8, %arg15: i8, %arg16: !llvm.ptr):
    %37 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %38 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %39 = "llvm.zext"(%arg14) : (i8) -> i32
    %40 = "llvm.zext"(%arg15) : (i8) -> i32
    %41 = "llvm.shl"(%40, %37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %42 = "llvm.or"(%39, %41) : (i32, i32) -> i32
    %43 = "llvm.shl"(%42, %38) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %44 = "llvm.or"(%43, %arg13) : (i32, i32) -> i32
    "llvm.store"(%44, %arg16) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i8, i8, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i32_lo_noext_hi_packh_nozeroext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32, %arg10: i8, %arg11: i8, %arg12: !llvm.ptr):
    %29 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %31 = "llvm.zext"(%arg10) : (i8) -> i32
    %32 = "llvm.zext"(%arg11) : (i8) -> i32
    %33 = "llvm.shl"(%32, %29) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %34 = "llvm.or"(%31, %33) : (i32, i32) -> i32
    %35 = "llvm.shl"(%34, %30) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %36 = "llvm.or"(%35, %arg9) : (i32, i32) -> i32
    "llvm.store"(%36, %arg12) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i8, i8, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i64_lo_noext_hi_packh_nozeroext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64, %arg6: i8, %arg7: i8, %arg8: !llvm.ptr):
    %21 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %22 = "llvm.mlir.constant"() <{value = 16 : i64}> : () -> i64
    %23 = "llvm.zext"(%arg6) : (i8) -> i64
    %24 = "llvm.zext"(%arg7) : (i8) -> i64
    %25 = "llvm.shl"(%24, %21) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %26 = "llvm.or"(%23, %25) : (i64, i64) -> i64
    %27 = "llvm.shl"(%26, %22) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %28 = "llvm.or"(%27, %arg5) : (i64, i64) -> i64
    "llvm.return"(%28) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_zero_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %17 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = 65280 : i32}> : () -> i32
    %19 = "llvm.shl"(%arg4, %17) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %20 = "llvm.and"(%19, %18) : (i32, i32) -> i32
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_zero_i32_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %13 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %15 = "llvm.and"(%arg3, %13) : (i32, i32) -> i32
    %16 = "llvm.shl"(%15, %14) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_zero_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %9 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = 65280 : i64}> : () -> i64
    %11 = "llvm.shl"(%arg2, %9) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %12 = "llvm.and"(%11, %10) : (i64, i64) -> i64
    "llvm.return"(%12) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_zero_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64):
    %5 = "llvm.mlir.constant"() <{value = 255 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %7 = "llvm.and"(%arg1, %5) : (i64, i64) -> i64
    %8 = "llvm.shl"(%7, %6) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "packh_zero_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i8):
    %0 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 65280 : i32}> : () -> i32
    %2 = "llvm.zext"(%arg0) : (i8) -> i32
    %3 = "llvm.shl"(%2, %0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %4 = "llvm.and"(%3, %1) : (i32, i32) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

