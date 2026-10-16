"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: !llvm.ptr, %arg40: i8):
    "llvm.intr.memset.inline"(%arg39, %arg40) <{isVolatile = false, len = 1 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: !llvm.ptr, %arg38: i8):
    "llvm.intr.memset.inline"(%arg37, %arg38) <{isVolatile = false, len = 2 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: !llvm.ptr, %arg36: i8):
    "llvm.intr.memset.inline"(%arg35, %arg36) <{isVolatile = false, len = 4 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: !llvm.ptr, %arg34: i8):
    "llvm.intr.memset.inline"(%arg33, %arg34) <{isVolatile = false, len = 8 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: !llvm.ptr, %arg32: i8):
    "llvm.intr.memset.inline"(%arg31, %arg32) <{isVolatile = false, len = 16 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: !llvm.ptr, %arg30: i8):
    "llvm.intr.memset.inline"(%arg29, %arg30) <{isVolatile = false, len = 32 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: !llvm.ptr, %arg28: i8):
    "llvm.intr.memset.inline"(%arg27, %arg28) <{isVolatile = false, len = 64 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 2 : i64}, {}], function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: !llvm.ptr, %arg26: i8):
    "llvm.intr.memset.inline"(%arg25, %arg26) <{arg_attrs = [{llvm.align = 2 : i64}, {}], isVolatile = false, len = 2 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 4 : i64}, {}], function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: !llvm.ptr, %arg24: i8):
    "llvm.intr.memset.inline"(%arg23, %arg24) <{arg_attrs = [{llvm.align = 4 : i64}, {}], isVolatile = false, len = 4 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 8 : i64}, {}], function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: !llvm.ptr, %arg22: i8):
    "llvm.intr.memset.inline"(%arg21, %arg22) <{arg_attrs = [{llvm.align = 8 : i64}, {}], isVolatile = false, len = 8 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 16 : i64}, {}], function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: !llvm.ptr, %arg20: i8):
    "llvm.intr.memset.inline"(%arg19, %arg20) <{arg_attrs = [{llvm.align = 16 : i64}, {}], isVolatile = false, len = 16 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 32 : i64}, {}], function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: !llvm.ptr, %arg18: i8):
    "llvm.intr.memset.inline"(%arg17, %arg18) <{arg_attrs = [{llvm.align = 32 : i64}, {}], isVolatile = false, len = 32 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 64 : i64}, {}], function_type = !llvm.func<void (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr, %arg16: i8):
    "llvm.intr.memset.inline"(%arg15, %arg16) <{arg_attrs = [{llvm.align = 64 : i64}, {}], isVolatile = false, len = 64 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_zero_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr):
    %14 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg14, %14) <{isVolatile = false, len = 1 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_zero_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: !llvm.ptr):
    %13 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg13, %13) <{isVolatile = false, len = 2 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_zero_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr):
    %12 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg12, %12) <{isVolatile = false, len = 4 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_zero_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: !llvm.ptr):
    %11 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg11, %11) <{isVolatile = false, len = 8 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_zero_16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr):
    %10 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg10, %10) <{isVolatile = false, len = 16 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_zero_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: !llvm.ptr):
    %9 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg9, %9) <{isVolatile = false, len = 32 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "memset_zero_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr):
    %8 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg8, %8) <{isVolatile = false, len = 64 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_zero_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: !llvm.ptr):
    %7 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg7, %7) <{arg_attrs = [{llvm.align = 2 : i64}, {}], isVolatile = false, len = 2 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_zero_4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr):
    %6 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg6, %6) <{arg_attrs = [{llvm.align = 4 : i64}, {}], isVolatile = false, len = 4 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_zero_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: !llvm.ptr):
    %5 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg5, %5) <{arg_attrs = [{llvm.align = 8 : i64}, {}], isVolatile = false, len = 8 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_zero_16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr):
    %4 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg4, %4) <{arg_attrs = [{llvm.align = 16 : i64}, {}], isVolatile = false, len = 16 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_zero_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr):
    %3 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg3, %3) <{arg_attrs = [{llvm.align = 32 : i64}, {}], isVolatile = false, len = 32 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_zero_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr):
    %2 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg2, %2) <{arg_attrs = [{llvm.align = 64 : i64}, {}], isVolatile = false, len = 64 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_zero_7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: !llvm.ptr):
    %1 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg1, %1) <{arg_attrs = [{llvm.align = 8 : i64}, {}], isVolatile = false, len = 7 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aligned_memset_zero_15", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    "llvm.intr.memset.inline"(%arg0, %0) <{arg_attrs = [{llvm.align = 8 : i64}, {}], isVolatile = false, len = 15 : i64}> : (!llvm.ptr, i8) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

