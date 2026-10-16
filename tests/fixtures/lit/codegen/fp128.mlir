"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 16 : i64, global_type = f128, linkage = #llvm.linkage<external>, sym_name = "x", unnamed_addr = 1 : i64, value = 0x7FFF0000000000000000000000000000 : f128, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 16 : i64, global_type = f128, linkage = #llvm.linkage<external>, sym_name = "y", unnamed_addr = 1 : i64, value = 0x7FFF0000000000000000000000000000 : f128, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_load_and_cmp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %9 = "llvm.mlir.addressof"() <{global_name = @x}> : () -> !llvm.ptr
    %10 = "llvm.mlir.addressof"() <{global_name = @y}> : () -> !llvm.ptr
    %11 = "llvm.load"(%9) <{alignment = 16 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f128
    %12 = "llvm.load"(%10) <{alignment = 16 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f128
    %13 = "llvm.fcmp"(%11, %12) <{fastmathFlags = #llvm.fastmath<none>, predicate = 13 : i64}> : (f128, f128) -> i1
    %14 = "llvm.zext"(%13) : (i1) -> i32
    "llvm.return"(%14) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_add_and_fptosi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %3 = "llvm.mlir.addressof"() <{global_name = @x}> : () -> !llvm.ptr
    %4 = "llvm.mlir.addressof"() <{global_name = @y}> : () -> !llvm.ptr
    %5 = "llvm.load"(%3) <{alignment = 16 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f128
    %6 = "llvm.load"(%4) <{alignment = 16 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f128
    %7 = "llvm.fadd"(%5, %6) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    %8 = "llvm.fptosi"(%7) : (f128) -> i32
    "llvm.return"(%8) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f128 (f128, f128)>, linkage = #llvm.linkage<external>, sym_name = "fmaximum", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f128, %arg4: f128):
    %2 = "llvm.intr.maximum"(%arg3, %arg4) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    "llvm.return"(%2) : (f128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f128 (f128, f128)>, linkage = #llvm.linkage<external>, sym_name = "fminimum", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f128, %arg2: f128):
    %1 = "llvm.intr.minimum"(%arg1, %arg2) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    "llvm.return"(%1) : (f128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f128, f128)> (f128)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "modf", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f128):
    %0 = "llvm.call_intrinsic"(%arg0) <{fastmathFlags = #llvm.fastmath<none>, intrin = "llvm.modf.f128", op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (f128) -> !llvm.struct<(f128, f128)>
    "llvm.return"(%0) : (!llvm.struct<(f128, f128)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<struct<(f128, f128)> (f128)>, linkage = #llvm.linkage<external>, memory_effects = #llvm.memory_effects<other = none, argMem = none, inaccessibleMem = none, errnoMem = none, targetMem0 = none, targetMem1 = none>, no_unwind, passthrough = ["nocallback", "nofree", "nosync", "speculatable"], sym_name = "llvm.modf.f128", unnamed_addr = 0 : i64, visibility_ = 0 : i64, will_return}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

