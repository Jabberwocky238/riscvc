"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_small_pos_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32):
    %161 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %162 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %163 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %164 = "llvm.icmp"(%arg23, %161) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%164)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %165 = "llvm.shl"(%arg23, %163) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%165)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %166 = "llvm.add"(%arg23, %162) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%166)[^bb3] : (i32) -> ()
  ^bb3(%167: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%167) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_small_pos_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32):
    %154 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %155 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %156 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %157 = "llvm.icmp"(%arg22, %154) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%157)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %158 = "llvm.shl"(%arg22, %156) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%158)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %159 = "llvm.add"(%arg22, %155) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%159)[^bb3] : (i32) -> ()
  ^bb3(%160: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%160) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_small_neg_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32):
    %147 = "llvm.mlir.constant"() <{value = -20 : i32}> : () -> i32
    %148 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %149 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %150 = "llvm.icmp"(%arg21, %147) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%150)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %151 = "llvm.shl"(%arg21, %149) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%151)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %152 = "llvm.add"(%arg21, %148) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%152)[^bb3] : (i32) -> ()
  ^bb3(%153: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%153) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_small_neg_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32):
    %140 = "llvm.mlir.constant"() <{value = -20 : i32}> : () -> i32
    %141 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %142 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %143 = "llvm.icmp"(%arg20, %140) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%143)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %144 = "llvm.shl"(%arg20, %142) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%144)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %145 = "llvm.add"(%arg20, %141) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%145)[^bb3] : (i32) -> ()
  ^bb3(%146: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%146) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_small_edge_pos_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32):
    %133 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %134 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %135 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %136 = "llvm.icmp"(%arg19, %133) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%136)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %137 = "llvm.shl"(%arg19, %135) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%137)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %138 = "llvm.add"(%arg19, %134) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%138)[^bb3] : (i32) -> ()
  ^bb3(%139: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%139) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_small_edge_pos_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %126 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %127 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %128 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %129 = "llvm.icmp"(%arg18, %126) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%129)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %130 = "llvm.shl"(%arg18, %128) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%130)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %131 = "llvm.add"(%arg18, %127) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%131)[^bb3] : (i32) -> ()
  ^bb3(%132: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%132) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_small_edge_neg_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %119 = "llvm.mlir.constant"() <{value = -32 : i32}> : () -> i32
    %120 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %121 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %122 = "llvm.icmp"(%arg17, %119) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%122)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %123 = "llvm.shl"(%arg17, %121) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%123)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %124 = "llvm.add"(%arg17, %120) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%124)[^bb3] : (i32) -> ()
  ^bb3(%125: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%125) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_small_edge_neg_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %112 = "llvm.mlir.constant"() <{value = -32 : i32}> : () -> i32
    %113 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %114 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %115 = "llvm.icmp"(%arg16, %112) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%115)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %116 = "llvm.shl"(%arg16, %114) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%116)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %117 = "llvm.add"(%arg16, %113) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%117)[^bb3] : (i32) -> ()
  ^bb3(%118: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%118) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_medium_ledge_pos_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %105 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %106 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %107 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %108 = "llvm.icmp"(%arg15, %105) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%108)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %109 = "llvm.shl"(%arg15, %107) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%109)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %110 = "llvm.add"(%arg15, %106) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%110)[^bb3] : (i32) -> ()
  ^bb3(%111: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%111) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_medium_ledge_pos_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %98 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %99 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %100 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %101 = "llvm.icmp"(%arg14, %98) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%101)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %102 = "llvm.shl"(%arg14, %100) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%102)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %103 = "llvm.add"(%arg14, %99) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%103)[^bb3] : (i32) -> ()
  ^bb3(%104: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%104) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_medium_ledge_neg_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %91 = "llvm.mlir.constant"() <{value = -33 : i32}> : () -> i32
    %92 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %93 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %94 = "llvm.icmp"(%arg13, %91) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%94)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %95 = "llvm.shl"(%arg13, %93) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%95)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %96 = "llvm.add"(%arg13, %92) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%96)[^bb3] : (i32) -> ()
  ^bb3(%97: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%97) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_medium_ledge_neg_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %84 = "llvm.mlir.constant"() <{value = -33 : i32}> : () -> i32
    %85 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %86 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %87 = "llvm.icmp"(%arg12, %84) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%87)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %88 = "llvm.shl"(%arg12, %86) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%88)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %89 = "llvm.add"(%arg12, %85) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%89)[^bb3] : (i32) -> ()
  ^bb3(%90: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%90) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_medium_pos_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %77 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %78 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %79 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %80 = "llvm.icmp"(%arg11, %77) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%80)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %81 = "llvm.shl"(%arg11, %79) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%81)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %82 = "llvm.add"(%arg11, %78) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%82)[^bb3] : (i32) -> ()
  ^bb3(%83: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%83) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_medium_pos_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %70 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %71 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %72 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %73 = "llvm.icmp"(%arg10, %70) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%73)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %74 = "llvm.shl"(%arg10, %72) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%74)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %75 = "llvm.add"(%arg10, %71) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%75)[^bb3] : (i32) -> ()
  ^bb3(%76: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%76) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_medium_neg_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %63 = "llvm.mlir.constant"() <{value = -63 : i32}> : () -> i32
    %64 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %65 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %66 = "llvm.icmp"(%arg9, %63) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%66)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %67 = "llvm.shl"(%arg9, %65) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%67)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %68 = "llvm.add"(%arg9, %64) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%68)[^bb3] : (i32) -> ()
  ^bb3(%69: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_medium_neg_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %56 = "llvm.mlir.constant"() <{value = -63 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %58 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %59 = "llvm.icmp"(%arg8, %56) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%59)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %60 = "llvm.shl"(%arg8, %58) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%60)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %61 = "llvm.add"(%arg8, %57) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%61)[^bb3] : (i32) -> ()
  ^bb3(%62: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_medium_bedge_pos_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %49 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %50 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %52 = "llvm.icmp"(%arg7, %49) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%52)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %53 = "llvm.shl"(%arg7, %51) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%53)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %54 = "llvm.add"(%arg7, %50) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%54)[^bb3] : (i32) -> ()
  ^bb3(%55: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%55) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_medium_bedge_pos_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %42 = "llvm.mlir.constant"() <{value = 2047 : i32}> : () -> i32
    %43 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %45 = "llvm.icmp"(%arg6, %42) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%45)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %46 = "llvm.shl"(%arg6, %44) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%46)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %47 = "llvm.add"(%arg6, %43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%47)[^bb3] : (i32) -> ()
  ^bb3(%48: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%48) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_medium_bedge_neg_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %35 = "llvm.mlir.constant"() <{value = -2047 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %37 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %38 = "llvm.icmp"(%arg5, %35) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%38)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %39 = "llvm.shl"(%arg5, %37) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%39)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %40 = "llvm.add"(%arg5, %36) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%40)[^bb3] : (i32) -> ()
  ^bb3(%41: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_medium_bedge_neg_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %28 = "llvm.mlir.constant"() <{value = -2047 : i32}> : () -> i32
    %29 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %30 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %31 = "llvm.icmp"(%arg4, %28) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%31)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %32 = "llvm.shl"(%arg4, %30) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%32)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %33 = "llvm.add"(%arg4, %29) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%33)[^bb3] : (i32) -> ()
  ^bb3(%34: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_big_ledge_pos_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %21 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %22 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %24 = "llvm.icmp"(%arg3, %21) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%24)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %25 = "llvm.shl"(%arg3, %23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%25)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %26 = "llvm.add"(%arg3, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%26)[^bb3] : (i32) -> ()
  ^bb3(%27: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_big_ledge_pos_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %14 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %16 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %17 = "llvm.icmp"(%arg2, %14) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%17)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %18 = "llvm.shl"(%arg2, %16) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%18)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %19 = "llvm.add"(%arg2, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%19)[^bb3] : (i32) -> ()
  ^bb3(%20: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%20) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_big_ledge_neg_eq", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %7 = "llvm.mlir.constant"() <{value = -2049 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %9 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %10 = "llvm.icmp"(%arg1, %7) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%10)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %11 = "llvm.shl"(%arg1, %9) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%11)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %12 = "llvm.add"(%arg1, %8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%12)[^bb3] : (i32) -> ()
  ^bb3(%13: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, passthrough = ["minsize"], sym_name = "f_big_ledge_neg_ne", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = -2049 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "llvm.icmp"(%arg0, %0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.cond_br"(%3)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
  ^bb1:  // pred: ^bb0
    %4 = "llvm.shl"(%arg0, %2) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%4)[^bb3] : (i32) -> ()
  ^bb2:  // pred: ^bb0
    %5 = "llvm.add"(%arg0, %1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.br"(%5)[^bb3] : (i32) -> ()
  ^bb3(%6: i32):  // 2 preds: ^bb1, ^bb2
    "llvm.return"(%6) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

