"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg458: !llvm.ptr, %arg459: i8):
    %259 = "llvm.atomicrmw"(%arg458, %arg459) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%259) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i8_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg456: !llvm.ptr, %arg457: i8):
    %258 = "llvm.atomicrmw"(%arg456, %arg457) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 4 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%258) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i8_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg454: !llvm.ptr, %arg455: i8):
    %257 = "llvm.atomicrmw"(%arg454, %arg455) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 5 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%257) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i8_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg452: !llvm.ptr, %arg453: i8):
    %256 = "llvm.atomicrmw"(%arg452, %arg453) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 6 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%256) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i8_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg450: !llvm.ptr, %arg451: i8):
    %255 = "llvm.atomicrmw"(%arg450, %arg451) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%255) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_0_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg449: !llvm.ptr):
    %253 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %254 = "llvm.atomicrmw"(%arg449, %253) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%254) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_0_i8_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg448: !llvm.ptr):
    %251 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %252 = "llvm.atomicrmw"(%arg448, %251) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 4 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%252) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_0_i8_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg447: !llvm.ptr):
    %249 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %250 = "llvm.atomicrmw"(%arg447, %249) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 5 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%250) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_0_i8_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg446: !llvm.ptr):
    %247 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %248 = "llvm.atomicrmw"(%arg446, %247) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 6 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%248) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_0_i8_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg445: !llvm.ptr):
    %245 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %246 = "llvm.atomicrmw"(%arg445, %245) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%246) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_minus_1_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg444: !llvm.ptr):
    %243 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %244 = "llvm.atomicrmw"(%arg444, %243) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%244) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_minus_1_i8_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg443: !llvm.ptr):
    %241 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %242 = "llvm.atomicrmw"(%arg443, %241) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 4 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%242) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_minus_1_i8_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg442: !llvm.ptr):
    %239 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %240 = "llvm.atomicrmw"(%arg442, %239) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 5 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%240) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_minus_1_i8_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg441: !llvm.ptr):
    %237 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %238 = "llvm.atomicrmw"(%arg441, %237) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 6 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%238) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_minus_1_i8_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg440: !llvm.ptr):
    %235 = "llvm.mlir.constant"() <{value = -1 : i8}> : () -> i8
    %236 = "llvm.atomicrmw"(%arg440, %235) <{alignment = 1 : i64, bin_op = 0 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%236) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg438: !llvm.ptr, %arg439: i8):
    %234 = "llvm.atomicrmw"(%arg438, %arg439) <{alignment = 1 : i64, bin_op = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%234) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i8_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg436: !llvm.ptr, %arg437: i8):
    %233 = "llvm.atomicrmw"(%arg436, %arg437) <{alignment = 1 : i64, bin_op = 1 : i64, ordering = 4 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%233) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i8_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg434: !llvm.ptr, %arg435: i8):
    %232 = "llvm.atomicrmw"(%arg434, %arg435) <{alignment = 1 : i64, bin_op = 1 : i64, ordering = 5 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%232) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i8_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg432: !llvm.ptr, %arg433: i8):
    %231 = "llvm.atomicrmw"(%arg432, %arg433) <{alignment = 1 : i64, bin_op = 1 : i64, ordering = 6 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%231) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i8_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg430: !llvm.ptr, %arg431: i8):
    %230 = "llvm.atomicrmw"(%arg430, %arg431) <{alignment = 1 : i64, bin_op = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%230) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg428: !llvm.ptr, %arg429: i8):
    %229 = "llvm.atomicrmw"(%arg428, %arg429) <{alignment = 1 : i64, bin_op = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%229) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i8_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg426: !llvm.ptr, %arg427: i8):
    %228 = "llvm.atomicrmw"(%arg426, %arg427) <{alignment = 1 : i64, bin_op = 2 : i64, ordering = 4 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%228) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i8_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg424: !llvm.ptr, %arg425: i8):
    %227 = "llvm.atomicrmw"(%arg424, %arg425) <{alignment = 1 : i64, bin_op = 2 : i64, ordering = 5 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%227) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i8_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg422: !llvm.ptr, %arg423: i8):
    %226 = "llvm.atomicrmw"(%arg422, %arg423) <{alignment = 1 : i64, bin_op = 2 : i64, ordering = 6 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%226) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i8_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg420: !llvm.ptr, %arg421: i8):
    %225 = "llvm.atomicrmw"(%arg420, %arg421) <{alignment = 1 : i64, bin_op = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%225) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg418: !llvm.ptr, %arg419: i8):
    %224 = "llvm.atomicrmw"(%arg418, %arg419) <{alignment = 1 : i64, bin_op = 3 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%224) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i8_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg416: !llvm.ptr, %arg417: i8):
    %223 = "llvm.atomicrmw"(%arg416, %arg417) <{alignment = 1 : i64, bin_op = 3 : i64, ordering = 4 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%223) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i8_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg414: !llvm.ptr, %arg415: i8):
    %222 = "llvm.atomicrmw"(%arg414, %arg415) <{alignment = 1 : i64, bin_op = 3 : i64, ordering = 5 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%222) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i8_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg412: !llvm.ptr, %arg413: i8):
    %221 = "llvm.atomicrmw"(%arg412, %arg413) <{alignment = 1 : i64, bin_op = 3 : i64, ordering = 6 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%221) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i8_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg410: !llvm.ptr, %arg411: i8):
    %220 = "llvm.atomicrmw"(%arg410, %arg411) <{alignment = 1 : i64, bin_op = 3 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%220) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg408: !llvm.ptr, %arg409: i8):
    %219 = "llvm.atomicrmw"(%arg408, %arg409) <{alignment = 1 : i64, bin_op = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%219) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i8_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg406: !llvm.ptr, %arg407: i8):
    %218 = "llvm.atomicrmw"(%arg406, %arg407) <{alignment = 1 : i64, bin_op = 4 : i64, ordering = 4 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%218) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i8_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg404: !llvm.ptr, %arg405: i8):
    %217 = "llvm.atomicrmw"(%arg404, %arg405) <{alignment = 1 : i64, bin_op = 4 : i64, ordering = 5 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%217) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i8_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg402: !llvm.ptr, %arg403: i8):
    %216 = "llvm.atomicrmw"(%arg402, %arg403) <{alignment = 1 : i64, bin_op = 4 : i64, ordering = 6 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%216) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i8_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg400: !llvm.ptr, %arg401: i8):
    %215 = "llvm.atomicrmw"(%arg400, %arg401) <{alignment = 1 : i64, bin_op = 4 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%215) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg398: !llvm.ptr, %arg399: i8):
    %214 = "llvm.atomicrmw"(%arg398, %arg399) <{alignment = 1 : i64, bin_op = 5 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%214) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i8_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg396: !llvm.ptr, %arg397: i8):
    %213 = "llvm.atomicrmw"(%arg396, %arg397) <{alignment = 1 : i64, bin_op = 5 : i64, ordering = 4 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%213) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i8_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg394: !llvm.ptr, %arg395: i8):
    %212 = "llvm.atomicrmw"(%arg394, %arg395) <{alignment = 1 : i64, bin_op = 5 : i64, ordering = 5 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%212) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i8_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg392: !llvm.ptr, %arg393: i8):
    %211 = "llvm.atomicrmw"(%arg392, %arg393) <{alignment = 1 : i64, bin_op = 5 : i64, ordering = 6 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%211) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i8_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg390: !llvm.ptr, %arg391: i8):
    %210 = "llvm.atomicrmw"(%arg390, %arg391) <{alignment = 1 : i64, bin_op = 5 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%210) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg388: !llvm.ptr, %arg389: i8):
    %209 = "llvm.atomicrmw"(%arg388, %arg389) <{alignment = 1 : i64, bin_op = 6 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%209) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i8_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg386: !llvm.ptr, %arg387: i8):
    %208 = "llvm.atomicrmw"(%arg386, %arg387) <{alignment = 1 : i64, bin_op = 6 : i64, ordering = 4 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%208) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i8_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg384: !llvm.ptr, %arg385: i8):
    %207 = "llvm.atomicrmw"(%arg384, %arg385) <{alignment = 1 : i64, bin_op = 6 : i64, ordering = 5 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%207) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i8_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg382: !llvm.ptr, %arg383: i8):
    %206 = "llvm.atomicrmw"(%arg382, %arg383) <{alignment = 1 : i64, bin_op = 6 : i64, ordering = 6 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%206) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i8_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg380: !llvm.ptr, %arg381: i8):
    %205 = "llvm.atomicrmw"(%arg380, %arg381) <{alignment = 1 : i64, bin_op = 6 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%205) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg378: !llvm.ptr, %arg379: i8):
    %204 = "llvm.atomicrmw"(%arg378, %arg379) <{alignment = 1 : i64, bin_op = 7 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%204) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i8_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg376: !llvm.ptr, %arg377: i8):
    %203 = "llvm.atomicrmw"(%arg376, %arg377) <{alignment = 1 : i64, bin_op = 7 : i64, ordering = 4 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%203) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i8_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg374: !llvm.ptr, %arg375: i8):
    %202 = "llvm.atomicrmw"(%arg374, %arg375) <{alignment = 1 : i64, bin_op = 7 : i64, ordering = 5 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%202) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i8_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg372: !llvm.ptr, %arg373: i8):
    %201 = "llvm.atomicrmw"(%arg372, %arg373) <{alignment = 1 : i64, bin_op = 7 : i64, ordering = 6 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%201) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i8_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg370: !llvm.ptr, %arg371: i8):
    %200 = "llvm.atomicrmw"(%arg370, %arg371) <{alignment = 1 : i64, bin_op = 7 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%200) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg368: !llvm.ptr, %arg369: i8):
    %199 = "llvm.atomicrmw"(%arg368, %arg369) <{alignment = 1 : i64, bin_op = 8 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%199) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i8_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg366: !llvm.ptr, %arg367: i8):
    %198 = "llvm.atomicrmw"(%arg366, %arg367) <{alignment = 1 : i64, bin_op = 8 : i64, ordering = 4 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%198) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i8_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg364: !llvm.ptr, %arg365: i8):
    %197 = "llvm.atomicrmw"(%arg364, %arg365) <{alignment = 1 : i64, bin_op = 8 : i64, ordering = 5 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%197) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i8_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg362: !llvm.ptr, %arg363: i8):
    %196 = "llvm.atomicrmw"(%arg362, %arg363) <{alignment = 1 : i64, bin_op = 8 : i64, ordering = 6 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%196) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i8_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg360: !llvm.ptr, %arg361: i8):
    %195 = "llvm.atomicrmw"(%arg360, %arg361) <{alignment = 1 : i64, bin_op = 8 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%195) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg358: !llvm.ptr, %arg359: i8):
    %194 = "llvm.atomicrmw"(%arg358, %arg359) <{alignment = 1 : i64, bin_op = 9 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%194) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i8_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg356: !llvm.ptr, %arg357: i8):
    %193 = "llvm.atomicrmw"(%arg356, %arg357) <{alignment = 1 : i64, bin_op = 9 : i64, ordering = 4 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%193) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i8_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg354: !llvm.ptr, %arg355: i8):
    %192 = "llvm.atomicrmw"(%arg354, %arg355) <{alignment = 1 : i64, bin_op = 9 : i64, ordering = 5 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%192) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i8_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg352: !llvm.ptr, %arg353: i8):
    %191 = "llvm.atomicrmw"(%arg352, %arg353) <{alignment = 1 : i64, bin_op = 9 : i64, ordering = 6 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%191) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i8_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg350: !llvm.ptr, %arg351: i8):
    %190 = "llvm.atomicrmw"(%arg350, %arg351) <{alignment = 1 : i64, bin_op = 9 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%190) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i8_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg348: !llvm.ptr, %arg349: i8):
    %189 = "llvm.atomicrmw"(%arg348, %arg349) <{alignment = 1 : i64, bin_op = 10 : i64, ordering = 2 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%189) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i8_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg346: !llvm.ptr, %arg347: i8):
    %188 = "llvm.atomicrmw"(%arg346, %arg347) <{alignment = 1 : i64, bin_op = 10 : i64, ordering = 4 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%188) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i8_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg344: !llvm.ptr, %arg345: i8):
    %187 = "llvm.atomicrmw"(%arg344, %arg345) <{alignment = 1 : i64, bin_op = 10 : i64, ordering = 5 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%187) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i8_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg342: !llvm.ptr, %arg343: i8):
    %186 = "llvm.atomicrmw"(%arg342, %arg343) <{alignment = 1 : i64, bin_op = 10 : i64, ordering = 6 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%186) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i8)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i8_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg340: !llvm.ptr, %arg341: i8):
    %185 = "llvm.atomicrmw"(%arg340, %arg341) <{alignment = 1 : i64, bin_op = 10 : i64, ordering = 7 : i64}> : (!llvm.ptr, i8) -> i8
    "llvm.return"(%185) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg338: !llvm.ptr, %arg339: i16):
    %184 = "llvm.atomicrmw"(%arg338, %arg339) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%184) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i16_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg336: !llvm.ptr, %arg337: i16):
    %183 = "llvm.atomicrmw"(%arg336, %arg337) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 4 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%183) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg334: !llvm.ptr, %arg335: i16):
    %182 = "llvm.atomicrmw"(%arg334, %arg335) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%182) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i16_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg332: !llvm.ptr, %arg333: i16):
    %181 = "llvm.atomicrmw"(%arg332, %arg333) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 6 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%181) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i16_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg330: !llvm.ptr, %arg331: i16):
    %180 = "llvm.atomicrmw"(%arg330, %arg331) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%180) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_0_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg329: !llvm.ptr):
    %178 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %179 = "llvm.atomicrmw"(%arg329, %178) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%179) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_0_i16_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg328: !llvm.ptr):
    %176 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %177 = "llvm.atomicrmw"(%arg328, %176) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 4 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%177) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_0_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg327: !llvm.ptr):
    %174 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %175 = "llvm.atomicrmw"(%arg327, %174) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%175) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_0_i16_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg326: !llvm.ptr):
    %172 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %173 = "llvm.atomicrmw"(%arg326, %172) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 6 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%173) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_0_i16_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg325: !llvm.ptr):
    %170 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %171 = "llvm.atomicrmw"(%arg325, %170) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%171) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_minus_1_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg324: !llvm.ptr):
    %168 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %169 = "llvm.atomicrmw"(%arg324, %168) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%169) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_minus_1_i16_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg323: !llvm.ptr):
    %166 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %167 = "llvm.atomicrmw"(%arg323, %166) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 4 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%167) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_minus_1_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg322: !llvm.ptr):
    %164 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %165 = "llvm.atomicrmw"(%arg322, %164) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%165) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_minus_1_i16_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg321: !llvm.ptr):
    %162 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %163 = "llvm.atomicrmw"(%arg321, %162) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 6 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%163) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_minus_1_i16_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg320: !llvm.ptr):
    %160 = "llvm.mlir.constant"() <{value = -1 : i16}> : () -> i16
    %161 = "llvm.atomicrmw"(%arg320, %160) <{alignment = 2 : i64, bin_op = 0 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%161) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg318: !llvm.ptr, %arg319: i16):
    %159 = "llvm.atomicrmw"(%arg318, %arg319) <{alignment = 2 : i64, bin_op = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%159) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i16_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg316: !llvm.ptr, %arg317: i16):
    %158 = "llvm.atomicrmw"(%arg316, %arg317) <{alignment = 2 : i64, bin_op = 1 : i64, ordering = 4 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%158) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg314: !llvm.ptr, %arg315: i16):
    %157 = "llvm.atomicrmw"(%arg314, %arg315) <{alignment = 2 : i64, bin_op = 1 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%157) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i16_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg312: !llvm.ptr, %arg313: i16):
    %156 = "llvm.atomicrmw"(%arg312, %arg313) <{alignment = 2 : i64, bin_op = 1 : i64, ordering = 6 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%156) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i16_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg310: !llvm.ptr, %arg311: i16):
    %155 = "llvm.atomicrmw"(%arg310, %arg311) <{alignment = 2 : i64, bin_op = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%155) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg308: !llvm.ptr, %arg309: i16):
    %154 = "llvm.atomicrmw"(%arg308, %arg309) <{alignment = 2 : i64, bin_op = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%154) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i16_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg306: !llvm.ptr, %arg307: i16):
    %153 = "llvm.atomicrmw"(%arg306, %arg307) <{alignment = 2 : i64, bin_op = 2 : i64, ordering = 4 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%153) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg304: !llvm.ptr, %arg305: i16):
    %152 = "llvm.atomicrmw"(%arg304, %arg305) <{alignment = 2 : i64, bin_op = 2 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%152) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i16_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg302: !llvm.ptr, %arg303: i16):
    %151 = "llvm.atomicrmw"(%arg302, %arg303) <{alignment = 2 : i64, bin_op = 2 : i64, ordering = 6 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%151) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i16_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg300: !llvm.ptr, %arg301: i16):
    %150 = "llvm.atomicrmw"(%arg300, %arg301) <{alignment = 2 : i64, bin_op = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%150) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg298: !llvm.ptr, %arg299: i16):
    %149 = "llvm.atomicrmw"(%arg298, %arg299) <{alignment = 2 : i64, bin_op = 3 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%149) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i16_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg296: !llvm.ptr, %arg297: i16):
    %148 = "llvm.atomicrmw"(%arg296, %arg297) <{alignment = 2 : i64, bin_op = 3 : i64, ordering = 4 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%148) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg294: !llvm.ptr, %arg295: i16):
    %147 = "llvm.atomicrmw"(%arg294, %arg295) <{alignment = 2 : i64, bin_op = 3 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%147) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i16_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg292: !llvm.ptr, %arg293: i16):
    %146 = "llvm.atomicrmw"(%arg292, %arg293) <{alignment = 2 : i64, bin_op = 3 : i64, ordering = 6 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%146) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i16_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg290: !llvm.ptr, %arg291: i16):
    %145 = "llvm.atomicrmw"(%arg290, %arg291) <{alignment = 2 : i64, bin_op = 3 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%145) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg288: !llvm.ptr, %arg289: i16):
    %144 = "llvm.atomicrmw"(%arg288, %arg289) <{alignment = 2 : i64, bin_op = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%144) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i16_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg286: !llvm.ptr, %arg287: i16):
    %143 = "llvm.atomicrmw"(%arg286, %arg287) <{alignment = 2 : i64, bin_op = 4 : i64, ordering = 4 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%143) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg284: !llvm.ptr, %arg285: i16):
    %142 = "llvm.atomicrmw"(%arg284, %arg285) <{alignment = 2 : i64, bin_op = 4 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%142) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i16_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg282: !llvm.ptr, %arg283: i16):
    %141 = "llvm.atomicrmw"(%arg282, %arg283) <{alignment = 2 : i64, bin_op = 4 : i64, ordering = 6 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%141) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i16_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg280: !llvm.ptr, %arg281: i16):
    %140 = "llvm.atomicrmw"(%arg280, %arg281) <{alignment = 2 : i64, bin_op = 4 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%140) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg278: !llvm.ptr, %arg279: i16):
    %139 = "llvm.atomicrmw"(%arg278, %arg279) <{alignment = 2 : i64, bin_op = 5 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%139) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i16_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg276: !llvm.ptr, %arg277: i16):
    %138 = "llvm.atomicrmw"(%arg276, %arg277) <{alignment = 2 : i64, bin_op = 5 : i64, ordering = 4 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%138) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg274: !llvm.ptr, %arg275: i16):
    %137 = "llvm.atomicrmw"(%arg274, %arg275) <{alignment = 2 : i64, bin_op = 5 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%137) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i16_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg272: !llvm.ptr, %arg273: i16):
    %136 = "llvm.atomicrmw"(%arg272, %arg273) <{alignment = 2 : i64, bin_op = 5 : i64, ordering = 6 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%136) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i16_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg270: !llvm.ptr, %arg271: i16):
    %135 = "llvm.atomicrmw"(%arg270, %arg271) <{alignment = 2 : i64, bin_op = 5 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%135) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg268: !llvm.ptr, %arg269: i16):
    %134 = "llvm.atomicrmw"(%arg268, %arg269) <{alignment = 2 : i64, bin_op = 6 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%134) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i16_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg266: !llvm.ptr, %arg267: i16):
    %133 = "llvm.atomicrmw"(%arg266, %arg267) <{alignment = 2 : i64, bin_op = 6 : i64, ordering = 4 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%133) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg264: !llvm.ptr, %arg265: i16):
    %132 = "llvm.atomicrmw"(%arg264, %arg265) <{alignment = 2 : i64, bin_op = 6 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%132) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i16_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg262: !llvm.ptr, %arg263: i16):
    %131 = "llvm.atomicrmw"(%arg262, %arg263) <{alignment = 2 : i64, bin_op = 6 : i64, ordering = 6 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%131) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i16_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg260: !llvm.ptr, %arg261: i16):
    %130 = "llvm.atomicrmw"(%arg260, %arg261) <{alignment = 2 : i64, bin_op = 6 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%130) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg258: !llvm.ptr, %arg259: i16):
    %129 = "llvm.atomicrmw"(%arg258, %arg259) <{alignment = 2 : i64, bin_op = 7 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%129) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i16_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg256: !llvm.ptr, %arg257: i16):
    %128 = "llvm.atomicrmw"(%arg256, %arg257) <{alignment = 2 : i64, bin_op = 7 : i64, ordering = 4 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%128) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg254: !llvm.ptr, %arg255: i16):
    %127 = "llvm.atomicrmw"(%arg254, %arg255) <{alignment = 2 : i64, bin_op = 7 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%127) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i16_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg252: !llvm.ptr, %arg253: i16):
    %126 = "llvm.atomicrmw"(%arg252, %arg253) <{alignment = 2 : i64, bin_op = 7 : i64, ordering = 6 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%126) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i16_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg250: !llvm.ptr, %arg251: i16):
    %125 = "llvm.atomicrmw"(%arg250, %arg251) <{alignment = 2 : i64, bin_op = 7 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%125) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg248: !llvm.ptr, %arg249: i16):
    %124 = "llvm.atomicrmw"(%arg248, %arg249) <{alignment = 2 : i64, bin_op = 8 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%124) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i16_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg246: !llvm.ptr, %arg247: i16):
    %123 = "llvm.atomicrmw"(%arg246, %arg247) <{alignment = 2 : i64, bin_op = 8 : i64, ordering = 4 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%123) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg244: !llvm.ptr, %arg245: i16):
    %122 = "llvm.atomicrmw"(%arg244, %arg245) <{alignment = 2 : i64, bin_op = 8 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%122) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i16_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg242: !llvm.ptr, %arg243: i16):
    %121 = "llvm.atomicrmw"(%arg242, %arg243) <{alignment = 2 : i64, bin_op = 8 : i64, ordering = 6 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%121) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i16_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg240: !llvm.ptr, %arg241: i16):
    %120 = "llvm.atomicrmw"(%arg240, %arg241) <{alignment = 2 : i64, bin_op = 8 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%120) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg238: !llvm.ptr, %arg239: i16):
    %119 = "llvm.atomicrmw"(%arg238, %arg239) <{alignment = 2 : i64, bin_op = 9 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%119) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i16_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg236: !llvm.ptr, %arg237: i16):
    %118 = "llvm.atomicrmw"(%arg236, %arg237) <{alignment = 2 : i64, bin_op = 9 : i64, ordering = 4 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%118) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg234: !llvm.ptr, %arg235: i16):
    %117 = "llvm.atomicrmw"(%arg234, %arg235) <{alignment = 2 : i64, bin_op = 9 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%117) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i16_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg232: !llvm.ptr, %arg233: i16):
    %116 = "llvm.atomicrmw"(%arg232, %arg233) <{alignment = 2 : i64, bin_op = 9 : i64, ordering = 6 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%116) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i16_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg230: !llvm.ptr, %arg231: i16):
    %115 = "llvm.atomicrmw"(%arg230, %arg231) <{alignment = 2 : i64, bin_op = 9 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%115) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i16_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg228: !llvm.ptr, %arg229: i16):
    %114 = "llvm.atomicrmw"(%arg228, %arg229) <{alignment = 2 : i64, bin_op = 10 : i64, ordering = 2 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%114) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i16_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg226: !llvm.ptr, %arg227: i16):
    %113 = "llvm.atomicrmw"(%arg226, %arg227) <{alignment = 2 : i64, bin_op = 10 : i64, ordering = 4 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%113) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i16_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg224: !llvm.ptr, %arg225: i16):
    %112 = "llvm.atomicrmw"(%arg224, %arg225) <{alignment = 2 : i64, bin_op = 10 : i64, ordering = 5 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%112) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i16_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg222: !llvm.ptr, %arg223: i16):
    %111 = "llvm.atomicrmw"(%arg222, %arg223) <{alignment = 2 : i64, bin_op = 10 : i64, ordering = 6 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%111) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i16)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i16_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg220: !llvm.ptr, %arg221: i16):
    %110 = "llvm.atomicrmw"(%arg220, %arg221) <{alignment = 2 : i64, bin_op = 10 : i64, ordering = 7 : i64}> : (!llvm.ptr, i16) -> i16
    "llvm.return"(%110) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg218: !llvm.ptr, %arg219: i32):
    %109 = "llvm.atomicrmw"(%arg218, %arg219) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%109) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i32_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg216: !llvm.ptr, %arg217: i32):
    %108 = "llvm.atomicrmw"(%arg216, %arg217) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 4 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%108) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i32_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg214: !llvm.ptr, %arg215: i32):
    %107 = "llvm.atomicrmw"(%arg214, %arg215) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 5 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%107) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i32_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg212: !llvm.ptr, %arg213: i32):
    %106 = "llvm.atomicrmw"(%arg212, %arg213) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 6 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%106) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i32_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg210: !llvm.ptr, %arg211: i32):
    %105 = "llvm.atomicrmw"(%arg210, %arg211) <{alignment = 4 : i64, bin_op = 0 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%105) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg208: !llvm.ptr, %arg209: i32):
    %104 = "llvm.atomicrmw"(%arg208, %arg209) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%104) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i32_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg206: !llvm.ptr, %arg207: i32):
    %103 = "llvm.atomicrmw"(%arg206, %arg207) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 4 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%103) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i32_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg204: !llvm.ptr, %arg205: i32):
    %102 = "llvm.atomicrmw"(%arg204, %arg205) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 5 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%102) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i32_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg202: !llvm.ptr, %arg203: i32):
    %101 = "llvm.atomicrmw"(%arg202, %arg203) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 6 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%101) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i32_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg200: !llvm.ptr, %arg201: i32):
    %100 = "llvm.atomicrmw"(%arg200, %arg201) <{alignment = 4 : i64, bin_op = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%100) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg198: !llvm.ptr, %arg199: i32):
    %99 = "llvm.atomicrmw"(%arg198, %arg199) <{alignment = 4 : i64, bin_op = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%99) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i32_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg196: !llvm.ptr, %arg197: i32):
    %98 = "llvm.atomicrmw"(%arg196, %arg197) <{alignment = 4 : i64, bin_op = 2 : i64, ordering = 4 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%98) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i32_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg194: !llvm.ptr, %arg195: i32):
    %97 = "llvm.atomicrmw"(%arg194, %arg195) <{alignment = 4 : i64, bin_op = 2 : i64, ordering = 5 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%97) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i32_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg192: !llvm.ptr, %arg193: i32):
    %96 = "llvm.atomicrmw"(%arg192, %arg193) <{alignment = 4 : i64, bin_op = 2 : i64, ordering = 6 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%96) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i32_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg190: !llvm.ptr, %arg191: i32):
    %95 = "llvm.atomicrmw"(%arg190, %arg191) <{alignment = 4 : i64, bin_op = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg188: !llvm.ptr, %arg189: i32):
    %94 = "llvm.atomicrmw"(%arg188, %arg189) <{alignment = 4 : i64, bin_op = 3 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%94) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i32_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg186: !llvm.ptr, %arg187: i32):
    %93 = "llvm.atomicrmw"(%arg186, %arg187) <{alignment = 4 : i64, bin_op = 3 : i64, ordering = 4 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%93) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i32_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg184: !llvm.ptr, %arg185: i32):
    %92 = "llvm.atomicrmw"(%arg184, %arg185) <{alignment = 4 : i64, bin_op = 3 : i64, ordering = 5 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%92) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i32_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg182: !llvm.ptr, %arg183: i32):
    %91 = "llvm.atomicrmw"(%arg182, %arg183) <{alignment = 4 : i64, bin_op = 3 : i64, ordering = 6 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%91) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i32_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg180: !llvm.ptr, %arg181: i32):
    %90 = "llvm.atomicrmw"(%arg180, %arg181) <{alignment = 4 : i64, bin_op = 3 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%90) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg178: !llvm.ptr, %arg179: i32):
    %89 = "llvm.atomicrmw"(%arg178, %arg179) <{alignment = 4 : i64, bin_op = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%89) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i32_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg176: !llvm.ptr, %arg177: i32):
    %88 = "llvm.atomicrmw"(%arg176, %arg177) <{alignment = 4 : i64, bin_op = 4 : i64, ordering = 4 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%88) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i32_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg174: !llvm.ptr, %arg175: i32):
    %87 = "llvm.atomicrmw"(%arg174, %arg175) <{alignment = 4 : i64, bin_op = 4 : i64, ordering = 5 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i32_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg172: !llvm.ptr, %arg173: i32):
    %86 = "llvm.atomicrmw"(%arg172, %arg173) <{alignment = 4 : i64, bin_op = 4 : i64, ordering = 6 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%86) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i32_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg170: !llvm.ptr, %arg171: i32):
    %85 = "llvm.atomicrmw"(%arg170, %arg171) <{alignment = 4 : i64, bin_op = 4 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%85) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg168: !llvm.ptr, %arg169: i32):
    %84 = "llvm.atomicrmw"(%arg168, %arg169) <{alignment = 4 : i64, bin_op = 5 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%84) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i32_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg166: !llvm.ptr, %arg167: i32):
    %83 = "llvm.atomicrmw"(%arg166, %arg167) <{alignment = 4 : i64, bin_op = 5 : i64, ordering = 4 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%83) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i32_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg164: !llvm.ptr, %arg165: i32):
    %82 = "llvm.atomicrmw"(%arg164, %arg165) <{alignment = 4 : i64, bin_op = 5 : i64, ordering = 5 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%82) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i32_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg162: !llvm.ptr, %arg163: i32):
    %81 = "llvm.atomicrmw"(%arg162, %arg163) <{alignment = 4 : i64, bin_op = 5 : i64, ordering = 6 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i32_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg160: !llvm.ptr, %arg161: i32):
    %80 = "llvm.atomicrmw"(%arg160, %arg161) <{alignment = 4 : i64, bin_op = 5 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%80) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg158: !llvm.ptr, %arg159: i32):
    %79 = "llvm.atomicrmw"(%arg158, %arg159) <{alignment = 4 : i64, bin_op = 6 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i32_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg156: !llvm.ptr, %arg157: i32):
    %78 = "llvm.atomicrmw"(%arg156, %arg157) <{alignment = 4 : i64, bin_op = 6 : i64, ordering = 4 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%78) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i32_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg154: !llvm.ptr, %arg155: i32):
    %77 = "llvm.atomicrmw"(%arg154, %arg155) <{alignment = 4 : i64, bin_op = 6 : i64, ordering = 5 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%77) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i32_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg152: !llvm.ptr, %arg153: i32):
    %76 = "llvm.atomicrmw"(%arg152, %arg153) <{alignment = 4 : i64, bin_op = 6 : i64, ordering = 6 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%76) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i32_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg150: !llvm.ptr, %arg151: i32):
    %75 = "llvm.atomicrmw"(%arg150, %arg151) <{alignment = 4 : i64, bin_op = 6 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%75) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg148: !llvm.ptr, %arg149: i32):
    %74 = "llvm.atomicrmw"(%arg148, %arg149) <{alignment = 4 : i64, bin_op = 7 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%74) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i32_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg146: !llvm.ptr, %arg147: i32):
    %73 = "llvm.atomicrmw"(%arg146, %arg147) <{alignment = 4 : i64, bin_op = 7 : i64, ordering = 4 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%73) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i32_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg144: !llvm.ptr, %arg145: i32):
    %72 = "llvm.atomicrmw"(%arg144, %arg145) <{alignment = 4 : i64, bin_op = 7 : i64, ordering = 5 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%72) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i32_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg142: !llvm.ptr, %arg143: i32):
    %71 = "llvm.atomicrmw"(%arg142, %arg143) <{alignment = 4 : i64, bin_op = 7 : i64, ordering = 6 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i32_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg140: !llvm.ptr, %arg141: i32):
    %70 = "llvm.atomicrmw"(%arg140, %arg141) <{alignment = 4 : i64, bin_op = 7 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%70) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg138: !llvm.ptr, %arg139: i32):
    %69 = "llvm.atomicrmw"(%arg138, %arg139) <{alignment = 4 : i64, bin_op = 8 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i32_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg136: !llvm.ptr, %arg137: i32):
    %68 = "llvm.atomicrmw"(%arg136, %arg137) <{alignment = 4 : i64, bin_op = 8 : i64, ordering = 4 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%68) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i32_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg134: !llvm.ptr, %arg135: i32):
    %67 = "llvm.atomicrmw"(%arg134, %arg135) <{alignment = 4 : i64, bin_op = 8 : i64, ordering = 5 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%67) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i32_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: !llvm.ptr, %arg133: i32):
    %66 = "llvm.atomicrmw"(%arg132, %arg133) <{alignment = 4 : i64, bin_op = 8 : i64, ordering = 6 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%66) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i32_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg130: !llvm.ptr, %arg131: i32):
    %65 = "llvm.atomicrmw"(%arg130, %arg131) <{alignment = 4 : i64, bin_op = 8 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%65) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg128: !llvm.ptr, %arg129: i32):
    %64 = "llvm.atomicrmw"(%arg128, %arg129) <{alignment = 4 : i64, bin_op = 9 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%64) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i32_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg126: !llvm.ptr, %arg127: i32):
    %63 = "llvm.atomicrmw"(%arg126, %arg127) <{alignment = 4 : i64, bin_op = 9 : i64, ordering = 4 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i32_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: !llvm.ptr, %arg125: i32):
    %62 = "llvm.atomicrmw"(%arg124, %arg125) <{alignment = 4 : i64, bin_op = 9 : i64, ordering = 5 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i32_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg122: !llvm.ptr, %arg123: i32):
    %61 = "llvm.atomicrmw"(%arg122, %arg123) <{alignment = 4 : i64, bin_op = 9 : i64, ordering = 6 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i32_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: !llvm.ptr, %arg121: i32):
    %60 = "llvm.atomicrmw"(%arg120, %arg121) <{alignment = 4 : i64, bin_op = 9 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%60) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i32_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg118: !llvm.ptr, %arg119: i32):
    %59 = "llvm.atomicrmw"(%arg118, %arg119) <{alignment = 4 : i64, bin_op = 10 : i64, ordering = 2 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i32_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg116: !llvm.ptr, %arg117: i32):
    %58 = "llvm.atomicrmw"(%arg116, %arg117) <{alignment = 4 : i64, bin_op = 10 : i64, ordering = 4 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%58) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i32_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg114: !llvm.ptr, %arg115: i32):
    %57 = "llvm.atomicrmw"(%arg114, %arg115) <{alignment = 4 : i64, bin_op = 10 : i64, ordering = 5 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%57) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i32_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg112: !llvm.ptr, %arg113: i32):
    %56 = "llvm.atomicrmw"(%arg112, %arg113) <{alignment = 4 : i64, bin_op = 10 : i64, ordering = 6 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%56) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i32_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg110: !llvm.ptr, %arg111: i32):
    %55 = "llvm.atomicrmw"(%arg110, %arg111) <{alignment = 4 : i64, bin_op = 10 : i64, ordering = 7 : i64}> : (!llvm.ptr, i32) -> i32
    "llvm.return"(%55) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: !llvm.ptr, %arg109: i64):
    %54 = "llvm.atomicrmw"(%arg108, %arg109) <{alignment = 8 : i64, bin_op = 0 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%54) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i64_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg106: !llvm.ptr, %arg107: i64):
    %53 = "llvm.atomicrmw"(%arg106, %arg107) <{alignment = 8 : i64, bin_op = 0 : i64, ordering = 4 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%53) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i64_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg104: !llvm.ptr, %arg105: i64):
    %52 = "llvm.atomicrmw"(%arg104, %arg105) <{alignment = 8 : i64, bin_op = 0 : i64, ordering = 5 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%52) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i64_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg102: !llvm.ptr, %arg103: i64):
    %51 = "llvm.atomicrmw"(%arg102, %arg103) <{alignment = 8 : i64, bin_op = 0 : i64, ordering = 6 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%51) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xchg_i64_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg100: !llvm.ptr, %arg101: i64):
    %50 = "llvm.atomicrmw"(%arg100, %arg101) <{alignment = 8 : i64, bin_op = 0 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%50) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg98: !llvm.ptr, %arg99: i64):
    %49 = "llvm.atomicrmw"(%arg98, %arg99) <{alignment = 8 : i64, bin_op = 1 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%49) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i64_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: !llvm.ptr, %arg97: i64):
    %48 = "llvm.atomicrmw"(%arg96, %arg97) <{alignment = 8 : i64, bin_op = 1 : i64, ordering = 4 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%48) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i64_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg94: !llvm.ptr, %arg95: i64):
    %47 = "llvm.atomicrmw"(%arg94, %arg95) <{alignment = 8 : i64, bin_op = 1 : i64, ordering = 5 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%47) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i64_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg92: !llvm.ptr, %arg93: i64):
    %46 = "llvm.atomicrmw"(%arg92, %arg93) <{alignment = 8 : i64, bin_op = 1 : i64, ordering = 6 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%46) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_add_i64_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg90: !llvm.ptr, %arg91: i64):
    %45 = "llvm.atomicrmw"(%arg90, %arg91) <{alignment = 8 : i64, bin_op = 1 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: !llvm.ptr, %arg89: i64):
    %44 = "llvm.atomicrmw"(%arg88, %arg89) <{alignment = 8 : i64, bin_op = 2 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%44) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i64_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg86: !llvm.ptr, %arg87: i64):
    %43 = "llvm.atomicrmw"(%arg86, %arg87) <{alignment = 8 : i64, bin_op = 2 : i64, ordering = 4 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%43) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i64_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: !llvm.ptr, %arg85: i64):
    %42 = "llvm.atomicrmw"(%arg84, %arg85) <{alignment = 8 : i64, bin_op = 2 : i64, ordering = 5 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%42) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i64_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg82: !llvm.ptr, %arg83: i64):
    %41 = "llvm.atomicrmw"(%arg82, %arg83) <{alignment = 8 : i64, bin_op = 2 : i64, ordering = 6 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%41) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_sub_i64_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: !llvm.ptr, %arg81: i64):
    %40 = "llvm.atomicrmw"(%arg80, %arg81) <{alignment = 8 : i64, bin_op = 2 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%40) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: !llvm.ptr, %arg79: i64):
    %39 = "llvm.atomicrmw"(%arg78, %arg79) <{alignment = 8 : i64, bin_op = 3 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%39) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i64_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: !llvm.ptr, %arg77: i64):
    %38 = "llvm.atomicrmw"(%arg76, %arg77) <{alignment = 8 : i64, bin_op = 3 : i64, ordering = 4 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%38) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i64_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg74: !llvm.ptr, %arg75: i64):
    %37 = "llvm.atomicrmw"(%arg74, %arg75) <{alignment = 8 : i64, bin_op = 3 : i64, ordering = 5 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%37) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i64_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: !llvm.ptr, %arg73: i64):
    %36 = "llvm.atomicrmw"(%arg72, %arg73) <{alignment = 8 : i64, bin_op = 3 : i64, ordering = 6 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%36) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_and_i64_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg70: !llvm.ptr, %arg71: i64):
    %35 = "llvm.atomicrmw"(%arg70, %arg71) <{alignment = 8 : i64, bin_op = 3 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%35) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: !llvm.ptr, %arg69: i64):
    %34 = "llvm.atomicrmw"(%arg68, %arg69) <{alignment = 8 : i64, bin_op = 4 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%34) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i64_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: !llvm.ptr, %arg67: i64):
    %33 = "llvm.atomicrmw"(%arg66, %arg67) <{alignment = 8 : i64, bin_op = 4 : i64, ordering = 4 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%33) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i64_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: !llvm.ptr, %arg65: i64):
    %32 = "llvm.atomicrmw"(%arg64, %arg65) <{alignment = 8 : i64, bin_op = 4 : i64, ordering = 5 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%32) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i64_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: !llvm.ptr, %arg63: i64):
    %31 = "llvm.atomicrmw"(%arg62, %arg63) <{alignment = 8 : i64, bin_op = 4 : i64, ordering = 6 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%31) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_nand_i64_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: !llvm.ptr, %arg61: i64):
    %30 = "llvm.atomicrmw"(%arg60, %arg61) <{alignment = 8 : i64, bin_op = 4 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%30) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: !llvm.ptr, %arg59: i64):
    %29 = "llvm.atomicrmw"(%arg58, %arg59) <{alignment = 8 : i64, bin_op = 5 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%29) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i64_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: !llvm.ptr, %arg57: i64):
    %28 = "llvm.atomicrmw"(%arg56, %arg57) <{alignment = 8 : i64, bin_op = 5 : i64, ordering = 4 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%28) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i64_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: !llvm.ptr, %arg55: i64):
    %27 = "llvm.atomicrmw"(%arg54, %arg55) <{alignment = 8 : i64, bin_op = 5 : i64, ordering = 5 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%27) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i64_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: !llvm.ptr, %arg53: i64):
    %26 = "llvm.atomicrmw"(%arg52, %arg53) <{alignment = 8 : i64, bin_op = 5 : i64, ordering = 6 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%26) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_or_i64_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: !llvm.ptr, %arg51: i64):
    %25 = "llvm.atomicrmw"(%arg50, %arg51) <{alignment = 8 : i64, bin_op = 5 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: !llvm.ptr, %arg49: i64):
    %24 = "llvm.atomicrmw"(%arg48, %arg49) <{alignment = 8 : i64, bin_op = 6 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%24) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i64_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: !llvm.ptr, %arg47: i64):
    %23 = "llvm.atomicrmw"(%arg46, %arg47) <{alignment = 8 : i64, bin_op = 6 : i64, ordering = 4 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%23) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i64_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: !llvm.ptr, %arg45: i64):
    %22 = "llvm.atomicrmw"(%arg44, %arg45) <{alignment = 8 : i64, bin_op = 6 : i64, ordering = 5 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%22) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i64_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: !llvm.ptr, %arg43: i64):
    %21 = "llvm.atomicrmw"(%arg42, %arg43) <{alignment = 8 : i64, bin_op = 6 : i64, ordering = 6 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%21) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_xor_i64_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: !llvm.ptr, %arg41: i64):
    %20 = "llvm.atomicrmw"(%arg40, %arg41) <{alignment = 8 : i64, bin_op = 6 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%20) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: !llvm.ptr, %arg39: i64):
    %19 = "llvm.atomicrmw"(%arg38, %arg39) <{alignment = 8 : i64, bin_op = 7 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%19) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i64_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: !llvm.ptr, %arg37: i64):
    %18 = "llvm.atomicrmw"(%arg36, %arg37) <{alignment = 8 : i64, bin_op = 7 : i64, ordering = 4 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%18) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i64_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: !llvm.ptr, %arg35: i64):
    %17 = "llvm.atomicrmw"(%arg34, %arg35) <{alignment = 8 : i64, bin_op = 7 : i64, ordering = 5 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%17) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i64_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: !llvm.ptr, %arg33: i64):
    %16 = "llvm.atomicrmw"(%arg32, %arg33) <{alignment = 8 : i64, bin_op = 7 : i64, ordering = 6 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%16) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_max_i64_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr, %arg31: i64):
    %15 = "llvm.atomicrmw"(%arg30, %arg31) <{alignment = 8 : i64, bin_op = 7 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%15) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: !llvm.ptr, %arg29: i64):
    %14 = "llvm.atomicrmw"(%arg28, %arg29) <{alignment = 8 : i64, bin_op = 8 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%14) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i64_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: !llvm.ptr, %arg27: i64):
    %13 = "llvm.atomicrmw"(%arg26, %arg27) <{alignment = 8 : i64, bin_op = 8 : i64, ordering = 4 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i64_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr, %arg25: i64):
    %12 = "llvm.atomicrmw"(%arg24, %arg25) <{alignment = 8 : i64, bin_op = 8 : i64, ordering = 5 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%12) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i64_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: !llvm.ptr, %arg23: i64):
    %11 = "llvm.atomicrmw"(%arg22, %arg23) <{alignment = 8 : i64, bin_op = 8 : i64, ordering = 6 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_min_i64_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: !llvm.ptr, %arg21: i64):
    %10 = "llvm.atomicrmw"(%arg20, %arg21) <{alignment = 8 : i64, bin_op = 8 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%10) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: i64):
    %9 = "llvm.atomicrmw"(%arg18, %arg19) <{alignment = 8 : i64, bin_op = 9 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i64_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: !llvm.ptr, %arg17: i64):
    %8 = "llvm.atomicrmw"(%arg16, %arg17) <{alignment = 8 : i64, bin_op = 9 : i64, ordering = 4 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i64_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: !llvm.ptr, %arg15: i64):
    %7 = "llvm.atomicrmw"(%arg14, %arg15) <{alignment = 8 : i64, bin_op = 9 : i64, ordering = 5 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i64_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: i64):
    %6 = "llvm.atomicrmw"(%arg12, %arg13) <{alignment = 8 : i64, bin_op = 9 : i64, ordering = 6 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%6) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umax_i64_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: !llvm.ptr, %arg11: i64):
    %5 = "llvm.atomicrmw"(%arg10, %arg11) <{alignment = 8 : i64, bin_op = 9 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i64_monotonic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: !llvm.ptr, %arg9: i64):
    %4 = "llvm.atomicrmw"(%arg8, %arg9) <{alignment = 8 : i64, bin_op = 10 : i64, ordering = 2 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%4) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i64_acquire", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: i64):
    %3 = "llvm.atomicrmw"(%arg6, %arg7) <{alignment = 8 : i64, bin_op = 10 : i64, ordering = 4 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i64_release", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: !llvm.ptr, %arg5: i64):
    %2 = "llvm.atomicrmw"(%arg4, %arg5) <{alignment = 8 : i64, bin_op = 10 : i64, ordering = 5 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%2) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i64_acq_rel", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: !llvm.ptr, %arg3: i64):
    %1 = "llvm.atomicrmw"(%arg2, %arg3) <{alignment = 8 : i64, bin_op = 10 : i64, ordering = 6 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "atomicrmw_umin_i64_seq_cst", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: i64):
    %0 = "llvm.atomicrmw"(%arg0, %arg1) <{alignment = 8 : i64, bin_op = 10 : i64, ordering = 7 : i64}> : (!llvm.ptr, i64) -> i64
    "llvm.return"(%0) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

