"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, constant, dso_local, global_type = !llvm.array<1 x i32>, linkage = #llvm.linkage<external>, section = ".eh_frame", sym_name = "__EH_FRAME_LIST_END__", unnamed_addr = 0 : i64, value = dense<0> : tensor<1xi32>, visibility_ = 1 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.array<1 x ptr>, linkage = #llvm.linkage<external>, section = ".ctors", sym_name = "__CTOR_LIST_END__", unnamed_addr = 0 : i64, visibility_ = 1 : i64}> ({
    %9 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %10 = "llvm.mlir.zero"() : () -> !llvm.array<1 x ptr>
    "llvm.return"(%10) : (!llvm.array<1 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.array<1 x ptr>, linkage = #llvm.linkage<external>, section = ".dtors", sym_name = "__DTOR_LIST_END__", unnamed_addr = 0 : i64, visibility_ = 1 : i64}> ({
    %7 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %8 = "llvm.mlir.zero"() : () -> !llvm.array<1 x ptr>
    "llvm.return"(%8) : (!llvm.array<1 x ptr>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = !llvm.array<3 x ptr>, linkage = #llvm.linkage<appending>, section = "llvm.metadata", sym_name = "llvm.compiler.used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.addressof"() <{global_name = @__EH_FRAME_LIST_END__}> : () -> !llvm.ptr
    %1 = "llvm.mlir.addressof"() <{global_name = @__DTOR_LIST_END__}> : () -> !llvm.ptr
    %2 = "llvm.mlir.addressof"() <{global_name = @__CTOR_LIST_END__}> : () -> !llvm.ptr
    %3 = "llvm.mlir.undef"() : () -> !llvm.array<3 x ptr>
    %4 = "llvm.insertvalue"(%3, %2) <{position = array<i64: 0>}> : (!llvm.array<3 x ptr>, !llvm.ptr) -> !llvm.array<3 x ptr>
    %5 = "llvm.insertvalue"(%4, %1) <{position = array<i64: 1>}> : (!llvm.array<3 x ptr>, !llvm.ptr) -> !llvm.array<3 x ptr>
    %6 = "llvm.insertvalue"(%5, %0) <{position = array<i64: 2>}> : (!llvm.array<3 x ptr>, !llvm.ptr) -> !llvm.array<3 x ptr>
    "llvm.return"(%6) : (!llvm.array<3 x ptr>) -> ()
  }) : () -> ()
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<error, "target-abi", "ilp32f">, #llvm.mlir.module_flag<min, "SmallDataLimit", 0 : i32>]}> : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<32> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 32>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 22.1.8", llvm.module_asm = [], llvm.target_triple = "riscv32-unknown-unknown-elf"} : () -> ()

