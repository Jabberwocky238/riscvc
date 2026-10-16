"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_accept_a1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i32):
    %159 = "llvm.mlir.constant"() <{value = 37 : i32}> : () -> i32
    %160 = "llvm.mlir.constant"() <{value = 29 : i32}> : () -> i32
    %161 = "llvm.add"(%arg39, %159) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %162 = "llvm.mul"(%161, %160) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%162) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "add_mul_combine_accept_a2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32):
    %155 = "llvm.mlir.constant"() <{value = 37 : i32}> : () -> i32
    %156 = "llvm.mlir.constant"() <{value = 29 : i32}> : () -> i32
    %157 = "llvm.add"(%arg38, %155) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %158 = "llvm.mul"(%157, %156) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%158) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_accept_a3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i64):
    %151 = "llvm.mlir.constant"() <{value = 37 : i64}> : () -> i64
    %152 = "llvm.mlir.constant"() <{value = 29 : i64}> : () -> i64
    %153 = "llvm.add"(%arg37, %151) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %154 = "llvm.mul"(%153, %152) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%154) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_accept_b1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32):
    %147 = "llvm.mlir.constant"() <{value = 8953 : i32}> : () -> i32
    %148 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %149 = "llvm.add"(%arg36, %147) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %150 = "llvm.mul"(%149, %148) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%150) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "add_mul_combine_accept_b2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i32):
    %143 = "llvm.mlir.constant"() <{value = 8953 : i32}> : () -> i32
    %144 = "llvm.mlir.constant"() <{value = 23 : i32}> : () -> i32
    %145 = "llvm.add"(%arg35, %143) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %146 = "llvm.mul"(%145, %144) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%146) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_accept_b3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i64):
    %139 = "llvm.mlir.constant"() <{value = 8953 : i64}> : () -> i64
    %140 = "llvm.mlir.constant"() <{value = 23 : i64}> : () -> i64
    %141 = "llvm.add"(%arg34, %139) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %142 = "llvm.mul"(%141, %140) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%142) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_reject_a1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32):
    %135 = "llvm.mlir.constant"() <{value = 1971 : i32}> : () -> i32
    %136 = "llvm.mlir.constant"() <{value = 29 : i32}> : () -> i32
    %137 = "llvm.add"(%arg33, %135) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %138 = "llvm.mul"(%137, %136) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%138) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "add_mul_combine_reject_a2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32):
    %131 = "llvm.mlir.constant"() <{value = 1971 : i32}> : () -> i32
    %132 = "llvm.mlir.constant"() <{value = 29 : i32}> : () -> i32
    %133 = "llvm.add"(%arg32, %131) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %134 = "llvm.mul"(%133, %132) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%134) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_reject_a3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i64):
    %127 = "llvm.mlir.constant"() <{value = 1971 : i64}> : () -> i64
    %128 = "llvm.mlir.constant"() <{value = 29 : i64}> : () -> i64
    %129 = "llvm.add"(%arg31, %127) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %130 = "llvm.mul"(%129, %128) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%130) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_reject_c1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32):
    %123 = "llvm.mlir.constant"() <{value = 1000 : i32}> : () -> i32
    %124 = "llvm.mlir.constant"() <{value = 73 : i32}> : () -> i32
    %125 = "llvm.add"(%arg30, %123) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %126 = "llvm.mul"(%125, %124) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%126) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "add_mul_combine_reject_c2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i32):
    %119 = "llvm.mlir.constant"() <{value = 1000 : i32}> : () -> i32
    %120 = "llvm.mlir.constant"() <{value = 73 : i32}> : () -> i32
    %121 = "llvm.add"(%arg29, %119) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %122 = "llvm.mul"(%121, %120) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%122) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_reject_c3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i64):
    %115 = "llvm.mlir.constant"() <{value = 1000 : i64}> : () -> i64
    %116 = "llvm.mlir.constant"() <{value = 73 : i64}> : () -> i64
    %117 = "llvm.add"(%arg28, %115) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %118 = "llvm.mul"(%117, %116) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%118) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_reject_d1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32):
    %111 = "llvm.mlir.constant"() <{value = 1000 : i32}> : () -> i32
    %112 = "llvm.mlir.constant"() <{value = 192 : i32}> : () -> i32
    %113 = "llvm.add"(%arg27, %111) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %114 = "llvm.mul"(%113, %112) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%114) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "add_mul_combine_reject_d2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32):
    %107 = "llvm.mlir.constant"() <{value = 1000 : i32}> : () -> i32
    %108 = "llvm.mlir.constant"() <{value = 192 : i32}> : () -> i32
    %109 = "llvm.add"(%arg26, %107) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %110 = "llvm.mul"(%109, %108) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%110) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_reject_d3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i64):
    %103 = "llvm.mlir.constant"() <{value = 1000 : i64}> : () -> i64
    %104 = "llvm.mlir.constant"() <{value = 192 : i64}> : () -> i64
    %105 = "llvm.add"(%arg25, %103) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %106 = "llvm.mul"(%105, %104) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%106) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_reject_e1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32):
    %99 = "llvm.mlir.constant"() <{value = 29 : i32}> : () -> i32
    %100 = "llvm.mlir.constant"() <{value = 57159 : i32}> : () -> i32
    %101 = "llvm.mul"(%arg24, %99) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %102 = "llvm.add"(%101, %100) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%102) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "add_mul_combine_reject_e2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32):
    %95 = "llvm.mlir.constant"() <{value = 29 : i32}> : () -> i32
    %96 = "llvm.mlir.constant"() <{value = 57159 : i32}> : () -> i32
    %97 = "llvm.mul"(%arg23, %95) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %98 = "llvm.add"(%97, %96) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%98) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_reject_e3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i64):
    %91 = "llvm.mlir.constant"() <{value = 29 : i64}> : () -> i64
    %92 = "llvm.mlir.constant"() <{value = 57159 : i64}> : () -> i64
    %93 = "llvm.mul"(%arg22, %91) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %94 = "llvm.add"(%93, %92) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%94) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_reject_f1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32):
    %87 = "llvm.mlir.constant"() <{value = 29 : i32}> : () -> i32
    %88 = "llvm.mlir.constant"() <{value = 57199 : i32}> : () -> i32
    %89 = "llvm.mul"(%arg21, %87) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %90 = "llvm.add"(%89, %88) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%90) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "add_mul_combine_reject_f2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32):
    %83 = "llvm.mlir.constant"() <{value = 29 : i32}> : () -> i32
    %84 = "llvm.mlir.constant"() <{value = 57199 : i32}> : () -> i32
    %85 = "llvm.mul"(%arg20, %83) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %86 = "llvm.add"(%85, %84) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%86) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_reject_f3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i64):
    %79 = "llvm.mlir.constant"() <{value = 29 : i64}> : () -> i64
    %80 = "llvm.mlir.constant"() <{value = 57199 : i64}> : () -> i64
    %81 = "llvm.mul"(%arg19, %79) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %82 = "llvm.add"(%81, %80) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%82) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_reject_g1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %75 = "llvm.mlir.constant"() <{value = 73 : i32}> : () -> i32
    %76 = "llvm.mlir.constant"() <{value = 7310 : i32}> : () -> i32
    %77 = "llvm.mul"(%arg18, %75) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %78 = "llvm.add"(%77, %76) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%78) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "add_mul_combine_reject_g2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %71 = "llvm.mlir.constant"() <{value = 73 : i32}> : () -> i32
    %72 = "llvm.mlir.constant"() <{value = 7310 : i32}> : () -> i32
    %73 = "llvm.mul"(%arg17, %71) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %74 = "llvm.add"(%73, %72) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%74) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_reject_g3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i64):
    %67 = "llvm.mlir.constant"() <{value = 73 : i64}> : () -> i64
    %68 = "llvm.mlir.constant"() <{value = 7310 : i64}> : () -> i64
    %69 = "llvm.mul"(%arg16, %67) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %70 = "llvm.add"(%69, %68) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%70) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_mul_combine_infinite_loop", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i64):
    %63 = "llvm.mlir.constant"() <{value = 24 : i64}> : () -> i64
    %64 = "llvm.mlir.constant"() <{value = 2048 : i64}> : () -> i64
    %65 = "llvm.mul"(%arg15, %63) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %66 = "llvm.add"(%65, %64) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%66) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul3000_add8990_a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %59 = "llvm.mlir.constant"() <{value = 3000 : i32}> : () -> i32
    %60 = "llvm.mlir.constant"() <{value = 8990 : i32}> : () -> i32
    %61 = "llvm.mul"(%arg14, %59) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %62 = "llvm.add"(%61, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "mul3000_add8990_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %55 = "llvm.mlir.constant"() <{value = 3000 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 8990 : i32}> : () -> i32
    %57 = "llvm.mul"(%arg13, %55) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %58 = "llvm.add"(%57, %56) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%58) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul3000_add8990_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %51 = "llvm.mlir.constant"() <{value = 3000 : i64}> : () -> i64
    %52 = "llvm.mlir.constant"() <{value = 8990 : i64}> : () -> i64
    %53 = "llvm.mul"(%arg12, %51) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %54 = "llvm.add"(%53, %52) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%54) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mul3000_sub8990_a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %47 = "llvm.mlir.constant"() <{value = 3000 : i32}> : () -> i32
    %48 = "llvm.mlir.constant"() <{value = -8990 : i32}> : () -> i32
    %49 = "llvm.mul"(%arg11, %47) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %50 = "llvm.add"(%49, %48) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%50) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "mul3000_sub8990_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %43 = "llvm.mlir.constant"() <{value = 3000 : i32}> : () -> i32
    %44 = "llvm.mlir.constant"() <{value = -8990 : i32}> : () -> i32
    %45 = "llvm.mul"(%arg10, %43) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %46 = "llvm.add"(%45, %44) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%46) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul3000_sub8990_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64):
    %39 = "llvm.mlir.constant"() <{value = 3000 : i64}> : () -> i64
    %40 = "llvm.mlir.constant"() <{value = -8990 : i64}> : () -> i64
    %41 = "llvm.mul"(%arg9, %39) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %42 = "llvm.add"(%41, %40) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%42) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mulneg3000_add8990_a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %35 = "llvm.mlir.constant"() <{value = -3000 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = 8990 : i32}> : () -> i32
    %37 = "llvm.mul"(%arg8, %35) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %38 = "llvm.add"(%37, %36) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%38) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "mulneg3000_add8990_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %31 = "llvm.mlir.constant"() <{value = -3000 : i32}> : () -> i32
    %32 = "llvm.mlir.constant"() <{value = 8990 : i32}> : () -> i32
    %33 = "llvm.mul"(%arg7, %31) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %34 = "llvm.add"(%33, %32) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%34) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mulneg3000_add8990_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i64):
    %27 = "llvm.mlir.constant"() <{value = -3000 : i64}> : () -> i64
    %28 = "llvm.mlir.constant"() <{value = 8990 : i64}> : () -> i64
    %29 = "llvm.mul"(%arg6, %27) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %30 = "llvm.add"(%29, %28) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%30) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "mulneg3000_sub8990_a", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %23 = "llvm.mlir.constant"() <{value = -3000 : i32}> : () -> i32
    %24 = "llvm.mlir.constant"() <{value = -8990 : i32}> : () -> i32
    %25 = "llvm.mul"(%arg5, %23) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %26 = "llvm.add"(%25, %24) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%26) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "mulneg3000_sub8990_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %19 = "llvm.mlir.constant"() <{value = -3000 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = -8990 : i32}> : () -> i32
    %21 = "llvm.mul"(%arg4, %19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %22 = "llvm.add"(%21, %20) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%22) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mulneg3000_sub8990_c", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i64):
    %15 = "llvm.mlir.constant"() <{value = -3000 : i64}> : () -> i64
    %16 = "llvm.mlir.constant"() <{value = -8990 : i64}> : () -> i64
    %17 = "llvm.mul"(%arg3, %15) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %18 = "llvm.add"(%17, %16) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%18) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, sym_name = "pr53831", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %6 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %8 = "llvm.mlir.constant"() <{value = 2048 : i32}> : () -> i32
    %9 = "llvm.add"(%arg2, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %10 = "llvm.mul"(%9, %7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %11 = "llvm.add"(%10, %6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %12 = "llvm.mul"(%arg2, %7) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %13 = "llvm.add"(%12, %8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %14 = "llvm.icmp"(%13, %11) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%14) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i64 (i64, i32)>, linkage = #llvm.linkage<external>, sym_name = "sh2add_uw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %2 = "llvm.zext"(%arg1) : (i32) -> i64
    %3 = "llvm.shl"(%2, %0) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %4 = "llvm.shl"(%arg0, %1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %5 = "llvm.add"(%3, %4) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

