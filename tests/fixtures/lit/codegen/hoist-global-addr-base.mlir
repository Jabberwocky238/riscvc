"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 4 : i64, dso_local, global_type = !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>, linkage = #llvm.linkage<common>, sym_name = "s", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %131 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %132 = "llvm.mlir.constant"() <{value = dense<0> : tensor<4100xi32>}> : () -> !llvm.array<4100 x i32>
    %133 = "llvm.mlir.constant"() <{value = dense<0> : tensor<40xi32>}> : () -> !llvm.array<40 x i32>
    %134 = "llvm.mlir.zero"() : () -> !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>
    "llvm.return"(%134) : (!llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>) -> ()
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 2 : i64, global_type = !llvm.array<6 x i16>, linkage = #llvm.linkage<external>, sym_name = "foo", unnamed_addr = 0 : i64, value = dense<[1, 2, 3, 4, 5, 0]> : tensor<6xi16>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, global_type = !llvm.array<1048576 x i8>, linkage = #llvm.linkage<external>, sym_name = "g", unnamed_addr = 0 : i64, value = dense<0> : tensor<1048576xi8>, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 1 : i64, global_type = !llvm.array<0 x i8>, linkage = #llvm.linkage<external>, sym_name = "bar", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, alignment = 8 : i64, global_type = !llvm.struct<"struct.foo", (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "f", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %128 = "llvm.mlir.zero"() : () -> !llvm.ptr
    %129 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %130 = "llvm.mlir.zero"() : () -> !llvm.struct<"struct.foo", (i32, ptr)>
    "llvm.return"(%130) : (!llvm.struct<"struct.foo", (i32, ptr)>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "multiple_stores", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %120 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %121 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %122 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %123 = "llvm.mlir.addressof"() <{global_name = @s}> : () -> !llvm.ptr
    %124 = "llvm.getelementptr"(%123, %122) <{elem_type = !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %125 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %126 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %127 = "llvm.getelementptr"(%123, %122) <{elem_type = !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%120, %124) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.store"(%125, %127) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "control_flow_with_mem_access", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %111 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %112 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %113 = "llvm.mlir.addressof"() <{global_name = @s}> : () -> !llvm.ptr
    %114 = "llvm.getelementptr"(%113, %112) <{elem_type = !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %115 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %116 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %117 = "llvm.getelementptr"(%113, %112) <{elem_type = !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %118 = "llvm.load"(%114) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %119 = "llvm.icmp"(%118, %112) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%119)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.store"(%115, %117) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "big_offset_neg_addi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %107 = "llvm.mlir.constant"() <{value = 73568 : i32}> : () -> i32
    %108 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %109 = "llvm.mlir.addressof"() <{global_name = @g}> : () -> !llvm.ptr
    %110 = "llvm.getelementptr"(%109, %108, %107) <{elem_type = !llvm.array<1048576 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.return"(%110) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "big_offset_lui_tail", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %103 = "llvm.mlir.constant"() <{value = 524288 : i32}> : () -> i32
    %104 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %105 = "llvm.mlir.addressof"() <{global_name = @g}> : () -> !llvm.ptr
    %106 = "llvm.getelementptr"(%105, %104, %103) <{elem_type = !llvm.array<1048576 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.return"(%106) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, sym_name = "big_offset_neg_lui_tail", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %99 = "llvm.mlir.constant"() <{value = -8192 : i32}> : () -> i32
    %100 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %101 = "llvm.mlir.addressof"() <{global_name = @bar}> : () -> !llvm.ptr
    %102 = "llvm.getelementptr"(%101, %100, %99) <{elem_type = !llvm.array<0 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.return"(%102) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "big_offset_one_use", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %95 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %96 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %97 = "llvm.mlir.addressof"() <{global_name = @s}> : () -> !llvm.ptr
    %98 = "llvm.getelementptr"(%97, %96) <{elem_type = !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 5>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.return"(%98) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "small_offset_one_use", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %91 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %92 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %93 = "llvm.mlir.addressof"() <{global_name = @s}> : () -> !llvm.ptr
    %94 = "llvm.getelementptr"(%93, %92) <{elem_type = !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.return"(%94) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<ptr (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "control_flow_no_mem", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %81 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %82 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %83 = "llvm.mlir.addressof"() <{global_name = @s}> : () -> !llvm.ptr
    %84 = "llvm.getelementptr"(%83, %82) <{elem_type = !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %85 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %86 = "llvm.getelementptr"(%83, %82) <{elem_type = !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 3>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %87 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %88 = "llvm.getelementptr"(%83, %82) <{elem_type = !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %89 = "llvm.load"(%84) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %90 = "llvm.icmp"(%89, %82) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%90)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"(%88) : (!llvm.ptr) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%86) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "load_half", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %74 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %75 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %76 = "llvm.mlir.addressof"() <{global_name = @foo}> : () -> !llvm.ptr
    %77 = "llvm.getelementptr"(%76, %75, %74) <{elem_type = !llvm.array<6 x i16>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    %78 = "llvm.mlir.constant"() <{value = 140 : i16}> : () -> i16
    %79 = "llvm.load"(%77) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    %80 = "llvm.icmp"(%79, %78) <{predicate = 0 : i64}> : (i16, i16) -> i1
    "llvm.cond_br"(%80)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<tail>, callee = @abort, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
    "llvm.unreachable"() : () -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%75) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "abort", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "one_store", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %69 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %70 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %71 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %72 = "llvm.mlir.addressof"() <{global_name = @s}> : () -> !llvm.ptr
    %73 = "llvm.getelementptr"(%72, %71) <{elem_type = !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    "llvm.store"(%69, %73) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, sym_name = "neg_offset", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %65 = "llvm.mlir.constant"() <{value = -8191 : i32}> : () -> i32
    %66 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %67 = "llvm.mlir.addressof"() <{global_name = @bar}> : () -> !llvm.ptr
    %68 = "llvm.getelementptr"(%67, %66, %65) <{elem_type = !llvm.array<0 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i32) -> !llvm.ptr
    "llvm.return"(%68) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, sym_name = "neg_offset_not_simm32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %61 = "llvm.mlir.constant"() <{value = -2147485013 : i64}> : () -> i64
    %62 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %63 = "llvm.mlir.addressof"() <{global_name = @bar}> : () -> !llvm.ptr
    %64 = "llvm.getelementptr"(%63, %62, %61) <{elem_type = !llvm.array<0 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64) -> !llvm.ptr
    "llvm.return"(%64) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, sym_name = "offset_addi_addi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %57 = "llvm.mlir.constant"() <{value = 3211 : i64}> : () -> i64
    %58 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %59 = "llvm.mlir.addressof"() <{global_name = @bar}> : () -> !llvm.ptr
    %60 = "llvm.getelementptr"(%59, %58, %57) <{elem_type = !llvm.array<0 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64) -> !llvm.ptr
    "llvm.return"(%60) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, sym_name = "offset_addi_addi_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %53 = "llvm.mlir.constant"() <{value = -4000 : i64}> : () -> i64
    %54 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %55 = "llvm.mlir.addressof"() <{global_name = @bar}> : () -> !llvm.ptr
    %56 = "llvm.getelementptr"(%55, %54, %53) <{elem_type = !llvm.array<0 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64) -> !llvm.ptr
    "llvm.return"(%56) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, sym_name = "offset_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %49 = "llvm.mlir.constant"() <{value = 6424 : i64}> : () -> i64
    %50 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %51 = "llvm.mlir.addressof"() <{global_name = @bar}> : () -> !llvm.ptr
    %52 = "llvm.getelementptr"(%51, %50, %49) <{elem_type = !llvm.array<0 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64) -> !llvm.ptr
    "llvm.return"(%52) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr ()>, linkage = #llvm.linkage<external>, sym_name = "offset_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %45 = "llvm.mlir.constant"() <{value = 12848 : i64}> : () -> i64
    %46 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %47 = "llvm.mlir.addressof"() <{global_name = @bar}> : () -> !llvm.ptr
    %48 = "llvm.getelementptr"(%47, %46, %45) <{elem_type = !llvm.array<0 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64) -> !llvm.ptr
    "llvm.return"(%48) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "read_modify_write", unnamed_addr = 1 : i64, visibility_ = 0 : i64}> ({
    %38 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %39 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %40 = "llvm.mlir.addressof"() <{global_name = @s}> : () -> !llvm.ptr
    %41 = "llvm.getelementptr"(%40, %39) <{elem_type = !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %42 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %43 = "llvm.load"(%41) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %44 = "llvm.add"(%43, %42) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%44, %41) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rmw_with_control_flow", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %31 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %33 = "llvm.mlir.addressof"() <{global_name = @s}> : () -> !llvm.ptr
    %34 = "llvm.getelementptr"(%33, %32) <{elem_type = !llvm.struct<"struct.S", (array<40 x i32>, i32, i32, i32, array<4100 x i32>, i32, i32, i32)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 2>}> : (!llvm.ptr, i32) -> !llvm.ptr
    %35 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %36 = "llvm.load"(%34) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %37 = "llvm.icmp"(%36, %32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%37)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    "llvm.store"(%35, %34) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.br"()[^bb2] : () -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "self_store", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %27 = "llvm.mlir.addressof"() <{global_name = @f}> : () -> !llvm.ptr
    %28 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %30 = "llvm.getelementptr"(%27, %29) <{elem_type = !llvm.struct<"struct.foo", (i32, ptr)>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, 1>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.store"(%27, %30) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "store_addi_addi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %22 = "llvm.mlir.constant"() <{value = 10 : i8}> : () -> i8
    %23 = "llvm.mlir.constant"() <{value = 3211 : i64}> : () -> i64
    %24 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %25 = "llvm.mlir.addressof"() <{global_name = @bar}> : () -> !llvm.ptr
    %26 = "llvm.getelementptr"(%25, %24, %23) <{elem_type = !llvm.array<0 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64) -> !llvm.ptr
    "llvm.store"(%22, %26) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "store_addi_addi_neg", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %17 = "llvm.mlir.constant"() <{value = 10 : i8}> : () -> i8
    %18 = "llvm.mlir.constant"() <{value = -4000 : i64}> : () -> i64
    %19 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %20 = "llvm.mlir.addressof"() <{global_name = @bar}> : () -> !llvm.ptr
    %21 = "llvm.getelementptr"(%20, %19, %18) <{elem_type = !llvm.array<0 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64) -> !llvm.ptr
    "llvm.store"(%17, %21) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "store_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %12 = "llvm.mlir.constant"() <{value = 10 : i8}> : () -> i8
    %13 = "llvm.mlir.constant"() <{value = 6424 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %15 = "llvm.mlir.addressof"() <{global_name = @bar}> : () -> !llvm.ptr
    %16 = "llvm.getelementptr"(%15, %14, %13) <{elem_type = !llvm.array<0 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64) -> !llvm.ptr
    "llvm.store"(%12, %16) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "store_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %7 = "llvm.mlir.constant"() <{value = 10 : i8}> : () -> i8
    %8 = "llvm.mlir.constant"() <{value = 12848 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %10 = "llvm.mlir.addressof"() <{global_name = @bar}> : () -> !llvm.ptr
    %11 = "llvm.getelementptr"(%10, %9, %8) <{elem_type = !llvm.array<0 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64) -> !llvm.ptr
    "llvm.store"(%7, %11) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, dso_local, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rmw_addi_addi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 3211 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "llvm.mlir.addressof"() <{global_name = @bar}> : () -> !llvm.ptr
    %3 = "llvm.getelementptr"(%2, %1, %0) <{elem_type = !llvm.array<0 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i32, i64) -> !llvm.ptr
    %4 = "llvm.mlir.constant"() <{value = 10 : i8}> : () -> i8
    %5 = "llvm.load"(%3) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    %6 = "llvm.add"(%5, %4) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.store"(%6, %3) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.br"()[^bb1] : () -> ()
  ^bb1:  // pred: ^bb0
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

