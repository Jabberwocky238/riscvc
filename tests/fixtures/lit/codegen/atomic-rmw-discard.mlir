"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amoswap_w_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: !llvm.ptr, %arg35: i32):
    %17 = "llvm.atomicrmw"(%arg34, %arg35) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amoswap_d_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: !llvm.ptr, %arg33: i64):
    %16 = "llvm.atomicrmw"(%arg32, %arg33) <{alignment = 8 : i64, bin_op = 0 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amoadd_w_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr, %arg31: i32):
    %15 = "llvm.atomicrmw"(%arg30, %arg31) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amoadd_d_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: !llvm.ptr, %arg29: i64):
    %14 = "llvm.atomicrmw"(%arg28, %arg29) <{alignment = 8 : i64, bin_op = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amoand_w_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: !llvm.ptr, %arg27: i32):
    %13 = "llvm.atomicrmw"(%arg26, %arg27) <{alignment = 4 : i64, bin_op = 3 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amoand_d_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr, %arg25: i64):
    %12 = "llvm.atomicrmw"(%arg24, %arg25) <{alignment = 8 : i64, bin_op = 3 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amoor_w_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: !llvm.ptr, %arg23: i32):
    %11 = "llvm.atomicrmw"(%arg22, %arg23) <{alignment = 4 : i64, bin_op = 5 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amoor_d_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: !llvm.ptr, %arg21: i64):
    %10 = "llvm.atomicrmw"(%arg20, %arg21) <{alignment = 8 : i64, bin_op = 5 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amoxor_w_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: i32):
    %9 = "llvm.atomicrmw"(%arg18, %arg19) <{alignment = 4 : i64, bin_op = 5 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amoxor_d_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr, %arg17: i64):
    %8 = "llvm.atomicrmw"(%arg16, %arg17) <{alignment = 8 : i64, bin_op = 5 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amomax_w_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr, %arg15: i32):
    %7 = "llvm.atomicrmw"(%arg14, %arg15) <{alignment = 4 : i64, bin_op = 7 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amomax_d_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: i64):
    %6 = "llvm.atomicrmw"(%arg12, %arg13) <{alignment = 8 : i64, bin_op = 7 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amomaxu_w_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: i32):
    %5 = "llvm.atomicrmw"(%arg10, %arg11) <{alignment = 4 : i64, bin_op = 9 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amomaxu_d_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: i64):
    %4 = "llvm.atomicrmw"(%arg8, %arg9) <{alignment = 8 : i64, bin_op = 9 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amomin_w_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: i32):
    %3 = "llvm.atomicrmw"(%arg6, %arg7) <{alignment = 4 : i64, bin_op = 8 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amomin_d_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: i64):
    %2 = "llvm.atomicrmw"(%arg4, %arg5) <{alignment = 8 : i64, bin_op = 8 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amominu_w_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: i32):
    %1 = "llvm.atomicrmw"(%arg2, %arg3) <{alignment = 4 : i64, bin_op = 10 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "amominu_d_discard", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i64):
    %0 = "llvm.atomicrmw"(%arg0, %arg1) <{alignment = 8 : i64, bin_op = 10 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

