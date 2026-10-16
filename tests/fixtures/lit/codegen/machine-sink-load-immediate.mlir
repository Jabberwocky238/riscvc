"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (ptr, ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sink_li", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: !llvm.ptr):
    %33 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %34 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %35 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %36 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %37 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %38 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %39 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %40 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %41 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @toupper, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> i32
    %42 = "llvm.icmp"(%arg4, %33) <{predicate = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> i1
    "llvm.cond_br"(%42, %34)[^bb13, ^bb1] <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (i1, i1) -> ()
  ^bb1:  // 3 preds: ^bb0, ^bb6, ^bb6
    "llvm.switch"(%35, %34)[^bb7, ^bb2, ^bb2, ^bb13] <{case_operand_segments = array<i32: 0, 0, 1>, case_values = dense<[1, 9, 0]> : vector<3xi8>, operandSegmentSizes = array<i32: 1, 0, 1>}> : (i8, i1) -> ()
  ^bb2:  // 2 preds: ^bb1, ^bb1
    "llvm.switch"(%35, %33, %34)[^bb12, ^bb3, ^bb3, ^bb13] <{case_operand_segments = array<i32: 0, 0, 1>, case_values = dense<[1, 9, 0]> : vector<3xi8>, operandSegmentSizes = array<i32: 1, 1, 1>}> : (i8, !llvm.ptr, i1) -> ()
  ^bb3:  // 2 preds: ^bb2, ^bb2
    "llvm.switch"(%35, %34)[^bb8, ^bb4, ^bb4, ^bb13] <{case_operand_segments = array<i32: 0, 0, 1>, case_values = dense<[32, 1, 0]> : vector<3xi8>, operandSegmentSizes = array<i32: 1, 0, 1>}> : (i8, i1) -> ()
  ^bb4:  // 2 preds: ^bb3, ^bb3
    "llvm.switch"(%35, %34)[^bb9, ^bb5, ^bb5, ^bb13] <{case_operand_segments = array<i32: 0, 0, 1>, case_values = dense<[32, 1, 0]> : vector<3xi8>, operandSegmentSizes = array<i32: 1, 0, 1>}> : (i8, i1) -> ()
  ^bb5:  // 2 preds: ^bb4, ^bb4
    "llvm.switch"(%35, %34)[^bb10, ^bb6, ^bb6, ^bb13] <{case_operand_segments = array<i32: 0, 0, 1>, case_values = dense<[1, 9, 0]> : vector<3xi8>, operandSegmentSizes = array<i32: 1, 0, 1>}> : (i8, i1) -> ()
  ^bb6:  // 2 preds: ^bb5, ^bb5
    "llvm.switch"(%35, %34)[^bb11, ^bb1, ^bb1, ^bb13] <{case_operand_segments = array<i32: 0, 0, 1>, case_values = dense<[1, 9, 0]> : vector<3xi8>, operandSegmentSizes = array<i32: 1, 0, 1>}> : (i8, i1) -> ()
  ^bb7:  // pred: ^bb1
    "llvm.br"(%33)[^bb12] : (!llvm.ptr) -> ()
  ^bb8:  // pred: ^bb3
    %43 = "llvm.getelementptr"(%arg5, %38) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.br"(%43)[^bb12] : (!llvm.ptr) -> ()
  ^bb9:  // pred: ^bb4
    %44 = "llvm.getelementptr"(%arg5, %37) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.br"(%44)[^bb12] : (!llvm.ptr) -> ()
  ^bb10:  // pred: ^bb5
    "llvm.br"(%arg4)[^bb12] : (!llvm.ptr) -> ()
  ^bb11:  // pred: ^bb6
    %45 = "llvm.getelementptr"(%arg5, %36) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.br"(%45)[^bb12] : (!llvm.ptr) -> ()
  ^bb12(%46: !llvm.ptr):  // 6 preds: ^bb2, ^bb7, ^bb8, ^bb9, ^bb10, ^bb11
    %47 = "llvm.call"(%33, %33, %46) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 3, 0>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> !llvm.ptr
    %48 = "llvm.call"(%33, %33, %41, %39) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 4, 0>}> : (!llvm.ptr, !llvm.ptr, i32, i64) -> !llvm.ptr
    "llvm.br"(%40)[^bb13] : (i1) -> ()
  ^bb13(%49: i1):  // 8 preds: ^bb0, ^bb1, ^bb2, ^bb3, ^bb4, ^bb5, ^bb6, ^bb12
    "llvm.return"(%49) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "toupper", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "overlap_live_ranges", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: i32):
    %26 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %27 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %28 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %29 = "llvm.icmp"(%arg3, %26) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%29, %27)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb1:  // pred: ^bb0
    %30 = "llvm.getelementptr"(%arg2, %28) <{elem_type = i8, noWrapFlags = 7 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %31 = "llvm.load"(%30) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.br"(%31)[^bb2] : (i32) -> ()
  ^bb2(%32: i32):  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%32) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "switch_dispatch", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i8):
    %19 = "llvm.mlir.constant"() <{value = 54 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 644 : i32}> : () -> i32
    %21 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 53 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    "llvm.switch"(%arg1)[^bb7, ^bb1, ^bb2, ^bb3, ^bb4, ^bb5, ^bb6] <{case_operand_segments = array<i32: 0, 0, 0, 0, 0, 0>, case_values = dense<[32, 12, 70, -22, 13, 0]> : vector<6xi8>, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i8) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.br"(%24)[^bb8] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.br"(%23)[^bb8] : (i32) -> ()
  ^bb3:  // pred: ^bb0
    "llvm.br"(%22)[^bb8] : (i32) -> ()
  ^bb4:  // pred: ^bb0
    "llvm.br"(%21)[^bb8] : (i32) -> ()
  ^bb5:  // pred: ^bb0
    "llvm.br"(%20)[^bb8] : (i32) -> ()
  ^bb6:  // pred: ^bb0
    "llvm.br"(%19)[^bb8] : (i32) -> ()
  ^bb7:  // pred: ^bb0
    "llvm.br"(%21)[^bb8] : (i32) -> ()
  ^bb8(%25: i32):  // 7 preds: ^bb1, ^bb2, ^bb3, ^bb4, ^bb5, ^bb6, ^bb7
    "llvm.call"(%25) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @use, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> ()
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "branch_dispatch", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i8):
    %0 = "llvm.mlir.constant"() <{value = 32 : i8}> : () -> i8
    %1 = "llvm.mlir.constant"() <{value = 13 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 12 : i8}> : () -> i8
    %3 = "llvm.mlir.constant"() <{value = 53 : i32}> : () -> i32
    %4 = "llvm.mlir.constant"() <{value = 70 : i8}> : () -> i8
    %5 = "llvm.mlir.constant"() <{value = 33 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = -22 : i8}> : () -> i8
    %7 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %9 = "llvm.mlir.constant"() <{value = 644 : i32}> : () -> i32
    %10 = "llvm.mlir.constant"() <{value = 5 : i8}> : () -> i8
    %11 = "llvm.mlir.constant"() <{value = 54 : i32}> : () -> i32
    %12 = "llvm.icmp"(%arg0, %0) <{predicate = 1 : i64}> : (i8, i8) -> i1
    "llvm.cond_br"(%12, %1)[^bb1, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb1:  // pred: ^bb0
    %13 = "llvm.icmp"(%arg0, %2) <{predicate = 1 : i64}> : (i8, i8) -> i1
    "llvm.cond_br"(%13, %3)[^bb2, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb2:  // pred: ^bb1
    %14 = "llvm.icmp"(%arg0, %4) <{predicate = 1 : i64}> : (i8, i8) -> i1
    "llvm.cond_br"(%14, %5)[^bb3, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb3:  // pred: ^bb2
    %15 = "llvm.icmp"(%arg0, %6) <{predicate = 1 : i64}> : (i8, i8) -> i1
    "llvm.cond_br"(%15, %7)[^bb4, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb4:  // pred: ^bb3
    %16 = "llvm.icmp"(%arg0, %8) <{predicate = 1 : i64}> : (i8, i8) -> i1
    "llvm.cond_br"(%16, %9)[^bb5, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb5:  // pred: ^bb4
    %17 = "llvm.icmp"(%arg0, %10) <{predicate = 1 : i64}> : (i8, i8) -> i1
    "llvm.cond_br"(%17, %11)[^bb6, ^bb7] <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (i1, i32) -> ()
  ^bb6:  // pred: ^bb5
    "llvm.br"(%7)[^bb7] : (i32) -> ()
  ^bb7(%18: i32):  // 7 preds: ^bb0, ^bb1, ^bb2, ^bb3, ^bb4, ^bb5, ^bb6
    "llvm.call"(%18) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @use, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> ()
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "use", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

