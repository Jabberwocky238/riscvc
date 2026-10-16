"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_addw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg304: i32, %arg305: i32):
    %206 = "llvm.add"(%arg304, %arg305) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%206) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_addw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg302: i32, %arg303: i32):
    %205 = "llvm.add"(%arg302, %arg303) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%205) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_addw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg300: i32, %arg301: i32):
    %204 = "llvm.add"(%arg300, %arg301) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%204) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_addw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg298: i32, %arg299: i32):
    %203 = "llvm.add"(%arg298, %arg299) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%203) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_addw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg296: i32, %arg297: i32):
    %202 = "llvm.add"(%arg296, %arg297) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%202) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_addw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg294: i32, %arg295: i32):
    %201 = "llvm.add"(%arg294, %arg295) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%201) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_addw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg292: i32, %arg293: i32):
    %200 = "llvm.add"(%arg292, %arg293) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%200) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_addw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg290: i32, %arg291: i32):
    %199 = "llvm.add"(%arg290, %arg291) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%199) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_addw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg288: i32, %arg289: i32):
    %198 = "llvm.add"(%arg288, %arg289) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%198) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_addw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg286: i32, %arg287: i32):
    %197 = "llvm.add"(%arg286, %arg287) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%197) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_addw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg284: i32, %arg285: i32):
    %196 = "llvm.add"(%arg284, %arg285) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%196) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_addw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg282: i32, %arg283: i32):
    %195 = "llvm.add"(%arg282, %arg283) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%195) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_addw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg280: i32, %arg281: i32):
    %194 = "llvm.add"(%arg280, %arg281) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%194) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_addw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg278: i32, %arg279: i32):
    %193 = "llvm.add"(%arg278, %arg279) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%193) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_addw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg276: i32, %arg277: i32):
    %192 = "llvm.add"(%arg276, %arg277) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%192) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_addw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg274: i32, %arg275: i32):
    %191 = "llvm.add"(%arg274, %arg275) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%191) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_addw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg272: i32, %arg273: i32):
    %190 = "llvm.add"(%arg272, %arg273) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%190) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_addw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg270: i32, %arg271: i32):
    %189 = "llvm.add"(%arg270, %arg271) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%189) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_addw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg268: i32, %arg269: i32):
    %188 = "llvm.add"(%arg268, %arg269) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%188) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_addw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg266: i32, %arg267: i32):
    %187 = "llvm.add"(%arg266, %arg267) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%187) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_addw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg264: i32, %arg265: i32):
    %186 = "llvm.add"(%arg264, %arg265) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%186) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_addw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg262: i32, %arg263: i32):
    %185 = "llvm.add"(%arg262, %arg263) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%185) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_addw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg260: i32, %arg261: i32):
    %184 = "llvm.add"(%arg260, %arg261) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%184) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_addw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg258: i32, %arg259: i32):
    %183 = "llvm.add"(%arg258, %arg259) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%183) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_addw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg256: i32, %arg257: i32):
    %182 = "llvm.add"(%arg256, %arg257) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%182) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_addw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg254: i32, %arg255: i32):
    %181 = "llvm.add"(%arg254, %arg255) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%181) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_addw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg252: i32, %arg253: i32):
    %180 = "llvm.add"(%arg252, %arg253) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%180) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_subw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg250: i32, %arg251: i32):
    %179 = "llvm.sub"(%arg250, %arg251) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%179) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_subw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg248: i32, %arg249: i32):
    %178 = "llvm.sub"(%arg248, %arg249) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%178) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_subw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg246: i32, %arg247: i32):
    %177 = "llvm.sub"(%arg246, %arg247) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%177) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_subw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg244: i32, %arg245: i32):
    %176 = "llvm.sub"(%arg244, %arg245) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%176) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_subw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg242: i32, %arg243: i32):
    %175 = "llvm.sub"(%arg242, %arg243) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%175) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_subw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg240: i32, %arg241: i32):
    %174 = "llvm.sub"(%arg240, %arg241) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%174) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_subw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg238: i32, %arg239: i32):
    %173 = "llvm.sub"(%arg238, %arg239) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%173) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_subw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg236: i32, %arg237: i32):
    %172 = "llvm.sub"(%arg236, %arg237) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%172) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_subw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg234: i32, %arg235: i32):
    %171 = "llvm.sub"(%arg234, %arg235) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%171) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_subw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg232: i32, %arg233: i32):
    %170 = "llvm.sub"(%arg232, %arg233) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%170) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_subw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg230: i32, %arg231: i32):
    %169 = "llvm.sub"(%arg230, %arg231) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%169) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_subw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg228: i32, %arg229: i32):
    %168 = "llvm.sub"(%arg228, %arg229) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%168) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_subw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg226: i32, %arg227: i32):
    %167 = "llvm.sub"(%arg226, %arg227) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%167) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_subw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg224: i32, %arg225: i32):
    %166 = "llvm.sub"(%arg224, %arg225) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%166) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_subw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg222: i32, %arg223: i32):
    %165 = "llvm.sub"(%arg222, %arg223) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%165) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_subw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg220: i32, %arg221: i32):
    %164 = "llvm.sub"(%arg220, %arg221) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%164) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_subw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg218: i32, %arg219: i32):
    %163 = "llvm.sub"(%arg218, %arg219) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%163) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_subw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg216: i32, %arg217: i32):
    %162 = "llvm.sub"(%arg216, %arg217) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%162) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_subw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg214: i32, %arg215: i32):
    %161 = "llvm.sub"(%arg214, %arg215) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%161) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_subw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg212: i32, %arg213: i32):
    %160 = "llvm.sub"(%arg212, %arg213) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%160) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_subw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg210: i32, %arg211: i32):
    %159 = "llvm.sub"(%arg210, %arg211) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%159) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_subw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg208: i32, %arg209: i32):
    %158 = "llvm.sub"(%arg208, %arg209) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%158) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_subw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg206: i32, %arg207: i32):
    %157 = "llvm.sub"(%arg206, %arg207) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%157) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_subw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg204: i32, %arg205: i32):
    %156 = "llvm.sub"(%arg204, %arg205) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%156) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_subw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg202: i32, %arg203: i32):
    %155 = "llvm.sub"(%arg202, %arg203) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%155) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_subw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg200: i32, %arg201: i32):
    %154 = "llvm.sub"(%arg200, %arg201) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%154) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_subw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg198: i32, %arg199: i32):
    %153 = "llvm.sub"(%arg198, %arg199) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%153) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sllw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg196: i32, %arg197: i32):
    %152 = "llvm.shl"(%arg196, %arg197) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%152) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sllw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg194: i32, %arg195: i32):
    %151 = "llvm.shl"(%arg194, %arg195) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%151) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sllw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg192: i32, %arg193: i32):
    %150 = "llvm.shl"(%arg192, %arg193) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%150) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sllw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg190: i32, %arg191: i32):
    %149 = "llvm.shl"(%arg190, %arg191) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%149) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sllw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg188: i32, %arg189: i32):
    %148 = "llvm.shl"(%arg188, %arg189) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%148) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sllw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg186: i32, %arg187: i32):
    %147 = "llvm.shl"(%arg186, %arg187) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%147) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sllw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg184: i32, %arg185: i32):
    %146 = "llvm.shl"(%arg184, %arg185) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%146) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sllw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg182: i32, %arg183: i32):
    %145 = "llvm.shl"(%arg182, %arg183) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%145) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sllw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg180: i32, %arg181: i32):
    %144 = "llvm.shl"(%arg180, %arg181) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%144) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sllw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg178: i32, %arg179: i32):
    %143 = "llvm.shl"(%arg178, %arg179) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%143) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sllw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg176: i32, %arg177: i32):
    %142 = "llvm.shl"(%arg176, %arg177) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%142) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sllw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg174: i32, %arg175: i32):
    %141 = "llvm.shl"(%arg174, %arg175) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%141) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sllw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg172: i32, %arg173: i32):
    %140 = "llvm.shl"(%arg172, %arg173) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%140) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sllw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg170: i32, %arg171: i32):
    %139 = "llvm.shl"(%arg170, %arg171) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%139) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sllw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg168: i32, %arg169: i32):
    %138 = "llvm.shl"(%arg168, %arg169) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%138) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sllw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg166: i32, %arg167: i32):
    %137 = "llvm.shl"(%arg166, %arg167) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%137) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sllw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg164: i32, %arg165: i32):
    %136 = "llvm.shl"(%arg164, %arg165) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%136) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sllw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg162: i32, %arg163: i32):
    %135 = "llvm.shl"(%arg162, %arg163) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%135) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sllw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg160: i32, %arg161: i32):
    %134 = "llvm.shl"(%arg160, %arg161) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%134) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sllw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg158: i32, %arg159: i32):
    %133 = "llvm.shl"(%arg158, %arg159) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%133) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sllw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg156: i32, %arg157: i32):
    %132 = "llvm.shl"(%arg156, %arg157) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%132) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sllw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg154: i32, %arg155: i32):
    %131 = "llvm.shl"(%arg154, %arg155) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%131) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sllw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg152: i32, %arg153: i32):
    %130 = "llvm.shl"(%arg152, %arg153) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%130) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sllw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg150: i32, %arg151: i32):
    %129 = "llvm.shl"(%arg150, %arg151) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%129) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sllw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg148: i32, %arg149: i32):
    %128 = "llvm.shl"(%arg148, %arg149) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%128) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sllw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg146: i32, %arg147: i32):
    %127 = "llvm.shl"(%arg146, %arg147) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%127) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sllw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg144: i32, %arg145: i32):
    %126 = "llvm.shl"(%arg144, %arg145) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%126) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_srlw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg142: i32, %arg143: i32):
    %125 = "llvm.lshr"(%arg142, %arg143) : (i32, i32) -> i32
    "llvm.return"(%125) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_srlw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg140: i32, %arg141: i32):
    %124 = "llvm.lshr"(%arg140, %arg141) : (i32, i32) -> i32
    "llvm.return"(%124) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_srlw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg138: i32, %arg139: i32):
    %123 = "llvm.lshr"(%arg138, %arg139) : (i32, i32) -> i32
    "llvm.return"(%123) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_srlw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg136: i32, %arg137: i32):
    %122 = "llvm.lshr"(%arg136, %arg137) : (i32, i32) -> i32
    "llvm.return"(%122) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_srlw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg134: i32, %arg135: i32):
    %121 = "llvm.lshr"(%arg134, %arg135) : (i32, i32) -> i32
    "llvm.return"(%121) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_srlw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: i32, %arg133: i32):
    %120 = "llvm.lshr"(%arg132, %arg133) : (i32, i32) -> i32
    "llvm.return"(%120) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_srlw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg130: i32, %arg131: i32):
    %119 = "llvm.lshr"(%arg130, %arg131) : (i32, i32) -> i32
    "llvm.return"(%119) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_srlw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg128: i32, %arg129: i32):
    %118 = "llvm.lshr"(%arg128, %arg129) : (i32, i32) -> i32
    "llvm.return"(%118) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_srlw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg126: i32, %arg127: i32):
    %117 = "llvm.lshr"(%arg126, %arg127) : (i32, i32) -> i32
    "llvm.return"(%117) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_srlw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: i32, %arg125: i32):
    %116 = "llvm.lshr"(%arg124, %arg125) : (i32, i32) -> i32
    "llvm.return"(%116) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_srlw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg122: i32, %arg123: i32):
    %115 = "llvm.lshr"(%arg122, %arg123) : (i32, i32) -> i32
    "llvm.return"(%115) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_srlw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: i32, %arg121: i32):
    %114 = "llvm.lshr"(%arg120, %arg121) : (i32, i32) -> i32
    "llvm.return"(%114) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_srlw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg118: i32, %arg119: i32):
    %113 = "llvm.lshr"(%arg118, %arg119) : (i32, i32) -> i32
    "llvm.return"(%113) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_srlw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg116: i32, %arg117: i32):
    %112 = "llvm.lshr"(%arg116, %arg117) : (i32, i32) -> i32
    "llvm.return"(%112) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_srlw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg114: i32, %arg115: i32):
    %111 = "llvm.lshr"(%arg114, %arg115) : (i32, i32) -> i32
    "llvm.return"(%111) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_srlw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg112: i32, %arg113: i32):
    %110 = "llvm.lshr"(%arg112, %arg113) : (i32, i32) -> i32
    "llvm.return"(%110) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_srlw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg110: i32, %arg111: i32):
    %109 = "llvm.lshr"(%arg110, %arg111) : (i32, i32) -> i32
    "llvm.return"(%109) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_srlw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: i32, %arg109: i32):
    %108 = "llvm.lshr"(%arg108, %arg109) : (i32, i32) -> i32
    "llvm.return"(%108) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_srlw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg106: i32, %arg107: i32):
    %107 = "llvm.lshr"(%arg106, %arg107) : (i32, i32) -> i32
    "llvm.return"(%107) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_srlw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg104: i32, %arg105: i32):
    %106 = "llvm.lshr"(%arg104, %arg105) : (i32, i32) -> i32
    "llvm.return"(%106) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_srlw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg102: i32, %arg103: i32):
    %105 = "llvm.lshr"(%arg102, %arg103) : (i32, i32) -> i32
    "llvm.return"(%105) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_srlw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg100: i32, %arg101: i32):
    %104 = "llvm.lshr"(%arg100, %arg101) : (i32, i32) -> i32
    "llvm.return"(%104) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_srlw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg98: i32, %arg99: i32):
    %103 = "llvm.lshr"(%arg98, %arg99) : (i32, i32) -> i32
    "llvm.return"(%103) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_srlw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: i32, %arg97: i32):
    %102 = "llvm.lshr"(%arg96, %arg97) : (i32, i32) -> i32
    "llvm.return"(%102) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_srlw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg94: i32, %arg95: i32):
    %101 = "llvm.lshr"(%arg94, %arg95) : (i32, i32) -> i32
    "llvm.return"(%101) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_srlw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg92: i32, %arg93: i32):
    %100 = "llvm.lshr"(%arg92, %arg93) : (i32, i32) -> i32
    "llvm.return"(%100) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_srlw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg90: i32, %arg91: i32):
    %99 = "llvm.lshr"(%arg90, %arg91) : (i32, i32) -> i32
    "llvm.return"(%99) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sraw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg88: i32, %arg89: i32):
    %98 = "llvm.ashr"(%arg88, %arg89) : (i32, i32) -> i32
    "llvm.return"(%98) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sraw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg86: i32, %arg87: i32):
    %97 = "llvm.ashr"(%arg86, %arg87) : (i32, i32) -> i32
    "llvm.return"(%97) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sraw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: i32, %arg85: i32):
    %96 = "llvm.ashr"(%arg84, %arg85) : (i32, i32) -> i32
    "llvm.return"(%96) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sraw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg82: i32, %arg83: i32):
    %95 = "llvm.ashr"(%arg82, %arg83) : (i32, i32) -> i32
    "llvm.return"(%95) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sraw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: i32, %arg81: i32):
    %94 = "llvm.ashr"(%arg80, %arg81) : (i32, i32) -> i32
    "llvm.return"(%94) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sraw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: i32, %arg79: i32):
    %93 = "llvm.ashr"(%arg78, %arg79) : (i32, i32) -> i32
    "llvm.return"(%93) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sraw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg76: i32, %arg77: i32):
    %92 = "llvm.ashr"(%arg76, %arg77) : (i32, i32) -> i32
    "llvm.return"(%92) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sraw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg74: i32, %arg75: i32):
    %91 = "llvm.ashr"(%arg74, %arg75) : (i32, i32) -> i32
    "llvm.return"(%91) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sraw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: i32, %arg73: i32):
    %90 = "llvm.ashr"(%arg72, %arg73) : (i32, i32) -> i32
    "llvm.return"(%90) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sraw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg70: i32, %arg71: i32):
    %89 = "llvm.ashr"(%arg70, %arg71) : (i32, i32) -> i32
    "llvm.return"(%89) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sraw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: i32, %arg69: i32):
    %88 = "llvm.ashr"(%arg68, %arg69) : (i32, i32) -> i32
    "llvm.return"(%88) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sraw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: i32, %arg67: i32):
    %87 = "llvm.ashr"(%arg66, %arg67) : (i32, i32) -> i32
    "llvm.return"(%87) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sraw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg64: i32, %arg65: i32):
    %86 = "llvm.ashr"(%arg64, %arg65) : (i32, i32) -> i32
    "llvm.return"(%86) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sraw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: i32, %arg63: i32):
    %85 = "llvm.ashr"(%arg62, %arg63) : (i32, i32) -> i32
    "llvm.return"(%85) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sraw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: i32, %arg61: i32):
    %84 = "llvm.ashr"(%arg60, %arg61) : (i32, i32) -> i32
    "llvm.return"(%84) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sraw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg58: i32, %arg59: i32):
    %83 = "llvm.ashr"(%arg58, %arg59) : (i32, i32) -> i32
    "llvm.return"(%83) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sraw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: i32, %arg57: i32):
    %82 = "llvm.ashr"(%arg56, %arg57) : (i32, i32) -> i32
    "llvm.return"(%82) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sraw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i32, %arg55: i32):
    %81 = "llvm.ashr"(%arg54, %arg55) : (i32, i32) -> i32
    "llvm.return"(%81) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sraw_aext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i32, %arg53: i32):
    %80 = "llvm.ashr"(%arg52, %arg53) : (i32, i32) -> i32
    "llvm.return"(%80) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sraw_aext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i32, %arg51: i32):
    %79 = "llvm.ashr"(%arg50, %arg51) : (i32, i32) -> i32
    "llvm.return"(%79) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sraw_aext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i32, %arg49: i32):
    %78 = "llvm.ashr"(%arg48, %arg49) : (i32, i32) -> i32
    "llvm.return"(%78) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sraw_sext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i32, %arg47: i32):
    %77 = "llvm.ashr"(%arg46, %arg47) : (i32, i32) -> i32
    "llvm.return"(%77) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sraw_sext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32, %arg45: i32):
    %76 = "llvm.ashr"(%arg44, %arg45) : (i32, i32) -> i32
    "llvm.return"(%76) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sraw_sext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i32, %arg43: i32):
    %75 = "llvm.ashr"(%arg42, %arg43) : (i32, i32) -> i32
    "llvm.return"(%75) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sraw_zext_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32, %arg41: i32):
    %74 = "llvm.ashr"(%arg40, %arg41) : (i32, i32) -> i32
    "llvm.return"(%74) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sraw_zext_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: i32, %arg39: i32):
    %73 = "llvm.ashr"(%arg38, %arg39) : (i32, i32) -> i32
    "llvm.return"(%73) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}, {llvm.zeroext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sraw_zext_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i32, %arg37: i32):
    %72 = "llvm.ashr"(%arg36, %arg37) : (i32, i32) -> i32
    "llvm.return"(%72) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_addiw_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i32):
    %70 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %71 = "llvm.add"(%arg35, %70) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%71) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_addiw_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i32):
    %68 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %69 = "llvm.add"(%arg34, %68) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%69) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_addiw_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i32):
    %66 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %67 = "llvm.add"(%arg33, %66) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%67) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_addiw_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i32):
    %64 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %65 = "llvm.add"(%arg32, %64) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%65) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_addiw_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg31: i32):
    %62 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %63 = "llvm.add"(%arg31, %62) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%63) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_addiw_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: i32):
    %60 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %61 = "llvm.add"(%arg30, %60) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%61) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_addiw_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg29: i32):
    %58 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %59 = "llvm.add"(%arg29, %58) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%59) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_addiw_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: i32):
    %56 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %57 = "llvm.add"(%arg28, %56) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%57) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_addiw_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i32):
    %54 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %55 = "llvm.add"(%arg27, %54) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%55) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_slliw_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i32):
    %52 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %53 = "llvm.shl"(%arg26, %52) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%53) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_slliw_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i32):
    %50 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %51 = "llvm.shl"(%arg25, %50) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%51) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_slliw_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: i32):
    %48 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %49 = "llvm.shl"(%arg24, %48) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%49) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_slliw_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: i32):
    %46 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %47 = "llvm.shl"(%arg23, %46) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%47) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_slliw_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg22: i32):
    %44 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %45 = "llvm.shl"(%arg22, %44) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%45) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_slliw_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: i32):
    %42 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %43 = "llvm.shl"(%arg21, %42) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%43) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_slliw_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg20: i32):
    %40 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %41 = "llvm.shl"(%arg20, %40) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%41) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_slliw_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: i32):
    %38 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %39 = "llvm.shl"(%arg19, %38) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%39) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_slliw_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: i32):
    %36 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %37 = "llvm.shl"(%arg18, %36) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%37) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_srliw_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32):
    %34 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %35 = "llvm.lshr"(%arg17, %34) : (i32, i32) -> i32
    "llvm.return"(%35) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_srliw_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg16: i32):
    %32 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %33 = "llvm.lshr"(%arg16, %32) : (i32, i32) -> i32
    "llvm.return"(%33) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_srliw_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: i32):
    %30 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %31 = "llvm.lshr"(%arg15, %30) : (i32, i32) -> i32
    "llvm.return"(%31) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_srliw_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i32):
    %28 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %29 = "llvm.lshr"(%arg14, %28) : (i32, i32) -> i32
    "llvm.return"(%29) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_srliw_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i32):
    %26 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %27 = "llvm.lshr"(%arg13, %26) : (i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_srliw_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i32):
    %24 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %25 = "llvm.lshr"(%arg12, %24) : (i32, i32) -> i32
    "llvm.return"(%25) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_srliw_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg11: i32):
    %22 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %23 = "llvm.lshr"(%arg11, %22) : (i32, i32) -> i32
    "llvm.return"(%23) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_srliw_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i32):
    %20 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %21 = "llvm.lshr"(%arg10, %20) : (i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_srliw_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i32):
    %18 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %19 = "llvm.lshr"(%arg9, %18) : (i32, i32) -> i32
    "llvm.return"(%19) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sraiw_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i32):
    %16 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %17 = "llvm.ashr"(%arg8, %16) : (i32, i32) -> i32
    "llvm.return"(%17) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sraiw_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i32):
    %14 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %15 = "llvm.ashr"(%arg7, %14) : (i32, i32) -> i32
    "llvm.return"(%15) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "aext_sraiw_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i32):
    %12 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %13 = "llvm.ashr"(%arg6, %12) : (i32, i32) -> i32
    "llvm.return"(%13) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sraiw_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i32):
    %10 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %11 = "llvm.ashr"(%arg5, %10) : (i32, i32) -> i32
    "llvm.return"(%11) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sraiw_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg4: i32):
    %8 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %9 = "llvm.ashr"(%arg4, %8) : (i32, i32) -> i32
    "llvm.return"(%9) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.signext}], sym_name = "sext_sraiw_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: i32):
    %6 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %7 = "llvm.ashr"(%arg3, %6) : (i32, i32) -> i32
    "llvm.return"(%7) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sraiw_aext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i32):
    %4 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %5 = "llvm.ashr"(%arg2, %4) : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sraiw_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i32):
    %2 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %3 = "llvm.ashr"(%arg1, %2) : (i32, i32) -> i32
    "llvm.return"(%3) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "zext_sraiw_zext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i32):
    %0 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %1 = "llvm.ashr"(%arg0, %0) : (i32, i32) -> i32
    "llvm.return"(%1) : (i32) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

