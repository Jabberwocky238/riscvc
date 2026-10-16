"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "beqimm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %46 = "llvm.mlir.constant"() <{value = -16 : i32}> : () -> i32
    %47 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %48 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %49 = "llvm.icmp"(%arg12, %46) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%49)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%47) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "bneimm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %42 = "llvm.mlir.constant"() <{value = 15 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %45 = "llvm.icmp"(%arg11, %42) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%45)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%43) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%44) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "bltimm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %38 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %39 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %40 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %41 = "llvm.icmp"(%arg10, %38) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%41)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%39) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%40) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "bgeimm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %34 = "llvm.mlir.constant"() <{value = -5 : i32}> : () -> i32
    %35 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %37 = "llvm.icmp"(%arg9, %34) <{predicate = 5 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%37)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%35) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%36) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "bltuimm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %30 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %33 = "llvm.icmp"(%arg8, %30) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%33)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%31) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "bgeuimm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %26 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %27 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %28 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %29 = "llvm.icmp"(%arg7, %26) <{predicate = 9 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%29)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%27) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%28) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "beqimm16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %22 = "llvm.mlir.constant"() <{value = -32768 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %25 = "llvm.icmp"(%arg6, %22) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%25)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%23) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "bneimm16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %18 = "llvm.mlir.constant"() <{value = 32767 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %21 = "llvm.icmp"(%arg5, %18) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%21)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%19) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "bltimm16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %14 = "llvm.mlir.constant"() <{value = -35 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %17 = "llvm.icmp"(%arg4, %14) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%17)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%15) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "bgeimm16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %10 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %11 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %12 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %13 = "llvm.icmp"(%arg3, %10) <{predicate = 5 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%13)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%11) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%12) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "bltuimm16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %6 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %9 = "llvm.icmp"(%arg2, %6) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%9)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%7) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "bgeuimm16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %2 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %3 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "llvm.icmp"(%arg1, %2) <{predicate = 9 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%5)[^bb2, ^bb1] <{branch_weights = array<i32: 1, 99>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%3) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, sym_name = "selectcc", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 2199023255552 : i64}> : () -> i64
    %1 = "llvm.icmp"(%arg0, %0) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.return"(%1) : (i1) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

