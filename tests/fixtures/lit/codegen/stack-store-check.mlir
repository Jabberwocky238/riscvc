"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 16 : i64, global_type = f128, linkage = #llvm.linkage<external>, sym_name = "U", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 16 : i64, global_type = f128, linkage = #llvm.linkage<external>, sym_name = "Y1", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 16 : i64, global_type = f128, linkage = #llvm.linkage<external>, sym_name = "X", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 16 : i64, global_type = f128, linkage = #llvm.linkage<external>, sym_name = "Y", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 16 : i64, global_type = f128, linkage = #llvm.linkage<external>, sym_name = "T", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 16 : i64, global_type = f128, linkage = #llvm.linkage<external>, sym_name = "S", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "main", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.addressof"() <{global_name = @U}> : () -> !llvm.ptr
    %1 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f128}> : () -> f128
    %2 = "llvm.mlir.addressof"() <{global_name = @Y1}> : () -> !llvm.ptr
    %3 = "llvm.mlir.addressof"() <{global_name = @X}> : () -> !llvm.ptr
    %4 = "llvm.mlir.addressof"() <{global_name = @S}> : () -> !llvm.ptr
    %5 = "llvm.mlir.addressof"() <{global_name = @T}> : () -> !llvm.ptr
    %6 = "llvm.mlir.addressof"() <{global_name = @Y}> : () -> !llvm.ptr
    %7 = "llvm.mlir.constant"() <{value = -5.000000e-01 : f128}> : () -> f128
    %8 = "llvm.load"(%0) <{alignment = 16 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f128
    %9 = "llvm.fsub"(%1, %8) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    %10 = "llvm.fsub"(%9, %8) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    %11 = "llvm.fadd"(%8, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    %12 = "llvm.load"(%2) <{alignment = 16 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> f128
    %13 = "llvm.fmul"(%9, %12) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    %14 = "llvm.fadd"(%8, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    %15 = "llvm.fsub"(%1, %14) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    "llvm.store"(%15, %3) <{alignment = 16 : i64, ordering = 0 : i64}> : (f128, !llvm.ptr) -> ()
    %16 = "llvm.fmul"(%10, %12) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    %17 = "llvm.fmul"(%1, %11) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    "llvm.store"(%17, %4) <{alignment = 16 : i64, ordering = 0 : i64}> : (f128, !llvm.ptr) -> ()
    %18 = "llvm.fsub"(%13, %10) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    "llvm.store"(%18, %5) <{alignment = 16 : i64, ordering = 0 : i64}> : (f128, !llvm.ptr) -> ()
    %19 = "llvm.fadd"(%1, %16) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    "llvm.store"(%19, %6) <{alignment = 16 : i64, ordering = 0 : i64}> : (f128, !llvm.ptr) -> ()
    %20 = "llvm.fmul"(%1, %12) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    %21 = "llvm.fadd"(%20, %7) <{fastmathFlags = #llvm.fastmath<none>}> : (f128, f128) -> f128
    "llvm.store"(%21, %2) <{alignment = 16 : i64, ordering = 0 : i64}> : (f128, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

