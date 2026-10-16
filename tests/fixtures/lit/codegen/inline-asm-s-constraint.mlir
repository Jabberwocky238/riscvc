"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "var", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, global_type = !llvm.array<2 x array<2 x i32>>, linkage = #llvm.linkage<external>, sym_name = "a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "test", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %3 = "llvm.mlir.addressof"() <{global_name = @var}> : () -> !llvm.ptr
    %4 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %6 = "llvm.mlir.addressof"() <{global_name = @a}> : () -> !llvm.ptr
    %7 = "llvm.getelementptr"(%6, %5, %4, %4) <{elem_type = !llvm.array<2 x array<2 x i32>>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64, i64) -> !llvm.ptr
    %8 = "llvm.mlir.addressof"() <{global_name = @test}> : () -> !llvm.ptr
    %9 = "llvm.inline_asm"(%3, %7, %8) <{asm_dialect = 0 : i64, asm_string = "// $0 $1 $2", constraints = "s,s,s,~{dirflag},~{fpsr},~{flags}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> !llvm.void
    %10 = "llvm.inline_asm"(%3, %7, %8) <{asm_dialect = 0 : i64, asm_string = "// $0 $1 $2", constraints = "S,S,S,~{dirflag},~{fpsr},~{flags}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> !llvm.void
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, sym_name = "test_label", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.blockaddress"() <{block_addr = #llvm.blockaddress<function = @test_label, tag = <id = 1>>}> : () -> !llvm.ptr
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.blocktag"() <{tag = #llvm.blocktag<id = 1>}> : () -> ()
    %1 = "llvm.inline_asm"(%0) <{asm_dialect = 0 : i64, asm_string = "// $0", constraints = "s,~{dirflag},~{fpsr},~{flags}", has_side_effects, tail_call_kind = #llvm.tailcallkind<none>}> : (!llvm.ptr) -> !llvm.void
    %2 = "llvm.inline_asm"(%0) <{asm_dialect = 0 : i64, asm_string = "lui $0, %hi($1)\0Aaddi $0, $0, %lo($1)", constraints = "=r,S", tail_call_kind = #llvm.tailcallkind<tail>}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.return"(%2) : (!llvm.ptr) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

