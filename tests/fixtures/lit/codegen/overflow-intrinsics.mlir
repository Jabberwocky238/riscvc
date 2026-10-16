"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["ssp"], sym_name = "uaddo1_overflow_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg82: i64, %arg83: i64):
    %146 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %147 = "llvm.add"(%arg83, %arg82) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %148 = "llvm.icmp"(%147, %arg82) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %149 = "llvm.select"(%148, %arg83, %146) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%149) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["ssp"], sym_name = "uaddo1_math_overflow_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg79: i64, %arg80: i64, %arg81: !llvm.ptr):
    %142 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %143 = "llvm.add"(%arg80, %arg79) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %144 = "llvm.icmp"(%143, %arg79) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %145 = "llvm.select"(%144, %arg80, %142) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.store"(%143, %arg81) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%145) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["ssp"], sym_name = "uaddo2_overflow_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg77: i64, %arg78: i64):
    %138 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %139 = "llvm.add"(%arg78, %arg77) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %140 = "llvm.icmp"(%139, %arg78) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %141 = "llvm.select"(%140, %arg78, %138) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%141) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["ssp"], sym_name = "uaddo2_math_overflow_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg74: i64, %arg75: i64, %arg76: !llvm.ptr):
    %134 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %135 = "llvm.add"(%arg75, %arg74) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %136 = "llvm.icmp"(%135, %arg75) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %137 = "llvm.select"(%136, %arg75, %134) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.store"(%135, %arg76) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%137) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["ssp"], sym_name = "uaddo3_overflow_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: i64, %arg73: i64):
    %130 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %131 = "llvm.add"(%arg73, %arg72) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %132 = "llvm.icmp"(%arg73, %131) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %133 = "llvm.select"(%132, %arg73, %130) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%133) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["ssp"], sym_name = "uaddo3_math_overflow_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: i64, %arg70: i64, %arg71: !llvm.ptr):
    %126 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %127 = "llvm.add"(%arg70, %arg69) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %128 = "llvm.icmp"(%arg70, %127) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %129 = "llvm.select"(%128, %arg70, %126) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.store"(%127, %arg71) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%129) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i1)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["ssp"], sym_name = "uaddo4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: i64, %arg67: i64, %arg68: i1):
    %121 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %122 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %123 = "llvm.add"(%arg67, %arg66) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %124 = "llvm.icmp"(%arg67, %123) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%arg68)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %125 = "llvm.select"(%124, %arg67, %122) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%125) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%121) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, ptr, i1)>, linkage = #llvm.linkage<external>, no_unwind, passthrough = ["ssp"], sym_name = "uaddo5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: i64, %arg63: i64, %arg64: !llvm.ptr, %arg65: i1):
    %116 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %117 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %118 = "llvm.add"(%arg63, %arg62) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%118, %arg64) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %119 = "llvm.icmp"(%arg63, %118) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%arg65)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %120 = "llvm.select"(%119, %arg63, %117) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%120) : (i64) -> ()
  ^bb2:  // pred: ^bb0
    "llvm.return"(%116) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "uaddo6_xor", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i64, %arg61: i64):
    %111 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %112 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %113 = "llvm.xor"(%arg60, %111) : (i64, i64) -> i64
    %114 = "llvm.icmp"(%113, %arg61) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %115 = "llvm.select"(%114, %arg61, %112) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%115) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "uaddo6_xor_commuted", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i64, %arg59: i64):
    %106 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %107 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %108 = "llvm.xor"(%arg58, %106) : (i64, i64) -> i64
    %109 = "llvm.icmp"(%108, %arg59) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %110 = "llvm.select"(%109, %arg59, %107) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%110) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i64)>, linkage = #llvm.linkage<external>, sym_name = "use", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "uaddo6_xor_multi_use", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i64, %arg57: i64):
    %101 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %102 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %103 = "llvm.xor"(%101, %arg56) : (i64, i64) -> i64
    %104 = "llvm.icmp"(%103, %arg57) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %105 = "llvm.select"(%104, %arg57, %102) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.call"(%103) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @use, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> ()
    "llvm.return"(%105) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "uaddo6_xor_op_after_XOR", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i32, %arg55: !llvm.ptr):
    %95 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %96 = "llvm.mlir.constant"() <{value = true}> : () -> i1
    %97 = "llvm.xor"(%arg54, %95) : (i32, i32) -> i32
    %98 = "llvm.load"(%arg55) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    %99 = "llvm.icmp"(%98, %97) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %100 = "llvm.xor"(%99, %96) : (i1, i1) -> i1
    "llvm.return"(%100) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "uaddo_i64_increment", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i64, %arg53: !llvm.ptr):
    %91 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %92 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %93 = "llvm.add"(%arg52, %91) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %94 = "llvm.icmp"(%93, %92) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.store"(%93, %arg53) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%94) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i8, ptr)>, linkage = #llvm.linkage<external>, sym_name = "uaddo_i8_increment_noncanonical_1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i8, %arg51: !llvm.ptr):
    %87 = "llvm.mlir.constant"() <{value = 1 : i8}> : () -> i8
    %88 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %89 = "llvm.add"(%87, %arg50) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %90 = "llvm.icmp"(%89, %88) <{predicate = 0 : i64}> : (i8, i8) -> i1
    "llvm.store"(%89, %arg51) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"(%90) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "uaddo_i32_increment_noncanonical_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32, %arg49: !llvm.ptr):
    %83 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %84 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %85 = "llvm.add"(%arg48, %83) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %86 = "llvm.icmp"(%84, %85) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.store"(%85, %arg49) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%86) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16, ptr)>, linkage = #llvm.linkage<external>, sym_name = "uaddo_i16_increment_noncanonical_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i16, %arg47: !llvm.ptr):
    %79 = "llvm.mlir.constant"() <{value = 1 : i16}> : () -> i16
    %80 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %81 = "llvm.add"(%79, %arg46) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %82 = "llvm.icmp"(%80, %81) <{predicate = 0 : i64}> : (i16, i16) -> i1
    "llvm.store"(%81, %arg47) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"(%82) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "uaddo_i64_increment_alt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i64, %arg45: !llvm.ptr):
    %75 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %76 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %77 = "llvm.add"(%arg44, %75) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%77, %arg45) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %78 = "llvm.icmp"(%arg44, %76) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%78) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "uaddo_i64_increment_alt_dom", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i64, %arg43: !llvm.ptr):
    %71 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %72 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %73 = "llvm.icmp"(%arg42, %71) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %74 = "llvm.add"(%arg42, %72) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%74, %arg43) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%73) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "uaddo_i32_decrement_alt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32, %arg41: !llvm.ptr):
    %67 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %68 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %69 = "llvm.add"(%arg40, %67) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%69, %arg41) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %70 = "llvm.icmp"(%arg40, %68) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.return"(%70) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "uaddo_i64_decrement_alt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i64, %arg39: !llvm.ptr):
    %63 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %64 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %65 = "llvm.add"(%arg38, %63) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%65, %arg39) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %66 = "llvm.icmp"(%arg38, %64) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.return"(%66) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "uaddo_i64_decrement_alt_dom", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i64, %arg37: !llvm.ptr):
    %59 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %60 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %61 = "llvm.icmp"(%arg36, %59) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %62 = "llvm.add"(%arg36, %60) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%62, %arg37) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%61) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i42, ptr)>, linkage = #llvm.linkage<external>, sym_name = "uaddo_i42_increment_illegal_type", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i42, %arg35: !llvm.ptr):
    %55 = "llvm.mlir.constant"() <{value = 1 : i42}> : () -> i42
    %56 = "llvm.mlir.constant"() <{value = 0 : i42}> : () -> i42
    %57 = "llvm.add"(%arg34, %55) <{overflowFlags = 0 : i32}> : (i42, i42) -> i42
    %58 = "llvm.icmp"(%57, %56) <{predicate = 0 : i64}> : (i42, i42) -> i1
    "llvm.store"(%57, %arg35) <{alignment = 4 : i64, ordering = 0 : i64}> : (i42, !llvm.ptr) -> ()
    "llvm.return"(%58) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "usubo_ult_i64_overflow_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i64, %arg32: i64, %arg33: !llvm.ptr):
    %53 = "llvm.sub"(%arg31, %arg32) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %54 = "llvm.icmp"(%arg31, %arg32) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.return"(%54) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "usubo_ult_i64_math_overflow_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i64, %arg29: i64, %arg30: !llvm.ptr):
    %51 = "llvm.sub"(%arg28, %arg29) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%51, %arg30) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    %52 = "llvm.icmp"(%arg28, %arg29) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.return"(%52) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "usubo_ugt_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32, %arg26: i32, %arg27: !llvm.ptr):
    %49 = "llvm.icmp"(%arg26, %arg25) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %50 = "llvm.sub"(%arg25, %arg26) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%50, %arg27) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%49) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i8, ptr)>, linkage = #llvm.linkage<external>, sym_name = "usubo_ugt_constant_op0_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i8, %arg24: !llvm.ptr):
    %46 = "llvm.mlir.constant"() <{value = 42 : i8}> : () -> i8
    %47 = "llvm.sub"(%46, %arg23) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %48 = "llvm.icmp"(%arg23, %46) <{predicate = 8 : i64}> : (i8, i8) -> i1
    "llvm.store"(%47, %arg24) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"(%48) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16, ptr)>, linkage = #llvm.linkage<external>, sym_name = "usubo_ult_constant_op0_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i16, %arg22: !llvm.ptr):
    %43 = "llvm.mlir.constant"() <{value = 43 : i16}> : () -> i16
    %44 = "llvm.sub"(%43, %arg21) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %45 = "llvm.icmp"(%43, %arg21) <{predicate = 6 : i64}> : (i16, i16) -> i1
    "llvm.store"(%44, %arg22) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"(%45) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i16, ptr)>, linkage = #llvm.linkage<external>, sym_name = "usubo_ult_constant_op1_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i16, %arg20: !llvm.ptr):
    %39 = "llvm.mlir.constant"() <{value = -44 : i16}> : () -> i16
    %40 = "llvm.mlir.constant"() <{value = 44 : i16}> : () -> i16
    %41 = "llvm.add"(%arg19, %39) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %42 = "llvm.icmp"(%arg19, %40) <{predicate = 6 : i64}> : (i16, i16) -> i1
    "llvm.store"(%41, %arg20) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"(%42) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i8, ptr)>, linkage = #llvm.linkage<external>, sym_name = "usubo_ugt_constant_op1_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i8, %arg18: !llvm.ptr):
    %35 = "llvm.mlir.constant"() <{value = 45 : i8}> : () -> i8
    %36 = "llvm.mlir.constant"() <{value = -45 : i8}> : () -> i8
    %37 = "llvm.icmp"(%35, %arg17) <{predicate = 8 : i64}> : (i8, i8) -> i1
    %38 = "llvm.add"(%arg17, %36) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    "llvm.store"(%38, %arg18) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"(%37) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "usubo_eq_constant1_op1_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32, %arg16: !llvm.ptr):
    %31 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %33 = "llvm.add"(%arg15, %31) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %34 = "llvm.icmp"(%arg15, %32) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.store"(%33, %arg16) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%34) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "usubo_ne_constant0_op1_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32, %arg14: !llvm.ptr):
    %28 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %29 = "llvm.sub"(%28, %arg13) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %30 = "llvm.icmp"(%arg13, %28) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.store"(%29, %arg14) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"(%30) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i1)>, linkage = #llvm.linkage<external>, sym_name = "call", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "usubo_ult_sub_dominates_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64, %arg10: i64, %arg11: !llvm.ptr, %arg12: i1):
    "llvm.cond_br"(%arg12)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %26 = "llvm.sub"(%arg9, %arg10) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%26, %arg11) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.cond_br"(%arg12)[^bb3, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%arg12) : (i1) -> ()
  ^bb3:  // pred: ^bb1
    %27 = "llvm.icmp"(%arg9, %arg10) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.return"(%27) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64, i64, ptr, i1)>, linkage = #llvm.linkage<external>, sym_name = "usubo_ult_cmp_dominates_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: i1):
    "llvm.cond_br"(%arg8)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %24 = "llvm.icmp"(%arg5, %arg6) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.call"(%24) <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @call, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 1, 0>}> : (i1) -> ()
    "llvm.cond_br"(%24)[^bb3, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb2:  // 2 preds: ^bb0, ^bb1
    "llvm.return"(%arg8) : (i1) -> ()
  ^bb3:  // pred: ^bb1
    %25 = "llvm.sub"(%arg5, %arg6) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%25, %arg7) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.return"(%24) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "bar", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %20 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %21 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %22 = "llvm.icmp"(%20, %21) <{predicate = 0 : i64}> : (i64, i64) -> i1
    %23 = "llvm.zext"(%22) : (i1) -> i8
    "llvm.unreachable"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "foo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %17 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %18 = "llvm.add"(%17, %17) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %19 = "llvm.trunc"(%18) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.unreachable"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 ()>, linkage = #llvm.linkage<external>, sym_name = "bar2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %14 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %15 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %16 = "llvm.icmp"(%14, %15) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%16) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr)>, linkage = #llvm.linkage<external>, sym_name = "foo2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr):
    %11 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %12 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %13 = "llvm.add"(%11, %12) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "PR41129", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr):
    %4 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %6 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %7 = "llvm.load"(%arg3) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    %8 = "llvm.icmp"(%7, %4) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.cond_br"(%8)[^bb2, ^bb1] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %9 = "llvm.and"(%7, %5) : (i64, i64) -> i64
    "llvm.store"(%9, %arg3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb2:  // pred: ^bb0
    %10 = "llvm.add"(%7, %6) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.store"(%10, %arg3) <{alignment = 4 : i64, ordering = 0 : i64}> : (i64, !llvm.ptr) -> ()
    "llvm.br"()[^bb3] : () -> ()
  ^bb3:  // 2 preds: ^bb1, ^bb2
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16, ptr)>, linkage = #llvm.linkage<external>, sym_name = "overflow_not_used", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i16, %arg1: i16, %arg2: !llvm.ptr):
    %0 = "llvm.mlir.constant"() <{value = 42 : i16}> : () -> i16
    %1 = "llvm.add"(%arg1, %arg0) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %2 = "llvm.icmp"(%1, %arg1) <{predicate = 6 : i64}> : (i16, i16) -> i1
    %3 = "llvm.select"(%2, %arg1, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.store"(%1, %arg2) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"(%3) : (i16) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

