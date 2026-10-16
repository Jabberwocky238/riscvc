"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_clear_mask_i64_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %72 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %73 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %74 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %75 = "llvm.and"(%arg12, %72) : (i64, i64) -> i64
    %76 = "llvm.icmp"(%75, %73) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%76, %arg12)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i64) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%74)[^bb2] : (i64) -> ()
  ^bb2(%77: i64):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%77) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_set_mask_i64_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i64):
    %66 = "llvm.mlir.constant"() <{value = 2147483648 : i64}> : () -> i64
    %67 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %68 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %69 = "llvm.and"(%arg11, %66) : (i64, i64) -> i64
    %70 = "llvm.icmp"(%69, %67) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%70, %arg11)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i64) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%68)[^bb2] : (i64) -> ()
  ^bb2(%71: i64):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%71) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_clear_mask_i64_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64):
    %60 = "llvm.mlir.constant"() <{value = 32768 : i64}> : () -> i64
    %61 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %62 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %63 = "llvm.and"(%arg10, %60) : (i64, i64) -> i64
    %64 = "llvm.icmp"(%63, %61) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%64, %arg10)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i64) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%62)[^bb2] : (i64) -> ()
  ^bb2(%65: i64):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%65) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_set_mask_i64_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64):
    %54 = "llvm.mlir.constant"() <{value = 32768 : i64}> : () -> i64
    %55 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %56 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %57 = "llvm.and"(%arg9, %54) : (i64, i64) -> i64
    %58 = "llvm.icmp"(%57, %55) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%58, %arg9)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i64) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%56)[^bb2] : (i64) -> ()
  ^bb2(%59: i64):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%59) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_clear_mask_i64_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %48 = "llvm.mlir.constant"() <{value = 128 : i64}> : () -> i64
    %49 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %50 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %51 = "llvm.and"(%arg8, %48) : (i64, i64) -> i64
    %52 = "llvm.icmp"(%51, %49) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%52, %arg8)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i64) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%50)[^bb2] : (i64) -> ()
  ^bb2(%53: i64):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%53) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_set_mask_i64_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %42 = "llvm.mlir.constant"() <{value = 128 : i64}> : () -> i64
    %43 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %44 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %45 = "llvm.and"(%arg7, %42) : (i64, i64) -> i64
    %46 = "llvm.icmp"(%45, %43) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%46, %arg7)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i64) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%44)[^bb2] : (i64) -> ()
  ^bb2(%47: i64):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%47) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_clear_mask_i32_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %36 = "llvm.mlir.constant"() <{value = 32768 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %38 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %39 = "llvm.and"(%arg6, %36) : (i32, i32) -> i32
    %40 = "llvm.icmp"(%39, %37) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%40, %arg6)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%38)[^bb2] : (i32) -> ()
  ^bb2(%41: i32):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_set_mask_i32_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %30 = "llvm.mlir.constant"() <{value = 32768 : i32}> : () -> i32
    %31 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %33 = "llvm.and"(%arg5, %30) : (i32, i32) -> i32
    %34 = "llvm.icmp"(%33, %31) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%34, %arg5)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%32)[^bb2] : (i32) -> ()
  ^bb2(%35: i32):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_clear_mask_i32_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %24 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %27 = "llvm.and"(%arg4, %24) : (i32, i32) -> i32
    %28 = "llvm.icmp"(%27, %25) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%28, %arg4)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%26)[^bb2] : (i32) -> ()
  ^bb2(%29: i32):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_set_mask_i32_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %18 = "llvm.mlir.constant"() <{value = 128 : i32}> : () -> i32
    %19 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %21 = "llvm.and"(%arg3, %18) : (i32, i32) -> i32
    %22 = "llvm.icmp"(%21, %19) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%22, %arg3)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%20)[^bb2] : (i32) -> ()
  ^bb2(%23: i32):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_clear_mask_i16_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i16):
    %12 = "llvm.mlir.constant"() <{value = 128 : i16}> : () -> i16
    %13 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %14 = "llvm.mlir.constant"() <{value = 42 : i16}> : () -> i16
    %15 = "llvm.and"(%arg2, %12) : (i16, i16) -> i16
    %16 = "llvm.icmp"(%15, %13) <{predicate = 0 : i64}> : (i16, i16) -> i1
    "llvm.cond_br"(%16, %arg2)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i16) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%14)[^bb2] : (i16) -> ()
  ^bb2(%17: i16):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%17) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_set_mask_i16_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i16):
    %6 = "llvm.mlir.constant"() <{value = 128 : i16}> : () -> i16
    %7 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %8 = "llvm.mlir.constant"() <{value = 42 : i16}> : () -> i16
    %9 = "llvm.and"(%arg1, %6) : (i16, i16) -> i16
    %10 = "llvm.icmp"(%9, %7) <{predicate = 1 : i64}> : (i16, i16) -> i1
    "llvm.cond_br"(%10, %arg1)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i16) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%8)[^bb2] : (i16) -> ()
  ^bb2(%11: i16):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%11) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_set_mask_i16_i7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i16):
    %0 = "llvm.mlir.constant"() <{value = 64 : i16}> : () -> i16
    %1 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %2 = "llvm.mlir.constant"() <{value = 42 : i16}> : () -> i16
    %3 = "llvm.and"(%arg0, %0) : (i16, i16) -> i16
    %4 = "llvm.icmp"(%3, %1) <{predicate = 1 : i64}> : (i16, i16) -> i1
    "llvm.cond_br"(%4, %arg0)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i16) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%2)[^bb2] : (i16) -> ()
  ^bb2(%5: i16):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%5) : (i16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

