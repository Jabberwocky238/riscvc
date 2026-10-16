"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, constant, dso_local, global_type = !llvm.ptr, linkage = #llvm.linkage<external>, sym_name = "_ZTIi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}, {}, {}, {}], function_type = !llvm.func<void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "_Z3fooiiiiiiiiiiPi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<ptr (i64)>, linkage = #llvm.linkage<external>, sym_name = "__cxa_allocate_exception", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "__cxa_throw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, frame_pointer = #llvm.framePointerKind<all>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, personality = @__gxx_personality_v0, res_attrs = [{llvm.signext}], sym_name = "foo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.poison"() : () -> i32
    %1 = "llvm.mlir.addressof"() <{global_name = @_ZTIi}> : () -> !llvm.ptr
    "llvm.invoke"(%0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0)[^bb3, ^bb1] <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}, {llvm.signext}, {}, {}, {}], callee = @_Z3fooiiiiiiiiiiPi, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 11, 0, 0, 0>}> : (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) -> ()
  ^bb1:  // pred: ^bb0
    %2 = "llvm.landingpad"(%1) <{cleanup}> : (!llvm.ptr) -> !llvm.struct<(ptr, i32)>
    %3 = "llvm.extractvalue"(%2) <{position = array<i64: 1>}> : (!llvm.struct<(ptr, i32)>) -> i32
    %4 = "llvm.intr.eh.typeid.for"(%1) : (!llvm.ptr) -> i32
    %5 = "llvm.icmp"(%3, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%5)[^bb2, ^bb4] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // pred: ^bb1
    %6 = "llvm.extractvalue"(%2) <{position = array<i64: 0>}> : (!llvm.struct<(ptr, i32)>) -> !llvm.ptr
    %7 = "llvm.call"(%6) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__cxa_begin_catch, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (!llvm.ptr) -> !llvm.ptr
    %8 = "llvm.load"(%7) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @__cxa_end_catch, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.return"(%8) : (i32) -> ()
  ^bb3:  // pred: ^bb0
    "llvm.unreachable"() : () -> ()
  ^bb4:  // pred: ^bb1
    "llvm.resume"(%2) : (!llvm.struct<(ptr, i32)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (...)>, linkage = #llvm.linkage<external>, sym_name = "__gxx_personality_v0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr)>, linkage = #llvm.linkage<external>, sym_name = "__cxa_begin_catch", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "__cxa_end_catch", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

