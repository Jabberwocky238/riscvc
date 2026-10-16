"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<4xi8>, ptr, vector<4xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v4i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg102: vector<4xi8>, %arg103: !llvm.ptr, %arg104: vector<4xi1>):
    %84 = "llvm.load"(%arg103) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi8>
    %85 = "llvm.select"(%arg104, %arg102, %84) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xi1>, vector<4xi8>, vector<4xi8>) -> vector<4xi8>
    "llvm.store"(%85, %arg103) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<4xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<4xi16>, ptr, vector<4xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v4i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: vector<4xi16>, %arg100: !llvm.ptr, %arg101: vector<4xi1>):
    %82 = "llvm.load"(%arg100) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %83 = "llvm.select"(%arg101, %arg99, %82) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xi1>, vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%83, %arg100) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<4xi32>, ptr, vector<4xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: vector<4xi32>, %arg97: !llvm.ptr, %arg98: vector<4xi1>):
    %80 = "llvm.load"(%arg97) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi32>
    %81 = "llvm.select"(%arg98, %arg96, %80) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xi1>, vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    "llvm.store"(%81, %arg97) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<4xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<4xi64>, ptr, vector<4xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v4i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg93: vector<4xi64>, %arg94: !llvm.ptr, %arg95: vector<4xi1>):
    %78 = "llvm.load"(%arg94) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi64>
    %79 = "llvm.select"(%arg95, %arg93, %78) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xi1>, vector<4xi64>, vector<4xi64>) -> vector<4xi64>
    "llvm.store"(%79, %arg94) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<4xi64>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<4xf16>, ptr, vector<4xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v4f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg90: vector<4xf16>, %arg91: !llvm.ptr, %arg92: vector<4xi1>):
    %76 = "llvm.load"(%arg91) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xf16>
    %77 = "llvm.select"(%arg92, %arg90, %76) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xi1>, vector<4xf16>, vector<4xf16>) -> vector<4xf16>
    "llvm.store"(%77, %arg91) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<4xf16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<4xf32>, ptr, vector<4xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v4f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg87: vector<4xf32>, %arg88: !llvm.ptr, %arg89: vector<4xi1>):
    %74 = "llvm.load"(%arg88) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xf32>
    %75 = "llvm.select"(%arg89, %arg87, %74) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xi1>, vector<4xf32>, vector<4xf32>) -> vector<4xf32>
    "llvm.store"(%75, %arg88) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<4xf32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<4xf64>, ptr, vector<4xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v4f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: vector<4xf64>, %arg85: !llvm.ptr, %arg86: vector<4xi1>):
    %72 = "llvm.load"(%arg85) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xf64>
    %73 = "llvm.select"(%arg86, %arg84, %72) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xi1>, vector<4xf64>, vector<4xf64>) -> vector<4xf64>
    "llvm.store"(%73, %arg85) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<4xf64>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xi8>, ptr, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v8i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg81: vector<8xi8>, %arg82: !llvm.ptr, %arg83: vector<8xi1>):
    %70 = "llvm.load"(%arg82) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %71 = "llvm.select"(%arg83, %arg81, %70) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%71, %arg82) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xi16>, ptr, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v8i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: vector<8xi16>, %arg79: !llvm.ptr, %arg80: vector<8xi1>):
    %68 = "llvm.load"(%arg79) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi16>
    %69 = "llvm.select"(%arg80, %arg78, %68) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi16>, vector<8xi16>) -> vector<8xi16>
    "llvm.store"(%69, %arg79) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xi32>, ptr, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v8i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg75: vector<8xi32>, %arg76: !llvm.ptr, %arg77: vector<8xi1>):
    %66 = "llvm.load"(%arg76) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi32>
    %67 = "llvm.select"(%arg77, %arg75, %66) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi32>, vector<8xi32>) -> vector<8xi32>
    "llvm.store"(%67, %arg76) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xi64>, ptr, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v8i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: vector<8xi64>, %arg73: !llvm.ptr, %arg74: vector<8xi1>):
    %64 = "llvm.load"(%arg73) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi64>
    %65 = "llvm.select"(%arg74, %arg72, %64) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi64>, vector<8xi64>) -> vector<8xi64>
    "llvm.store"(%65, %arg73) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xi64>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xf16>, ptr, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v8f16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: vector<8xf16>, %arg70: !llvm.ptr, %arg71: vector<8xi1>):
    %62 = "llvm.load"(%arg70) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xf16>
    %63 = "llvm.select"(%arg71, %arg69, %62) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xf16>, vector<8xf16>) -> vector<8xf16>
    "llvm.store"(%63, %arg70) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xf16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xf32>, ptr, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v8f32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: vector<8xf32>, %arg67: !llvm.ptr, %arg68: vector<8xi1>):
    %60 = "llvm.load"(%arg67) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xf32>
    %61 = "llvm.select"(%arg68, %arg66, %60) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    "llvm.store"(%61, %arg67) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xf32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xf64>, ptr, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v8f64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: vector<8xf64>, %arg64: !llvm.ptr, %arg65: vector<8xi1>):
    %58 = "llvm.load"(%arg64) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xf64>
    %59 = "llvm.select"(%arg65, %arg63, %58) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xf64>, vector<8xf64>) -> vector<8xf64>
    "llvm.store"(%59, %arg64) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xf64>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<16xi8>, ptr, vector<16xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v16i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: vector<16xi8>, %arg61: !llvm.ptr, %arg62: vector<16xi1>):
    %56 = "llvm.load"(%arg61) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<16xi8>
    %57 = "llvm.select"(%arg62, %arg60, %56) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<16xi1>, vector<16xi8>, vector<16xi8>) -> vector<16xi8>
    "llvm.store"(%57, %arg61) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<16xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<16xi16>, ptr, vector<16xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v16i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: vector<16xi16>, %arg58: !llvm.ptr, %arg59: vector<16xi1>):
    %54 = "llvm.load"(%arg58) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<16xi16>
    %55 = "llvm.select"(%arg59, %arg57, %54) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<16xi1>, vector<16xi16>, vector<16xi16>) -> vector<16xi16>
    "llvm.store"(%55, %arg58) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<16xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<16xi32>, ptr, vector<16xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v16i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: vector<16xi32>, %arg55: !llvm.ptr, %arg56: vector<16xi1>):
    %52 = "llvm.load"(%arg55) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<16xi32>
    %53 = "llvm.select"(%arg56, %arg54, %52) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<16xi1>, vector<16xi32>, vector<16xi32>) -> vector<16xi32>
    "llvm.store"(%53, %arg55) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<16xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<32xi8>, ptr, vector<32xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v32i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: vector<32xi8>, %arg52: !llvm.ptr, %arg53: vector<32xi1>):
    %50 = "llvm.load"(%arg52) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<32xi8>
    %51 = "llvm.select"(%arg53, %arg51, %50) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<32xi1>, vector<32xi8>, vector<32xi8>) -> vector<32xi8>
    "llvm.store"(%51, %arg52) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<32xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<32xi16>, ptr, vector<32xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v32i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: vector<32xi16>, %arg49: !llvm.ptr, %arg50: vector<32xi1>):
    %48 = "llvm.load"(%arg49) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<32xi16>
    %49 = "llvm.select"(%arg50, %arg48, %48) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<32xi1>, vector<32xi16>, vector<32xi16>) -> vector<32xi16>
    "llvm.store"(%49, %arg49) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<32xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<64xi8>, ptr, vector<64xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_v64i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: vector<64xi8>, %arg46: !llvm.ptr, %arg47: vector<64xi1>):
    %46 = "llvm.load"(%arg46) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<64xi8>
    %47 = "llvm.select"(%arg47, %arg45, %46) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<64xi1>, vector<64xi8>, vector<64xi8>) -> vector<64xi8>
    "llvm.store"(%47, %arg46) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<64xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<4xi32>, ptr, vector<4xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_invert_mask_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: vector<4xi32>, %arg43: !llvm.ptr, %arg44: vector<4xi1>):
    %44 = "llvm.load"(%arg43) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi32>
    %45 = "llvm.select"(%arg44, %44, %arg42) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xi1>, vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    "llvm.store"(%45, %arg43) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<4xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xi32>, ptr, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_invert_mask_v8i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: vector<8xi32>, %arg40: !llvm.ptr, %arg41: vector<8xi1>):
    %42 = "llvm.load"(%arg40) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi32>
    %43 = "llvm.select"(%arg41, %42, %arg39) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi32>, vector<8xi32>) -> vector<8xi32>
    "llvm.store"(%43, %arg40) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<16xi32>, ptr, vector<16xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_success_invert_mask_v16i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: vector<16xi32>, %arg37: !llvm.ptr, %arg38: vector<16xi1>):
    %40 = "llvm.load"(%arg37) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<16xi32>
    %41 = "llvm.select"(%arg38, %40, %arg36) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<16xi1>, vector<16xi32>, vector<16xi32>) -> vector<16xi32>
    "llvm.store"(%41, %arg37) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<16xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<4xi64>, ptr, vector<4xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_zextload", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: vector<4xi64>, %arg34: !llvm.ptr, %arg35: vector<4xi1>):
    %37 = "llvm.load"(%arg34) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi32>
    %38 = "llvm.zext"(%37) : (vector<4xi32>) -> vector<4xi64>
    %39 = "llvm.select"(%arg35, %arg33, %38) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xi1>, vector<4xi64>, vector<4xi64>) -> vector<4xi64>
    "llvm.store"(%39, %arg34) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<4xi64>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xi32>, ptr, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_volatile_load", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: vector<8xi32>, %arg31: !llvm.ptr, %arg32: vector<8xi1>):
    %35 = "llvm.load"(%arg31) <{alignment = 32 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> vector<8xi32>
    %36 = "llvm.select"(%arg32, %arg30, %35) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi32>, vector<8xi32>) -> vector<8xi32>
    "llvm.store"(%36, %arg31) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xi32>, ptr, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_volatile_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: vector<8xi32>, %arg28: !llvm.ptr, %arg29: vector<8xi1>):
    %33 = "llvm.load"(%arg28) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi32>
    %34 = "llvm.select"(%arg29, %arg27, %33) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi32>, vector<8xi32>) -> vector<8xi32>
    "llvm.store"(%34, %arg28) <{alignment = 32 : i64, ordering = 0 : i64, volatile_}> : (vector<8xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xi32>)>, linkage = #llvm.linkage<external>, sym_name = "use_vec", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xi32>, ptr, vector<8xi1>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_masked_store_intervening", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: vector<8xi32>, %arg25: !llvm.ptr, %arg26: vector<8xi1>):
    %28 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = dense<0> : vector<8xi32>}> : () -> vector<8xi32>
    %30 = "llvm.load"(%arg25) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi32>
    "llvm.store"(%29, %arg25) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xi32>, !llvm.ptr) -> ()
    %31 = "llvm.load"(%arg25) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi32>
    "llvm.call"(%31) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @use_vec, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (vector<8xi32>) -> ()
    %32 = "llvm.select"(%arg26, %arg24, %30) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi32>, vector<8xi32>) -> vector<8xi32>
    "llvm.store"(%32, %arg25) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xi32>, vector<8xi32>, ptr, ptr, vector<8xi1>, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_multiple_v8i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: vector<8xi32>, %arg19: vector<8xi32>, %arg20: !llvm.ptr, %arg21: !llvm.ptr, %arg22: vector<8xi1>, %arg23: vector<8xi1>):
    %24 = "llvm.load"(%arg20) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi32>
    %25 = "llvm.load"(%arg21) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi32>
    %26 = "llvm.select"(%arg22, %arg18, %24) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi32>, vector<8xi32>) -> vector<8xi32>
    %27 = "llvm.select"(%arg23, %arg19, %25) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi32>, vector<8xi32>) -> vector<8xi32>
    "llvm.store"(%26, %arg20) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xi32>, !llvm.ptr) -> ()
    "llvm.store"(%27, %arg21) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xi64>, vector<8xi64>, ptr, ptr, vector<8xi1>, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_multiple_v8i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: vector<8xi64>, %arg13: vector<8xi64>, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: vector<8xi1>, %arg17: vector<8xi1>):
    %20 = "llvm.load"(%arg14) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi64>
    %21 = "llvm.load"(%arg15) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi64>
    %22 = "llvm.select"(%arg16, %arg12, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi64>, vector<8xi64>) -> vector<8xi64>
    %23 = "llvm.select"(%arg17, %arg13, %21) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi64>, vector<8xi64>) -> vector<8xi64>
    "llvm.store"(%22, %arg14) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xi64>, !llvm.ptr) -> ()
    "llvm.store"(%23, %arg15) <{alignment = 32 : i64, ordering = 0 : i64}> : (vector<8xi64>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<4xi32>, ptr, vector<4xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_unaligned_v4i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: vector<4xi32>, %arg10: !llvm.ptr, %arg11: vector<4xi1>):
    %15 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %16 = "llvm.getelementptr"(%arg10, %15) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %17 = "llvm.bitcast"(%16) : (!llvm.ptr) -> !llvm.ptr
    %18 = "llvm.load"(%17) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi32>
    %19 = "llvm.select"(%arg11, %arg9, %18) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xi1>, vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    "llvm.store"(%19, %17) <{alignment = 1 : i64, ordering = 0 : i64}> : (vector<4xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<4xi64>, ptr, vector<4xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_unaligned_v4i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: vector<4xi64>, %arg7: !llvm.ptr, %arg8: vector<4xi1>):
    %10 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %11 = "llvm.getelementptr"(%arg7, %10) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %12 = "llvm.bitcast"(%11) : (!llvm.ptr) -> !llvm.ptr
    %13 = "llvm.load"(%12) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi64>
    %14 = "llvm.select"(%arg8, %arg6, %13) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<4xi1>, vector<4xi64>, vector<4xi64>) -> vector<4xi64>
    "llvm.store"(%14, %12) <{alignment = 1 : i64, ordering = 0 : i64}> : (vector<4xi64>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xi32>, ptr, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_unaligned_v8i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: vector<8xi32>, %arg4: !llvm.ptr, %arg5: vector<8xi1>):
    %5 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "llvm.getelementptr"(%arg4, %5) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %7 = "llvm.bitcast"(%6) : (!llvm.ptr) -> !llvm.ptr
    %8 = "llvm.load"(%7) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi32>
    %9 = "llvm.select"(%arg5, %arg3, %8) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi32>, vector<8xi32>) -> vector<8xi32>
    "llvm.store"(%9, %7) <{alignment = 1 : i64, ordering = 0 : i64}> : (vector<8xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (vector<8xi64>, ptr, vector<8xi1>)>, linkage = #llvm.linkage<external>, sym_name = "test_masked_store_unaligned_v8i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: vector<8xi64>, %arg1: !llvm.ptr, %arg2: vector<8xi1>):
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.getelementptr"(%arg1, %0) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %2 = "llvm.bitcast"(%1) : (!llvm.ptr) -> !llvm.ptr
    %3 = "llvm.load"(%2) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi64>
    %4 = "llvm.select"(%arg2, %arg0, %3) <{fastmathFlags = #llvm.fastmath<none>}> : (vector<8xi1>, vector<8xi64>, vector<8xi64>) -> vector<8xi64>
    "llvm.store"(%4, %2) <{alignment = 1 : i64, ordering = 0 : i64}> : (vector<8xi64>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

