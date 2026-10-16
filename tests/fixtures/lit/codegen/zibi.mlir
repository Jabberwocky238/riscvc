"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bne_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i32):
    %62 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %63 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %64 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %65 = "llvm.icmp"(%arg39, %62) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%65)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%63) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_beq_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32):
    %58 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %59 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %60 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %61 = "llvm.icmp"(%arg38, %58) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%61)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%59) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%60) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bne_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32):
    %55 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %57 = "llvm.icmp"(%arg37, %55) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%57)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%55) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_beq_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32):
    %52 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %53 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %54 = "llvm.icmp"(%arg36, %52) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%54)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%52) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bne_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i32):
    %49 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %51 = "llvm.icmp"(%arg35, %49) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%51)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%50) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_beq_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i32):
    %46 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %47 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %48 = "llvm.icmp"(%arg34, %46) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%48)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%47) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%46) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bne_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32):
    %42 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %45 = "llvm.icmp"(%arg33, %42) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%45)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%43) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%44) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_beq_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32):
    %38 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %39 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %40 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %41 = "llvm.icmp"(%arg32, %38) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%41)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%39) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_bne_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i32):
    %34 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %35 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %37 = "llvm.icmp"(%arg31, %34) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%37)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%35) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%36) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_beq_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32):
    %30 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %33 = "llvm.icmp"(%arg30, %30) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%33)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%31) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_select_beq_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32, %arg28: i32, %arg29: i32):
    %27 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %28 = "llvm.icmp"(%arg27, %27) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %29 = "llvm.select"(%28, %arg28, %arg29) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_select_bne_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32, %arg25: i32, %arg26: i32):
    %24 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %25 = "llvm.icmp"(%arg24, %24) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %26 = "llvm.select"(%25, %arg25, %arg26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_select_beq_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32, %arg22: i32, %arg23: i32):
    %21 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %22 = "llvm.icmp"(%arg21, %21) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %23 = "llvm.select"(%22, %arg22, %arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_select_bne_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32, %arg19: i32, %arg20: i32):
    %18 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %19 = "llvm.icmp"(%arg18, %18) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %20 = "llvm.select"(%19, %arg19, %arg20) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_select_beq_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32, %arg16: i32, %arg17: i32):
    %15 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %16 = "llvm.icmp"(%arg15, %15) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %17 = "llvm.select"(%16, %arg16, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_select_bne_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32, %arg13: i32, %arg14: i32):
    %12 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %13 = "llvm.icmp"(%arg12, %12) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %14 = "llvm.select"(%13, %arg13, %arg14) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_select_beq_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32, %arg10: i32, %arg11: i32):
    %9 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %10 = "llvm.icmp"(%arg9, %9) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %11 = "llvm.select"(%10, %arg10, %arg11) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_select_bne_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32, %arg7: i32, %arg8: i32):
    %6 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %7 = "llvm.icmp"(%arg6, %6) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %8 = "llvm.select"(%7, %arg7, %arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_select_beq_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
    %3 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %4 = "llvm.icmp"(%arg3, %3) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %5 = "llvm.select"(%4, %arg4, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_select_bne_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %1 = "llvm.icmp"(%arg0, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %2 = "llvm.select"(%1, %arg1, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

