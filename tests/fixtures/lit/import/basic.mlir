"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, global_type = f64, linkage = #llvm.linkage<external>, sym_name = "global", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "fe", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 (i64)>, linkage = #llvm.linkage<internal>, passthrough = ["norecurse"], sym_name = "f1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %12 = "llvm.mlir.addressof"() <{global_name = @global}> : () -> !llvm.ptr
    %13 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %14 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %16 = "llvm.mlir.constant"() <{value = 43 : i32}> : () -> i32
    %17 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %18 = "llvm.inttoptr"(%arg2) : (i64) -> !llvm.ptr
    %19 = "llvm.ptrtoint"(%12) : (!llvm.ptr) -> i64
    %20 = "llvm.getelementptr"(%12, %13) <{elem_type = f64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %21 = "llvm.trunc"(%arg2) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %22 = "llvm.call"(%21) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @fe, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> f32
    %23 = "llvm.fptosi"(%22) : (f32) -> i32
    %24 = "llvm.icmp"(%23, %14) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%24)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%17) : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %25 = "llvm.or"(%24, %15) : (i1, i1) -> i1
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, garbageCollector = "statepoint-example", linkage = #llvm.linkage<external>, sym_name = "hasGCFunction", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "useFreezeOp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %4 = "llvm.mlir.constant"() <{value = 10 : i8}> : () -> i8
    %5 = "llvm.mlir.constant"() <{value = false}> : () -> i1
    %6 = "llvm.mlir.undef"() : () -> i1
    %7 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "llvm.freeze"(%arg1) : (i32) -> i32
    %9 = "llvm.add"(%4, %4) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %10 = "llvm.freeze"(%9) : (i8) -> i8
    %11 = "llvm.add"(%5, %6) <{overflowFlags = 1 : i32}> : (i1, i1) -> i1
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, ...)>, linkage = #llvm.linkage<external>, sym_name = "variadic_function", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.struct<"struct.va_list", (ptr)>}> : (i32) -> !llvm.ptr
    "llvm.intr.vastart"(%1) : (!llvm.ptr) -> ()
    %2 = "llvm.alloca"(%0) <{alignment = 8 : i64, elem_type = !llvm.ptr}> : (i32) -> !llvm.ptr
    "llvm.intr.vacopy"(%2, %1) : (!llvm.ptr, !llvm.ptr) -> ()
    %3 = "llvm.va_arg"(%2) : (!llvm.ptr) -> i32
    "llvm.intr.vaend"(%2) : (!llvm.ptr) -> ()
    "llvm.intr.vaend"(%1) : (!llvm.ptr) -> ()
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

