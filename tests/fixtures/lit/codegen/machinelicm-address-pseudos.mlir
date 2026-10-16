"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "l", unnamed_addr = 0 : i64, value = 0 : i32, visibility_ = 2 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "g", unnamed_addr = 0 : i64, value = 0 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "ie", thread_local_, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "gd", thread_local_, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "test_lla", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %21 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %22 = "llvm.mlir.addressof"() <{global_name = @l}> : () -> !llvm.ptr
    %23 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.br"(%21)[^bb1] : (i32) -> ()
  ^bb1(%24: i32):  // 2 preds: ^bb0, ^bb1
    %25 = "llvm.load"(%22) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %26 = "llvm.add"(%24, %23) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %27 = "llvm.icmp"(%26, %arg3) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%27, %26)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "test_la", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %14 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %15 = "llvm.mlir.addressof"() <{global_name = @g}> : () -> !llvm.ptr
    %16 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.br"(%14)[^bb1] : (i32) -> ()
  ^bb1(%17: i32):  // 2 preds: ^bb0, ^bb1
    %18 = "llvm.load"(%15) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %19 = "llvm.add"(%17, %16) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %20 = "llvm.icmp"(%19, %arg2) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%20, %19)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "test_la_tls_ie", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %7 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "llvm.mlir.addressof"() <{global_name = @ie}> : () -> !llvm.ptr
    %9 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.br"(%7)[^bb1] : (i32) -> ()
  ^bb1(%10: i32):  // 2 preds: ^bb0, ^bb1
    %11 = "llvm.load"(%8) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %12 = "llvm.add"(%10, %9) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %13 = "llvm.icmp"(%12, %arg1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%13, %12)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_la_tls_gd", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.addressof"() <{global_name = @gd}> : () -> !llvm.ptr
    %2 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    "llvm.br"(%0)[^bb1] : (i32) -> ()
  ^bb1(%3: i32):  // 2 preds: ^bb0, ^bb1
    %4 = "llvm.load"(%1) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> i32
    %5 = "llvm.add"(%3, %2) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %6 = "llvm.icmp"(%5, %arg0) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%6, %5)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

