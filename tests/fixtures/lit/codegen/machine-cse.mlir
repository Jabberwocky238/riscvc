"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (i32, i32, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_add_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg107: i32, %arg108: i32, %arg109: !llvm.ptr, %arg110: !llvm.ptr, %arg111: i1):
    %68 = "llvm.add"(%arg107, %arg108) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%68, %arg109) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg111)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %69 = "llvm.add"(%arg108, %arg107) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%69, %arg109) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (i64, i64, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_add_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg102: i64, %arg103: i64, %arg104: !llvm.ptr, %arg105: !llvm.ptr, %arg106: i1):
    %66 = "llvm.add"(%arg102, %arg103) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%66, %arg104) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg106)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %67 = "llvm.add"(%arg103, %arg102) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%67, %arg104) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f16, f16, f16, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fmadd_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: f16, %arg97: f16, %arg98: f16, %arg99: !llvm.ptr, %arg100: !llvm.ptr, %arg101: i1):
    %64 = "llvm.intr.fma"(%arg96, %arg97, %arg98) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.store"(%64, %arg99) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg101)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %65 = "llvm.intr.fma"(%arg97, %arg96, %arg98) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.store"(%65, %arg99) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f32, f32, f32, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fmadd_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg90: f32, %arg91: f32, %arg92: f32, %arg93: !llvm.ptr, %arg94: !llvm.ptr, %arg95: i1):
    %62 = "llvm.intr.fma"(%arg90, %arg91, %arg92) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.store"(%62, %arg93) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg95)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %63 = "llvm.intr.fma"(%arg91, %arg90, %arg92) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.store"(%63, %arg93) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f64, f64, f64, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fmadd_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: f64, %arg85: f64, %arg86: f64, %arg87: !llvm.ptr, %arg88: !llvm.ptr, %arg89: i1):
    %60 = "llvm.intr.fma"(%arg84, %arg85, %arg86) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%60, %arg87) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg89)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %61 = "llvm.intr.fma"(%arg85, %arg84, %arg86) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%61, %arg87) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f16, f16, f16, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fmsub_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: f16, %arg79: f16, %arg80: f16, %arg81: !llvm.ptr, %arg82: !llvm.ptr, %arg83: i1):
    %56 = "llvm.fneg"(%arg80) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %57 = "llvm.intr.fma"(%arg78, %arg79, %56) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.store"(%57, %arg81) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg83)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %58 = "llvm.fneg"(%arg80) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %59 = "llvm.intr.fma"(%arg79, %arg78, %58) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.store"(%59, %arg81) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f32, f32, f32, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fmsub_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: f32, %arg73: f32, %arg74: f32, %arg75: !llvm.ptr, %arg76: !llvm.ptr, %arg77: i1):
    %52 = "llvm.fneg"(%arg74) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %53 = "llvm.intr.fma"(%arg72, %arg73, %52) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.store"(%53, %arg75) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg77)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %54 = "llvm.fneg"(%arg74) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %55 = "llvm.intr.fma"(%arg73, %arg72, %54) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.store"(%55, %arg75) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f64, f64, f64, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fmsub_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: f64, %arg67: f64, %arg68: f64, %arg69: !llvm.ptr, %arg70: !llvm.ptr, %arg71: i1):
    %48 = "llvm.fneg"(%arg68) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %49 = "llvm.intr.fma"(%arg66, %arg67, %48) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%49, %arg69) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg71)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %50 = "llvm.fneg"(%arg68) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %51 = "llvm.intr.fma"(%arg67, %arg66, %50) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%51, %arg69) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f16, f16, f16, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fnmadd_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: f16, %arg61: f16, %arg62: f16, %arg63: !llvm.ptr, %arg64: !llvm.ptr, %arg65: i1):
    %42 = "llvm.fneg"(%arg60) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %43 = "llvm.fneg"(%arg62) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %44 = "llvm.intr.fma"(%42, %arg61, %43) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.store"(%44, %arg63) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg65)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %45 = "llvm.fneg"(%arg61) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %46 = "llvm.fneg"(%arg62) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %47 = "llvm.intr.fma"(%45, %arg60, %46) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.store"(%47, %arg63) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f32, f32, f32, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fnmadd_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: f32, %arg55: f32, %arg56: f32, %arg57: !llvm.ptr, %arg58: !llvm.ptr, %arg59: i1):
    %36 = "llvm.fneg"(%arg54) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %37 = "llvm.fneg"(%arg56) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %38 = "llvm.intr.fma"(%36, %arg55, %37) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.store"(%38, %arg57) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg59)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %39 = "llvm.fneg"(%arg55) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %40 = "llvm.fneg"(%arg56) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %41 = "llvm.intr.fma"(%39, %arg54, %40) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.store"(%41, %arg57) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f64, f64, f64, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fnmadd_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: f64, %arg49: f64, %arg50: f64, %arg51: !llvm.ptr, %arg52: !llvm.ptr, %arg53: i1):
    %30 = "llvm.fneg"(%arg48) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %31 = "llvm.fneg"(%arg50) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %32 = "llvm.intr.fma"(%30, %arg49, %31) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%32, %arg51) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg53)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %33 = "llvm.fneg"(%arg49) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %34 = "llvm.fneg"(%arg50) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %35 = "llvm.intr.fma"(%33, %arg48, %34) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%35, %arg51) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f16, f16, f16, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fnmsub_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: f16, %arg43: f16, %arg44: f16, %arg45: !llvm.ptr, %arg46: !llvm.ptr, %arg47: i1):
    %26 = "llvm.fneg"(%arg42) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %27 = "llvm.intr.fma"(%26, %arg43, %arg44) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.store"(%27, %arg45) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg47)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %28 = "llvm.fneg"(%arg43) <{fastmathFlags = #llvm.fastmath<none>}> : (f16) -> f16
    %29 = "llvm.intr.fma"(%28, %arg42, %arg44) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16, f16) -> f16
    "llvm.store"(%29, %arg45) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f32, f32, f32, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fnmsub_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: f32, %arg37: f32, %arg38: f32, %arg39: !llvm.ptr, %arg40: !llvm.ptr, %arg41: i1):
    %22 = "llvm.fneg"(%arg36) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %23 = "llvm.intr.fma"(%22, %arg37, %arg38) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.store"(%23, %arg39) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg41)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %24 = "llvm.fneg"(%arg37) <{fastmathFlags = #llvm.fastmath<none>}> : (f32) -> f32
    %25 = "llvm.intr.fma"(%24, %arg36, %arg38) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32, f32) -> f32
    "llvm.store"(%25, %arg39) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f64, f64, f64, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fnmsub_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: f64, %arg31: f64, %arg32: f64, %arg33: !llvm.ptr, %arg34: !llvm.ptr, %arg35: i1):
    %18 = "llvm.fneg"(%arg30) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %19 = "llvm.intr.fma"(%18, %arg31, %arg32) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%19, %arg33) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg35)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %20 = "llvm.fneg"(%arg31) <{fastmathFlags = #llvm.fastmath<none>}> : (f64) -> f64
    %21 = "llvm.intr.fma"(%20, %arg30, %arg32) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64, f64) -> f64
    "llvm.store"(%21, %arg33) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f16, f16, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fadd_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: f16, %arg26: f16, %arg27: !llvm.ptr, %arg28: !llvm.ptr, %arg29: i1):
    %16 = "llvm.fadd"(%arg25, %arg26) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.store"(%16, %arg27) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg29)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %17 = "llvm.fadd"(%arg26, %arg25) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.store"(%17, %arg27) <{alignment = 2 : i64, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f32, f32, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fadd_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: f32, %arg21: f32, %arg22: !llvm.ptr, %arg23: !llvm.ptr, %arg24: i1):
    %14 = "llvm.fadd"(%arg20, %arg21) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.store"(%14, %arg22) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg24)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %15 = "llvm.fadd"(%arg21, %arg20) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.store"(%15, %arg22) <{alignment = 4 : i64, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f64, f64, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_fadd_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: f64, %arg16: f64, %arg17: !llvm.ptr, %arg18: !llvm.ptr, %arg19: i1):
    %12 = "llvm.fadd"(%arg15, %arg16) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%12, %arg17) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg19)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %13 = "llvm.fadd"(%arg16, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (f64, f64) -> f64
    "llvm.store"(%13, %arg17) <{alignment = 8 : i64, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f16, f16, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_feq_f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f16, %arg11: f16, %arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: i1):
    %8 = "llvm.fcmp"(%arg10, %arg11) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f16, f16) -> i1
    %9 = "llvm.zext"(%8) : (i1) -> i8
    "llvm.store"(%9, %arg12) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg14)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %10 = "llvm.fcmp"(%arg11, %arg10) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f16, f16) -> i1
    %11 = "llvm.zext"(%10) : (i1) -> i8
    "llvm.store"(%11, %arg12) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f32, f32, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_feq_f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f32, %arg6: f32, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i1):
    %4 = "llvm.fcmp"(%arg5, %arg6) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %5 = "llvm.zext"(%4) : (i1) -> i8
    "llvm.store"(%5, %arg7) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg9)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %6 = "llvm.fcmp"(%arg6, %arg5) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f32, f32) -> i1
    %7 = "llvm.zext"(%6) : (i1) -> i8
    "llvm.store"(%7, %arg7) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {}, {}, {}, {llvm.zeroext}], function_type = !llvm.func<void (f64, f64, ptr, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "commute_feq_f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f64, %arg1: f64, %arg2: !llvm.ptr, %arg3: !llvm.ptr, %arg4: i1):
    %0 = "llvm.fcmp"(%arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %1 = "llvm.zext"(%0) : (i1) -> i8
    "llvm.store"(%1, %arg2) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg4)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %2 = "llvm.fcmp"(%arg1, %arg0) <{fastmathFlags = #llvm.fastmath<none>, predicate = 1 : i64}> : (f64, f64) -> i1
    %3 = "llvm.zext"(%2) : (i1) -> i8
    "llvm.store"(%3, %arg2) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

