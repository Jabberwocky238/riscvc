"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = !llvm.array<2 x struct<(i32, f32)>>, linkage = #llvm.linkage<external>, sym_name = "test_array_attr_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %55 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %56 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %57 = "llvm.mlir.undef"() : () -> !llvm.struct<(i32, f32)>
    %58 = "llvm.insertvalue"(%57, %56) <{position = array<i64: 0>}> : (!llvm.struct<(i32, f32)>, i32) -> !llvm.struct<(i32, f32)>
    %59 = "llvm.insertvalue"(%58, %55) <{position = array<i64: 1>}> : (!llvm.struct<(i32, f32)>, f32) -> !llvm.struct<(i32, f32)>
    %60 = "llvm.mlir.undef"() : () -> !llvm.array<2 x struct<(i32, f32)>>
    %61 = "llvm.insertvalue"(%60, %59) <{position = array<i64: 0>}> : (!llvm.array<2 x struct<(i32, f32)>>, !llvm.struct<(i32, f32)>) -> !llvm.array<2 x struct<(i32, f32)>>
    %62 = "llvm.insertvalue"(%61, %59) <{position = array<i64: 1>}> : (!llvm.array<2 x struct<(i32, f32)>>, !llvm.struct<(i32, f32)>) -> !llvm.array<2 x struct<(i32, f32)>>
    "llvm.return"(%62) : (!llvm.array<2 x struct<(i32, f32)>>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = !llvm.array<2 x array<3 x struct<(i32, f32)>>>, linkage = #llvm.linkage<external>, sym_name = "test_array_attr_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %19 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %20 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %21 = "llvm.mlir.undef"() : () -> !llvm.struct<(i32, f32)>
    %22 = "llvm.insertvalue"(%21, %20) <{position = array<i64: 0>}> : (!llvm.struct<(i32, f32)>, i32) -> !llvm.struct<(i32, f32)>
    %23 = "llvm.insertvalue"(%22, %19) <{position = array<i64: 1>}> : (!llvm.struct<(i32, f32)>, f32) -> !llvm.struct<(i32, f32)>
    %24 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %25 = "llvm.mlir.undef"() : () -> !llvm.struct<(i32, f32)>
    %26 = "llvm.insertvalue"(%25, %24) <{position = array<i64: 0>}> : (!llvm.struct<(i32, f32)>, i32) -> !llvm.struct<(i32, f32)>
    %27 = "llvm.insertvalue"(%26, %19) <{position = array<i64: 1>}> : (!llvm.struct<(i32, f32)>, f32) -> !llvm.struct<(i32, f32)>
    %28 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %29 = "llvm.mlir.undef"() : () -> !llvm.struct<(i32, f32)>
    %30 = "llvm.insertvalue"(%29, %28) <{position = array<i64: 0>}> : (!llvm.struct<(i32, f32)>, i32) -> !llvm.struct<(i32, f32)>
    %31 = "llvm.insertvalue"(%30, %19) <{position = array<i64: 1>}> : (!llvm.struct<(i32, f32)>, f32) -> !llvm.struct<(i32, f32)>
    %32 = "llvm.mlir.undef"() : () -> !llvm.array<3 x struct<(i32, f32)>>
    %33 = "llvm.insertvalue"(%32, %31) <{position = array<i64: 0>}> : (!llvm.array<3 x struct<(i32, f32)>>, !llvm.struct<(i32, f32)>) -> !llvm.array<3 x struct<(i32, f32)>>
    %34 = "llvm.insertvalue"(%33, %27) <{position = array<i64: 1>}> : (!llvm.array<3 x struct<(i32, f32)>>, !llvm.struct<(i32, f32)>) -> !llvm.array<3 x struct<(i32, f32)>>
    %35 = "llvm.insertvalue"(%34, %23) <{position = array<i64: 2>}> : (!llvm.array<3 x struct<(i32, f32)>>, !llvm.struct<(i32, f32)>) -> !llvm.array<3 x struct<(i32, f32)>>
    %36 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %37 = "llvm.mlir.undef"() : () -> !llvm.struct<(i32, f32)>
    %38 = "llvm.insertvalue"(%37, %36) <{position = array<i64: 0>}> : (!llvm.struct<(i32, f32)>, i32) -> !llvm.struct<(i32, f32)>
    %39 = "llvm.insertvalue"(%38, %19) <{position = array<i64: 1>}> : (!llvm.struct<(i32, f32)>, f32) -> !llvm.struct<(i32, f32)>
    %40 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %41 = "llvm.mlir.undef"() : () -> !llvm.struct<(i32, f32)>
    %42 = "llvm.insertvalue"(%41, %40) <{position = array<i64: 0>}> : (!llvm.struct<(i32, f32)>, i32) -> !llvm.struct<(i32, f32)>
    %43 = "llvm.insertvalue"(%42, %19) <{position = array<i64: 1>}> : (!llvm.struct<(i32, f32)>, f32) -> !llvm.struct<(i32, f32)>
    %44 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %45 = "llvm.mlir.undef"() : () -> !llvm.struct<(i32, f32)>
    %46 = "llvm.insertvalue"(%45, %44) <{position = array<i64: 0>}> : (!llvm.struct<(i32, f32)>, i32) -> !llvm.struct<(i32, f32)>
    %47 = "llvm.insertvalue"(%46, %19) <{position = array<i64: 1>}> : (!llvm.struct<(i32, f32)>, f32) -> !llvm.struct<(i32, f32)>
    %48 = "llvm.mlir.undef"() : () -> !llvm.array<3 x struct<(i32, f32)>>
    %49 = "llvm.insertvalue"(%48, %47) <{position = array<i64: 0>}> : (!llvm.array<3 x struct<(i32, f32)>>, !llvm.struct<(i32, f32)>) -> !llvm.array<3 x struct<(i32, f32)>>
    %50 = "llvm.insertvalue"(%49, %43) <{position = array<i64: 1>}> : (!llvm.array<3 x struct<(i32, f32)>>, !llvm.struct<(i32, f32)>) -> !llvm.array<3 x struct<(i32, f32)>>
    %51 = "llvm.insertvalue"(%50, %39) <{position = array<i64: 2>}> : (!llvm.array<3 x struct<(i32, f32)>>, !llvm.struct<(i32, f32)>) -> !llvm.array<3 x struct<(i32, f32)>>
    %52 = "llvm.mlir.undef"() : () -> !llvm.array<2 x array<3 x struct<(i32, f32)>>>
    %53 = "llvm.insertvalue"(%52, %51) <{position = array<i64: 0>}> : (!llvm.array<2 x array<3 x struct<(i32, f32)>>>, !llvm.array<3 x struct<(i32, f32)>>) -> !llvm.array<2 x array<3 x struct<(i32, f32)>>>
    %54 = "llvm.insertvalue"(%53, %35) <{position = array<i64: 1>}> : (!llvm.array<2 x array<3 x struct<(i32, f32)>>>, !llvm.array<3 x struct<(i32, f32)>>) -> !llvm.array<2 x array<3 x struct<(i32, f32)>>>
    "llvm.return"(%54) : (!llvm.array<2 x array<3 x struct<(i32, f32)>>>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<2 x struct<(ptr)>>, linkage = #llvm.linkage<internal>, sym_name = "test_array_attr_struct_with_ptr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %13 = "llvm.mlir.undef"() : () -> !llvm.struct<(ptr)>
    %14 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %15 = "llvm.mlir.zero"() : () -> !llvm.struct<(ptr)>
    %16 = "llvm.mlir.undef"() : () -> !llvm.array<2 x struct<(ptr)>>
    %17 = "llvm.insertvalue"(%16, %15) <{position = array<i64: 0>}> : (!llvm.array<2 x struct<(ptr)>>, !llvm.struct<(ptr)>) -> !llvm.array<2 x struct<(ptr)>>
    %18 = "llvm.insertvalue"(%17, %13) <{position = array<i64: 1>}> : (!llvm.array<2 x struct<(ptr)>>, !llvm.struct<(ptr)>) -> !llvm.array<2 x struct<(ptr)>>
    "llvm.return"(%18) : (!llvm.array<2 x struct<(ptr)>>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<3 x struct<(i32, f32)>>, linkage = #llvm.linkage<internal>, sym_name = "test_array_attr_struct_with_struct", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.undef"() : () -> !llvm.struct<(i32, f32)>
    %1 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %2 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "llvm.mlir.undef"() : () -> !llvm.struct<(i32, f32)>
    %4 = "llvm.insertvalue"(%3, %2) <{position = array<i64: 0>}> : (!llvm.struct<(i32, f32)>, i32) -> !llvm.struct<(i32, f32)>
    %5 = "llvm.insertvalue"(%4, %1) <{position = array<i64: 1>}> : (!llvm.struct<(i32, f32)>, f32) -> !llvm.struct<(i32, f32)>
    %6 = "llvm.mlir.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %7 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %8 = "llvm.mlir.zero"() : () -> !llvm.struct<(i32, f32)>
    %9 = "llvm.mlir.undef"() : () -> !llvm.array<3 x struct<(i32, f32)>>
    %10 = "llvm.insertvalue"(%9, %8) <{position = array<i64: 0>}> : (!llvm.array<3 x struct<(i32, f32)>>, !llvm.struct<(i32, f32)>) -> !llvm.array<3 x struct<(i32, f32)>>
    %11 = "llvm.insertvalue"(%10, %5) <{position = array<i64: 1>}> : (!llvm.array<3 x struct<(i32, f32)>>, !llvm.struct<(i32, f32)>) -> !llvm.array<3 x struct<(i32, f32)>>
    %12 = "llvm.insertvalue"(%11, %0) <{position = array<i64: 2>}> : (!llvm.array<3 x struct<(i32, f32)>>, !llvm.struct<(i32, f32)>) -> !llvm.array<3 x struct<(i32, f32)>>
    "llvm.return"(%12) : (!llvm.array<3 x struct<(i32, f32)>>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

