"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_load_v4i8_align1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: !llvm.ptr, %arg51: !llvm.ptr):
    %25 = "llvm.load"(%arg51) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    "llvm.store"(%25, %arg50) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_store_v4i8_align1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: !llvm.ptr, %arg49: !llvm.ptr):
    %24 = "llvm.load"(%arg48) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    "llvm.store"(%24, %arg49) <{alignment = 1 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_load_v4i8_align2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: !llvm.ptr, %arg47: !llvm.ptr):
    %23 = "llvm.load"(%arg47) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    "llvm.store"(%23, %arg46) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_store_v4i8_align2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: !llvm.ptr, %arg45: !llvm.ptr):
    %22 = "llvm.load"(%arg44) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    "llvm.store"(%22, %arg45) <{alignment = 2 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_load_v4i8_align4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: !llvm.ptr, %arg43: !llvm.ptr):
    %21 = "llvm.load"(%arg43) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    "llvm.store"(%21, %arg42) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_store_v4i8_align4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: !llvm.ptr, %arg41: !llvm.ptr):
    %20 = "llvm.load"(%arg40) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    "llvm.store"(%20, %arg41) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_load_v2i16_align1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: !llvm.ptr, %arg39: !llvm.ptr):
    %19 = "llvm.load"(%arg39) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    "llvm.store"(%19, %arg38) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_store_v2i16_align1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: !llvm.ptr, %arg37: !llvm.ptr):
    %18 = "llvm.load"(%arg36) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    "llvm.store"(%18, %arg37) <{alignment = 1 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_load_v2i16_align2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: !llvm.ptr, %arg35: !llvm.ptr):
    %17 = "llvm.load"(%arg35) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    "llvm.store"(%17, %arg34) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_store_v2i16_align2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: !llvm.ptr, %arg33: !llvm.ptr):
    %16 = "llvm.load"(%arg32) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi16>
    "llvm.store"(%16, %arg33) <{alignment = 2 : i64, ordering = 0 : i64}> : (vector<2xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_load_v8i8_align1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr, %arg31: !llvm.ptr):
    %15 = "llvm.load"(%arg31) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    "llvm.store"(%15, %arg30) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_store_v8i8_align1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: !llvm.ptr, %arg29: !llvm.ptr):
    %14 = "llvm.load"(%arg28) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    "llvm.store"(%14, %arg29) <{alignment = 1 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_load_v8i8_align2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: !llvm.ptr, %arg27: !llvm.ptr):
    %13 = "llvm.load"(%arg27) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    "llvm.store"(%13, %arg26) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_store_v8i8_align2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr, %arg25: !llvm.ptr):
    %12 = "llvm.load"(%arg24) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    "llvm.store"(%12, %arg25) <{alignment = 2 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_load_v4i16_align1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: !llvm.ptr, %arg23: !llvm.ptr):
    %11 = "llvm.load"(%arg23) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    "llvm.store"(%11, %arg22) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_store_v4i16_align1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: !llvm.ptr, %arg21: !llvm.ptr):
    %10 = "llvm.load"(%arg20) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    "llvm.store"(%10, %arg21) <{alignment = 1 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_load_v4i16_align2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: !llvm.ptr):
    %9 = "llvm.load"(%arg19) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    "llvm.store"(%9, %arg18) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_store_v4i16_align2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr, %arg17: !llvm.ptr):
    %8 = "llvm.load"(%arg16) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    "llvm.store"(%8, %arg17) <{alignment = 2 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_load_v4i16_align4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr, %arg15: !llvm.ptr):
    %7 = "llvm.load"(%arg15) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    "llvm.store"(%7, %arg14) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_store_v4i16_align4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: !llvm.ptr):
    %6 = "llvm.load"(%arg12) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    "llvm.store"(%6, %arg13) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_load_v2i32_align1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: !llvm.ptr):
    %5 = "llvm.load"(%arg11) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    "llvm.store"(%5, %arg10) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_store_v2i32_align1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: !llvm.ptr):
    %4 = "llvm.load"(%arg8) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    "llvm.store"(%4, %arg9) <{alignment = 1 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_load_v2i32_align2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: !llvm.ptr):
    %3 = "llvm.load"(%arg7) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    "llvm.store"(%3, %arg6) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_store_v2i32_align2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: !llvm.ptr):
    %2 = "llvm.load"(%arg4) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    "llvm.store"(%2, %arg5) <{alignment = 2 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_load_v2i32_align4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: !llvm.ptr):
    %1 = "llvm.load"(%arg3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    "llvm.store"(%1, %arg2) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_store_v2i32_align4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.load"(%arg0) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    "llvm.store"(%0, %arg1) <{alignment = 4 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

