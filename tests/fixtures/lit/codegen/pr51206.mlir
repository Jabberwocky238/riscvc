"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, global_type = i8, linkage = #llvm.linkage<external>, sym_name = "global", unnamed_addr = 0 : i64, value = 0 : i8, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "global.1", unnamed_addr = 0 : i64, value = 0 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, global_type = i8, linkage = #llvm.linkage<external>, sym_name = "global.2", unnamed_addr = 0 : i64, value = 0 : i8, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "global.3", unnamed_addr = 0 : i64, value = 0 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "wobble", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.addressof"() <{global_name = @global}> : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "llvm.mlir.addressof"() <{global_name = @global.1}> : () -> !llvm.ptr
    %3 = "llvm.mlir.addressof"() <{global_name = @global.2}> : () -> !llvm.ptr
    %4 = "llvm.mlir.constant"() <{value = 5 : i16}> : () -> i16
    %5 = "llvm.mlir.addressof"() <{global_name = @global.3}> : () -> !llvm.ptr
    %6 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %7 = "llvm.mlir.undef"() : () -> i32
    %8 = "llvm.load"(%0) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %9 = "llvm.zext"(%8) : (i8) -> i32
    %10 = "llvm.add"(%9, %1) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    "llvm.store"(%10, %2) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %11 = "llvm.load"(%3) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %12 = "llvm.zext"(%11) : (i8) -> i32
    %13 = "llvm.mul"(%10, %12) <{overflowFlags = 3 : i32}> : (i32, i32) -> i32
    %14 = "llvm.trunc"(%13) <{overflowFlags = 0 : i32}> : (i32) -> i16
    %15 = "llvm.udiv"(%14, %4) : (i16, i16) -> i16
    %16 = "llvm.zext"(%15) : (i16) -> i32
    "llvm.store"(%16, %5) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %17 = "llvm.icmp"(%13, %6) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%17)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %18 = "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @quux, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>, res_attrs = [{llvm.signext}], var_callee_type = !llvm.func<i32 (...)>}> : () -> i32
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (...)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "quux", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

