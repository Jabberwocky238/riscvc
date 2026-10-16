"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, sym_name = "stest_f64i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: f64):
    %329 = "llvm.mlir.constant"() <{value = 2147483647 : i64}> : () -> i64
    %330 = "llvm.mlir.constant"() <{value = -2147483648 : i64}> : () -> i64
    %331 = "llvm.fptosi"(%arg54) : (f64) -> i64
    %332 = "llvm.icmp"(%331, %329) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %333 = "llvm.select"(%332, %331, %329) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %334 = "llvm.icmp"(%333, %330) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %335 = "llvm.select"(%334, %333, %330) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %336 = "llvm.trunc"(%335) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%336) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, sym_name = "utest_f64i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: f64):
    %324 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %325 = "llvm.fptoui"(%arg53) : (f64) -> i64
    %326 = "llvm.icmp"(%325, %324) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %327 = "llvm.select"(%326, %325, %324) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %328 = "llvm.trunc"(%327) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%328) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f64i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: f64):
    %316 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %317 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %318 = "llvm.fptosi"(%arg52) : (f64) -> i64
    %319 = "llvm.icmp"(%318, %316) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %320 = "llvm.select"(%319, %318, %316) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %321 = "llvm.icmp"(%320, %317) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %322 = "llvm.select"(%321, %320, %317) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %323 = "llvm.trunc"(%322) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%323) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "stest_f32i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: f32):
    %308 = "llvm.mlir.constant"() <{value = 2147483647 : i64}> : () -> i64
    %309 = "llvm.mlir.constant"() <{value = -2147483648 : i64}> : () -> i64
    %310 = "llvm.fptosi"(%arg51) : (f32) -> i64
    %311 = "llvm.icmp"(%310, %308) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %312 = "llvm.select"(%311, %310, %308) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %313 = "llvm.icmp"(%312, %309) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %314 = "llvm.select"(%313, %312, %309) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %315 = "llvm.trunc"(%314) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%315) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "utest_f32i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: f32):
    %303 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %304 = "llvm.fptoui"(%arg50) : (f32) -> i64
    %305 = "llvm.icmp"(%304, %303) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %306 = "llvm.select"(%305, %304, %303) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %307 = "llvm.trunc"(%306) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%307) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f32i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: f32):
    %295 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %296 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %297 = "llvm.fptosi"(%arg49) : (f32) -> i64
    %298 = "llvm.icmp"(%297, %295) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %299 = "llvm.select"(%298, %297, %295) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %300 = "llvm.icmp"(%299, %296) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %301 = "llvm.select"(%300, %299, %296) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %302 = "llvm.trunc"(%301) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%302) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, sym_name = "stest_f16i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: f16):
    %287 = "llvm.mlir.constant"() <{value = 2147483647 : i64}> : () -> i64
    %288 = "llvm.mlir.constant"() <{value = -2147483648 : i64}> : () -> i64
    %289 = "llvm.fptosi"(%arg48) : (f16) -> i64
    %290 = "llvm.icmp"(%289, %287) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %291 = "llvm.select"(%290, %289, %287) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %292 = "llvm.icmp"(%291, %288) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %293 = "llvm.select"(%292, %291, %288) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %294 = "llvm.trunc"(%293) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%294) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, sym_name = "utest_f16i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: f16):
    %282 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %283 = "llvm.fptoui"(%arg47) : (f16) -> i64
    %284 = "llvm.icmp"(%283, %282) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %285 = "llvm.select"(%284, %283, %282) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %286 = "llvm.trunc"(%285) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%286) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f16i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: f16):
    %274 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %275 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %276 = "llvm.fptosi"(%arg46) : (f16) -> i64
    %277 = "llvm.icmp"(%276, %274) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %278 = "llvm.select"(%277, %276, %274) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %279 = "llvm.icmp"(%278, %275) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %280 = "llvm.select"(%279, %278, %275) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %281 = "llvm.trunc"(%280) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%281) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f64)>, linkage = #llvm.linkage<external>, sym_name = "stest_f64i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: f64):
    %266 = "llvm.mlir.constant"() <{value = 32767 : i32}> : () -> i32
    %267 = "llvm.mlir.constant"() <{value = -32768 : i32}> : () -> i32
    %268 = "llvm.fptosi"(%arg45) : (f64) -> i32
    %269 = "llvm.icmp"(%268, %266) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %270 = "llvm.select"(%269, %268, %266) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %271 = "llvm.icmp"(%270, %267) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %272 = "llvm.select"(%271, %270, %267) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %273 = "llvm.trunc"(%272) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%273) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f64)>, linkage = #llvm.linkage<external>, sym_name = "utest_f64i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: f64):
    %261 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %262 = "llvm.fptoui"(%arg44) : (f64) -> i32
    %263 = "llvm.icmp"(%262, %261) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %264 = "llvm.select"(%263, %262, %261) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %265 = "llvm.trunc"(%264) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%265) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f64)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f64i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg43: f64):
    %253 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %254 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %255 = "llvm.fptosi"(%arg43) : (f64) -> i32
    %256 = "llvm.icmp"(%255, %253) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %257 = "llvm.select"(%256, %255, %253) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %258 = "llvm.icmp"(%257, %254) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %259 = "llvm.select"(%258, %257, %254) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %260 = "llvm.trunc"(%259) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%260) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, sym_name = "stest_f32i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: f32):
    %245 = "llvm.mlir.constant"() <{value = 32767 : i32}> : () -> i32
    %246 = "llvm.mlir.constant"() <{value = -32768 : i32}> : () -> i32
    %247 = "llvm.fptosi"(%arg42) : (f32) -> i32
    %248 = "llvm.icmp"(%247, %245) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %249 = "llvm.select"(%248, %247, %245) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %250 = "llvm.icmp"(%249, %246) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %251 = "llvm.select"(%250, %249, %246) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %252 = "llvm.trunc"(%251) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%252) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, sym_name = "utest_f32i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg41: f32):
    %240 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %241 = "llvm.fptoui"(%arg41) : (f32) -> i32
    %242 = "llvm.icmp"(%241, %240) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %243 = "llvm.select"(%242, %241, %240) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %244 = "llvm.trunc"(%243) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%244) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f32i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: f32):
    %232 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %233 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %234 = "llvm.fptosi"(%arg40) : (f32) -> i32
    %235 = "llvm.icmp"(%234, %232) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %236 = "llvm.select"(%235, %234, %232) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %237 = "llvm.icmp"(%236, %233) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %238 = "llvm.select"(%237, %236, %233) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %239 = "llvm.trunc"(%238) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%239) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, sym_name = "stest_f16i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: f16):
    %224 = "llvm.mlir.constant"() <{value = 32767 : i32}> : () -> i32
    %225 = "llvm.mlir.constant"() <{value = -32768 : i32}> : () -> i32
    %226 = "llvm.fptosi"(%arg39) : (f16) -> i32
    %227 = "llvm.icmp"(%226, %224) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %228 = "llvm.select"(%227, %226, %224) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %229 = "llvm.icmp"(%228, %225) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %230 = "llvm.select"(%229, %228, %225) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %231 = "llvm.trunc"(%230) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%231) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, sym_name = "utest_f16i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: f16):
    %219 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %220 = "llvm.fptoui"(%arg38) : (f16) -> i32
    %221 = "llvm.icmp"(%220, %219) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %222 = "llvm.select"(%221, %220, %219) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %223 = "llvm.trunc"(%222) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%223) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f16i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: f16):
    %211 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %212 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %213 = "llvm.fptosi"(%arg37) : (f16) -> i32
    %214 = "llvm.icmp"(%213, %211) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %215 = "llvm.select"(%214, %213, %211) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %216 = "llvm.icmp"(%215, %212) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %217 = "llvm.select"(%216, %215, %212) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    %218 = "llvm.trunc"(%217) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%218) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, sym_name = "stest_f64i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: f64):
    %203 = "llvm.mlir.constant"() <{value = 9223372036854775807 : i128}> : () -> i128
    %204 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i128}> : () -> i128
    %205 = "llvm.fptosi"(%arg36) : (f64) -> i128
    %206 = "llvm.icmp"(%205, %203) <{predicate = 2 : i64}> : (i128, i128) -> i1
    %207 = "llvm.select"(%206, %205, %203) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %208 = "llvm.icmp"(%207, %204) <{predicate = 4 : i64}> : (i128, i128) -> i1
    %209 = "llvm.select"(%208, %207, %204) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %210 = "llvm.trunc"(%209) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%210) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, sym_name = "utest_f64i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: f64):
    %198 = "llvm.mlir.constant"() <{value = 18446744073709551616 : i128}> : () -> i128
    %199 = "llvm.fptoui"(%arg35) : (f64) -> i128
    %200 = "llvm.icmp"(%199, %198) <{predicate = 6 : i64}> : (i128, i128) -> i1
    %201 = "llvm.select"(%200, %199, %198) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %202 = "llvm.trunc"(%201) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%202) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f64i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: f64):
    %190 = "llvm.mlir.constant"() <{value = 18446744073709551616 : i128}> : () -> i128
    %191 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %192 = "llvm.fptosi"(%arg34) : (f64) -> i128
    %193 = "llvm.icmp"(%192, %190) <{predicate = 2 : i64}> : (i128, i128) -> i1
    %194 = "llvm.select"(%193, %192, %190) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %195 = "llvm.icmp"(%194, %191) <{predicate = 4 : i64}> : (i128, i128) -> i1
    %196 = "llvm.select"(%195, %194, %191) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %197 = "llvm.trunc"(%196) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%197) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "stest_f32i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: f32):
    %182 = "llvm.mlir.constant"() <{value = 9223372036854775807 : i128}> : () -> i128
    %183 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i128}> : () -> i128
    %184 = "llvm.fptosi"(%arg33) : (f32) -> i128
    %185 = "llvm.icmp"(%184, %182) <{predicate = 2 : i64}> : (i128, i128) -> i1
    %186 = "llvm.select"(%185, %184, %182) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %187 = "llvm.icmp"(%186, %183) <{predicate = 4 : i64}> : (i128, i128) -> i1
    %188 = "llvm.select"(%187, %186, %183) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %189 = "llvm.trunc"(%188) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%189) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "utest_f32i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: f32):
    %177 = "llvm.mlir.constant"() <{value = 18446744073709551616 : i128}> : () -> i128
    %178 = "llvm.fptoui"(%arg32) : (f32) -> i128
    %179 = "llvm.icmp"(%178, %177) <{predicate = 6 : i64}> : (i128, i128) -> i1
    %180 = "llvm.select"(%179, %178, %177) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %181 = "llvm.trunc"(%180) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%181) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f32i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: f32):
    %169 = "llvm.mlir.constant"() <{value = 18446744073709551616 : i128}> : () -> i128
    %170 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %171 = "llvm.fptosi"(%arg31) : (f32) -> i128
    %172 = "llvm.icmp"(%171, %169) <{predicate = 2 : i64}> : (i128, i128) -> i1
    %173 = "llvm.select"(%172, %171, %169) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %174 = "llvm.icmp"(%173, %170) <{predicate = 4 : i64}> : (i128, i128) -> i1
    %175 = "llvm.select"(%174, %173, %170) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %176 = "llvm.trunc"(%175) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%176) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, sym_name = "stest_f16i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: f16):
    %161 = "llvm.mlir.constant"() <{value = 9223372036854775807 : i128}> : () -> i128
    %162 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i128}> : () -> i128
    %163 = "llvm.fptosi"(%arg30) : (f16) -> i128
    %164 = "llvm.icmp"(%163, %161) <{predicate = 2 : i64}> : (i128, i128) -> i1
    %165 = "llvm.select"(%164, %163, %161) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %166 = "llvm.icmp"(%165, %162) <{predicate = 4 : i64}> : (i128, i128) -> i1
    %167 = "llvm.select"(%166, %165, %162) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %168 = "llvm.trunc"(%167) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%168) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, sym_name = "utesth_f16i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: f16):
    %156 = "llvm.mlir.constant"() <{value = 18446744073709551616 : i128}> : () -> i128
    %157 = "llvm.fptoui"(%arg29) : (f16) -> i128
    %158 = "llvm.icmp"(%157, %156) <{predicate = 6 : i64}> : (i128, i128) -> i1
    %159 = "llvm.select"(%158, %157, %156) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %160 = "llvm.trunc"(%159) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%160) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f16i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: f16):
    %148 = "llvm.mlir.constant"() <{value = 18446744073709551616 : i128}> : () -> i128
    %149 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %150 = "llvm.fptosi"(%arg28) : (f16) -> i128
    %151 = "llvm.icmp"(%150, %148) <{predicate = 2 : i64}> : (i128, i128) -> i1
    %152 = "llvm.select"(%151, %150, %148) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %153 = "llvm.icmp"(%152, %149) <{predicate = 4 : i64}> : (i128, i128) -> i1
    %154 = "llvm.select"(%153, %152, %149) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i128, i128) -> i128
    %155 = "llvm.trunc"(%154) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%155) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, sym_name = "stest_f64i32_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: f64):
    %142 = "llvm.mlir.constant"() <{value = 2147483647 : i64}> : () -> i64
    %143 = "llvm.mlir.constant"() <{value = -2147483648 : i64}> : () -> i64
    %144 = "llvm.fptosi"(%arg27) : (f64) -> i64
    %145 = "llvm.intr.smin"(%144, %142) : (i64, i64) -> i64
    %146 = "llvm.intr.smax"(%145, %143) : (i64, i64) -> i64
    %147 = "llvm.trunc"(%146) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%147) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, sym_name = "utest_f64i32_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: f64):
    %138 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %139 = "llvm.fptoui"(%arg26) : (f64) -> i64
    %140 = "llvm.intr.umin"(%139, %138) : (i64, i64) -> i64
    %141 = "llvm.trunc"(%140) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%141) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f64)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f64i32_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: f64):
    %132 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %133 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %134 = "llvm.fptosi"(%arg25) : (f64) -> i64
    %135 = "llvm.intr.smin"(%134, %132) : (i64, i64) -> i64
    %136 = "llvm.intr.smax"(%135, %133) : (i64, i64) -> i64
    %137 = "llvm.trunc"(%136) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%137) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "stest_f32i32_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: f32):
    %126 = "llvm.mlir.constant"() <{value = 2147483647 : i64}> : () -> i64
    %127 = "llvm.mlir.constant"() <{value = -2147483648 : i64}> : () -> i64
    %128 = "llvm.fptosi"(%arg24) : (f32) -> i64
    %129 = "llvm.intr.smin"(%128, %126) : (i64, i64) -> i64
    %130 = "llvm.intr.smax"(%129, %127) : (i64, i64) -> i64
    %131 = "llvm.trunc"(%130) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%131) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "utest_f32i32_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: f32):
    %122 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %123 = "llvm.fptoui"(%arg23) : (f32) -> i64
    %124 = "llvm.intr.umin"(%123, %122) : (i64, i64) -> i64
    %125 = "llvm.trunc"(%124) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%125) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f32i32_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: f32):
    %116 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %117 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %118 = "llvm.fptosi"(%arg22) : (f32) -> i64
    %119 = "llvm.intr.smin"(%118, %116) : (i64, i64) -> i64
    %120 = "llvm.intr.smax"(%119, %117) : (i64, i64) -> i64
    %121 = "llvm.trunc"(%120) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%121) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, sym_name = "stest_f16i32_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: f16):
    %110 = "llvm.mlir.constant"() <{value = 2147483647 : i64}> : () -> i64
    %111 = "llvm.mlir.constant"() <{value = -2147483648 : i64}> : () -> i64
    %112 = "llvm.fptosi"(%arg21) : (f16) -> i64
    %113 = "llvm.intr.smin"(%112, %110) : (i64, i64) -> i64
    %114 = "llvm.intr.smax"(%113, %111) : (i64, i64) -> i64
    %115 = "llvm.trunc"(%114) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%115) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, sym_name = "utesth_f16i32_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: f16):
    %106 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %107 = "llvm.fptoui"(%arg20) : (f16) -> i64
    %108 = "llvm.intr.umin"(%107, %106) : (i64, i64) -> i64
    %109 = "llvm.trunc"(%108) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%109) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f16i32_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: f16):
    %100 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %101 = "llvm.mlir.constant"() <{value = 0 : i64}> : () -> i64
    %102 = "llvm.fptosi"(%arg19) : (f16) -> i64
    %103 = "llvm.intr.smin"(%102, %100) : (i64, i64) -> i64
    %104 = "llvm.intr.smax"(%103, %101) : (i64, i64) -> i64
    %105 = "llvm.trunc"(%104) <{overflowFlags = 0 : i32}> : (i64) -> i32
    "llvm.return"(%105) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f64)>, linkage = #llvm.linkage<external>, sym_name = "stest_f64i16_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: f64):
    %94 = "llvm.mlir.constant"() <{value = 32767 : i32}> : () -> i32
    %95 = "llvm.mlir.constant"() <{value = -32768 : i32}> : () -> i32
    %96 = "llvm.fptosi"(%arg18) : (f64) -> i32
    %97 = "llvm.intr.smin"(%96, %94) : (i32, i32) -> i32
    %98 = "llvm.intr.smax"(%97, %95) : (i32, i32) -> i32
    %99 = "llvm.trunc"(%98) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%99) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f64)>, linkage = #llvm.linkage<external>, sym_name = "utest_f64i16_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: f64):
    %90 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %91 = "llvm.fptoui"(%arg17) : (f64) -> i32
    %92 = "llvm.intr.umin"(%91, %90) : (i32, i32) -> i32
    %93 = "llvm.trunc"(%92) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%93) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f64)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f64i16_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: f64):
    %84 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %85 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %86 = "llvm.fptosi"(%arg16) : (f64) -> i32
    %87 = "llvm.intr.smin"(%86, %84) : (i32, i32) -> i32
    %88 = "llvm.intr.smax"(%87, %85) : (i32, i32) -> i32
    %89 = "llvm.trunc"(%88) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%89) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, sym_name = "stest_f32i16_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: f32):
    %78 = "llvm.mlir.constant"() <{value = 32767 : i32}> : () -> i32
    %79 = "llvm.mlir.constant"() <{value = -32768 : i32}> : () -> i32
    %80 = "llvm.fptosi"(%arg15) : (f32) -> i32
    %81 = "llvm.intr.smin"(%80, %78) : (i32, i32) -> i32
    %82 = "llvm.intr.smax"(%81, %79) : (i32, i32) -> i32
    %83 = "llvm.trunc"(%82) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%83) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, sym_name = "utest_f32i16_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: f32):
    %74 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %75 = "llvm.fptoui"(%arg14) : (f32) -> i32
    %76 = "llvm.intr.umin"(%75, %74) : (i32, i32) -> i32
    %77 = "llvm.trunc"(%76) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%77) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f32)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f32i16_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: f32):
    %68 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %69 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %70 = "llvm.fptosi"(%arg13) : (f32) -> i32
    %71 = "llvm.intr.smin"(%70, %68) : (i32, i32) -> i32
    %72 = "llvm.intr.smax"(%71, %69) : (i32, i32) -> i32
    %73 = "llvm.trunc"(%72) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%73) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, sym_name = "stest_f16i16_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: f16):
    %62 = "llvm.mlir.constant"() <{value = 32767 : i32}> : () -> i32
    %63 = "llvm.mlir.constant"() <{value = -32768 : i32}> : () -> i32
    %64 = "llvm.fptosi"(%arg12) : (f16) -> i32
    %65 = "llvm.intr.smin"(%64, %62) : (i32, i32) -> i32
    %66 = "llvm.intr.smax"(%65, %63) : (i32, i32) -> i32
    %67 = "llvm.trunc"(%66) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%67) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, sym_name = "utesth_f16i16_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: f16):
    %58 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %59 = "llvm.fptoui"(%arg11) : (f16) -> i32
    %60 = "llvm.intr.umin"(%59, %58) : (i32, i32) -> i32
    %61 = "llvm.trunc"(%60) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%61) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (f16)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f16i16_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: f16):
    %52 = "llvm.mlir.constant"() <{value = 65535 : i32}> : () -> i32
    %53 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %54 = "llvm.fptosi"(%arg10) : (f16) -> i32
    %55 = "llvm.intr.smin"(%54, %52) : (i32, i32) -> i32
    %56 = "llvm.intr.smax"(%55, %53) : (i32, i32) -> i32
    %57 = "llvm.trunc"(%56) <{overflowFlags = 0 : i32}> : (i32) -> i16
    "llvm.return"(%57) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, sym_name = "stest_f64i64_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: f64):
    %46 = "llvm.mlir.constant"() <{value = 9223372036854775807 : i128}> : () -> i128
    %47 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i128}> : () -> i128
    %48 = "llvm.fptosi"(%arg9) : (f64) -> i128
    %49 = "llvm.intr.smin"(%48, %46) : (i128, i128) -> i128
    %50 = "llvm.intr.smax"(%49, %47) : (i128, i128) -> i128
    %51 = "llvm.trunc"(%50) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%51) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, sym_name = "utest_f64i64_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: f64):
    %42 = "llvm.mlir.constant"() <{value = 18446744073709551616 : i128}> : () -> i128
    %43 = "llvm.fptoui"(%arg8) : (f64) -> i128
    %44 = "llvm.intr.umin"(%43, %42) : (i128, i128) -> i128
    %45 = "llvm.trunc"(%44) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f64)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f64i64_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: f64):
    %36 = "llvm.mlir.constant"() <{value = 18446744073709551616 : i128}> : () -> i128
    %37 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %38 = "llvm.fptosi"(%arg7) : (f64) -> i128
    %39 = "llvm.intr.smin"(%38, %36) : (i128, i128) -> i128
    %40 = "llvm.intr.smax"(%39, %37) : (i128, i128) -> i128
    %41 = "llvm.trunc"(%40) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%41) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "stest_f32i64_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: f32):
    %30 = "llvm.mlir.constant"() <{value = 9223372036854775807 : i128}> : () -> i128
    %31 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i128}> : () -> i128
    %32 = "llvm.fptosi"(%arg6) : (f32) -> i128
    %33 = "llvm.intr.smin"(%32, %30) : (i128, i128) -> i128
    %34 = "llvm.intr.smax"(%33, %31) : (i128, i128) -> i128
    %35 = "llvm.trunc"(%34) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%35) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "utest_f32i64_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: f32):
    %26 = "llvm.mlir.constant"() <{value = 18446744073709551616 : i128}> : () -> i128
    %27 = "llvm.fptoui"(%arg5) : (f32) -> i128
    %28 = "llvm.intr.umin"(%27, %26) : (i128, i128) -> i128
    %29 = "llvm.trunc"(%28) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%29) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f32)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f32i64_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: f32):
    %20 = "llvm.mlir.constant"() <{value = 18446744073709551616 : i128}> : () -> i128
    %21 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %22 = "llvm.fptosi"(%arg4) : (f32) -> i128
    %23 = "llvm.intr.smin"(%22, %20) : (i128, i128) -> i128
    %24 = "llvm.intr.smax"(%23, %21) : (i128, i128) -> i128
    %25 = "llvm.trunc"(%24) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%25) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, sym_name = "stest_f16i64_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: f16):
    %14 = "llvm.mlir.constant"() <{value = 9223372036854775807 : i128}> : () -> i128
    %15 = "llvm.mlir.constant"() <{value = -9223372036854775808 : i128}> : () -> i128
    %16 = "llvm.fptosi"(%arg3) : (f16) -> i128
    %17 = "llvm.intr.smin"(%16, %14) : (i128, i128) -> i128
    %18 = "llvm.intr.smax"(%17, %15) : (i128, i128) -> i128
    %19 = "llvm.trunc"(%18) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%19) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, sym_name = "utesth_f16i64_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: f16):
    %10 = "llvm.mlir.constant"() <{value = 18446744073709551616 : i128}> : () -> i128
    %11 = "llvm.fptoui"(%arg2) : (f16) -> i128
    %12 = "llvm.intr.umin"(%11, %10) : (i128, i128) -> i128
    %13 = "llvm.trunc"(%12) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%13) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (f16)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f16i64_mm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: f16):
    %4 = "llvm.mlir.constant"() <{value = 18446744073709551616 : i128}> : () -> i128
    %5 = "llvm.mlir.constant"() <{value = 0 : i128}> : () -> i128
    %6 = "llvm.fptosi"(%arg1) : (f16) -> i128
    %7 = "llvm.intr.smin"(%6, %4) : (i128, i128) -> i128
    %8 = "llvm.intr.smax"(%7, %5) : (i128, i128) -> i128
    %9 = "llvm.trunc"(%8) <{overflowFlags = 0 : i32}> : (i128) -> i64
    "llvm.return"(%9) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (f16)>, linkage = #llvm.linkage<external>, sym_name = "ustest_f16i32_nsat", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f16):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "llvm.fptosi"(%arg0) : (f16) -> i32
    %2 = "llvm.intr.smin"(%0, %1) : (i32, i32) -> i32
    %3 = "llvm.intr.smax"(%2, %0) : (i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

