"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomic_load_i8_unordered", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg134: !llvm.ptr):
    %116 = "llvm.load"(%arg134) <{alignment = 1 : i64, ordering = 1 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%116) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomic_load_i16_unordered", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg133: !llvm.ptr):
    %115 = "llvm.load"(%arg133) <{alignment = 2 : i64, ordering = 1 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%115) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomic_load_i32_unordered", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: !llvm.ptr):
    %114 = "llvm.load"(%arg132) <{alignment = 4 : i64, ordering = 1 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%114) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_xchg_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg130: !llvm.ptr, %arg131: i8):
    %113 = "llvm.atomicrmw"(%arg130, %arg131) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%113) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_add_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg128: !llvm.ptr, %arg129: i8):
    %112 = "llvm.atomicrmw"(%arg128, %arg129) <{alignment = 1 : i64, bin_op = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%112) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_sub_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg126: !llvm.ptr, %arg127: i8):
    %111 = "llvm.atomicrmw"(%arg126, %arg127) <{alignment = 1 : i64, bin_op = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%111) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_and_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: !llvm.ptr, %arg125: i8):
    %110 = "llvm.atomicrmw"(%arg124, %arg125) <{alignment = 1 : i64, bin_op = 3 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%110) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_nand_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg122: !llvm.ptr, %arg123: i8):
    %109 = "llvm.atomicrmw"(%arg122, %arg123) <{alignment = 1 : i64, bin_op = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%109) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_or_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: !llvm.ptr, %arg121: i8):
    %108 = "llvm.atomicrmw"(%arg120, %arg121) <{alignment = 1 : i64, bin_op = 5 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%108) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_xor_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg118: !llvm.ptr, %arg119: i8):
    %107 = "llvm.atomicrmw"(%arg118, %arg119) <{alignment = 1 : i64, bin_op = 6 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%107) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_max_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg116: !llvm.ptr, %arg117: i8):
    %106 = "llvm.atomicrmw"(%arg116, %arg117) <{alignment = 1 : i64, bin_op = 7 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%106) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_min_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg114: !llvm.ptr, %arg115: i8):
    %105 = "llvm.atomicrmw"(%arg114, %arg115) <{alignment = 1 : i64, bin_op = 8 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%105) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_umax_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg112: !llvm.ptr, %arg113: i8):
    %104 = "llvm.atomicrmw"(%arg112, %arg113) <{alignment = 1 : i64, bin_op = 9 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%104) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_umin_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg110: !llvm.ptr, %arg111: i8):
    %103 = "llvm.atomicrmw"(%arg110, %arg111) <{alignment = 1 : i64, bin_op = 10 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%103) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_xchg_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: !llvm.ptr, %arg109: i16):
    %102 = "llvm.atomicrmw"(%arg108, %arg109) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%102) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_add_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg106: !llvm.ptr, %arg107: i16):
    %101 = "llvm.atomicrmw"(%arg106, %arg107) <{alignment = 2 : i64, bin_op = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%101) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_sub_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg104: !llvm.ptr, %arg105: i16):
    %100 = "llvm.atomicrmw"(%arg104, %arg105) <{alignment = 2 : i64, bin_op = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%100) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_and_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg102: !llvm.ptr, %arg103: i16):
    %99 = "llvm.atomicrmw"(%arg102, %arg103) <{alignment = 2 : i64, bin_op = 3 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%99) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_nand_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg100: !llvm.ptr, %arg101: i16):
    %98 = "llvm.atomicrmw"(%arg100, %arg101) <{alignment = 2 : i64, bin_op = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%98) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_or_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg98: !llvm.ptr, %arg99: i16):
    %97 = "llvm.atomicrmw"(%arg98, %arg99) <{alignment = 2 : i64, bin_op = 5 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%97) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_xor_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: !llvm.ptr, %arg97: i16):
    %96 = "llvm.atomicrmw"(%arg96, %arg97) <{alignment = 2 : i64, bin_op = 6 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%96) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_max_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg94: !llvm.ptr, %arg95: i16):
    %95 = "llvm.atomicrmw"(%arg94, %arg95) <{alignment = 2 : i64, bin_op = 7 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%95) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_min_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg92: !llvm.ptr, %arg93: i16):
    %94 = "llvm.atomicrmw"(%arg92, %arg93) <{alignment = 2 : i64, bin_op = 8 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%94) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_umax_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg90: !llvm.ptr, %arg91: i16):
    %93 = "llvm.atomicrmw"(%arg90, %arg91) <{alignment = 2 : i64, bin_op = 9 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%93) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_umin_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: !llvm.ptr, %arg89: i16):
    %92 = "llvm.atomicrmw"(%arg88, %arg89) <{alignment = 2 : i64, bin_op = 10 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%92) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_xchg_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg86: !llvm.ptr, %arg87: i32):
    %91 = "llvm.atomicrmw"(%arg86, %arg87) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%91) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_add_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: !llvm.ptr, %arg85: i32):
    %90 = "llvm.atomicrmw"(%arg84, %arg85) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%90) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_sub_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg82: !llvm.ptr, %arg83: i32):
    %89 = "llvm.atomicrmw"(%arg82, %arg83) <{alignment = 4 : i64, bin_op = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%89) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_and_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: !llvm.ptr, %arg81: i32):
    %88 = "llvm.atomicrmw"(%arg80, %arg81) <{alignment = 4 : i64, bin_op = 3 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%88) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_nand_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: !llvm.ptr, %arg79: i32):
    %87 = "llvm.atomicrmw"(%arg78, %arg79) <{alignment = 4 : i64, bin_op = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_or_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: !llvm.ptr, %arg77: i32):
    %86 = "llvm.atomicrmw"(%arg76, %arg77) <{alignment = 4 : i64, bin_op = 5 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%86) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_xor_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg74: !llvm.ptr, %arg75: i32):
    %85 = "llvm.atomicrmw"(%arg74, %arg75) <{alignment = 4 : i64, bin_op = 6 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%85) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_max_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: !llvm.ptr, %arg73: i32):
    %84 = "llvm.atomicrmw"(%arg72, %arg73) <{alignment = 4 : i64, bin_op = 7 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%84) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_min_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg70: !llvm.ptr, %arg71: i32):
    %83 = "llvm.atomicrmw"(%arg70, %arg71) <{alignment = 4 : i64, bin_op = 8 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%83) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_umax_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: !llvm.ptr, %arg69: i32):
    %82 = "llvm.atomicrmw"(%arg68, %arg69) <{alignment = 4 : i64, bin_op = 9 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%82) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_umin_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: !llvm.ptr, %arg67: i32):
    %81 = "llvm.atomicrmw"(%arg66, %arg67) <{alignment = 4 : i64, bin_op = 10 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_xchg_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: !llvm.ptr, %arg65: i64):
    %80 = "llvm.atomicrmw"(%arg64, %arg65) <{alignment = 8 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%80) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_add_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: !llvm.ptr, %arg63: i64):
    %79 = "llvm.atomicrmw"(%arg62, %arg63) <{alignment = 8 : i64, bin_op = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%79) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_sub_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: !llvm.ptr, %arg61: i64):
    %78 = "llvm.atomicrmw"(%arg60, %arg61) <{alignment = 8 : i64, bin_op = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%78) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_and_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: !llvm.ptr, %arg59: i64):
    %77 = "llvm.atomicrmw"(%arg58, %arg59) <{alignment = 8 : i64, bin_op = 3 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%77) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_nand_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: !llvm.ptr, %arg57: i64):
    %76 = "llvm.atomicrmw"(%arg56, %arg57) <{alignment = 8 : i64, bin_op = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%76) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_or_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: !llvm.ptr, %arg55: i64):
    %75 = "llvm.atomicrmw"(%arg54, %arg55) <{alignment = 8 : i64, bin_op = 5 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%75) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_xor_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: !llvm.ptr, %arg53: i64):
    %74 = "llvm.atomicrmw"(%arg52, %arg53) <{alignment = 8 : i64, bin_op = 6 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%74) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_max_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: !llvm.ptr, %arg51: i64):
    %73 = "llvm.atomicrmw"(%arg50, %arg51) <{alignment = 8 : i64, bin_op = 7 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%73) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_min_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: !llvm.ptr, %arg49: i64):
    %72 = "llvm.atomicrmw"(%arg48, %arg49) <{alignment = 8 : i64, bin_op = 8 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%72) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_umax_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: !llvm.ptr, %arg47: i64):
    %71 = "llvm.atomicrmw"(%arg46, %arg47) <{alignment = 8 : i64, bin_op = 9 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%71) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_umin_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: !llvm.ptr, %arg45: i64):
    %70 = "llvm.atomicrmw"(%arg44, %arg45) <{alignment = 8 : i64, bin_op = 10 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%70) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i8 (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "cmpxchg_i8_monotonic_monotonic_val0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: !llvm.ptr, %arg42: i8, %arg43: i8):
    %68 = "llvm.cmpxchg"(%arg41, %arg42, %arg43) <{alignment = 1 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    %69 = "llvm.extractvalue"(%68) <{position = array<i64: 0>}> : (!llvm.struct<(i8, i1)>) -> i8
    "llvm.return"(%69) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i8_monotonic_monotonic_val1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: !llvm.ptr, %arg39: i8, %arg40: i8):
    %66 = "llvm.cmpxchg"(%arg38, %arg39, %arg40) <{alignment = 1 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    %67 = "llvm.extractvalue"(%66) <{position = array<i64: 1>}> : (!llvm.struct<(i8, i1)>) -> i1
    "llvm.return"(%67) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i16 (ptr, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "cmpxchg_i16_monotonic_monotonic_val0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: !llvm.ptr, %arg36: i16, %arg37: i16):
    %64 = "llvm.cmpxchg"(%arg35, %arg36, %arg37) <{alignment = 2 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    %65 = "llvm.extractvalue"(%64) <{position = array<i64: 0>}> : (!llvm.struct<(i16, i1)>) -> i16
    "llvm.return"(%65) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (ptr, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i16_monotonic_monotonic_val1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: !llvm.ptr, %arg33: i16, %arg34: i16):
    %62 = "llvm.cmpxchg"(%arg32, %arg33, %arg34) <{alignment = 2 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    %63 = "llvm.extractvalue"(%62) <{position = array<i64: 1>}> : (!llvm.struct<(i16, i1)>) -> i1
    "llvm.return"(%63) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "cmpxchg_i32_monotonic_monotonic_val0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: !llvm.ptr, %arg30: i32, %arg31: i32):
    %60 = "llvm.cmpxchg"(%arg29, %arg30, %arg31) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %61 = "llvm.extractvalue"(%60) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i1 (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i32_monotonic_monotonic_val1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: !llvm.ptr, %arg27: i32, %arg28: i32):
    %58 = "llvm.cmpxchg"(%arg26, %arg27, %arg28) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %59 = "llvm.extractvalue"(%58) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i1)>) -> i1
    "llvm.return"(%59) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_xchg_i32_monotonic_crossbb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr, %arg25: i1):
    %54 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.cond_br"(%arg25)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %55 = "llvm.atomicrmw"(%arg24, %54) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.br"(%55)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %56 = "llvm.load"(%arg24) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%54, %arg24) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%56)[^bb3] : (i32) -> ()
  ^bb3(%57: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%57) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_add_i32_monotonic_crossbb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: !llvm.ptr, %arg23: i1):
    %49 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.cond_br"(%arg23)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %50 = "llvm.atomicrmw"(%arg22, %49) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.br"(%50)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %51 = "llvm.load"(%arg22) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %52 = "llvm.add"(%51, %49) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%52, %arg22) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%51)[^bb3] : (i32) -> ()
  ^bb3(%53: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_sub_i32_monotonic_crossbb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: !llvm.ptr, %arg21: i1):
    %44 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.cond_br"(%arg21)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %45 = "llvm.atomicrmw"(%arg20, %44) <{alignment = 4 : i64, bin_op = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.br"(%45)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %46 = "llvm.load"(%arg20) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %47 = "llvm.sub"(%46, %44) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%47, %arg20) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%46)[^bb3] : (i32) -> ()
  ^bb3(%48: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_and_i32_monotonic_crossbb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: i1):
    %39 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.cond_br"(%arg19)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %40 = "llvm.atomicrmw"(%arg18, %39) <{alignment = 4 : i64, bin_op = 3 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.br"(%40)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %41 = "llvm.load"(%arg18) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %42 = "llvm.and"(%41, %39) : (i32, i32) -> i32
    "llvm.store"(%42, %arg18) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%41)[^bb3] : (i32) -> ()
  ^bb3(%43: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_nand_i32_monotonic_crossbb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr, %arg17: i1):
    %34 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.cond_br"(%arg17)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %35 = "llvm.atomicrmw"(%arg16, %34) <{alignment = 4 : i64, bin_op = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.br"(%35)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %36 = "llvm.load"(%arg16) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %37 = "llvm.and"(%36, %34) : (i32, i32) -> i32
    "llvm.store"(%37, %arg16) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%36)[^bb3] : (i32) -> ()
  ^bb3(%38: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%38) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_or_i32_monotonic_crossbb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr, %arg15: i1):
    %29 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.cond_br"(%arg15)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %30 = "llvm.atomicrmw"(%arg14, %29) <{alignment = 4 : i64, bin_op = 5 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.br"(%30)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %31 = "llvm.load"(%arg14) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %32 = "llvm.or"(%31, %29) : (i32, i32) -> i32
    "llvm.store"(%32, %arg14) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%31)[^bb3] : (i32) -> ()
  ^bb3(%33: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_xor_i32_monotonic_crossbb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: i1):
    %24 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.cond_br"(%arg13)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %25 = "llvm.atomicrmw"(%arg12, %24) <{alignment = 4 : i64, bin_op = 6 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.br"(%25)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %26 = "llvm.load"(%arg12) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %27 = "llvm.xor"(%26, %24) : (i32, i32) -> i32
    "llvm.store"(%27, %arg12) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%26)[^bb3] : (i32) -> ()
  ^bb3(%28: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%28) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_max_i32_monotonic_crossbb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: i1):
    %19 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.cond_br"(%arg11)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %20 = "llvm.atomicrmw"(%arg10, %19) <{alignment = 4 : i64, bin_op = 7 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.br"(%20)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %21 = "llvm.load"(%arg10) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %22 = "llvm.intr.smax"(%21, %19) : (i32, i32) -> i32
    "llvm.store"(%22, %arg10) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%21)[^bb3] : (i32) -> ()
  ^bb3(%23: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_min_i32_monotonic_crossbb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: i1):
    %14 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.cond_br"(%arg9)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %15 = "llvm.atomicrmw"(%arg8, %14) <{alignment = 4 : i64, bin_op = 8 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.br"(%15)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %16 = "llvm.load"(%arg8) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %17 = "llvm.intr.smin"(%16, %14) : (i32, i32) -> i32
    "llvm.store"(%17, %arg8) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%16)[^bb3] : (i32) -> ()
  ^bb3(%18: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_umax_i32_monotonic_crossbb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: i1):
    %9 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.cond_br"(%arg7)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %10 = "llvm.atomicrmw"(%arg6, %9) <{alignment = 4 : i64, bin_op = 9 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.br"(%10)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %11 = "llvm.load"(%arg6) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %12 = "llvm.intr.umax"(%11, %9) : (i32, i32) -> i32
    "llvm.store"(%12, %arg6) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%11)[^bb3] : (i32) -> ()
  ^bb3(%13: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "atomicrmw_umin_i32_monotonic_crossbb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: i1):
    %4 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.cond_br"(%arg5)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %5 = "llvm.atomicrmw"(%arg4, %4) <{alignment = 4 : i64, bin_op = 10 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.br"(%5)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %6 = "llvm.load"(%arg4) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %7 = "llvm.intr.umin"(%6, %4) : (i32, i32) -> i32
    "llvm.store"(%7, %arg4) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"(%6)[^bb3] : (i32) -> ()
  ^bb3(%8: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (ptr, i32, i32, i1)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "cmpxchg_i32_monotonic_crossbb", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i32, %arg2: i32, %arg3: i1):
    "llvm.cond_br"(%arg3)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %0 = "llvm.cmpxchg"(%arg0, %arg1, %arg2) <{alignment = 4 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    %1 = "llvm.extractvalue"(%0) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i1)>) -> i32
    "llvm.br"(%1)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %2 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%2)[^bb3] : (i32) -> ()
  ^bb3(%3: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

