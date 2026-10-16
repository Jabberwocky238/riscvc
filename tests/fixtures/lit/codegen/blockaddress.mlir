"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = !llvm.ptr, linkage = #llvm.linkage<external>, sym_name = "addr", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %3 = "llvm.mlir.zero"() : () -> !llvm.ptr
    "llvm.return"(%3) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "test_blockaddress", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.blockaddress"() <{block_addr = #llvm.blockaddress<function = @test_blockaddress, tag = <id = 1>>}> : () -> !llvm.ptr
    %1 = "llvm.mlir.addressof"() <{global_name = @addr}> : () -> !llvm.ptr
    "llvm.store"(%0, %1) <{alignment = 8 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr, !llvm.ptr) -> ()
    %2 = "llvm.load"(%1) <{alignment = 8 : i64, ordering = 0 : i64, volatile_}> : (!llvm.ptr) -> !llvm.ptr
    "llvm.indirectbr"(%2)[^bb1] <{indbr_operand_segments = array<i32: 0>}> : (!llvm.ptr) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.blocktag"() <{tag = #llvm.blocktag<id = 1>}> : () -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

