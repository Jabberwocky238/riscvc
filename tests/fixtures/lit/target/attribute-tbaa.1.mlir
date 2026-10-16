#tbaa_root = #llvm.tbaa_root<id = "Simple C/C++ TBAA">
#tbaa_type_desc = #llvm.tbaa_type_desc<id = "omnipotent char", members = {<#tbaa_root, 0>}>
#tbaa_type_desc1 = #llvm.tbaa_type_desc<id = "float", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc2 = #llvm.tbaa_type_desc<id = "int", members = {<#tbaa_type_desc, 0>}>
#tbaa_type_desc3 = #llvm.tbaa_type_desc<id = "agg2_t", members = {<#tbaa_type_desc1, 0>, <#tbaa_type_desc1, 4>}>
#tbaa_type_desc4 = #llvm.tbaa_type_desc<id = "agg1_t", members = {<#tbaa_type_desc2, 0>, <#tbaa_type_desc2, 4>}>
#tbaa_tag = #llvm.tbaa_tag<base_type = #tbaa_type_desc3, access_type = #tbaa_type_desc1, offset = 0>
#tbaa_tag1 = #llvm.tbaa_tag<base_type = #tbaa_type_desc4, access_type = #tbaa_type_desc2, offset = 0>
"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "foo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "tbaa2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 42 : i8}> : () -> i8
    %2 = "llvm.getelementptr"(%arg1, %0) <{elem_type = !llvm.struct<"struct.agg2_t", (f32, f32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %3 = "llvm.load"(%2) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag]}> : (!llvm.ptr) -> f32
    %4 = "llvm.fptosi"(%3) : (f32) -> i32
    %5 = "llvm.getelementptr"(%arg0, %0) <{elem_type = !llvm.struct<"struct.agg1_t", (i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 0>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%4, %5) <{alignment = 4 : i64, ordering = 0 : i64, tbaa = [#tbaa_tag1]}> : (i32, !llvm.ptr) -> ()
    %6 = "llvm.atomicrmw"(%5, %4) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 2 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr, i32) -> i32
    %7 = "llvm.cmpxchg"(%5, %6, %4) <{alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 6 : i64, tbaa = [#tbaa_tag1]}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    "llvm.intr.memcpy"(%arg1, %arg1, %0) <{isVolatile = false, tbaa = [#tbaa_tag1]}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    "llvm.intr.memset"(%arg1, %1, %0) <{isVolatile = false, tbaa = [#tbaa_tag1]}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.call"(%arg1) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @foo, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>, tbaa = [#tbaa_tag1]}> : (!llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

