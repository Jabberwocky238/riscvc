"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i8_monotonic_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg117: !llvm.ptr, %arg118: i8, %arg119: i8):
    %39 = "llvm.cmpxchg"(%arg117, %arg118, %arg119) <{alignment = 1 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i8_acquire_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg114: !llvm.ptr, %arg115: i8, %arg116: i8):
    %38 = "llvm.cmpxchg"(%arg114, %arg115, %arg116) <{alignment = 1 : i64, failure_ordering = 2 : i64, success_ordering = 4 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i8_acquire_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg111: !llvm.ptr, %arg112: i8, %arg113: i8):
    %37 = "llvm.cmpxchg"(%arg111, %arg112, %arg113) <{alignment = 1 : i64, failure_ordering = 4 : i64, success_ordering = 4 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i8_release_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: !llvm.ptr, %arg109: i8, %arg110: i8):
    %36 = "llvm.cmpxchg"(%arg108, %arg109, %arg110) <{alignment = 1 : i64, failure_ordering = 2 : i64, success_ordering = 5 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i8_release_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg105: !llvm.ptr, %arg106: i8, %arg107: i8):
    %35 = "llvm.cmpxchg"(%arg105, %arg106, %arg107) <{alignment = 1 : i64, failure_ordering = 4 : i64, success_ordering = 5 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i8_acq_rel_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg102: !llvm.ptr, %arg103: i8, %arg104: i8):
    %34 = "llvm.cmpxchg"(%arg102, %arg103, %arg104) <{alignment = 1 : i64, failure_ordering = 2 : i64, success_ordering = 6 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i8_acq_rel_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: !llvm.ptr, %arg100: i8, %arg101: i8):
    %33 = "llvm.cmpxchg"(%arg99, %arg100, %arg101) <{alignment = 1 : i64, failure_ordering = 4 : i64, success_ordering = 6 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i8_seq_cst_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: !llvm.ptr, %arg97: i8, %arg98: i8):
    %32 = "llvm.cmpxchg"(%arg96, %arg97, %arg98) <{alignment = 1 : i64, failure_ordering = 2 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i8_seq_cst_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg93: !llvm.ptr, %arg94: i8, %arg95: i8):
    %31 = "llvm.cmpxchg"(%arg93, %arg94, %arg95) <{alignment = 1 : i64, failure_ordering = 4 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i8_seq_cst_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg90: !llvm.ptr, %arg91: i8, %arg92: i8):
    %30 = "llvm.cmpxchg"(%arg90, %arg91, %arg92) <{alignment = 1 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i8, i8) -> !llvm.struct<(i8, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i16_monotonic_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg87: !llvm.ptr, %arg88: i16, %arg89: i16):
    %29 = "llvm.cmpxchg"(%arg87, %arg88, %arg89) <{alignment = 2 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i16_acquire_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: !llvm.ptr, %arg85: i16, %arg86: i16):
    %28 = "llvm.cmpxchg"(%arg84, %arg85, %arg86) <{alignment = 2 : i64, failure_ordering = 2 : i64, success_ordering = 4 : i64}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i16_acquire_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg81: !llvm.ptr, %arg82: i16, %arg83: i16):
    %27 = "llvm.cmpxchg"(%arg81, %arg82, %arg83) <{alignment = 2 : i64, failure_ordering = 4 : i64, success_ordering = 4 : i64}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i16_release_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: !llvm.ptr, %arg79: i16, %arg80: i16):
    %26 = "llvm.cmpxchg"(%arg78, %arg79, %arg80) <{alignment = 2 : i64, failure_ordering = 2 : i64, success_ordering = 5 : i64}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i16_release_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg75: !llvm.ptr, %arg76: i16, %arg77: i16):
    %25 = "llvm.cmpxchg"(%arg75, %arg76, %arg77) <{alignment = 2 : i64, failure_ordering = 4 : i64, success_ordering = 5 : i64}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i16_acq_rel_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: !llvm.ptr, %arg73: i16, %arg74: i16):
    %24 = "llvm.cmpxchg"(%arg72, %arg73, %arg74) <{alignment = 2 : i64, failure_ordering = 2 : i64, success_ordering = 6 : i64}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i16_acq_rel_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: !llvm.ptr, %arg70: i16, %arg71: i16):
    %23 = "llvm.cmpxchg"(%arg69, %arg70, %arg71) <{alignment = 2 : i64, failure_ordering = 4 : i64, success_ordering = 6 : i64}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i16_seq_cst_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: !llvm.ptr, %arg67: i16, %arg68: i16):
    %22 = "llvm.cmpxchg"(%arg66, %arg67, %arg68) <{alignment = 2 : i64, failure_ordering = 2 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i16_seq_cst_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: !llvm.ptr, %arg64: i16, %arg65: i16):
    %21 = "llvm.cmpxchg"(%arg63, %arg64, %arg65) <{alignment = 2 : i64, failure_ordering = 4 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i16_seq_cst_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: !llvm.ptr, %arg61: i16, %arg62: i16):
    %20 = "llvm.cmpxchg"(%arg60, %arg61, %arg62) <{alignment = 2 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i16, i16) -> !llvm.struct<(i16, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i32_monotonic_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: !llvm.ptr, %arg58: i32, %arg59: i32):
    %19 = "llvm.cmpxchg"(%arg57, %arg58, %arg59) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i32_acquire_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: !llvm.ptr, %arg55: i32, %arg56: i32):
    %18 = "llvm.cmpxchg"(%arg54, %arg55, %arg56) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 4 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i32_acquire_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: !llvm.ptr, %arg52: i32, %arg53: i32):
    %17 = "llvm.cmpxchg"(%arg51, %arg52, %arg53) <{alignment = 4 : i64, failure_ordering = 4 : i64, success_ordering = 4 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i32_release_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: !llvm.ptr, %arg49: i32, %arg50: i32):
    %16 = "llvm.cmpxchg"(%arg48, %arg49, %arg50) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 5 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i32_release_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: !llvm.ptr, %arg46: i32, %arg47: i32):
    %15 = "llvm.cmpxchg"(%arg45, %arg46, %arg47) <{alignment = 4 : i64, failure_ordering = 4 : i64, success_ordering = 5 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i32_acq_rel_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: !llvm.ptr, %arg43: i32, %arg44: i32):
    %14 = "llvm.cmpxchg"(%arg42, %arg43, %arg44) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 6 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i32_acq_rel_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: !llvm.ptr, %arg40: i32, %arg41: i32):
    %13 = "llvm.cmpxchg"(%arg39, %arg40, %arg41) <{alignment = 4 : i64, failure_ordering = 4 : i64, success_ordering = 6 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i32_seq_cst_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: !llvm.ptr, %arg37: i32, %arg38: i32):
    %12 = "llvm.cmpxchg"(%arg36, %arg37, %arg38) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i32_seq_cst_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: !llvm.ptr, %arg34: i32, %arg35: i32):
    %11 = "llvm.cmpxchg"(%arg33, %arg34, %arg35) <{alignment = 4 : i64, failure_ordering = 4 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i32_seq_cst_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr, %arg31: i32, %arg32: i32):
    %10 = "llvm.cmpxchg"(%arg30, %arg31, %arg32) <{alignment = 4 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i64_monotonic_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: !llvm.ptr, %arg28: i64, %arg29: i64):
    %9 = "llvm.cmpxchg"(%arg27, %arg28, %arg29) <{alignment = 8 : i64, failure_ordering = 2 : i64, success_ordering = 2 : i64}> : (!llvm.ptr, i64, i64) -> !llvm.struct<(i64, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i64_acquire_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr, %arg25: i64, %arg26: i64):
    %8 = "llvm.cmpxchg"(%arg24, %arg25, %arg26) <{alignment = 8 : i64, failure_ordering = 2 : i64, success_ordering = 4 : i64}> : (!llvm.ptr, i64, i64) -> !llvm.struct<(i64, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i64_acquire_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: !llvm.ptr, %arg22: i64, %arg23: i64):
    %7 = "llvm.cmpxchg"(%arg21, %arg22, %arg23) <{alignment = 8 : i64, failure_ordering = 4 : i64, success_ordering = 4 : i64}> : (!llvm.ptr, i64, i64) -> !llvm.struct<(i64, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i64_release_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: i64, %arg20: i64):
    %6 = "llvm.cmpxchg"(%arg18, %arg19, %arg20) <{alignment = 8 : i64, failure_ordering = 2 : i64, success_ordering = 5 : i64}> : (!llvm.ptr, i64, i64) -> !llvm.struct<(i64, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i64_release_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr, %arg16: i64, %arg17: i64):
    %5 = "llvm.cmpxchg"(%arg15, %arg16, %arg17) <{alignment = 8 : i64, failure_ordering = 4 : i64, success_ordering = 5 : i64}> : (!llvm.ptr, i64, i64) -> !llvm.struct<(i64, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i64_acq_rel_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: i64, %arg14: i64):
    %4 = "llvm.cmpxchg"(%arg12, %arg13, %arg14) <{alignment = 8 : i64, failure_ordering = 2 : i64, success_ordering = 6 : i64}> : (!llvm.ptr, i64, i64) -> !llvm.struct<(i64, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i64_acq_rel_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: !llvm.ptr, %arg10: i64, %arg11: i64):
    %3 = "llvm.cmpxchg"(%arg9, %arg10, %arg11) <{alignment = 8 : i64, failure_ordering = 4 : i64, success_ordering = 6 : i64}> : (!llvm.ptr, i64, i64) -> !llvm.struct<(i64, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i64_seq_cst_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: i64, %arg8: i64):
    %2 = "llvm.cmpxchg"(%arg6, %arg7, %arg8) <{alignment = 8 : i64, failure_ordering = 2 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i64, i64) -> !llvm.struct<(i64, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i64_seq_cst_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: i64, %arg5: i64):
    %1 = "llvm.cmpxchg"(%arg3, %arg4, %arg5) <{alignment = 8 : i64, failure_ordering = 4 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i64, i64) -> !llvm.struct<(i64, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cmpxchg_i64_seq_cst_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i64, %arg2: i64):
    %0 = "llvm.cmpxchg"(%arg0, %arg1, %arg2) <{alignment = 8 : i64, failure_ordering = 7 : i64, success_ordering = 7 : i64}> : (!llvm.ptr, i64, i64) -> !llvm.struct<(i64, i1)>
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

