"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xi16> (vector<4xi16>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fold_srem_vec_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: vector<4xi16>):
    %14 = "llvm.mlir.constant"() <{value = dense<[95, -124, 98, -1003]> : vector<4xi16>}> : () -> vector<4xi16>
    %15 = "llvm.srem"(%arg6, %14) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.return"(%15) : (vector<4xi16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xi16> (vector<4xi16>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fold_srem_vec_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: vector<4xi16>):
    %12 = "llvm.mlir.constant"() <{value = dense<95> : vector<4xi16>}> : () -> vector<4xi16>
    %13 = "llvm.srem"(%arg5, %12) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.return"(%13) : (vector<4xi16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xi16> (vector<4xi16>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "combine_srem_sdiv", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: vector<4xi16>):
    %8 = "llvm.mlir.constant"() <{value = dense<95> : vector<4xi16>}> : () -> vector<4xi16>
    %9 = "llvm.srem"(%arg4, %8) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %10 = "llvm.sdiv"(%arg4, %8) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %11 = "llvm.add"(%9, %10) <{overflowFlags = 0 : i32}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.return"(%11) : (vector<4xi16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xi16> (vector<4xi16>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "dont_fold_srem_power_of_two", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: vector<4xi16>):
    %6 = "llvm.mlir.constant"() <{value = dense<[64, 32, 8, 95]> : vector<4xi16>}> : () -> vector<4xi16>
    %7 = "llvm.srem"(%arg3, %6) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.return"(%7) : (vector<4xi16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xi16> (vector<4xi16>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "dont_fold_srem_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: vector<4xi16>):
    %4 = "llvm.mlir.constant"() <{value = dense<[1, 654, 23, 5423]> : vector<4xi16>}> : () -> vector<4xi16>
    %5 = "llvm.srem"(%arg2, %4) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.return"(%5) : (vector<4xi16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xi16> (vector<4xi16>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "dont_fold_urem_i16_smax", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: vector<4xi16>):
    %2 = "llvm.mlir.constant"() <{value = dense<[1, -32768, 23, 5423]> : vector<4xi16>}> : () -> vector<4xi16>
    %3 = "llvm.srem"(%arg1, %2) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.return"(%3) : (vector<4xi16>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<4xi64> (vector<4xi64>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "dont_fold_srem_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: vector<4xi64>):
    %0 = "llvm.mlir.constant"() <{value = dense<[1, 654, 23, 5423]> : vector<4xi64>}> : () -> vector<4xi64>
    %1 = "llvm.srem"(%arg0, %0) : (vector<4xi64>, vector<4xi64>) -> vector<4xi64>
    "llvm.return"(%1) : (vector<4xi64>) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

