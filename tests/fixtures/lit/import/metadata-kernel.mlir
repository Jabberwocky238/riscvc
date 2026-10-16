"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "vec_type_hint", unnamed_addr = 0 : i64, vec_type_hint = #llvm.vec_type_hint<hint = i32>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "vec_type_hint_signed", unnamed_addr = 0 : i64, vec_type_hint = #llvm.vec_type_hint<hint = i32, is_signed = true>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "vec_type_hint_signed_vec", unnamed_addr = 0 : i64, vec_type_hint = #llvm.vec_type_hint<hint = vector<2xi32>, is_signed = true>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "vec_type_hint_float_vec", unnamed_addr = 0 : i64, vec_type_hint = #llvm.vec_type_hint<hint = vector<3xf32>>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "vec_type_hint_bfloat_vec", unnamed_addr = 0 : i64, vec_type_hint = #llvm.vec_type_hint<hint = vector<8xbf16>>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "work_group_size_hint", unnamed_addr = 0 : i64, visibility_ = 0 : i64, work_group_size_hint = array<i32: 128, 128, 128>}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, reqd_work_group_size = array<i32: 128, 256, 128>, sym_name = "reqd_work_group_size", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, intel_reqd_sub_group_size = 32 : i32, linkage = #llvm.linkage<external>, sym_name = "intel_reqd_sub_group_size", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

