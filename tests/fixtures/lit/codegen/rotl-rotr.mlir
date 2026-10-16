"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotl_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i32, %arg59: i32):
    %169 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %170 = "llvm.sub"(%169, %arg59) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %171 = "llvm.shl"(%arg58, %arg59) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %172 = "llvm.lshr"(%arg58, %170) : (i32, i32) -> i32
    %173 = "llvm.or"(%171, %172) : (i32, i32) -> i32
    "llvm.return"(%173) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotr_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i32, %arg57: i32):
    %164 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %165 = "llvm.sub"(%164, %arg57) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %166 = "llvm.lshr"(%arg56, %arg57) : (i32, i32) -> i32
    %167 = "llvm.shl"(%arg56, %165) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %168 = "llvm.or"(%166, %167) : (i32, i32) -> i32
    "llvm.return"(%168) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotl_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i64, %arg55: i64):
    %159 = "llvm.mlir.constant"() <{value = 64 : i64}> : () -> i64
    %160 = "llvm.sub"(%159, %arg55) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %161 = "llvm.shl"(%arg54, %arg55) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %162 = "llvm.lshr"(%arg54, %160) : (i64, i64) -> i64
    %163 = "llvm.or"(%161, %162) : (i64, i64) -> i64
    "llvm.return"(%163) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotr_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i64, %arg53: i64):
    %154 = "llvm.mlir.constant"() <{value = 64 : i64}> : () -> i64
    %155 = "llvm.sub"(%154, %arg53) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %156 = "llvm.lshr"(%arg52, %arg53) : (i64, i64) -> i64
    %157 = "llvm.shl"(%arg52, %155) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %158 = "llvm.or"(%156, %157) : (i64, i64) -> i64
    "llvm.return"(%158) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotl_32_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i32, %arg51: i32):
    %147 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %148 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %149 = "llvm.sub"(%147, %arg51) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %150 = "llvm.and"(%149, %148) : (i32, i32) -> i32
    %151 = "llvm.shl"(%arg50, %arg51) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %152 = "llvm.lshr"(%arg50, %150) : (i32, i32) -> i32
    %153 = "llvm.or"(%151, %152) : (i32, i32) -> i32
    "llvm.return"(%153) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotl_32_mask_and_63_and_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32, %arg49: i32):
    %138 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %139 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %140 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %141 = "llvm.and"(%arg49, %138) : (i32, i32) -> i32
    %142 = "llvm.shl"(%arg48, %141) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %143 = "llvm.sub"(%139, %arg49) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %144 = "llvm.and"(%143, %140) : (i32, i32) -> i32
    %145 = "llvm.lshr"(%arg48, %144) : (i32, i32) -> i32
    %146 = "llvm.or"(%142, %145) : (i32, i32) -> i32
    "llvm.return"(%146) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotl_32_mask_or_64_or_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i32, %arg47: i32):
    %129 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %130 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %131 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %132 = "llvm.or"(%arg47, %129) : (i32, i32) -> i32
    %133 = "llvm.shl"(%arg46, %132) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %134 = "llvm.sub"(%130, %arg47) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %135 = "llvm.or"(%134, %131) : (i32, i32) -> i32
    %136 = "llvm.lshr"(%arg46, %135) : (i32, i32) -> i32
    %137 = "llvm.or"(%133, %136) : (i32, i32) -> i32
    "llvm.return"(%137) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotr_32_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32, %arg45: i32):
    %122 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %123 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %124 = "llvm.sub"(%122, %arg45) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %125 = "llvm.and"(%124, %123) : (i32, i32) -> i32
    %126 = "llvm.lshr"(%arg44, %arg45) : (i32, i32) -> i32
    %127 = "llvm.shl"(%arg44, %125) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %128 = "llvm.or"(%126, %127) : (i32, i32) -> i32
    "llvm.return"(%128) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotr_32_mask_and_63_and_31", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i32, %arg43: i32):
    %113 = "llvm.mlir.constant"() <{value = 63 : i32}> : () -> i32
    %114 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %115 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %116 = "llvm.and"(%arg43, %113) : (i32, i32) -> i32
    %117 = "llvm.lshr"(%arg42, %116) : (i32, i32) -> i32
    %118 = "llvm.sub"(%114, %arg43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %119 = "llvm.and"(%118, %115) : (i32, i32) -> i32
    %120 = "llvm.shl"(%arg42, %119) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %121 = "llvm.or"(%117, %120) : (i32, i32) -> i32
    "llvm.return"(%121) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotr_32_mask_or_64_or_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32, %arg41: i32):
    %104 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %105 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %106 = "llvm.mlir.constant"() <{value = 32 : i32}> : () -> i32
    %107 = "llvm.or"(%arg41, %104) : (i32, i32) -> i32
    %108 = "llvm.lshr"(%arg40, %107) : (i32, i32) -> i32
    %109 = "llvm.sub"(%105, %arg41) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %110 = "llvm.or"(%109, %106) : (i32, i32) -> i32
    %111 = "llvm.shl"(%arg40, %110) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %112 = "llvm.or"(%108, %111) : (i32, i32) -> i32
    "llvm.return"(%112) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotl_64_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i64, %arg39: i64):
    %97 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %98 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %99 = "llvm.sub"(%97, %arg39) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %100 = "llvm.and"(%99, %98) : (i64, i64) -> i64
    %101 = "llvm.shl"(%arg38, %arg39) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %102 = "llvm.lshr"(%arg38, %100) : (i64, i64) -> i64
    %103 = "llvm.or"(%101, %102) : (i64, i64) -> i64
    "llvm.return"(%103) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotl_64_mask_and_127_and_63", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i64, %arg37: i64):
    %88 = "llvm.mlir.constant"() <{value = 127 : i64}> : () -> i64
    %89 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %90 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %91 = "llvm.and"(%arg37, %88) : (i64, i64) -> i64
    %92 = "llvm.shl"(%arg36, %91) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %93 = "llvm.sub"(%89, %arg37) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %94 = "llvm.and"(%93, %90) : (i64, i64) -> i64
    %95 = "llvm.lshr"(%arg36, %94) : (i64, i64) -> i64
    %96 = "llvm.or"(%92, %95) : (i64, i64) -> i64
    "llvm.return"(%96) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotl_64_mask_or_128_or_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i64, %arg35: i64):
    %79 = "llvm.mlir.constant"() <{value = 128 : i64}> : () -> i64
    %80 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %81 = "llvm.mlir.constant"() <{value = 64 : i64}> : () -> i64
    %82 = "llvm.or"(%arg35, %79) : (i64, i64) -> i64
    %83 = "llvm.shl"(%arg34, %82) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %84 = "llvm.sub"(%80, %arg35) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %85 = "llvm.or"(%84, %81) : (i64, i64) -> i64
    %86 = "llvm.lshr"(%arg34, %85) : (i64, i64) -> i64
    %87 = "llvm.or"(%83, %86) : (i64, i64) -> i64
    "llvm.return"(%87) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotr_64_mask", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i64, %arg33: i64):
    %72 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %73 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %74 = "llvm.sub"(%72, %arg33) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %75 = "llvm.and"(%74, %73) : (i64, i64) -> i64
    %76 = "llvm.lshr"(%arg32, %arg33) : (i64, i64) -> i64
    %77 = "llvm.shl"(%arg32, %75) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %78 = "llvm.or"(%76, %77) : (i64, i64) -> i64
    "llvm.return"(%78) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotr_64_mask_and_127_and_63", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i64, %arg31: i64):
    %63 = "llvm.mlir.constant"() <{value = 127 : i64}> : () -> i64
    %64 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %65 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %66 = "llvm.and"(%arg31, %63) : (i64, i64) -> i64
    %67 = "llvm.lshr"(%arg30, %66) : (i64, i64) -> i64
    %68 = "llvm.sub"(%64, %arg31) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %69 = "llvm.and"(%68, %65) : (i64, i64) -> i64
    %70 = "llvm.shl"(%arg30, %69) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %71 = "llvm.or"(%67, %70) : (i64, i64) -> i64
    "llvm.return"(%71) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotr_64_mask_or_128_or_64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i64, %arg29: i64):
    %54 = "llvm.mlir.constant"() <{value = 128 : i64}> : () -> i64
    %55 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %56 = "llvm.mlir.constant"() <{value = 64 : i64}> : () -> i64
    %57 = "llvm.or"(%arg29, %54) : (i64, i64) -> i64
    %58 = "llvm.lshr"(%arg28, %57) : (i64, i64) -> i64
    %59 = "llvm.sub"(%55, %arg29) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %60 = "llvm.or"(%59, %56) : (i64, i64) -> i64
    %61 = "llvm.shl"(%arg28, %60) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %62 = "llvm.or"(%58, %61) : (i64, i64) -> i64
    "llvm.return"(%62) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "rotl_32_mask_shared", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32, %arg26: i32, %arg27: i32):
    %49 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %50 = "llvm.and"(%arg27, %49) : (i32, i32) -> i32
    %51 = "llvm.intr.fshl"(%arg25, %arg25, %50) : (i32, i32, i32) -> i32
    %52 = "llvm.shl"(%arg26, %50) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %53 = "llvm.add"(%51, %52) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "rotl_64_mask_shared", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i64, %arg23: i64, %arg24: i64):
    %44 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %45 = "llvm.and"(%arg24, %44) : (i64, i64) -> i64
    %46 = "llvm.intr.fshl"(%arg22, %arg22, %45) : (i64, i64, i64) -> i64
    %47 = "llvm.shl"(%arg23, %45) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %48 = "llvm.add"(%46, %47) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%48) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "rotr_32_mask_shared", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32, %arg20: i32, %arg21: i32):
    %39 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %40 = "llvm.and"(%arg21, %39) : (i32, i32) -> i32
    %41 = "llvm.intr.fshr"(%arg19, %arg19, %40) : (i32, i32, i32) -> i32
    %42 = "llvm.shl"(%arg20, %40) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %43 = "llvm.add"(%41, %42) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "rotr_64_mask_shared", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64, %arg17: i64, %arg18: i64):
    %34 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %35 = "llvm.and"(%arg18, %34) : (i64, i64) -> i64
    %36 = "llvm.intr.fshr"(%arg16, %arg16, %35) : (i64, i64, i64) -> i64
    %37 = "llvm.shl"(%arg17, %35) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %38 = "llvm.add"(%36, %37) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%38) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "rotl_32_mask_multiple", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32, %arg14: i32, %arg15: i32):
    %29 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %30 = "llvm.and"(%arg15, %29) : (i32, i32) -> i32
    %31 = "llvm.intr.fshl"(%arg13, %arg13, %30) : (i32, i32, i32) -> i32
    %32 = "llvm.intr.fshl"(%arg14, %arg14, %30) : (i32, i32, i32) -> i32
    %33 = "llvm.add"(%31, %32) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotl_64_mask_multiple", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64, %arg11: i64, %arg12: i64):
    %24 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %25 = "llvm.and"(%arg12, %24) : (i64, i64) -> i64
    %26 = "llvm.intr.fshl"(%arg10, %arg10, %25) : (i64, i64, i64) -> i64
    %27 = "llvm.intr.fshl"(%arg11, %arg11, %25) : (i64, i64, i64) -> i64
    %28 = "llvm.add"(%26, %27) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%28) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "rotr_32_mask_multiple", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32, %arg8: i32, %arg9: i32):
    %19 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %20 = "llvm.and"(%arg9, %19) : (i32, i32) -> i32
    %21 = "llvm.intr.fshr"(%arg7, %arg7, %20) : (i32, i32, i32) -> i32
    %22 = "llvm.intr.fshr"(%arg8, %arg8, %20) : (i32, i32, i32) -> i32
    %23 = "llvm.add"(%21, %22) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotr_64_mask_multiple", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i64, %arg5: i64, %arg6: i64):
    %14 = "llvm.mlir.constant"() <{value = 63 : i64}> : () -> i64
    %15 = "llvm.and"(%arg6, %14) : (i64, i64) -> i64
    %16 = "llvm.intr.fshr"(%arg4, %arg4, %15) : (i64, i64, i64) -> i64
    %17 = "llvm.intr.fshr"(%arg5, %arg5, %15) : (i64, i64, i64) -> i64
    %18 = "llvm.add"(%16, %17) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%18) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotl_64_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64, %arg3: i32):
    %7 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %8 = "llvm.sub"(%7, %arg3) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %9 = "llvm.zext"(%8) : (i32) -> i64
    %10 = "llvm.zext"(%arg3) : (i32) -> i64
    %11 = "llvm.shl"(%arg2, %10) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %12 = "llvm.lshr"(%arg2, %9) : (i64, i64) -> i64
    %13 = "llvm.or"(%11, %12) : (i64, i64) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "rotr_64_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 64 : i32}> : () -> i32
    %1 = "llvm.sub"(%0, %arg1) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %2 = "llvm.zext"(%1) : (i32) -> i64
    %3 = "llvm.zext"(%arg1) : (i32) -> i64
    %4 = "llvm.lshr"(%arg0, %3) : (i64, i64) -> i64
    %5 = "llvm.shl"(%arg0, %2) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %6 = "llvm.or"(%4, %5) : (i64, i64) -> i64
    "llvm.return"(%6) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

