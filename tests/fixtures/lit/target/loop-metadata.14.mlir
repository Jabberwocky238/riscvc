#access_group = #llvm.access_group<id = distinct[0]<>>
#access_group1 = #llvm.access_group<id = distinct[1]<>>
#loop_interleave = #llvm.loop_interleave<count = 1 : i32>
#loop_licm = #llvm.loop_licm<disable = true>
#loop_pipeline = #llvm.loop_pipeline<disable = true, initiationinterval = 2 : i32>
#loop_unroll = #llvm.loop_unroll<disable = true>
#loop_annotation = #llvm.loop_annotation<interleave = #loop_interleave, unroll = #loop_unroll, licm = #loop_licm, pipeline = #loop_pipeline, parallelAccesses = #access_group, #access_group1>
"builtin.module"() ({
  "llvm.module_flags"() <{flags = [#llvm.mlir.module_flag<warning, "Debug Info Version", 3 : i32>]}> : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "foo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "loopOptions", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 42 : i8}> : () -> i8
    %2 = "llvm.alloca"(%arg0) <{alignment = 4 : i64, elem_type = i32}> : (i32) -> !llvm.ptr
    "llvm.br"(%0)[^bb1] : (i32) -> ()
  ^bb1(%3: i32):  // 2 preds: ^bb0, ^bb2
    %4 = "llvm.icmp"(%3, %arg0) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%4)[^bb2, ^bb3] <{loop_annotation = #loop_annotation, operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %5 = "llvm.add"(%3, %arg1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %6 = "llvm.load"(%2) <{access_groups = [#access_group, #access_group1], alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.store"(%6, %2) <{access_groups = [#access_group, #access_group1], alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %7 = "llvm.atomicrmw"(%2, %6) <{access_groups = [#access_group, #access_group1], alignment = 4 : i64, bin_op = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    %8 = "llvm.cmpxchg"(%2, %6, %7) <{access_groups = [#access_group, #access_group1], alignment = 4 : i64, failure_ordering = 2 : i64, success_ordering = 6 : i64}> : (!llvm.ptr, i32, i32) -> !llvm.struct<(i32, i1)>
    "llvm.intr.memcpy"(%2, %2, %0) <{access_groups = [#access_group, #access_group1], isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    "llvm.intr.memset"(%2, %1, %0) <{access_groups = [#access_group, #access_group1], isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    "llvm.call"(%arg0) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, access_groups = [#access_group, #access_group1], callee = @foo, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i32) -> ()
    "llvm.br"(%5)[^bb1] <{loop_annotation = #loop_annotation}> : (i32) -> ()
  ^bb3:  // pred: ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

