"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fence_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.fence"() <{ordering = 4 : i64}> : () -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fence_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.fence"() <{ordering = 5 : i64}> : () -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fence_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.fence"() <{ordering = 6 : i64}> : () -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fence_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.fence"() <{ordering = 7 : i64}> : () -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fence_singlethread_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.fence"() <{ordering = 4 : i64, syncscope = "singlethread"}> : () -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fence_singlethread_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.fence"() <{ordering = 5 : i64, syncscope = "singlethread"}> : () -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fence_singlethread_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.fence"() <{ordering = 6 : i64, syncscope = "singlethread"}> : () -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "fence_singlethread_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.fence"() <{ordering = 7 : i64, syncscope = "singlethread"}> : () -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

