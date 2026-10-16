"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctlz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: i32):
    %207 = "llvm.intr.ctlz"(%arg84) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%207) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctlz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg83: i64):
    %206 = "llvm.intr.ctlz"(%arg83) <{is_zero_poison = false}> : (i64) -> i64
    "llvm.return"(%206) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cttz_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg82: i32):
    %205 = "llvm.intr.cttz"(%arg82) <{is_zero_poison = false}> : (i32) -> i32
    "llvm.return"(%205) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "cttz_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg81: i64):
    %204 = "llvm.intr.cttz"(%arg81) <{is_zero_poison = false}> : (i64) -> i64
    "llvm.return"(%204) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: i32):
    %203 = "llvm.intr.ctpop"(%arg80) : (i32) -> i32
    "llvm.return"(%203) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i32_ult_two", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg79: i32):
    %200 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %201 = "llvm.intr.ctpop"(%arg79) : (i32) -> i32
    %202 = "llvm.icmp"(%201, %200) <{predicate = 6 : i64}> : (i32, i32) -> i1
    "llvm.return"(%202) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i32_ugt_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: i32):
    %197 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %198 = "llvm.intr.ctpop"(%arg78) : (i32) -> i32
    %199 = "llvm.icmp"(%198, %197) <{predicate = 8 : i64}> : (i32, i32) -> i1
    "llvm.return"(%199) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i32_eq_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg77: i32):
    %194 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %195 = "llvm.intr.ctpop"(%arg77) : (i32) -> i32
    %196 = "llvm.icmp"(%195, %194) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%196) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i32_ne_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: i32):
    %191 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %192 = "llvm.intr.ctpop"(%arg76) : (i32) -> i32
    %193 = "llvm.icmp"(%192, %191) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.return"(%193) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi32> (vector<2xi32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg75: vector<2xi32>):
    %190 = "llvm.intr.ctpop"(%arg75) : (vector<2xi32>) -> vector<2xi32>
    "llvm.return"(%190) : (vector<2xi32>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i32_ult_two", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg74: vector<2xi32>):
    %187 = "llvm.mlir.constant"() <{value = dense<2> : vector<2xi32>}> : () -> vector<2xi32>
    %188 = "llvm.intr.ctpop"(%arg74) : (vector<2xi32>) -> vector<2xi32>
    %189 = "llvm.icmp"(%188, %187) <{predicate = 6 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    "llvm.return"(%189) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i32_ugt_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg73: vector<2xi32>):
    %184 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi32>}> : () -> vector<2xi32>
    %185 = "llvm.intr.ctpop"(%arg73) : (vector<2xi32>) -> vector<2xi32>
    %186 = "llvm.icmp"(%185, %184) <{predicate = 8 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    "llvm.return"(%186) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i32_eq_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: vector<2xi32>):
    %181 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi32>}> : () -> vector<2xi32>
    %182 = "llvm.intr.ctpop"(%arg72) : (vector<2xi32>) -> vector<2xi32>
    %183 = "llvm.icmp"(%182, %181) <{predicate = 0 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    "llvm.return"(%183) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi32>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i32_ne_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg71: vector<2xi32>):
    %178 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi32>}> : () -> vector<2xi32>
    %179 = "llvm.intr.ctpop"(%arg71) : (vector<2xi32>) -> vector<2xi32>
    %180 = "llvm.icmp"(%179, %178) <{predicate = 1 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    "llvm.return"(%180) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg70: i64):
    %177 = "llvm.intr.ctpop"(%arg70) : (i64) -> i64
    "llvm.return"(%177) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i64_ugt_two", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: i64):
    %174 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %175 = "llvm.intr.ctpop"(%arg69) : (i64) -> i64
    %176 = "llvm.icmp"(%175, %174) <{predicate = 6 : i64}> : (i64, i64) -> i1
    "llvm.return"(%176) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i64_ugt_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: i64):
    %171 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %172 = "llvm.intr.ctpop"(%arg68) : (i64) -> i64
    %173 = "llvm.icmp"(%172, %171) <{predicate = 8 : i64}> : (i64, i64) -> i1
    "llvm.return"(%173) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i64_eq_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg67: i64):
    %168 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %169 = "llvm.intr.ctpop"(%arg67) : (i64) -> i64
    %170 = "llvm.icmp"(%169, %168) <{predicate = 0 : i64}> : (i64, i64) -> i1
    "llvm.return"(%170) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_i64_ne_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: i64):
    %165 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %166 = "llvm.intr.ctpop"(%arg66) : (i64) -> i64
    %167 = "llvm.icmp"(%166, %165) <{predicate = 1 : i64}> : (i64, i64) -> i1
    "llvm.return"(%167) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi64> (vector<2xi64>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: vector<2xi64>):
    %164 = "llvm.intr.ctpop"(%arg65) : (vector<2xi64>) -> vector<2xi64>
    "llvm.return"(%164) : (vector<2xi64>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi64>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i64_ult_two", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: vector<2xi64>):
    %161 = "llvm.mlir.constant"() <{value = dense<2> : vector<2xi64>}> : () -> vector<2xi64>
    %162 = "llvm.intr.ctpop"(%arg64) : (vector<2xi64>) -> vector<2xi64>
    %163 = "llvm.icmp"(%162, %161) <{predicate = 6 : i64}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi1>
    "llvm.return"(%163) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi64>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i64_ugt_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: vector<2xi64>):
    %158 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi64>}> : () -> vector<2xi64>
    %159 = "llvm.intr.ctpop"(%arg63) : (vector<2xi64>) -> vector<2xi64>
    %160 = "llvm.icmp"(%159, %158) <{predicate = 8 : i64}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi1>
    "llvm.return"(%160) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi64>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i64_eq_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: vector<2xi64>):
    %155 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi64>}> : () -> vector<2xi64>
    %156 = "llvm.intr.ctpop"(%arg62) : (vector<2xi64>) -> vector<2xi64>
    %157 = "llvm.icmp"(%156, %155) <{predicate = 0 : i64}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi1>
    "llvm.return"(%157) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<vector<2xi1> (vector<2xi64>)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "ctpop_v2i64_ne_one", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg61: vector<2xi64>):
    %152 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi64>}> : () -> vector<2xi64>
    %153 = "llvm.intr.ctpop"(%arg61) : (vector<2xi64>) -> vector<2xi64>
    %154 = "llvm.icmp"(%153, %152) <{predicate = 1 : i64}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi1>
    "llvm.return"(%154) : (vector<2xi1>) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sextb_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i32):
    %149 = "llvm.mlir.constant"() <{value = 24 : i32}> : () -> i32
    %150 = "llvm.shl"(%arg60, %149) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %151 = "llvm.ashr"(%150, %149) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%151) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sextb_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: i64):
    %146 = "llvm.mlir.constant"() <{value = 56 : i64}> : () -> i64
    %147 = "llvm.shl"(%arg59, %146) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %148 = "llvm.ashr"(%147, %146) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%148) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sexth_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i32):
    %143 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %144 = "llvm.shl"(%arg58, %143) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %145 = "llvm.ashr"(%144, %143) <{isExact}> : (i32, i32) -> i32
    "llvm.return"(%145) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "sexth_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: i64):
    %140 = "llvm.mlir.constant"() <{value = 48 : i64}> : () -> i64
    %141 = "llvm.shl"(%arg57, %140) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %142 = "llvm.ashr"(%141, %140) <{isExact}> : (i64, i64) -> i64
    "llvm.return"(%142) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "min_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg55: i32, %arg56: i32):
    %138 = "llvm.icmp"(%arg55, %arg56) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %139 = "llvm.select"(%138, %arg55, %arg56) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%139) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "min_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: i64, %arg54: i64):
    %136 = "llvm.icmp"(%arg53, %arg54) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %137 = "llvm.select"(%136, %arg53, %arg54) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%137) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "max_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: i32, %arg52: i32):
    %134 = "llvm.icmp"(%arg51, %arg52) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %135 = "llvm.select"(%134, %arg51, %arg52) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%135) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "max_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i64, %arg50: i64):
    %132 = "llvm.icmp"(%arg49, %arg50) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %133 = "llvm.select"(%132, %arg49, %arg50) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%133) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "minu_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i32, %arg48: i32):
    %130 = "llvm.icmp"(%arg47, %arg48) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %131 = "llvm.select"(%130, %arg47, %arg48) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%131) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "minu_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: i64, %arg46: i64):
    %128 = "llvm.icmp"(%arg45, %arg46) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %129 = "llvm.select"(%128, %arg45, %arg46) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%129) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "maxu_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: i32, %arg44: i32):
    %126 = "llvm.icmp"(%arg43, %arg44) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %127 = "llvm.select"(%126, %arg43, %arg44) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%127) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "maxu_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: i64, %arg42: i64):
    %124 = "llvm.icmp"(%arg41, %arg42) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %125 = "llvm.select"(%124, %arg41, %arg42) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%125) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "abs_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32):
    %123 = "llvm.intr.abs"(%arg40) <{is_int_min_poison = true}> : (i32) -> i32
    "llvm.return"(%123) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "abs_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: i64):
    %122 = "llvm.intr.abs"(%arg39) <{is_int_min_poison = true}> : (i64) -> i64
    "llvm.return"(%122) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zexth_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32):
    %120 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %121 = "llvm.and"(%arg38, %120) : (i32, i32) -> i32
    "llvm.return"(%121) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zexth_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i64):
    %118 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %119 = "llvm.and"(%arg37, %118) : (i64, i64) -> i64
    "llvm.return"(%119) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "bswap_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32):
    %117 = "llvm.intr.bswap"(%arg36) : (i32) -> i32
    "llvm.return"(%117) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "bswap_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i64):
    %116 = "llvm.intr.bswap"(%arg35) : (i64) -> i64
    "llvm.return"(%116) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i16):
    %112 = "llvm.mlir.constant"() <{value = 257 : i16}> : () -> i16
    %113 = "llvm.mlir.constant"() <{value = 255 : i16}> : () -> i16
    %114 = "llvm.and"(%arg34, %112) : (i16, i16) -> i16
    %115 = "llvm.mul"(%114, %113) <{overflowFlags = 2 : i32}> : (i16, i16) -> i16
    "llvm.return"(%115) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32):
    %108 = "llvm.mlir.constant"() <{value = 16843009 : i32}> : () -> i32
    %109 = "llvm.mlir.constant"() <{value = 255 : i32}> : () -> i32
    %110 = "llvm.and"(%arg33, %108) : (i32, i32) -> i32
    %111 = "llvm.mul"(%110, %109) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.return"(%111) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "orc_b_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i64):
    %104 = "llvm.mlir.constant"() <{value = 72340172838076673 : i64}> : () -> i64
    %105 = "llvm.mlir.constant"() <{value = 255 : i64}> : () -> i64
    %106 = "llvm.and"(%arg32, %104) : (i64, i64) -> i64
    %107 = "llvm.mul"(%106, %105) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.return"(%107) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, sym_name = "srai_slli", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i16):
    %99 = "llvm.mlir.constant"() <{value = 9 : i16}> : () -> i16
    %100 = "llvm.mlir.constant"() <{value = 15 : i16}> : () -> i16
    %101 = "llvm.shl"(%arg31, %99) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %102 = "llvm.ashr"(%101, %100) : (i16, i16) -> i16
    %103 = "llvm.sext"(%102) : (i16) -> i32
    "llvm.return"(%103) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, sym_name = "srai_slli2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i16):
    %94 = "llvm.mlir.constant"() <{value = 9 : i16}> : () -> i16
    %95 = "llvm.mlir.constant"() <{value = 14 : i16}> : () -> i16
    %96 = "llvm.shl"(%arg30, %94) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %97 = "llvm.ashr"(%96, %95) : (i16, i16) -> i16
    %98 = "llvm.sext"(%97) : (i16) -> i32
    "llvm.return"(%98) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, sym_name = "ctpop32_eq_one_nonzero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i32):
    %91 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %92 = "llvm.intr.ctpop"(%arg29) : (i32) -> i32
    %93 = "llvm.icmp"(%92, %91) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "llvm.return"(%93) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i1 (i32)>, linkage = #llvm.linkage<external>, sym_name = "ctpop32_ne_one_nonzero", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32):
    %88 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %89 = "llvm.intr.ctpop"(%arg28) : (i32) -> i32
    %90 = "llvm.icmp"(%89, %88) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "llvm.return"(%90) : (i1) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i8, %arg27: i8):
    %84 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %85 = "llvm.icmp"(%arg26, %arg27) <{predicate = 6 : i64}> : (i8, i8) -> i1
    %86 = "llvm.select"(%85, %84, %arg27) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    %87 = "llvm.sub"(%arg26, %86) <{overflowFlags = 2 : i32}> : (i8, i8) -> i8
    "llvm.return"(%87) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i16, %arg25: i16):
    %80 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %81 = "llvm.icmp"(%arg24, %arg25) <{predicate = 6 : i64}> : (i16, i16) -> i1
    %82 = "llvm.select"(%81, %80, %arg25) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    %83 = "llvm.sub"(%arg24, %82) <{overflowFlags = 2 : i32}> : (i16, i16) -> i16
    "llvm.return"(%83) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32, %arg23: i32):
    %76 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %77 = "llvm.icmp"(%arg22, %arg23) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %78 = "llvm.select"(%77, %76, %arg23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %79 = "llvm.sub"(%arg22, %78) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i64, %arg21: i64):
    %72 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %73 = "llvm.icmp"(%arg20, %arg21) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %74 = "llvm.select"(%73, %72, %arg21) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %75 = "llvm.sub"(%arg20, %74) <{overflowFlags = 2 : i32}> : (i64, i64) -> i64
    "llvm.return"(%75) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i128, i128)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_i128", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i128, %arg19: i128):
    %68 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %69 = "llvm.icmp"(%arg18, %arg19) <{predicate = 6 : i64}> : (i128, i128) -> i1
    %70 = "llvm.select"(%69, %68, %arg19) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %71 = "llvm.sub"(%arg18, %70) <{overflowFlags = 2 : i32}> : (i128, i128) -> i128
    "llvm.return"(%71) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_multiuse_select_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32, %arg17: i32):
    %63 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %64 = "llvm.icmp"(%arg16, %arg17) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %65 = "llvm.select"(%64, %63, %arg17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %66 = "llvm.sub"(%arg16, %65) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %67 = "llvm.shl"(%66, %65) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%67) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_multiuse_cmp_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32, %arg15: i32):
    %55 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %57 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %58 = "llvm.icmp"(%arg14, %arg15) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %59 = "llvm.select"(%58, %55, %arg15) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %60 = "llvm.sub"(%arg14, %59) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    %61 = "llvm.select"(%58, %56, %57) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %62 = "llvm.shl"(%60, %61) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%62) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_multiuse_cmp_store_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32, %arg12: i32, %arg13: !llvm.ptr):
    %50 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %51 = "llvm.icmp"(%arg11, %arg12) <{predicate = 9 : i64}> : (i32, i32) -> i1
    %52 = "llvm.zext"(%51) : (i1) -> i32
    "llvm.store"(%52, %arg13) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %53 = "llvm.select"(%51, %arg12, %50) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %54 = "llvm.sub"(%arg11, %53) <{overflowFlags = 2 : i32}> : (i32, i32) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i8 (i8)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i8):
    %45 = "llvm.mlir.constant"() <{value = 12 : i8}> : () -> i8
    %46 = "llvm.mlir.constant"() <{value = -13 : i8}> : () -> i8
    %47 = "llvm.icmp"(%arg10, %45) <{predicate = 8 : i64}> : (i8, i8) -> i1
    %48 = "llvm.add"(%arg10, %46) <{overflowFlags = 0 : i32}> : (i8, i8) -> i8
    %49 = "llvm.select"(%47, %48, %arg10) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i8, i8) -> i8
    "llvm.return"(%49) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i16 (i16)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i16):
    %40 = "llvm.mlir.constant"() <{value = 250 : i16}> : () -> i16
    %41 = "llvm.mlir.constant"() <{value = -251 : i16}> : () -> i16
    %42 = "llvm.icmp"(%arg9, %40) <{predicate = 8 : i64}> : (i16, i16) -> i1
    %43 = "llvm.add"(%arg9, %41) <{overflowFlags = 0 : i32}> : (i16, i16) -> i16
    %44 = "llvm.select"(%42, %43, %arg9) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i16, i16) -> i16
    "llvm.return"(%44) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %35 = "llvm.mlir.constant"() <{value = 65520 : i32}> : () -> i32
    %36 = "llvm.mlir.constant"() <{value = -65521 : i32}> : () -> i32
    %37 = "llvm.icmp"(%arg8, %35) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %38 = "llvm.add"(%arg8, %36) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %39 = "llvm.select"(%37, %38, %arg8) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i64):
    %30 = "llvm.mlir.constant"() <{value = 4999999999 : i64}> : () -> i64
    %31 = "llvm.mlir.constant"() <{value = -5000000000 : i64}> : () -> i64
    %32 = "llvm.icmp"(%arg7, %30) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %33 = "llvm.add"(%arg7, %31) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %34 = "llvm.select"(%32, %33, %arg7) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    "llvm.return"(%34) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_multiuse_cmp_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32, %arg6: !llvm.ptr):
    %24 = "llvm.mlir.constant"() <{value = 65520 : i32}> : () -> i32
    %25 = "llvm.mlir.constant"() <{value = -65521 : i32}> : () -> i32
    %26 = "llvm.icmp"(%arg5, %24) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %27 = "llvm.zext"(%26) : (i1) -> i32
    "llvm.store"(%27, %arg6) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %28 = "llvm.add"(%arg5, %25) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %29 = "llvm.select"(%26, %28, %arg5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_multiuse_sub_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32, %arg4: !llvm.ptr):
    %19 = "llvm.mlir.constant"() <{value = -65521 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 65520 : i32}> : () -> i32
    %21 = "llvm.add"(%arg3, %19) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.store"(%21, %arg4) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    %22 = "llvm.icmp"(%arg3, %20) <{predicate = 8 : i64}> : (i32, i32) -> i1
    %23 = "llvm.select"(%22, %21, %arg3) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_swapped_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %14 = "llvm.mlir.constant"() <{value = 65521 : i32}> : () -> i32
    %15 = "llvm.mlir.constant"() <{value = -65521 : i32}> : () -> i32
    %16 = "llvm.icmp"(%arg2, %14) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %17 = "llvm.add"(%arg2, %15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %18 = "llvm.select"(%16, %arg2, %17) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%18) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i7 (i7)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_nsw_i7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i7):
    %7 = "llvm.mlir.constant"() <{value = 51 : i7}> : () -> i7
    %8 = "llvm.mlir.constant"() <{value = -18 : i7}> : () -> i7
    %9 = "llvm.mlir.constant"() <{value = 17 : i7}> : () -> i7
    %10 = "llvm.or"(%arg1, %7) : (i7, i7) -> i7
    %11 = "llvm.icmp"(%10, %8) <{predicate = 8 : i64}> : (i7, i7) -> i1
    %12 = "llvm.add"(%10, %9) <{overflowFlags = 1 : i32}> : (i7, i7) -> i7
    %13 = "llvm.select"(%11, %12, %10) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i7, i7) -> i7
    "llvm.return"(%13) : (i7) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i7 (i7)>, linkage = #llvm.linkage<external>, sym_name = "sub_if_uge_C_swapped_nsw_i7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i7):
    %0 = "llvm.mlir.constant"() <{value = 51 : i7}> : () -> i7
    %1 = "llvm.mlir.constant"() <{value = -17 : i7}> : () -> i7
    %2 = "llvm.mlir.constant"() <{value = 17 : i7}> : () -> i7
    %3 = "llvm.or"(%arg0, %0) : (i7, i7) -> i7
    %4 = "llvm.icmp"(%3, %1) <{predicate = 6 : i64}> : (i7, i7) -> i1
    %5 = "llvm.add"(%3, %2) <{overflowFlags = 1 : i32}> : (i7, i7) -> i7
    %6 = "llvm.select"(%4, %3, %5) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i7, i7) -> i7
    "llvm.return"(%6) : (i7) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

