"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_load_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg164: !llvm.ptr):
    %74 = "llvm.load"(%arg164) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%74) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_load_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg163: !llvm.ptr):
    %73 = "llvm.load"(%arg163) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%73) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_load_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg162: !llvm.ptr):
    %72 = "llvm.load"(%arg162) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%72) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_load_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg161: !llvm.ptr):
    %71 = "llvm.load"(%arg161) <{alignment = 1 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%71) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_nontemporal_load_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg160: !llvm.ptr):
    %66 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %67 = "llvm.load"(%arg160) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %68 = "llvm.getelementptr"(%arg160, %66) <{elem_type = f16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %69 = "llvm.load"(%68) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %70 = "llvm.fadd"(%67, %69) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%70) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_load_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg159: !llvm.ptr):
    %65 = "llvm.load"(%arg159) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.return"(%65) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_load_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg158: !llvm.ptr):
    %64 = "llvm.load"(%arg158) <{alignment = 8 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.return"(%64) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<16xi8> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_load_v16i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg157: !llvm.ptr):
    %63 = "llvm.load"(%arg157) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<16xi8>
    "llvm.return"(%63) : (vector<16xi8>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<8xi16> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_load_v8i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg156: !llvm.ptr):
    %62 = "llvm.load"(%arg156) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi16>
    "llvm.return"(%62) : (vector<8xi16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xi32> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_load_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg155: !llvm.ptr):
    %61 = "llvm.load"(%arg155) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi32>
    "llvm.return"(%61) : (vector<4xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi64> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_load_v2i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg154: !llvm.ptr):
    %60 = "llvm.load"(%arg154) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi64>
    "llvm.return"(%60) : (vector<2xi64>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_store_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg152: !llvm.ptr, %arg153: i64):
    "llvm.store"(%arg153, %arg152) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_store_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg150: !llvm.ptr, %arg151: i32):
    "llvm.store"(%arg151, %arg150) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_store_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg148: !llvm.ptr, %arg149: i16):
    "llvm.store"(%arg149, %arg148) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_store_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg146: !llvm.ptr, %arg147: i8):
    "llvm.store"(%arg147, %arg146) <{alignment = 1 : i64, nontemporal, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f16)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_store_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg144: !llvm.ptr, %arg145: f16):
    "llvm.store"(%arg145, %arg144) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f32)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_store_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg142: !llvm.ptr, %arg143: f32):
    "llvm.store"(%arg143, %arg142) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_store_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg140: !llvm.ptr, %arg141: f64):
    "llvm.store"(%arg141, %arg140) <{alignment = 8 : i64, nontemporal, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<16xi8>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_store_v16i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg138: !llvm.ptr, %arg139: vector<16xi8>):
    "llvm.store"(%arg139, %arg138) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<16xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<8xi16>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_store_v8i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg136: !llvm.ptr, %arg137: vector<8xi16>):
    "llvm.store"(%arg137, %arg136) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<8xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_store_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg134: !llvm.ptr, %arg135: vector<4xi32>):
    "llvm.store"(%arg135, %arg134) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<4xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<2xi64>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_store_v2i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: !llvm.ptr, %arg133: vector<2xi64>):
    "llvm.store"(%arg133, %arg132) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<2xi64>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_load_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg131: !llvm.ptr):
    %59 = "llvm.load"(%arg131) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%59) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_load_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg130: !llvm.ptr):
    %58 = "llvm.load"(%arg130) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%58) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_load_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg129: !llvm.ptr):
    %57 = "llvm.load"(%arg129) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%57) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_load_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg128: !llvm.ptr):
    %56 = "llvm.load"(%arg128) <{alignment = 1 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%56) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_nontemporal_P1_load_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg127: !llvm.ptr):
    %51 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %52 = "llvm.load"(%arg127) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %53 = "llvm.getelementptr"(%arg127, %51) <{elem_type = f16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %54 = "llvm.load"(%53) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %55 = "llvm.fadd"(%52, %54) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%55) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_load_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg126: !llvm.ptr):
    %50 = "llvm.load"(%arg126) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.return"(%50) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_load_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg125: !llvm.ptr):
    %49 = "llvm.load"(%arg125) <{alignment = 8 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.return"(%49) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<16xi8> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_load_v16i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: !llvm.ptr):
    %48 = "llvm.load"(%arg124) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<16xi8>
    "llvm.return"(%48) : (vector<16xi8>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<8xi16> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_load_v8i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg123: !llvm.ptr):
    %47 = "llvm.load"(%arg123) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi16>
    "llvm.return"(%47) : (vector<8xi16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xi32> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_load_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg122: !llvm.ptr):
    %46 = "llvm.load"(%arg122) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi32>
    "llvm.return"(%46) : (vector<4xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi64> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_load_v2i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg121: !llvm.ptr):
    %45 = "llvm.load"(%arg121) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi64>
    "llvm.return"(%45) : (vector<2xi64>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_store_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg119: !llvm.ptr, %arg120: i64):
    "llvm.store"(%arg120, %arg119) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_store_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg117: !llvm.ptr, %arg118: i32):
    "llvm.store"(%arg118, %arg117) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_store_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg115: !llvm.ptr, %arg116: i16):
    "llvm.store"(%arg116, %arg115) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_store_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg113: !llvm.ptr, %arg114: i8):
    "llvm.store"(%arg114, %arg113) <{alignment = 1 : i64, nontemporal, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f16)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_store_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg111: !llvm.ptr, %arg112: f16):
    "llvm.store"(%arg112, %arg111) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f32)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_store_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg109: !llvm.ptr, %arg110: f32):
    "llvm.store"(%arg110, %arg109) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_store_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg107: !llvm.ptr, %arg108: f64):
    "llvm.store"(%arg108, %arg107) <{alignment = 8 : i64, nontemporal, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<16xi8>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_store_v16i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg105: !llvm.ptr, %arg106: vector<16xi8>):
    "llvm.store"(%arg106, %arg105) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<16xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<8xi16>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_store_v8i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg103: !llvm.ptr, %arg104: vector<8xi16>):
    "llvm.store"(%arg104, %arg103) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<8xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_store_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg101: !llvm.ptr, %arg102: vector<4xi32>):
    "llvm.store"(%arg102, %arg101) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<4xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<2xi64>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_P1_store_v2i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: !llvm.ptr, %arg100: vector<2xi64>):
    "llvm.store"(%arg100, %arg99) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<2xi64>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_load_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg98: !llvm.ptr):
    %44 = "llvm.load"(%arg98) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%44) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_load_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg97: !llvm.ptr):
    %43 = "llvm.load"(%arg97) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_load_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: !llvm.ptr):
    %42 = "llvm.load"(%arg96) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%42) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_load_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg95: !llvm.ptr):
    %41 = "llvm.load"(%arg95) <{alignment = 1 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%41) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_nontemporal_PALL_load_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg94: !llvm.ptr):
    %36 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %37 = "llvm.load"(%arg94) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %38 = "llvm.getelementptr"(%arg94, %36) <{elem_type = f16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %39 = "llvm.load"(%38) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %40 = "llvm.fadd"(%37, %39) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%40) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_load_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg93: !llvm.ptr):
    %35 = "llvm.load"(%arg93) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.return"(%35) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_load_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg92: !llvm.ptr):
    %34 = "llvm.load"(%arg92) <{alignment = 8 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.return"(%34) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<16xi8> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_load_v16i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg91: !llvm.ptr):
    %33 = "llvm.load"(%arg91) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<16xi8>
    "llvm.return"(%33) : (vector<16xi8>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<8xi16> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_load_v8i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg90: !llvm.ptr):
    %32 = "llvm.load"(%arg90) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi16>
    "llvm.return"(%32) : (vector<8xi16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xi32> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_load_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg89: !llvm.ptr):
    %31 = "llvm.load"(%arg89) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi32>
    "llvm.return"(%31) : (vector<4xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi64> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_load_v2i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: !llvm.ptr):
    %30 = "llvm.load"(%arg88) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi64>
    "llvm.return"(%30) : (vector<2xi64>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_store_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg86: !llvm.ptr, %arg87: i64):
    "llvm.store"(%arg87, %arg86) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_store_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: !llvm.ptr, %arg85: i32):
    "llvm.store"(%arg85, %arg84) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_store_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg82: !llvm.ptr, %arg83: i16):
    "llvm.store"(%arg83, %arg82) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_store_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: !llvm.ptr, %arg81: i8):
    "llvm.store"(%arg81, %arg80) <{alignment = 1 : i64, nontemporal, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f16)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_store_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: !llvm.ptr, %arg79: f16):
    "llvm.store"(%arg79, %arg78) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f32)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_store_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: !llvm.ptr, %arg77: f32):
    "llvm.store"(%arg77, %arg76) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_store_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg74: !llvm.ptr, %arg75: f64):
    "llvm.store"(%arg75, %arg74) <{alignment = 8 : i64, nontemporal, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<16xi8>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_store_v16i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: !llvm.ptr, %arg73: vector<16xi8>):
    "llvm.store"(%arg73, %arg72) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<16xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<8xi16>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_store_v8i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg70: !llvm.ptr, %arg71: vector<8xi16>):
    "llvm.store"(%arg71, %arg70) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<8xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_store_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: !llvm.ptr, %arg69: vector<4xi32>):
    "llvm.store"(%arg69, %arg68) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<4xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<2xi64>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_PALL_store_v2i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: !llvm.ptr, %arg67: vector<2xi64>):
    "llvm.store"(%arg67, %arg66) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<2xi64>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_load_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: !llvm.ptr):
    %29 = "llvm.load"(%arg65) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%29) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_load_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: !llvm.ptr):
    %28 = "llvm.load"(%arg64) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%28) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_load_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: !llvm.ptr):
    %27 = "llvm.load"(%arg63) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%27) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_load_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: !llvm.ptr):
    %26 = "llvm.load"(%arg62) <{alignment = 1 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%26) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_nontemporal_S1_load_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: !llvm.ptr):
    %21 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %22 = "llvm.load"(%arg61) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %23 = "llvm.getelementptr"(%arg61, %21) <{elem_type = f16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %24 = "llvm.load"(%23) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %25 = "llvm.fadd"(%22, %24) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%25) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_load_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: !llvm.ptr):
    %20 = "llvm.load"(%arg60) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.return"(%20) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_load_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: !llvm.ptr):
    %19 = "llvm.load"(%arg59) <{alignment = 8 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.return"(%19) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<16xi8> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_load_v16i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: !llvm.ptr):
    %18 = "llvm.load"(%arg58) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<16xi8>
    "llvm.return"(%18) : (vector<16xi8>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<8xi16> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_load_v8i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: !llvm.ptr):
    %17 = "llvm.load"(%arg57) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi16>
    "llvm.return"(%17) : (vector<8xi16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xi32> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_load_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: !llvm.ptr):
    %16 = "llvm.load"(%arg56) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi32>
    "llvm.return"(%16) : (vector<4xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi64> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_load_v2i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: !llvm.ptr):
    %15 = "llvm.load"(%arg55) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi64>
    "llvm.return"(%15) : (vector<2xi64>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_store_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: !llvm.ptr, %arg54: i64):
    "llvm.store"(%arg54, %arg53) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_store_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: !llvm.ptr, %arg52: i32):
    "llvm.store"(%arg52, %arg51) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_store_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: !llvm.ptr, %arg50: i16):
    "llvm.store"(%arg50, %arg49) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_store_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: !llvm.ptr, %arg48: i8):
    "llvm.store"(%arg48, %arg47) <{alignment = 1 : i64, nontemporal, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f16)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_store_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: !llvm.ptr, %arg46: f16):
    "llvm.store"(%arg46, %arg45) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f32)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_store_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: !llvm.ptr, %arg44: f32):
    "llvm.store"(%arg44, %arg43) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_store_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: !llvm.ptr, %arg42: f64):
    "llvm.store"(%arg42, %arg41) <{alignment = 8 : i64, nontemporal, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<16xi8>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_store_v16i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: !llvm.ptr, %arg40: vector<16xi8>):
    "llvm.store"(%arg40, %arg39) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<16xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<8xi16>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_store_v8i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: !llvm.ptr, %arg38: vector<8xi16>):
    "llvm.store"(%arg38, %arg37) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<8xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_store_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: !llvm.ptr, %arg36: vector<4xi32>):
    "llvm.store"(%arg36, %arg35) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<4xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<2xi64>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_S1_store_v2i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: !llvm.ptr, %arg34: vector<2xi64>):
    "llvm.store"(%arg34, %arg33) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<2xi64>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_load_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: !llvm.ptr):
    %14 = "llvm.load"(%arg32) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%14) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_load_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: !llvm.ptr):
    %13 = "llvm.load"(%arg31) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_load_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr):
    %12 = "llvm.load"(%arg30) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%12) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_load_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: !llvm.ptr):
    %11 = "llvm.load"(%arg29) <{alignment = 1 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%11) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_nontemporal_ALL_load_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: !llvm.ptr):
    %6 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %7 = "llvm.load"(%arg28) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %8 = "llvm.getelementptr"(%arg28, %6) <{elem_type = f16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %9 = "llvm.load"(%8) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f16
    %10 = "llvm.fadd"(%7, %9) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%10) : (f16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_load_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: !llvm.ptr):
    %5 = "llvm.load"(%arg27) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f32
    "llvm.return"(%5) : (f32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_load_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: !llvm.ptr):
    %4 = "llvm.load"(%arg26) <{alignment = 8 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> f64
    "llvm.return"(%4) : (f64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<16xi8> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_load_v16i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: !llvm.ptr):
    %3 = "llvm.load"(%arg25) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<16xi8>
    "llvm.return"(%3) : (vector<16xi8>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<8xi16> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_load_v8i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr):
    %2 = "llvm.load"(%arg24) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi16>
    "llvm.return"(%2) : (vector<8xi16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xi32> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_load_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: !llvm.ptr):
    %1 = "llvm.load"(%arg23) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi32>
    "llvm.return"(%1) : (vector<4xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi64> (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_load_v2i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: !llvm.ptr):
    %0 = "llvm.load"(%arg22) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi64>
    "llvm.return"(%0) : (vector<2xi64>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_store_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: !llvm.ptr, %arg21: i64):
    "llvm.store"(%arg21, %arg20) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_store_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: i32):
    "llvm.store"(%arg19, %arg18) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_store_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr, %arg17: i16):
    "llvm.store"(%arg17, %arg16) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_store_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr, %arg15: i8):
    "llvm.store"(%arg15, %arg14) <{alignment = 1 : i64, nontemporal, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f16)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_store_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: f16):
    "llvm.store"(%arg13, %arg12) <{alignment = 2 : i64, nontemporal, ordering = 0 : i64}> : (f16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f32)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_store_float", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: f32):
    "llvm.store"(%arg11, %arg10) <{alignment = 4 : i64, nontemporal, ordering = 0 : i64}> : (f32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, f64)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_store_double", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: f64):
    "llvm.store"(%arg9, %arg8) <{alignment = 8 : i64, nontemporal, ordering = 0 : i64}> : (f64, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<16xi8>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_store_v16i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: vector<16xi8>):
    "llvm.store"(%arg7, %arg6) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<16xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<8xi16>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_store_v8i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: vector<8xi16>):
    "llvm.store"(%arg5, %arg4) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<8xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<4xi32>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_store_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: vector<4xi32>):
    "llvm.store"(%arg3, %arg2) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<4xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, vector<2xi64>)>, linkage = #llvm.linkage<external>, sym_name = "test_nontemporal_ALL_store_v2i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: vector<2xi64>):
    "llvm.store"(%arg1, %arg0) <{alignment = 16 : i64, nontemporal, ordering = 0 : i64}> : (vector<2xi64>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

