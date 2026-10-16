"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<5 x i8>, linkage = #llvm.linkage<private>, sym_name = "str0", unnamed_addr = 2 : i64, value = "aaaa\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.array<5 x i8>, linkage = #llvm.linkage<private>, sym_name = "str1", unnamed_addr = 2 : i64, value = "bbbb\00", visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = !llvm.array<2 x struct<"my_struct", (i32, ptr)>>, linkage = #llvm.linkage<external>, sym_name = "g", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.addressof"() <{global_name = @str1}> : () -> !llvm.ptr
    %3 = "llvm.getelementptr"(%2, %1, %0) <{elem_type = !llvm.array<5 x i8>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %4 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %5 = "llvm.mlir.undef"() : () -> !llvm.struct<"my_struct", (i32, ptr)>
    %6 = "llvm.insertvalue"(%5, %4) <{position = array<i64: 0>}> : (!llvm.struct<"my_struct", (i32, ptr)>, i32) -> !llvm.struct<"my_struct", (i32, ptr)>
    %7 = "llvm.insertvalue"(%6, %3) <{position = array<i64: 1>}> : (!llvm.struct<"my_struct", (i32, ptr)>, !llvm.ptr) -> !llvm.struct<"my_struct", (i32, ptr)>
    %8 = "llvm.mlir.addressof"() <{global_name = @str0}> : () -> !llvm.ptr
    %9 = "llvm.getelementptr"(%8, %1, %0) <{elem_type = !llvm.array<5 x i8>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %10 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %11 = "llvm.mlir.undef"() : () -> !llvm.struct<"my_struct", (i32, ptr)>
    %12 = "llvm.insertvalue"(%11, %10) <{position = array<i64: 0>}> : (!llvm.struct<"my_struct", (i32, ptr)>, i32) -> !llvm.struct<"my_struct", (i32, ptr)>
    %13 = "llvm.insertvalue"(%12, %9) <{position = array<i64: 1>}> : (!llvm.struct<"my_struct", (i32, ptr)>, !llvm.ptr) -> !llvm.struct<"my_struct", (i32, ptr)>
    %14 = "llvm.mlir.undef"() : () -> !llvm.array<2 x struct<"my_struct", (i32, ptr)>>
    %15 = "llvm.insertvalue"(%14, %13) <{position = array<i64: 0>}> : (!llvm.array<2 x struct<"my_struct", (i32, ptr)>>, !llvm.struct<"my_struct", (i32, ptr)>) -> !llvm.array<2 x struct<"my_struct", (i32, ptr)>>
    %16 = "llvm.insertvalue"(%15, %7) <{position = array<i64: 1>}> : (!llvm.array<2 x struct<"my_struct", (i32, ptr)>>, !llvm.struct<"my_struct", (i32, ptr)>) -> !llvm.array<2 x struct<"my_struct", (i32, ptr)>>
    "llvm.return"(%16) : (!llvm.array<2 x struct<"my_struct", (i32, ptr)>>) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

