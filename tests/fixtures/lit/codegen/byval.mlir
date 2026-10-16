"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, global_type = !llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>, linkage = #llvm.linkage<external>, sym_name = "foo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %3 = "llvm.mlir.constant"() <{value = 5 : i8}> : () -> i8
    %4 = "llvm.mlir.constant"() <{value = 4 : i16}> : () -> i16
    %5 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %6 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %8 = "llvm.mlir.undef"() : () -> !llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>
    %9 = "llvm.insertvalue"(%8, %7) <{position = array<i64: 0>}> : (!llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>, i32) -> !llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>
    %10 = "llvm.insertvalue"(%9, %6) <{position = array<i64: 1>}> : (!llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>, i32) -> !llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>
    %11 = "llvm.insertvalue"(%10, %5) <{position = array<i64: 2>}> : (!llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>, i32) -> !llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>
    %12 = "llvm.insertvalue"(%11, %4) <{position = array<i64: 3>}> : (!llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>, i16) -> !llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>
    %13 = "llvm.insertvalue"(%12, %3) <{position = array<i64: 4>}> : (!llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>, i8) -> !llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>
    "llvm.return"(%13) : (!llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.byval = !llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>}], function_type = !llvm.func<i32 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "callee", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr):
    %2 = "llvm.load"(%arg0) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "caller", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.addressof"() <{global_name = @foo}> : () -> !llvm.ptr
    %1 = "llvm.call"(%0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, arg_attrs = [{llvm.byval = !llvm.struct<"struct.Foo", (i32, i32, i32, i16, i8)>}], callee = @callee, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> i32
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

