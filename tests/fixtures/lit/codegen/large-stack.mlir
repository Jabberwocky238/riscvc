"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "test", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %22 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %23 = "llvm.alloca"(%22) <{alignment = 4 : i64, elem_type = !llvm.array<305419896 x i8>}> : (i32) -> !llvm.ptr
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "test_emergency_spill_slot", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 80000 : i32}> : () -> i32
    %3 = "llvm.alloca"(%0) <{alignment = 4 : i64, elem_type = !llvm.array<100000 x i32>}> : (i32) -> !llvm.ptr
    %4 = "llvm.getelementptr"(%3, %1, %2) <{elem_type = !llvm.array<100000 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %5 = "llvm.inline_asm"() <{asm_dialect = 0 : i64, asm_string = "nop", constraints = "=r,=r,=r,=r,=r,=r,=r,=r,=r,=r,=r,=r,=r,=r,=r", has_side_effects, tail_call_kind = #llvm.tailcallkind<tail>}> : () -> !llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>
    %6 = "llvm.extractvalue"(%5) <{position = array<i64: 0>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %7 = "llvm.extractvalue"(%5) <{position = array<i64: 1>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %8 = "llvm.extractvalue"(%5) <{position = array<i64: 2>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %9 = "llvm.extractvalue"(%5) <{position = array<i64: 3>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %10 = "llvm.extractvalue"(%5) <{position = array<i64: 4>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %11 = "llvm.extractvalue"(%5) <{position = array<i64: 5>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %12 = "llvm.extractvalue"(%5) <{position = array<i64: 6>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %13 = "llvm.extractvalue"(%5) <{position = array<i64: 7>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %14 = "llvm.extractvalue"(%5) <{position = array<i64: 8>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %15 = "llvm.extractvalue"(%5) <{position = array<i64: 9>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %16 = "llvm.extractvalue"(%5) <{position = array<i64: 10>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %17 = "llvm.extractvalue"(%5) <{position = array<i64: 11>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %18 = "llvm.extractvalue"(%5) <{position = array<i64: 12>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %19 = "llvm.extractvalue"(%5) <{position = array<i64: 13>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    %20 = "llvm.extractvalue"(%5) <{position = array<i64: 14>}> : (!llvm.struct<(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>) -> i32
    "llvm.store"(%arg0, %4) <{alignment = 4 : i64, ordering = 0 : i64, volatile_}> : (i32, !llvm.ptr) -> ()
    %21 = "llvm.inline_asm"(%6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20) <{asm_dialect = 0 : i64, asm_string = "nop", constraints = "r,r,r,r,r,r,r,r,r,r,r,r,r,r,r", has_side_effects, tail_call_kind = #llvm.tailcallkind<tail>}> : (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) -> !llvm.void
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

