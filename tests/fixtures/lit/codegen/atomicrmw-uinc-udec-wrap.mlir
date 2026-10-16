"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "atomicrmw_uinc_wrap_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr, %arg15: i8):
    %7 = "llvm.atomicrmw"(%arg14, %arg15) <{alignment = 1 : i64, bin_op = 15 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%7) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "atomicrmw_uinc_wrap_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: i16):
    %6 = "llvm.atomicrmw"(%arg12, %arg13) <{alignment = 2 : i64, bin_op = 15 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%6) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "atomicrmw_uinc_wrap_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: i32):
    %5 = "llvm.atomicrmw"(%arg10, %arg11) <{alignment = 4 : i64, bin_op = 15 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "atomicrmw_uinc_wrap_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: i64):
    %4 = "llvm.atomicrmw"(%arg8, %arg9) <{alignment = 8 : i64, bin_op = 15 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%4) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, sym_name = "atomicrmw_udec_wrap_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: i8):
    %3 = "llvm.atomicrmw"(%arg6, %arg7) <{alignment = 1 : i64, bin_op = 16 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%3) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "atomicrmw_udec_wrap_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: i16):
    %2 = "llvm.atomicrmw"(%arg4, %arg5) <{alignment = 2 : i64, bin_op = 16 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%2) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "atomicrmw_udec_wrap_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: i32):
    %1 = "llvm.atomicrmw"(%arg2, %arg3) <{alignment = 4 : i64, bin_op = 16 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "atomicrmw_udec_wrap_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i64):
    %0 = "llvm.atomicrmw"(%arg0, %arg1) <{alignment = 8 : i64, bin_op = 16 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%0) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

