"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "addi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i16):
    %39 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %40 = "llvm.add"(%arg35, %39) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%40) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "slti", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i16):
    %36 = "llvm.mlir.constant"() <{value = 2 : i16}> : () -> i16
    %37 = "llvm.icmp"(%arg34, %36) <{predicate = 2 : i64}> : (i16, i16) -> i1
    %38 = "llvm.zext"(%37) : (i1) -> i16
    "llvm.return"(%38) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sltiu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i16):
    %33 = "llvm.mlir.constant"() <{value = 3 : i16}> : () -> i16
    %34 = "llvm.icmp"(%arg33, %33) <{predicate = 6 : i64}> : (i16, i16) -> i1
    %35 = "llvm.zext"(%34) : (i1) -> i16
    "llvm.return"(%35) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sltiu_signext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i16):
    %30 = "llvm.mlir.constant"() <{value = 10 : i16}> : () -> i16
    %31 = "llvm.icmp"(%arg32, %30) <{predicate = 6 : i64}> : (i16, i16) -> i1
    %32 = "llvm.zext"(%31) : (i1) -> i16
    "llvm.return"(%32) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "xori", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i16):
    %28 = "llvm.mlir.constant"() <{value = 4 : i16}> : () -> i16
    %29 = "llvm.xor"(%arg31, %28) : (i16, i16) -> i16
    "llvm.return"(%29) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ori", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i16):
    %26 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %27 = "llvm.or"(%arg30, %26) : (i16, i16) -> i16
    "llvm.return"(%27) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "andi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i16):
    %24 = "llvm.mlir.constant"() <{value = 6 : i16}> : () -> i16
    %25 = "llvm.and"(%arg29, %24) : (i16, i16) -> i16
    "llvm.return"(%25) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "slli", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i16):
    %22 = "llvm.mlir.constant"() <{value = 7 : i16}> : () -> i16
    %23 = "llvm.shl"(%arg28, %22) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%23) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srli", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i16):
    %20 = "llvm.mlir.constant"() <{value = 6 : i16}> : () -> i16
    %21 = "llvm.lshr"(%arg27, %20) : (i16, i16) -> i16
    "llvm.return"(%21) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srai", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i16):
    %18 = "llvm.mlir.constant"() <{value = 9 : i16}> : () -> i16
    %19 = "llvm.ashr"(%arg26, %18) : (i16, i16) -> i16
    "llvm.return"(%19) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i16, %arg25: i16):
    %17 = "llvm.add"(%arg24, %arg25) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%17) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sub", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i16, %arg23: i16):
    %16 = "llvm.sub"(%arg22, %arg23) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%16) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sll", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i16, %arg21: i16):
    %15 = "llvm.shl"(%arg20, %arg21) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    "llvm.return"(%15) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {}], function_type = !llvm.func<void (i16, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sll_ext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i16, %arg18: i32, %arg19: !llvm.ptr):
    %12 = "llvm.zext"(%arg17) : (i16) -> i32
    %13 = "llvm.shl"(%12, %arg18) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %14 = "llvm.trunc"(%13) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.store"(%14, %arg19) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}, {}], function_type = !llvm.func<void (i16, i32, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sll_ext_drop_poison", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i16, %arg15: i32, %arg16: !llvm.ptr):
    %9 = "llvm.zext"(%arg14) : (i16) -> i32
    %10 = "llvm.shl"(%9, %arg15) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %11 = "llvm.trunc"(%10) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.store"(%11, %arg16) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "slt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i16, %arg13: i16):
    %7 = "llvm.icmp"(%arg12, %arg13) <{predicate = 2 : i64}> : (i16, i16) -> i1
    %8 = "llvm.zext"(%7) : (i1) -> i16
    "llvm.return"(%8) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sltu", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i16, %arg11: i16):
    %5 = "llvm.icmp"(%arg10, %arg11) <{predicate = 6 : i64}> : (i16, i16) -> i1
    %6 = "llvm.zext"(%5) : (i1) -> i16
    "llvm.return"(%6) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "xor", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i16, %arg9: i16):
    %4 = "llvm.xor"(%arg8, %arg9) : (i16, i16) -> i16
    "llvm.return"(%4) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srl", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i16, %arg7: i16):
    %3 = "llvm.lshr"(%arg6, %arg7) : (i16, i16) -> i16
    "llvm.return"(%3) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sra", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i16, %arg5: i16):
    %2 = "llvm.ashr"(%arg4, %arg5) : (i16, i16) -> i16
    "llvm.return"(%2) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i16, %arg3: i16):
    %1 = "llvm.or"(%arg2, %arg3) : (i16, i16) -> i16
    "llvm.return"(%1) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "and", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i16, %arg1: i16):
    %0 = "llvm.and"(%arg0, %arg1) : (i16, i16) -> i16
    "llvm.return"(%0) : (i16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

