"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclr_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i32, %arg61: i32):
    %153 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %154 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %155 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %156 = "llvm.and"(%arg61, %153) : (i32, i32) -> i32
    %157 = "llvm.shl"(%154, %156) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %158 = "llvm.xor"(%157, %155) : (i32, i32) -> i32
    %159 = "llvm.and"(%158, %arg60) : (i32, i32) -> i32
    "llvm.return"(%159) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclr_i32_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i32, %arg59: i32):
    %148 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %149 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %150 = "llvm.shl"(%148, %arg59) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %151 = "llvm.xor"(%150, %149) : (i32, i32) -> i32
    %152 = "llvm.and"(%151, %arg58) : (i32, i32) -> i32
    "llvm.return"(%152) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclr_i32_mask_multiple", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: i32, %arg56: i32, %arg57: i32):
    %139 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %140 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %141 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %142 = "llvm.and"(%arg57, %139) : (i32, i32) -> i32
    %143 = "llvm.shl"(%140, %142) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %144 = "llvm.xor"(%143, %141) : (i32, i32) -> i32
    %145 = "llvm.and"(%144, %arg55) : (i32, i32) -> i32
    %146 = "llvm.or"(%arg56, %143) : (i32, i32) -> i32
    %147 = "llvm.add"(%145, %146) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%147) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclr_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: i64, %arg54: i64):
    %132 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %133 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %134 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %135 = "llvm.and"(%arg54, %132) : (i64, i64) -> i64
    %136 = "llvm.shl"(%133, %135) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    %137 = "llvm.xor"(%136, %134) : (i64, i64) -> i64
    %138 = "llvm.and"(%137, %arg53) : (i64, i64) -> i64
    "llvm.return"(%138) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bset_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: i32, %arg52: i32):
    %127 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %128 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %129 = "llvm.and"(%arg52, %127) : (i32, i32) -> i32
    %130 = "llvm.shl"(%128, %129) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %131 = "llvm.or"(%130, %arg51) : (i32, i32) -> i32
    "llvm.return"(%131) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bset_i32_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i32, %arg50: i32):
    %124 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %125 = "llvm.shl"(%124, %arg50) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %126 = "llvm.or"(%125, %arg49) : (i32, i32) -> i32
    "llvm.return"(%126) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bset_i32_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32):
    %122 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %123 = "llvm.shl"(%122, %arg48) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%123) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bset_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i64, %arg47: i64):
    %115 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %116 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %117 = "llvm.trunc"(%arg47) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %118 = "llvm.and"(%117, %115) : (i32, i32) -> i32
    %119 = "llvm.shl"(%116, %118) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %120 = "llvm.sext"(%119) : (i32) -> i64
    %121 = "llvm.or"(%120, %arg46) : (i64, i64) -> i64
    "llvm.return"(%121) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bset_i64_zero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i64):
    %113 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %114 = "llvm.shl"(%113, %arg45) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%114) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binv_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i32, %arg44: i32):
    %108 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %109 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %110 = "llvm.and"(%arg44, %108) : (i32, i32) -> i32
    %111 = "llvm.shl"(%109, %110) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %112 = "llvm.xor"(%111, %arg43) : (i32, i32) -> i32
    "llvm.return"(%112) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binv_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i64, %arg42: i64):
    %101 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %102 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %103 = "llvm.trunc"(%arg42) <{overflowFlags = 0 : i32}> : (i64) -> i32
    %104 = "llvm.and"(%103, %101) : (i32, i32) -> i32
    %105 = "llvm.shl"(%102, %104) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %106 = "llvm.sext"(%105) : (i32) -> i64
    %107 = "llvm.xor"(%106, %arg41) : (i64, i64) -> i64
    "llvm.return"(%107) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bext_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i32, %arg40: i32):
    %96 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %97 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %98 = "llvm.and"(%arg40, %96) : (i32, i32) -> i32
    %99 = "llvm.lshr"(%arg39, %98) : (i32, i32) -> i32
    %100 = "llvm.and"(%99, %97) : (i32, i32) -> i32
    "llvm.return"(%100) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bext_i32_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i32, %arg38: i32):
    %93 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %94 = "llvm.lshr"(%arg37, %arg38) : (i32, i32) -> i32
    %95 = "llvm.and"(%94, %93) : (i32, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bext_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i64, %arg36: i64):
    %88 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %89 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %90 = "llvm.and"(%arg36, %88) : (i64, i64) -> i64
    %91 = "llvm.lshr"(%arg35, %90) : (i64, i64) -> i64
    %92 = "llvm.and"(%91, %89) : (i64, i64) -> i64
    "llvm.return"(%92) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bexti_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i32):
    %84 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %85 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %86 = "llvm.lshr"(%arg34, %84) : (i32, i32) -> i32
    %87 = "llvm.and"(%86, %85) : (i32, i32) -> i32
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bexti_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i64):
    %80 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %81 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %82 = "llvm.lshr"(%arg33, %80) : (i64, i64) -> i64
    %83 = "llvm.and"(%82, %81) : (i64, i64) -> i64
    "llvm.return"(%83) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "bexti_i32_cmp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32):
    %75 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %76 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %77 = "llvm.and"(%arg32, %75) : (i32, i32) -> i32
    %78 = "llvm.icmp"(%77, %76) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %79 = "llvm.zext"(%78) : (i1) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bexti_i64_cmp", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i64):
    %70 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %71 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %72 = "llvm.and"(%arg31, %70) : (i64, i64) -> i64
    %73 = "llvm.icmp"(%72, %71) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %74 = "llvm.zext"(%73) : (i1) -> i64
    "llvm.return"(%74) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i32_10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32):
    %68 = "llvm.mlir.constant"() <{value = -1025 : i32}> : () -> i32
    %69 = "llvm.and"(%arg30, %68) : (i32, i32) -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i32_11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i32):
    %66 = "llvm.mlir.constant"() <{value = -2049 : i32}> : () -> i32
    %67 = "llvm.and"(%arg29, %66) : (i32, i32) -> i32
    "llvm.return"(%67) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i32_30", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32):
    %64 = "llvm.mlir.constant"() <{value = -1073741825 : i32}> : () -> i32
    %65 = "llvm.and"(%arg28, %64) : (i32, i32) -> i32
    "llvm.return"(%65) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i32_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32):
    %62 = "llvm.mlir.constant"() <{value = 2147483647 : i32}> : () -> i32
    %63 = "llvm.and"(%arg27, %62) : (i32, i32) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i32_large0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32):
    %60 = "llvm.mlir.constant"() <{value = -16777472 : i32}> : () -> i32
    %61 = "llvm.and"(%arg26, %60) : (i32, i32) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bclri_i32_large1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32):
    %58 = "llvm.mlir.constant"() <{value = -16842753 : i32}> : () -> i32
    %59 = "llvm.and"(%arg25, %58) : (i32, i32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "bclri_i32_large2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32):
    %56 = "llvm.mlir.constant"() <{value = 2147483643 : i32}> : () -> i32
    %57 = "llvm.and"(%arg24, %56) : (i32, i32) -> i32
    "llvm.return"(%57) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "bclri_i32_large3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32):
    %54 = "llvm.mlir.constant"() <{value = 2147483642 : i32}> : () -> i32
    %55 = "llvm.and"(%arg23, %54) : (i32, i32) -> i32
    "llvm.return"(%55) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bseti_i32_10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32):
    %52 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %53 = "llvm.or"(%arg22, %52) : (i32, i32) -> i32
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bseti_i32_11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32):
    %50 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %51 = "llvm.or"(%arg21, %50) : (i32, i32) -> i32
    "llvm.return"(%51) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bseti_i32_30", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32):
    %48 = "llvm.mlir.constant"() <{value = 1073741824 : i32}> : () -> i32
    %49 = "llvm.or"(%arg20, %48) : (i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bseti_i32_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32):
    %46 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %47 = "llvm.or"(%arg19, %46) : (i32, i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binvi_i32_10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %44 = "llvm.mlir.constant"() <{value = 1024 : i32}> : () -> i32
    %45 = "llvm.xor"(%arg18, %44) : (i32, i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binvi_i32_11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %42 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %43 = "llvm.xor"(%arg17, %42) : (i32, i32) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binvi_i32_30", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %40 = "llvm.mlir.constant"() <{value = 1073741824 : i32}> : () -> i32
    %41 = "llvm.xor"(%arg16, %40) : (i32, i32) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "binvi_i32_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %38 = "llvm.mlir.constant"() <{value = -2147483648 : i32}> : () -> i32
    %39 = "llvm.xor"(%arg15, %38) : (i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "xor_i32_4098", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %36 = "llvm.mlir.constant"() <{value = 4098 : i32}> : () -> i32
    %37 = "llvm.xor"(%arg14, %36) : (i32, i32) -> i32
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "xor_i32_4099", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %34 = "llvm.mlir.constant"() <{value = 4099 : i32}> : () -> i32
    %35 = "llvm.xor"(%arg13, %34) : (i32, i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "xor_i32_96", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %32 = "llvm.mlir.constant"() <{value = 96 : i32}> : () -> i32
    %33 = "llvm.xor"(%arg12, %32) : (i32, i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "xor_i32_66901", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %30 = "llvm.mlir.constant"() <{value = 66901 : i32}> : () -> i32
    %31 = "llvm.xor"(%arg11, %30) : (i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_i32_4098", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %28 = "llvm.mlir.constant"() <{value = 4098 : i32}> : () -> i32
    %29 = "llvm.or"(%arg10, %28) : (i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_i32_4099", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %26 = "llvm.mlir.constant"() <{value = 4099 : i32}> : () -> i32
    %27 = "llvm.or"(%arg9, %26) : (i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_i32_96", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %24 = "llvm.mlir.constant"() <{value = 96 : i32}> : () -> i32
    %25 = "llvm.or"(%arg8, %24) : (i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "or_i32_66901", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %22 = "llvm.mlir.constant"() <{value = 66901 : i32}> : () -> i32
    %23 = "llvm.or"(%arg7, %22) : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bset_trailing_ones_i32_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %17 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %18 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %19 = "llvm.and"(%arg6, %17) : (i32, i32) -> i32
    %20 = "llvm.shl"(%18, %19) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %21 = "llvm.xor"(%20, %18) : (i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bset_trailing_ones_i32_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %14 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %15 = "llvm.shl"(%14, %arg5) <{overflowFlags = 1 : i32}> : (i32, i32) -> i32
    %16 = "llvm.xor"(%15, %14) : (i32, i32) -> i32
    "llvm.return"(%16) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bset_trailing_ones_i64_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64):
    %9 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %10 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %11 = "llvm.and"(%arg4, %9) : (i64, i64) -> i64
    %12 = "llvm.shl"(%10, %11) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %13 = "llvm.xor"(%12, %10) : (i64, i64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bset_trailing_ones_i64_no_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %6 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %7 = "llvm.shl"(%6, %arg3) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %8 = "llvm.xor"(%7, %6) : (i64, i64) -> i64
    "llvm.return"(%8) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eq_pow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %4 = "llvm.mlir.constant"() <{value = 32768 : i32}> : () -> i32
    %5 = "llvm.icmp"(%arg2, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%5) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_ne_pow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %2 = "llvm.mlir.constant"() <{value = 32768 : i32}> : () -> i32
    %3 = "llvm.icmp"(%arg1, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%3) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "icmp_eq_nonpow2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 32767 : i32}> : () -> i32
    %1 = "llvm.icmp"(%arg0, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%1) : (i1) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

