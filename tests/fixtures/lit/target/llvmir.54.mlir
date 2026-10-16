"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = !llvm.struct<(i32, i64, array<3 x i8>)>, linkage = #llvm.linkage<linkonce>, sym_name = "partially_zeroinit_aggregate", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %12 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %13 = "llvm.mlir.constant"() <{value = dense<0> : tensor<3xi8>}> : () -> !llvm.array<3 x i8>
    %14 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %16 = "llvm.mlir.undef"() : () -> !llvm.struct<(i32, i64, array<3 x i8>)>
    %17 = "llvm.insertvalue"(%16, %15) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i64, array<3 x i8>)>, i32) -> !llvm.struct<(i32, i64, array<3 x i8>)>
    %18 = "llvm.insertvalue"(%17, %14) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i64, array<3 x i8>)>, i64) -> !llvm.struct<(i32, i64, array<3 x i8>)>
    %19 = "llvm.insertvalue"(%18, %13) <{position = array<i64: 2>}> : (!llvm.struct<(i32, i64, array<3 x i8>)>, !llvm.array<3 x i8>) -> !llvm.struct<(i32, i64, array<3 x i8>)>
    "llvm.return"(%19) : (!llvm.struct<(i32, i64, array<3 x i8>)>) -> ()
  }) : () -> ()
  "llvm.linker_options"() <{options = ["/DEFAULTLIB:", "libcmt"]}> : () -> ()
  "llvm.linker_options"() <{options = ["/DEFAULTLIB:", "libcmtd"]}> : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "zeroinit_complex_local_aggregate", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %2 = "llvm.mlir.zero"() : () -> !llvm.array<6 x ptr>
    %3 = "llvm.mlir.zero"() : () -> !llvm.array<2 x ptr>
    %4 = "llvm.mlir.zero"() : () -> vector<4x!llvm.ptr>
    %5 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %6 = "llvm.mlir.zero"() : () -> !llvm.struct<(f64, vector<4x!llvm.ptr>, array<2 x ptr>)>
    %7 = "llvm.mlir.zero"() : () -> !llvm.array<3 x struct<(f64, vector<4x!llvm.ptr>, array<2 x ptr>)>>
    %8 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %9 = "llvm.mlir.zero"() : () -> !llvm.struct<(i32, array<3 x struct<(f64, vector<4x!llvm.ptr>, array<2 x ptr>)>>, array<6 x ptr>)>
    %10 = "llvm.mlir.zero"() : () -> !llvm.array<1000 x struct<(i32, array<3 x struct<(f64, vector<4x!llvm.ptr>, array<2 x ptr>)>>, array<6 x ptr>)>>
    %11 = "llvm.alloca"(%0) <{alignment = 32 : i64, elem_type = !llvm.array<1000 x struct<(i32, array<3 x struct<(f64, vector<4x!llvm.ptr>, array<2 x ptr>)>>, array<6 x ptr>)>>}> : (i64) -> !llvm.ptr
    "llvm.store"(%10, %11) <{alignment = 32 : i64, ordering = 0 : i64}> : (!llvm.array<1000 x struct<(i32, array<3 x struct<(f64, vector<4x!llvm.ptr>, array<2 x ptr>)>>, array<6 x ptr>)>>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

