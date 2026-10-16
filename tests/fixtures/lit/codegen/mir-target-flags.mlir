"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "g_e", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, dso_local, global_type = i32, linkage = #llvm.linkage<internal>, sym_name = "g_i", unnamed_addr = 0 : i64, value = 0 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "t_un", thread_local_, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "t_ld", thread_local_, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "t_ie", thread_local_, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "t_le", thread_local_, unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.addressof"() <{global_name = @g_e}> : () -> !llvm.ptr
    %1 = "llvm.mlir.addressof"() <{global_name = @g_i}> : () -> !llvm.ptr
    %2 = "llvm.mlir.addressof"() <{global_name = @t_un}> : () -> !llvm.ptr
    %3 = "llvm.mlir.addressof"() <{global_name = @t_ld}> : () -> !llvm.ptr
    %4 = "llvm.mlir.addressof"() <{global_name = @t_ie}> : () -> !llvm.ptr
    %5 = "llvm.mlir.addressof"() <{global_name = @t_le}> : () -> !llvm.ptr
    %6 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %7 = "llvm.load"(%0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %8 = "llvm.load"(%1) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %9 = "llvm.load"(%2) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %10 = "llvm.load"(%3) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %11 = "llvm.load"(%4) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %12 = "llvm.load"(%5) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %13 = "llvm.bitcast"(%6) : (i32) -> i32
    %14 = "llvm.add"(%13, %arg0) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %15 = "llvm.add"(%14, %7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %16 = "llvm.add"(%15, %8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %17 = "llvm.add"(%16, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %18 = "llvm.add"(%17, %10) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %19 = "llvm.add"(%18, %11) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %20 = "llvm.add"(%19, %12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %21 = "llvm.call"(%20) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @callee, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

