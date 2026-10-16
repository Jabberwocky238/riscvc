"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "slliuw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg331: i64):
    %679 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %680 = "llvm.mlir.constant"() <{value = 8589934590 : i64}> : () -> i64
    %681 = "llvm.shl"(%arg331, %679) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %682 = "llvm.and"(%681, %680) : (i64, i64) -> i64
    "llvm.return"(%682) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i128 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "slliuw_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg329: i32, %arg330: !llvm.ptr):
    %676 = "llvm.zext"(%arg329) : (i32) -> i64
    %677 = "llvm.getelementptr"(%arg330, %676) <{elem_type = i128, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %678 = "llvm.load"(%677) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.return"(%678) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "adduw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg327: i64, %arg328: i64):
    %673 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %674 = "llvm.and"(%arg328, %673) : (i64, i64) -> i64
    %675 = "llvm.add"(%674, %arg327) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%675) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i8 (i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "adduw_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg325: i32, %arg326: !llvm.ptr):
    %670 = "llvm.zext"(%arg325) : (i32) -> i64
    %671 = "llvm.getelementptr"(%arg326, %670) <{elem_type = i8, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %672 = "llvm.load"(%671) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%672) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "zextw_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg324: i64):
    %668 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %669 = "llvm.and"(%arg324, %668) : (i64, i64) -> i64
    "llvm.return"(%669) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "zextw_demandedbits_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg323: i64):
    %664 = "llvm.mlir.constant"() <{value = 4294967294 : i64}> : () -> i64
    %665 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %666 = "llvm.and"(%arg323, %664) : (i64, i64) -> i64
    %667 = "llvm.or"(%666, %665) : (i64, i64) -> i64
    "llvm.return"(%667) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "sh1add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg321: i64, %arg322: !llvm.ptr):
    %662 = "llvm.getelementptr"(%arg322, %arg321) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %663 = "llvm.load"(%662) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%663) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg319: i64, %arg320: !llvm.ptr):
    %660 = "llvm.getelementptr"(%arg320, %arg319) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %661 = "llvm.load"(%660) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%661) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg317: i64, %arg318: !llvm.ptr):
    %658 = "llvm.getelementptr"(%arg318, %arg317) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %659 = "llvm.load"(%658) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%659) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i16 (i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "sh1adduw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg315: i32, %arg316: !llvm.ptr):
    %655 = "llvm.zext"(%arg315) : (i32) -> i64
    %656 = "llvm.getelementptr"(%arg316, %655) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %657 = "llvm.load"(%656) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%657) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh1adduw_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg313: i64, %arg314: i64):
    %650 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %651 = "llvm.mlir.constant"() <{value = 8589934590 : i64}> : () -> i64
    %652 = "llvm.shl"(%arg313, %650) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %653 = "llvm.and"(%652, %651) : (i64, i64) -> i64
    %654 = "llvm.add"(%653, %arg314) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%654) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh1adduw_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg311: i64, %arg312: i64):
    %645 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %646 = "llvm.mlir.constant"() <{value = 8589934590 : i64}> : () -> i64
    %647 = "llvm.shl"(%arg311, %645) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %648 = "llvm.and"(%647, %646) : (i64, i64) -> i64
    %649 = "llvm.or"(%648, %arg312) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.return"(%649) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i32 (i32, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "sh2adduw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg309: i32, %arg310: !llvm.ptr):
    %642 = "llvm.zext"(%arg309) : (i32) -> i64
    %643 = "llvm.getelementptr"(%arg310, %642) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %644 = "llvm.load"(%643) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%644) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh2adduw_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg307: i64, %arg308: i64):
    %637 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %638 = "llvm.mlir.constant"() <{value = 17179869180 : i64}> : () -> i64
    %639 = "llvm.shl"(%arg307, %637) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %640 = "llvm.and"(%639, %638) : (i64, i64) -> i64
    %641 = "llvm.add"(%640, %arg308) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%641) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh2adduw_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg305: i64, %arg306: i64):
    %632 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %633 = "llvm.mlir.constant"() <{value = 17179869180 : i64}> : () -> i64
    %634 = "llvm.shl"(%arg305, %632) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %635 = "llvm.and"(%634, %633) : (i64, i64) -> i64
    %636 = "llvm.or"(%635, %arg306) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.return"(%636) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i64 (i32, ptr)>, linkage = #llvm.linkage<external>, sym_name = "sh3adduw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg303: i32, %arg304: !llvm.ptr):
    %629 = "llvm.zext"(%arg303) : (i32) -> i64
    %630 = "llvm.getelementptr"(%arg304, %629) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %631 = "llvm.load"(%630) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%631) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh3adduw_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg301: i64, %arg302: i64):
    %624 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %625 = "llvm.mlir.constant"() <{value = 34359738360 : i64}> : () -> i64
    %626 = "llvm.shl"(%arg301, %624) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %627 = "llvm.and"(%626, %625) : (i64, i64) -> i64
    %628 = "llvm.add"(%627, %arg302) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%628) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh3adduw_3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg299: i64, %arg300: i64):
    %619 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %620 = "llvm.mlir.constant"() <{value = 34359738360 : i64}> : () -> i64
    %621 = "llvm.shl"(%arg299, %619) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %622 = "llvm.and"(%621, %620) : (i64, i64) -> i64
    %623 = "llvm.or"(%622, %arg300) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.return"(%623) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "sh2add_extra_sext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg296: i32, %arg297: i32, %arg298: i32):
    %611 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %612 = "llvm.shl"(%arg296, %611) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %613 = "llvm.add"(%612, %arg297) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %614 = "llvm.shl"(%arg298, %613) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %615 = "llvm.ashr"(%613, %611) : (i32, i32) -> i32
    %616 = "llvm.sext"(%614) : (i32) -> i64
    %617 = "llvm.sext"(%615) : (i32) -> i64
    %618 = "llvm.mul"(%616, %617) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%618) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg294: i64, %arg295: i64):
    %608 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %609 = "llvm.mul"(%arg294, %608) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %610 = "llvm.add"(%609, %arg295) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%610) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "disjointormul6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg292: i64, %arg293: i64):
    %605 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %606 = "llvm.mul"(%arg292, %605) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %607 = "llvm.or"(%606, %arg293) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.return"(%607) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul10", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg290: i64, %arg291: i64):
    %602 = "llvm.mlir.constant"() <{value = 10 : i64}> : () -> i64
    %603 = "llvm.mul"(%arg290, %602) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %604 = "llvm.add"(%603, %arg291) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%604) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg288: i64, %arg289: i64):
    %599 = "llvm.mlir.constant"() <{value = 12 : i64}> : () -> i64
    %600 = "llvm.mul"(%arg288, %599) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %601 = "llvm.add"(%600, %arg289) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%601) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul14", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg286: i64, %arg287: i64):
    %596 = "llvm.mlir.constant"() <{value = 14 : i64}> : () -> i64
    %597 = "llvm.mul"(%arg286, %596) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %598 = "llvm.add"(%597, %arg287) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%598) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul18", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg284: i64, %arg285: i64):
    %593 = "llvm.mlir.constant"() <{value = 18 : i64}> : () -> i64
    %594 = "llvm.mul"(%arg284, %593) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %595 = "llvm.add"(%594, %arg285) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%595) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul20", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg282: i64, %arg283: i64):
    %590 = "llvm.mlir.constant"() <{value = 20 : i64}> : () -> i64
    %591 = "llvm.mul"(%arg282, %590) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %592 = "llvm.add"(%591, %arg283) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%592) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul22", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg280: i64, %arg281: i64):
    %587 = "llvm.mlir.constant"() <{value = 22 : i64}> : () -> i64
    %588 = "llvm.mul"(%arg280, %587) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %589 = "llvm.add"(%588, %arg281) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%589) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul24", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg278: i64, %arg279: i64):
    %584 = "llvm.mlir.constant"() <{value = 24 : i64}> : () -> i64
    %585 = "llvm.mul"(%arg278, %584) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %586 = "llvm.add"(%585, %arg279) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%586) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul26", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg276: i64, %arg277: i64):
    %581 = "llvm.mlir.constant"() <{value = 26 : i64}> : () -> i64
    %582 = "llvm.mul"(%arg276, %581) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %583 = "llvm.add"(%582, %arg277) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%583) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul36", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg274: i64, %arg275: i64):
    %578 = "llvm.mlir.constant"() <{value = 36 : i64}> : () -> i64
    %579 = "llvm.mul"(%arg274, %578) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %580 = "llvm.add"(%579, %arg275) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%580) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul40", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg272: i64, %arg273: i64):
    %575 = "llvm.mlir.constant"() <{value = 40 : i64}> : () -> i64
    %576 = "llvm.mul"(%arg272, %575) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %577 = "llvm.add"(%576, %arg273) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%577) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul38", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg270: i64, %arg271: i64):
    %572 = "llvm.mlir.constant"() <{value = 38 : i64}> : () -> i64
    %573 = "llvm.mul"(%arg270, %572) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %574 = "llvm.add"(%573, %arg271) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%574) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul42", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg268: i64, %arg269: i64):
    %569 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
    %570 = "llvm.mul"(%arg268, %569) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %571 = "llvm.add"(%570, %arg269) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%571) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul72", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg266: i64, %arg267: i64):
    %566 = "llvm.mlir.constant"() <{value = 72 : i64}> : () -> i64
    %567 = "llvm.mul"(%arg266, %566) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %568 = "llvm.add"(%567, %arg267) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%568) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul74", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg264: i64, %arg265: i64):
    %563 = "llvm.mlir.constant"() <{value = 74 : i64}> : () -> i64
    %564 = "llvm.mul"(%arg264, %563) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %565 = "llvm.add"(%564, %arg265) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%565) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul82", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg262: i64, %arg263: i64):
    %560 = "llvm.mlir.constant"() <{value = 82 : i64}> : () -> i64
    %561 = "llvm.mul"(%arg262, %560) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %562 = "llvm.add"(%561, %arg263) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%562) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul146", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg260: i64, %arg261: i64):
    %557 = "llvm.mlir.constant"() <{value = 146 : i64}> : () -> i64
    %558 = "llvm.mul"(%arg260, %557) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %559 = "llvm.add"(%558, %arg261) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%559) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul49", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg259: i64):
    %555 = "llvm.mlir.constant"() <{value = 49 : i64}> : () -> i64
    %556 = "llvm.mul"(%arg259, %555) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%556) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_mul49", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg258: i32):
    %552 = "llvm.mlir.constant"() <{value = 49 : i64}> : () -> i64
    %553 = "llvm.zext"(%arg258) : (i32) -> i64
    %554 = "llvm.mul"(%553, %552) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%554) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul50", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg257: i64):
    %550 = "llvm.mlir.constant"() <{value = 50 : i64}> : () -> i64
    %551 = "llvm.mul"(%arg257, %550) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%551) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul50", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg255: i64, %arg256: i64):
    %547 = "llvm.mlir.constant"() <{value = 50 : i64}> : () -> i64
    %548 = "llvm.mul"(%arg255, %547) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %549 = "llvm.add"(%548, %arg256) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%549) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul100", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg254: i64):
    %545 = "llvm.mlir.constant"() <{value = 100 : i64}> : () -> i64
    %546 = "llvm.mul"(%arg254, %545) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%546) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul100", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg252: i64, %arg253: i64):
    %542 = "llvm.mlir.constant"() <{value = 100 : i64}> : () -> i64
    %543 = "llvm.mul"(%arg252, %542) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %544 = "llvm.add"(%543, %arg253) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%544) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul145", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg251: i64):
    %540 = "llvm.mlir.constant"() <{value = 145 : i64}> : () -> i64
    %541 = "llvm.mul"(%arg251, %540) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%541) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul161", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg250: i64):
    %538 = "llvm.mlir.constant"() <{value = 161 : i64}> : () -> i64
    %539 = "llvm.mul"(%arg250, %538) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%539) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul162", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg249: i64):
    %536 = "llvm.mlir.constant"() <{value = 162 : i64}> : () -> i64
    %537 = "llvm.mul"(%arg249, %536) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%537) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul162", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg247: i64, %arg248: i64):
    %533 = "llvm.mlir.constant"() <{value = 162 : i64}> : () -> i64
    %534 = "llvm.mul"(%arg247, %533) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %535 = "llvm.add"(%534, %arg248) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%535) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul180", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg246: i64):
    %531 = "llvm.mlir.constant"() <{value = 180 : i64}> : () -> i64
    %532 = "llvm.mul"(%arg246, %531) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%532) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul180", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg244: i64, %arg245: i64):
    %528 = "llvm.mlir.constant"() <{value = 180 : i64}> : () -> i64
    %529 = "llvm.mul"(%arg244, %528) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %530 = "llvm.add"(%529, %arg245) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%530) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add255mul180", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg243: i64):
    %524 = "llvm.mlir.constant"() <{value = 180 : i64}> : () -> i64
    %525 = "llvm.mlir.constant"() <{value = 255 : i64}> : () -> i64
    %526 = "llvm.mul"(%arg243, %524) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %527 = "llvm.add"(%526, %525) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%527) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul200", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg242: i64):
    %522 = "llvm.mlir.constant"() <{value = 200 : i64}> : () -> i64
    %523 = "llvm.mul"(%arg242, %522) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%523) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul200", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg240: i64, %arg241: i64):
    %519 = "llvm.mlir.constant"() <{value = 200 : i64}> : () -> i64
    %520 = "llvm.mul"(%arg240, %519) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %521 = "llvm.add"(%520, %arg241) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%521) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul4096", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg238: i64, %arg239: i64):
    %516 = "llvm.mlir.constant"() <{value = 4096 : i64}> : () -> i64
    %517 = "llvm.mul"(%arg238, %516) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %518 = "llvm.add"(%517, %arg239) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%518) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addmul4230", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg236: i64, %arg237: i64):
    %513 = "llvm.mlir.constant"() <{value = 4230 : i64}> : () -> i64
    %514 = "llvm.mul"(%arg236, %513) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %515 = "llvm.add"(%514, %arg237) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%515) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul96", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg235: i64):
    %511 = "llvm.mlir.constant"() <{value = 96 : i64}> : () -> i64
    %512 = "llvm.mul"(%arg235, %511) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%512) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul119", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg234: i64):
    %509 = "llvm.mlir.constant"() <{value = 119 : i64}> : () -> i64
    %510 = "llvm.mul"(%arg234, %509) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%510) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul123", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg233: i64):
    %507 = "llvm.mlir.constant"() <{value = 123 : i64}> : () -> i64
    %508 = "llvm.mul"(%arg233, %507) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%508) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul125", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg232: i64):
    %505 = "llvm.mlir.constant"() <{value = 125 : i64}> : () -> i64
    %506 = "llvm.mul"(%arg232, %505) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%506) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul131", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg231: i64):
    %503 = "llvm.mlir.constant"() <{value = 131 : i64}> : () -> i64
    %504 = "llvm.mul"(%arg231, %503) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%504) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul133", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg230: i64):
    %501 = "llvm.mlir.constant"() <{value = 133 : i64}> : () -> i64
    %502 = "llvm.mul"(%arg230, %501) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%502) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul137", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg229: i64):
    %499 = "llvm.mlir.constant"() <{value = 137 : i64}> : () -> i64
    %500 = "llvm.mul"(%arg229, %499) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%500) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul160", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg228: i64):
    %497 = "llvm.mlir.constant"() <{value = 160 : i64}> : () -> i64
    %498 = "llvm.mul"(%arg228, %497) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%498) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul288", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg227: i64):
    %495 = "llvm.mlir.constant"() <{value = 288 : i64}> : () -> i64
    %496 = "llvm.mul"(%arg227, %495) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%496) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_mul44", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg226: i32):
    %492 = "llvm.mlir.constant"() <{value = 44 : i64}> : () -> i64
    %493 = "llvm.zext"(%arg226) : (i32) -> i64
    %494 = "llvm.mul"(%493, %492) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%494) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_mul68", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg225: i32):
    %489 = "llvm.mlir.constant"() <{value = 68 : i64}> : () -> i64
    %490 = "llvm.zext"(%arg225) : (i32) -> i64
    %491 = "llvm.mul"(%490, %489) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%491) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_mul96", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg224: i32):
    %486 = "llvm.mlir.constant"() <{value = 96 : i64}> : () -> i64
    %487 = "llvm.zext"(%arg224) : (i32) -> i64
    %488 = "llvm.mul"(%487, %486) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%488) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_mul100", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg223: i32):
    %483 = "llvm.mlir.constant"() <{value = 100 : i64}> : () -> i64
    %484 = "llvm.zext"(%arg223) : (i32) -> i64
    %485 = "llvm.mul"(%484, %483) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%485) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_mul160", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg222: i32):
    %480 = "llvm.mlir.constant"() <{value = 160 : i64}> : () -> i64
    %481 = "llvm.zext"(%arg222) : (i32) -> i64
    %482 = "llvm.mul"(%481, %480) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%482) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_mul288", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg221: i32):
    %477 = "llvm.mlir.constant"() <{value = 288 : i64}> : () -> i64
    %478 = "llvm.zext"(%arg221) : (i32) -> i64
    %479 = "llvm.mul"(%478, %477) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%479) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_mul12884901888", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg220: i32):
    %474 = "llvm.mlir.constant"() <{value = 12884901888 : i64}> : () -> i64
    %475 = "llvm.zext"(%arg220) : (i32) -> i64
    %476 = "llvm.mul"(%475, %474) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%476) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_mul21474836480", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg219: i32):
    %471 = "llvm.mlir.constant"() <{value = 21474836480 : i64}> : () -> i64
    %472 = "llvm.zext"(%arg219) : (i32) -> i64
    %473 = "llvm.mul"(%472, %471) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%473) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "zext_mul38654705664", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg218: i32):
    %468 = "llvm.mlir.constant"() <{value = 38654705664 : i64}> : () -> i64
    %469 = "llvm.zext"(%arg218) : (i32) -> i64
    %470 = "llvm.mul"(%469, %468) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%470) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sh1add_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg217: i64):
    %464 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %465 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %466 = "llvm.shl"(%arg217, %464) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %467 = "llvm.add"(%466, %465) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%467) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sh2add_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg216: i64):
    %460 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %461 = "llvm.mlir.constant"() <{value = -6 : i64}> : () -> i64
    %462 = "llvm.shl"(%arg216, %460) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %463 = "llvm.add"(%462, %461) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%463) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "sh3add_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg215: i64):
    %456 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %457 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %458 = "llvm.shl"(%arg215, %456) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %459 = "llvm.add"(%458, %457) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%459) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sh1adduw_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg214: i32):
    %451 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %452 = "llvm.mlir.constant"() <{value = 11 : i64}> : () -> i64
    %453 = "llvm.zext"(%arg214) : (i32) -> i64
    %454 = "llvm.shl"(%453, %451) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %455 = "llvm.add"(%454, %452) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%455) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sh2adduw_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg213: i32):
    %446 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %447 = "llvm.mlir.constant"() <{value = -12 : i64}> : () -> i64
    %448 = "llvm.zext"(%arg213) : (i32) -> i64
    %449 = "llvm.shl"(%448, %446) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %450 = "llvm.add"(%449, %447) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%450) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, sym_name = "sh3adduw_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg212: i32):
    %441 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %442 = "llvm.mlir.constant"() <{value = 13 : i64}> : () -> i64
    %443 = "llvm.zext"(%arg212) : (i32) -> i64
    %444 = "llvm.shl"(%443, %441) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %445 = "llvm.add"(%444, %442) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%445) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i64 (i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "adduw_imm", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg211: i32):
    %438 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %439 = "llvm.zext"(%arg211) : (i32) -> i64
    %440 = "llvm.add"(%439, %438) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%440) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul258", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg210: i64):
    %436 = "llvm.mlir.constant"() <{value = 258 : i64}> : () -> i64
    %437 = "llvm.mul"(%arg210, %436) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%437) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul260", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg209: i64):
    %434 = "llvm.mlir.constant"() <{value = 260 : i64}> : () -> i64
    %435 = "llvm.mul"(%arg209, %434) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%435) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul264", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg208: i64):
    %432 = "llvm.mlir.constant"() <{value = 264 : i64}> : () -> i64
    %433 = "llvm.mul"(%arg208, %432) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%433) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "imm_zextw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %431 = "llvm.mlir.constant"() <{value = 4294967294 : i64}> : () -> i64
    "llvm.return"(%431) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul11", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg207: i64):
    %429 = "llvm.mlir.constant"() <{value = 11 : i64}> : () -> i64
    %430 = "llvm.mul"(%arg207, %429) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%430) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul19", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg206: i64):
    %427 = "llvm.mlir.constant"() <{value = 19 : i64}> : () -> i64
    %428 = "llvm.mul"(%arg206, %427) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%428) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul13", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg205: i64):
    %425 = "llvm.mlir.constant"() <{value = 13 : i64}> : () -> i64
    %426 = "llvm.mul"(%arg205, %425) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%426) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul21", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg204: i64):
    %423 = "llvm.mlir.constant"() <{value = 21 : i64}> : () -> i64
    %424 = "llvm.mul"(%arg204, %423) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%424) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul37", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg203: i64):
    %421 = "llvm.mlir.constant"() <{value = 37 : i64}> : () -> i64
    %422 = "llvm.mul"(%arg203, %421) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%422) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul25", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg202: i64):
    %419 = "llvm.mlir.constant"() <{value = 25 : i64}> : () -> i64
    %420 = "llvm.mul"(%arg202, %419) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%420) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul41", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg201: i64):
    %417 = "llvm.mlir.constant"() <{value = 41 : i64}> : () -> i64
    %418 = "llvm.mul"(%arg201, %417) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%418) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul73", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg200: i64):
    %415 = "llvm.mlir.constant"() <{value = 73 : i64}> : () -> i64
    %416 = "llvm.mul"(%arg200, %415) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%416) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul27", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg199: i64):
    %413 = "llvm.mlir.constant"() <{value = 27 : i64}> : () -> i64
    %414 = "llvm.mul"(%arg199, %413) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%414) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul45", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg198: i64):
    %411 = "llvm.mlir.constant"() <{value = 45 : i64}> : () -> i64
    %412 = "llvm.mul"(%arg198, %411) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%412) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul81", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg197: i64):
    %409 = "llvm.mlir.constant"() <{value = 81 : i64}> : () -> i64
    %410 = "llvm.mul"(%arg197, %409) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%410) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul4098", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg196: i64):
    %407 = "llvm.mlir.constant"() <{value = 4098 : i64}> : () -> i64
    %408 = "llvm.mul"(%arg196, %407) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%408) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul4100", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg195: i64):
    %405 = "llvm.mlir.constant"() <{value = 4100 : i64}> : () -> i64
    %406 = "llvm.mul"(%arg195, %405) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%406) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul4104", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg194: i64):
    %403 = "llvm.mlir.constant"() <{value = 4104 : i64}> : () -> i64
    %404 = "llvm.mul"(%arg194, %403) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%404) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "mulw192", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg193: i32):
    %401 = "llvm.mlir.constant"() <{value = 192 : i32}> : () -> i32
    %402 = "llvm.mul"(%arg193, %401) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%402) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "mulw320", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg192: i32):
    %399 = "llvm.mlir.constant"() <{value = 320 : i32}> : () -> i32
    %400 = "llvm.mul"(%arg192, %399) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%400) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "mulw576", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg191: i32):
    %397 = "llvm.mlir.constant"() <{value = 576 : i32}> : () -> i32
    %398 = "llvm.mul"(%arg191, %397) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%398) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add4104", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg190: i64):
    %395 = "llvm.mlir.constant"() <{value = 4104 : i64}> : () -> i64
    %396 = "llvm.add"(%arg190, %395) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%396) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add4104_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg189: i64):
    %393 = "llvm.mlir.constant"() <{value = 4104 : i64}> : () -> i64
    %394 = "llvm.or"(%arg189, %393) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.return"(%394) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add8208", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg188: i64):
    %391 = "llvm.mlir.constant"() <{value = 8208 : i64}> : () -> i64
    %392 = "llvm.add"(%arg188, %391) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%392) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}], function_type = !llvm.func<i32 (i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "add8192_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg187: i32):
    %389 = "llvm.mlir.constant"() <{value = 8192 : i32}> : () -> i32
    %390 = "llvm.add"(%arg187, %389) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%390) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add8192", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg186: i64):
    %387 = "llvm.mlir.constant"() <{value = 8192 : i64}> : () -> i64
    %388 = "llvm.add"(%arg186, %387) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%388) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "addshl32_5_6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg184: i32, %arg185: i32):
    %382 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %383 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %384 = "llvm.shl"(%arg184, %382) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %385 = "llvm.shl"(%arg185, %383) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %386 = "llvm.add"(%384, %385) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%386) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addshl64_5_6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg182: i64, %arg183: i64):
    %377 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %378 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %379 = "llvm.shl"(%arg182, %377) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %380 = "llvm.shl"(%arg183, %378) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %381 = "llvm.add"(%379, %380) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%381) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "addshl32_5_7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg180: i32, %arg181: i32):
    %372 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %373 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %374 = "llvm.shl"(%arg180, %372) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %375 = "llvm.shl"(%arg181, %373) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %376 = "llvm.add"(%374, %375) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%376) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addshl64_5_7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg178: i64, %arg179: i64):
    %367 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %368 = "llvm.mlir.constant"() <{value = 7 : i64}> : () -> i64
    %369 = "llvm.shl"(%arg178, %367) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %370 = "llvm.shl"(%arg179, %368) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %371 = "llvm.add"(%369, %370) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%371) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "addshl32_5_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg176: i32, %arg177: i32):
    %362 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %363 = "llvm.mlir.constant"() <{value = 8 : i32}> : () -> i32
    %364 = "llvm.shl"(%arg176, %362) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %365 = "llvm.shl"(%arg177, %363) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %366 = "llvm.add"(%364, %365) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%366) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "addshl64_5_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg174: i64, %arg175: i64):
    %357 = "llvm.mlir.constant"() <{value = 5 : i64}> : () -> i64
    %358 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %359 = "llvm.shl"(%arg174, %357) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %360 = "llvm.shl"(%arg175, %358) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %361 = "llvm.add"(%359, %360) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%361) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i8)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "sext_ashr_zext_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg173: i8):
    %354 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %355 = "llvm.sext"(%arg173) : (i8) -> i32
    %356 = "llvm.ashr"(%355, %354) : (i32, i32) -> i32
    "llvm.return"(%356) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh6_sh3_add1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg170: i64, %arg171: i64, %arg172: i64):
    %348 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %349 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %350 = "llvm.shl"(%arg172, %348) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %351 = "llvm.shl"(%arg171, %349) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %352 = "llvm.add"(%351, %350) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %353 = "llvm.add"(%352, %arg170) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%353) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh6_sh3_add2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg167: i64, %arg168: i64, %arg169: i64):
    %342 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %343 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %344 = "llvm.shl"(%arg169, %342) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %345 = "llvm.shl"(%arg168, %343) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %346 = "llvm.add"(%345, %arg167) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %347 = "llvm.add"(%346, %344) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%347) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh6_sh3_add3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg164: i64, %arg165: i64, %arg166: i64):
    %336 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %337 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %338 = "llvm.shl"(%arg166, %336) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %339 = "llvm.shl"(%arg165, %337) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %340 = "llvm.add"(%339, %338) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %341 = "llvm.add"(%arg164, %340) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%341) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.noundef}, {llvm.noundef}, {llvm.noundef}], function_type = !llvm.func<i64 (i64, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "sh6_sh3_add4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg161: i64, %arg162: i64, %arg163: i64):
    %330 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %331 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %332 = "llvm.shl"(%arg163, %330) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %333 = "llvm.shl"(%arg162, %331) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %334 = "llvm.add"(%arg161, %332) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    %335 = "llvm.add"(%334, %333) <{overflowFlags = 1 : i32}> : (i64, i64) -> i64
    "llvm.return"(%335) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i16)>, linkage = #llvm.linkage<external>, no_unwind, res_attrs = [{llvm.zeroext}], sym_name = "sext_ashr_zext_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg160: i16):
    %327 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %328 = "llvm.sext"(%arg160) : (i16) -> i32
    %329 = "llvm.ashr"(%328, %327) : (i32, i32) -> i32
    "llvm.return"(%329) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "sh1adduw_ptrdiff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg158: i64, %arg159: !llvm.ptr):
    %321 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %322 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %323 = "llvm.lshr"(%arg158, %321) <{isExact}> : (i64, i64) -> i64
    %324 = "llvm.and"(%323, %322) : (i64, i64) -> i64
    %325 = "llvm.getelementptr"(%arg159, %324) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %326 = "llvm.load"(%325) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%326) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i64, ptr)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "sh2adduw_ptrdiff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg156: i64, %arg157: !llvm.ptr):
    %315 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %316 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %317 = "llvm.lshr"(%arg156, %315) <{isExact}> : (i64, i64) -> i64
    %318 = "llvm.and"(%317, %316) : (i64, i64) -> i64
    %319 = "llvm.getelementptr"(%arg157, %318) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %320 = "llvm.load"(%319) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%320) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "sh3adduw_ptrdiff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg154: i64, %arg155: !llvm.ptr):
    %309 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %310 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %311 = "llvm.lshr"(%arg154, %309) <{isExact}> : (i64, i64) -> i64
    %312 = "llvm.and"(%311, %310) : (i64, i64) -> i64
    %313 = "llvm.getelementptr"(%arg155, %312) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %314 = "llvm.load"(%313) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%314) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i16 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srliw_1_sh1add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg152: !llvm.ptr, %arg153: i32):
    %304 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %305 = "llvm.lshr"(%arg153, %304) : (i32, i32) -> i32
    %306 = "llvm.zext"(%305) : (i32) -> i64
    %307 = "llvm.getelementptr"(%arg152, %306) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %308 = "llvm.load"(%307) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%308) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i128 (i64, ptr)>, linkage = #llvm.linkage<external>, sym_name = "slliuw_ptrdiff", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg150: i64, %arg151: !llvm.ptr):
    %298 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %299 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %300 = "llvm.lshr"(%arg150, %298) <{isExact}> : (i64, i64) -> i64
    %301 = "llvm.and"(%300, %299) : (i64, i64) -> i64
    %302 = "llvm.getelementptr"(%arg151, %301) <{elem_type = i128, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %303 = "llvm.load"(%302) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i128
    "llvm.return"(%303) : (i128) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srliw_2_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg148: !llvm.ptr, %arg149: i32):
    %293 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %294 = "llvm.lshr"(%arg149, %293) : (i32, i32) -> i32
    %295 = "llvm.zext"(%294) : (i32) -> i64
    %296 = "llvm.getelementptr"(%arg148, %295) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %297 = "llvm.load"(%296) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%297) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srliw_3_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg146: !llvm.ptr, %arg147: i32):
    %288 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %289 = "llvm.lshr"(%arg147, %288) : (i32, i32) -> i32
    %290 = "llvm.zext"(%289) : (i32) -> i64
    %291 = "llvm.getelementptr"(%arg146, %290) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %292 = "llvm.load"(%291) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%292) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srliw_1_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg144: !llvm.ptr, %arg145: i32):
    %283 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %284 = "llvm.lshr"(%arg145, %283) : (i32, i32) -> i32
    %285 = "llvm.zext"(%284) : (i32) -> i64
    %286 = "llvm.getelementptr"(%arg144, %285) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %287 = "llvm.load"(%286) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%287) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srliw_1_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg142: !llvm.ptr, %arg143: i32):
    %278 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %279 = "llvm.lshr"(%arg143, %278) : (i32, i32) -> i32
    %280 = "llvm.zext"(%279) : (i32) -> i64
    %281 = "llvm.getelementptr"(%arg142, %280) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %282 = "llvm.load"(%281) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%282) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srliw_2_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg140: !llvm.ptr, %arg141: i32):
    %273 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %274 = "llvm.lshr"(%arg141, %273) : (i32, i32) -> i32
    %275 = "llvm.zext"(%274) : (i32) -> i64
    %276 = "llvm.getelementptr"(%arg140, %275) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %277 = "llvm.load"(%276) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%277) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i16 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srliw_2_sh1add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg138: !llvm.ptr, %arg139: i32):
    %268 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %269 = "llvm.lshr"(%arg139, %268) : (i32, i32) -> i32
    %270 = "llvm.zext"(%269) : (i32) -> i64
    %271 = "llvm.getelementptr"(%arg138, %270) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %272 = "llvm.load"(%271) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%272) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srliw_3_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg136: !llvm.ptr, %arg137: i32):
    %263 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %264 = "llvm.lshr"(%arg137, %263) : (i32, i32) -> i32
    %265 = "llvm.zext"(%264) : (i32) -> i64
    %266 = "llvm.getelementptr"(%arg136, %265) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %267 = "llvm.load"(%266) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%267) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "srliw_4_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg134: !llvm.ptr, %arg135: i32):
    %258 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %259 = "llvm.lshr"(%arg135, %258) : (i32, i32) -> i32
    %260 = "llvm.zext"(%259) : (i32) -> i64
    %261 = "llvm.getelementptr"(%arg134, %260) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %262 = "llvm.load"(%261) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%262) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srli_1_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: !llvm.ptr, %arg133: i64):
    %254 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %255 = "llvm.lshr"(%arg133, %254) : (i64, i64) -> i64
    %256 = "llvm.getelementptr"(%arg132, %255) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %257 = "llvm.load"(%256) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%257) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "srli_2_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg130: !llvm.ptr, %arg131: i64):
    %250 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %251 = "llvm.lshr"(%arg131, %250) : (i64, i64) -> i64
    %252 = "llvm.getelementptr"(%arg130, %251) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %253 = "llvm.load"(%252) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%253) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srli_2_sh1add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg128: !llvm.ptr, %arg129: i64):
    %246 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %247 = "llvm.lshr"(%arg129, %246) : (i64, i64) -> i64
    %248 = "llvm.getelementptr"(%arg128, %247) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %249 = "llvm.load"(%248) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%249) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "srli_3_sh2add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg126: !llvm.ptr, %arg127: i64):
    %242 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %243 = "llvm.lshr"(%arg127, %242) : (i64, i64) -> i64
    %244 = "llvm.getelementptr"(%arg126, %243) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %245 = "llvm.load"(%244) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%245) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "srli_4_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg124: !llvm.ptr, %arg125: i64):
    %238 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %239 = "llvm.lshr"(%arg125, %238) : (i64, i64) -> i64
    %240 = "llvm.getelementptr"(%arg124, %239) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %241 = "llvm.load"(%240) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%241) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i16 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "shl_2_sh1adduw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg122: !llvm.ptr, %arg123: i32):
    %233 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %234 = "llvm.shl"(%arg123, %233) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %235 = "llvm.zext"(%234) : (i32) -> i64
    %236 = "llvm.getelementptr"(%arg122, %235) <{elem_type = i16, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %237 = "llvm.load"(%236) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%237) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i32 (ptr, i32)>, linkage = #llvm.linkage<external>, res_attrs = [{llvm.signext}], sym_name = "shl_16_sh2adduw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: !llvm.ptr, %arg121: i32):
    %228 = "llvm.mlir.constant"() <{value = 16 : i32}> : () -> i32
    %229 = "llvm.shl"(%arg121, %228) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %230 = "llvm.zext"(%229) : (i32) -> i64
    %231 = "llvm.getelementptr"(%arg120, %230) <{elem_type = i32, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %232 = "llvm.load"(%231) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%232) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.signext}], function_type = !llvm.func<i64 (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "shl_31_sh3adduw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg118: !llvm.ptr, %arg119: i32):
    %223 = "llvm.mlir.constant"() <{value = 31 : i32}> : () -> i32
    %224 = "llvm.shl"(%arg119, %223) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %225 = "llvm.zext"(%224) : (i32) -> i64
    %226 = "llvm.getelementptr"(%arg118, %225) <{elem_type = i64, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %227 = "llvm.load"(%226) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%227) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i64", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg116: i64, %arg117: i64):
    %218 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %219 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %220 = "llvm.and"(%arg116, %218) : (i64, i64) -> i64
    %221 = "llvm.shl"(%arg117, %219) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %222 = "llvm.or"(%221, %220) : (i64, i64) -> i64
    "llvm.return"(%222) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i64_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg114: i32, %arg115: i32):
    %213 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %214 = "llvm.zext"(%arg114) : (i32) -> i64
    %215 = "llvm.zext"(%arg115) : (i32) -> i64
    %216 = "llvm.shl"(%215, %213) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %217 = "llvm.or"(%216, %214) : (i64, i64) -> i64
    "llvm.return"(%217) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i64_disjoint", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg112: i64, %arg113: i64):
    %210 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %211 = "llvm.and"(%arg112, %210) : (i64, i64) -> i64
    %212 = "llvm.or"(%arg113, %211) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.return"(%212) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {}], function_type = !llvm.func<i64 (i32, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "pack_i64_disjoint_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg110: i32, %arg111: i64):
    %208 = "llvm.zext"(%arg110) : (i32) -> i64
    %209 = "llvm.or"(%arg111, %208) <{isDisjoint}> : (i64, i64) -> i64
    "llvm.return"(%209) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh1_sh0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg107: !llvm.ptr, %arg108: i64, %arg109: i64):
    %206 = "llvm.getelementptr"(%arg107, %arg108, %arg109) <{elem_type = !llvm.array<2 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %207 = "llvm.load"(%206) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%207) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh1_sh1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg104: !llvm.ptr, %arg105: i64, %arg106: i64):
    %204 = "llvm.getelementptr"(%arg104, %arg105, %arg106) <{elem_type = !llvm.array<2 x i16>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %205 = "llvm.load"(%204) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%205) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh1_sh2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg101: !llvm.ptr, %arg102: i64, %arg103: i64):
    %202 = "llvm.getelementptr"(%arg101, %arg102, %arg103) <{elem_type = !llvm.array<2 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %203 = "llvm.load"(%202) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%203) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh1_sh3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg98: !llvm.ptr, %arg99: i64, %arg100: i64):
    %200 = "llvm.getelementptr"(%arg98, %arg99, %arg100) <{elem_type = !llvm.array<2 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %201 = "llvm.load"(%200) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%201) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh2_sh0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg95: !llvm.ptr, %arg96: i64, %arg97: i64):
    %198 = "llvm.getelementptr"(%arg95, %arg96, %arg97) <{elem_type = !llvm.array<4 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %199 = "llvm.load"(%198) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%199) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh2_sh1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg92: !llvm.ptr, %arg93: i64, %arg94: i64):
    %196 = "llvm.getelementptr"(%arg92, %arg93, %arg94) <{elem_type = !llvm.array<4 x i16>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %197 = "llvm.load"(%196) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%197) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh2_sh2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg89: !llvm.ptr, %arg90: i64, %arg91: i64):
    %194 = "llvm.getelementptr"(%arg89, %arg90, %arg91) <{elem_type = !llvm.array<4 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %195 = "llvm.load"(%194) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%195) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh2_sh3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg86: !llvm.ptr, %arg87: i64, %arg88: i64):
    %192 = "llvm.getelementptr"(%arg86, %arg87, %arg88) <{elem_type = !llvm.array<4 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %193 = "llvm.load"(%192) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%193) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh3_sh0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg83: !llvm.ptr, %arg84: i64, %arg85: i64):
    %190 = "llvm.getelementptr"(%arg83, %arg84, %arg85) <{elem_type = !llvm.array<8 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %191 = "llvm.load"(%190) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%191) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh3_sh1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg80: !llvm.ptr, %arg81: i64, %arg82: i64):
    %188 = "llvm.getelementptr"(%arg80, %arg81, %arg82) <{elem_type = !llvm.array<8 x i16>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %189 = "llvm.load"(%188) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%189) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh3_sh2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg77: !llvm.ptr, %arg78: i64, %arg79: i64):
    %186 = "llvm.getelementptr"(%arg77, %arg78, %arg79) <{elem_type = !llvm.array<8 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %187 = "llvm.load"(%186) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%187) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh3_sh3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg74: !llvm.ptr, %arg75: i64, %arg76: i64):
    %184 = "llvm.getelementptr"(%arg74, %arg75, %arg76) <{elem_type = !llvm.array<8 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %185 = "llvm.load"(%184) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%185) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_lshr_sh3_sh3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg71: !llvm.ptr, %arg72: i64, %arg73: i64):
    %180 = "llvm.mlir.constant"() <{value = 58 : i64}> : () -> i64
    %181 = "llvm.lshr"(%arg72, %180) : (i64, i64) -> i64
    %182 = "llvm.getelementptr"(%arg71, %181, %arg73) <{elem_type = !llvm.array<8 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %183 = "llvm.load"(%182) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%183) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i8 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh4_sh0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg68: !llvm.ptr, %arg69: i64, %arg70: i64):
    %178 = "llvm.getelementptr"(%arg68, %arg69, %arg70) <{elem_type = !llvm.array<16 x i8>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %179 = "llvm.load"(%178) <{alignment = 1 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i8
    "llvm.return"(%179) : (i8) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i16 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh4_sh1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg65: !llvm.ptr, %arg66: i64, %arg67: i64):
    %176 = "llvm.getelementptr"(%arg65, %arg66, %arg67) <{elem_type = !llvm.array<16 x i16>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %177 = "llvm.load"(%176) <{alignment = 2 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i16
    "llvm.return"(%177) : (i16) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh4_sh2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg62: !llvm.ptr, %arg63: i64, %arg64: i64):
    %174 = "llvm.getelementptr"(%arg62, %arg63, %arg64) <{elem_type = !llvm.array<16 x i32>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %175 = "llvm.load"(%174) <{alignment = 4 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i32
    "llvm.return"(%175) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "array_index_sh4_sh3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg59: !llvm.ptr, %arg60: i64, %arg61: i64):
    %172 = "llvm.getelementptr"(%arg59, %arg60, %arg61) <{elem_type = !llvm.array<16 x i64>, noWrapFlags = 3 : i32, rawConstantIndices = array<i32: -2147483648, -2147483648>}> : (!llvm.ptr, i64, i64) -> !llvm.ptr
    %173 = "llvm.load"(%172) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> i64
    "llvm.return"(%173) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "test_gep_gep_dont_crash", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg56: !llvm.ptr, %arg57: i64, %arg58: i64):
    %166 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %167 = "llvm.mlir.constant"() <{value = 67108863 : i64}> : () -> i64
    %168 = "llvm.lshr"(%arg58, %166) : (i64, i64) -> i64
    %169 = "llvm.and"(%168, %167) : (i64, i64) -> i64
    %170 = "llvm.getelementptr"(%arg56, %169) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    %171 = "llvm.getelementptr"(%170, %arg57) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%171) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.signext}, {llvm.signext}], function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "regression", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: i32, %arg55: i32):
    %162 = "llvm.mlir.constant"() <{value = 24 : i64}> : () -> i64
    %163 = "llvm.sub"(%arg54, %arg55) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    %164 = "llvm.zext"(%163) : (i32) -> i64
    %165 = "llvm.mul"(%164, %162) <{overflowFlags = 3 : i32}> : (i64, i64) -> i64
    "llvm.return"(%165) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg53: i64):
    %160 = "llvm.mlir.constant"() <{value = -1 : i64}> : () -> i64
    %161 = "llvm.mul"(%arg53, %160) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%161) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg52: i64):
    %158 = "llvm.mlir.constant"() <{value = -2 : i64}> : () -> i64
    %159 = "llvm.mul"(%arg52, %158) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%159) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: i64):
    %156 = "llvm.mlir.constant"() <{value = -3 : i64}> : () -> i64
    %157 = "llvm.mul"(%arg51, %156) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%157) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg4", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg50: i64):
    %154 = "llvm.mlir.constant"() <{value = -4 : i64}> : () -> i64
    %155 = "llvm.mul"(%arg50, %154) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%155) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg49: i64):
    %152 = "llvm.mlir.constant"() <{value = -5 : i64}> : () -> i64
    %153 = "llvm.mul"(%arg49, %152) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%153) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: i64):
    %150 = "llvm.mlir.constant"() <{value = -6 : i64}> : () -> i64
    %151 = "llvm.mul"(%arg48, %150) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%151) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg7", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg47: i64):
    %148 = "llvm.mlir.constant"() <{value = -7 : i64}> : () -> i64
    %149 = "llvm.mul"(%arg47, %148) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%149) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "mul_neg8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg46: i64):
    %146 = "llvm.mlir.constant"() <{value = -8 : i64}> : () -> i64
    %147 = "llvm.mul"(%arg46, %146) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%147) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "bext_mul12", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg44: i32, %arg45: i32):
    %140 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %141 = "llvm.mlir.constant"() <{value = 12 : i64}> : () -> i64
    %142 = "llvm.lshr"(%arg44, %arg45) : (i32, i32) -> i32
    %143 = "llvm.and"(%142, %140) : (i32, i32) -> i32
    %144 = "llvm.zext"(%143) <{nonNeg}> : (i32) -> i64
    %145 = "llvm.mul"(%144, %141) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%145) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "bext_mul45", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: i32, %arg43: i32):
    %134 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %135 = "llvm.mlir.constant"() <{value = 45 : i64}> : () -> i64
    %136 = "llvm.lshr"(%arg42, %arg43) : (i32, i32) -> i32
    %137 = "llvm.and"(%136, %134) : (i32, i32) -> i32
    %138 = "llvm.zext"(%137) <{nonNeg}> : (i32) -> i64
    %139 = "llvm.mul"(%138, %135) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%139) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "bext_mul132", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg40: i32, %arg41: i32):
    %128 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %129 = "llvm.mlir.constant"() <{value = 132 : i64}> : () -> i64
    %130 = "llvm.lshr"(%arg40, %arg41) : (i32, i32) -> i32
    %131 = "llvm.and"(%130, %128) : (i32, i32) -> i32
    %132 = "llvm.zext"(%131) <{nonNeg}> : (i32) -> i64
    %133 = "llvm.mul"(%132, %129) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%133) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "gep_lshr_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg38: !llvm.ptr, %arg39: i64):
    %123 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %124 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %125 = "llvm.lshr"(%arg39, %123) <{isExact}> : (i64, i64) -> i64
    %126 = "llvm.and"(%125, %124) : (i64, i64) -> i64
    %127 = "llvm.getelementptr"(%arg38, %126) <{elem_type = !llvm.array<80 x i8>, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%127) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "srli_slliuw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg37: i64):
    %117 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %118 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %119 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %120 = "llvm.lshr"(%arg37, %117) <{isExact}> : (i64, i64) -> i64
    %121 = "llvm.and"(%120, %118) : (i64, i64) -> i64
    %122 = "llvm.shl"(%121, %119) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%122) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "srli_slliuw_canonical", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: i64):
    %113 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %114 = "llvm.mlir.constant"() <{value = 68719476720 : i64}> : () -> i64
    %115 = "llvm.shl"(%arg36, %113) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %116 = "llvm.and"(%115, %114) : (i64, i64) -> i64
    "llvm.return"(%116) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "srli_slliuw_negative_test", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg35: i64):
    %109 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %110 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %111 = "llvm.lshr"(%arg35, %109) : (i64, i64) -> i64
    %112 = "llvm.shl"(%111, %110) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%112) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "srli_slli_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg34: i64):
    %103 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %104 = "llvm.mlir.constant"() <{value = 65535 : i64}> : () -> i64
    %105 = "llvm.mlir.constant"() <{value = 4 : i64}> : () -> i64
    %106 = "llvm.lshr"(%arg34, %103) <{isExact}> : (i64, i64) -> i64
    %107 = "llvm.and"(%106, %104) : (i64, i64) -> i64
    %108 = "llvm.shl"(%107, %105) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%108) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "srli_slliuw_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: i64):
    %97 = "llvm.mlir.constant"() <{value = 18 : i64}> : () -> i64
    %98 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %99 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %100 = "llvm.lshr"(%arg33, %97) : (i64, i64) -> i64
    %101 = "llvm.and"(%100, %98) : (i64, i64) -> i64
    %102 = "llvm.shl"(%101, %99) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%102) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "srli_slliuw_canonical_2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg32: i64):
    %93 = "llvm.mlir.constant"() <{value = 15 : i64}> : () -> i64
    %94 = "llvm.mlir.constant"() <{value = 34359738360 : i64}> : () -> i64
    %95 = "llvm.lshr"(%arg32, %93) : (i64, i64) -> i64
    %96 = "llvm.and"(%95, %94) : (i64, i64) -> i64
    "llvm.return"(%96) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srai_srli_sh3add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr, %arg31: i64):
    %88 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %89 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %90 = "llvm.ashr"(%arg31, %88) : (i64, i64) -> i64
    %91 = "llvm.lshr"(%90, %89) : (i64, i64) -> i64
    %92 = "llvm.getelementptr"(%arg30, %91) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%92) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srai_srli_slli", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg28: !llvm.ptr, %arg29: i64):
    %83 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %84 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %85 = "llvm.ashr"(%arg29, %83) : (i64, i64) -> i64
    %86 = "llvm.lshr"(%85, %84) : (i64, i64) -> i64
    %87 = "llvm.getelementptr"(%arg28, %86) <{elem_type = i128, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%87) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srai_andi", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: i64):
    %79 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %80 = "llvm.mlir.constant"() <{value = -8 : i64}> : () -> i64
    %81 = "llvm.ashr"(%arg27, %79) : (i64, i64) -> i64
    %82 = "llvm.and"(%81, %80) : (i64, i64) -> i64
    "llvm.return"(%82) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "srai_lui_and", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg26: i64):
    %75 = "llvm.mlir.constant"() <{value = 8 : i64}> : () -> i64
    %76 = "llvm.mlir.constant"() <{value = -8192 : i64}> : () -> i64
    %77 = "llvm.ashr"(%arg26, %75) : (i64, i64) -> i64
    %78 = "llvm.and"(%77, %76) : (i64, i64) -> i64
    "llvm.return"(%78) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, no_unwind, sym_name = "add_u32simm32_zextw", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg25: i64):
    %71 = "llvm.mlir.constant"() <{value = 4294967294 : i64}> : () -> i64
    %72 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %73 = "llvm.add"(%arg25, %71) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %74 = "llvm.and"(%73, %72) : (i64, i64) -> i64
    "llvm.return"(%74) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "shl_and_gep", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg23: !llvm.ptr, %arg24: i64):
    %66 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %67 = "llvm.mlir.constant"() <{value = 8589934584 : i64}> : () -> i64
    %68 = "llvm.shl"(%arg24, %66) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %69 = "llvm.and"(%68, %67) : (i64, i64) -> i64
    %70 = "llvm.getelementptr"(%arg23, %69) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%70) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "shr_and_gep", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: !llvm.ptr, %arg22: i64):
    %61 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %62 = "llvm.mlir.constant"() <{value = 67108863 : i64}> : () -> i64
    %63 = "llvm.lshr"(%arg22, %61) : (i64, i64) -> i64
    %64 = "llvm.and"(%63, %62) : (i64, i64) -> i64
    %65 = "llvm.getelementptr"(%arg21, %64) <{elem_type = i16, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%65) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "slt_select_gep", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg19: !llvm.ptr, %arg20: i32):
    %55 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %56 = "llvm.mlir.constant"() <{value = 24 : i64}> : () -> i64
    %57 = "llvm.mlir.constant"() <{value = 16 : i64}> : () -> i64
    %58 = "llvm.icmp"(%arg20, %55) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %59 = "llvm.select"(%58, %56, %57) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i64, i64) -> i64
    %60 = "llvm.getelementptr"(%arg19, %59) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%60) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 (i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "shr_and_add", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg17: i32, %arg18: i32):
    %50 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %51 = "llvm.mlir.constant"() <{value = 33554428 : i32}> : () -> i32
    %52 = "llvm.lshr"(%arg18, %50) : (i32, i32) -> i32
    %53 = "llvm.and"(%52, %51) : (i32, i32) -> i32
    %54 = "llvm.add"(%arg17, %53) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
    "llvm.return"(%54) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{}, {llvm.zeroext}], function_type = !llvm.func<ptr (ptr, i16)>, linkage = #llvm.linkage<external>, sym_name = "udiv1280_gep", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr, %arg16: i16):
    %46 = "llvm.mlir.constant"() <{value = 1280 : i16}> : () -> i16
    %47 = "llvm.udiv"(%arg16, %46) : (i16, i16) -> i16
    %48 = "llvm.zext"(%47) <{nonNeg}> : (i16) -> i64
    %49 = "llvm.getelementptr"(%arg15, %48) <{elem_type = i64, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%49) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "adduw_m1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg14: i64):
    %44 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %45 = "llvm.add"(%arg14, %44) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%45) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "adduw_m3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg13: i64):
    %42 = "llvm.mlir.constant"() <{value = 4294967293 : i64}> : () -> i64
    %43 = "llvm.add"(%arg13, %42) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%43) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "adduw_3shl30", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: i64):
    %40 = "llvm.mlir.constant"() <{value = 3221225472 : i64}> : () -> i64
    %41 = "llvm.add"(%arg12, %40) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%41) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64, i64)>, linkage = #llvm.linkage<external>, sym_name = "adduw_m3_multiuse", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg10: i64, %arg11: i64):
    %36 = "llvm.mlir.constant"() <{value = 4294967293 : i64}> : () -> i64
    %37 = "llvm.add"(%arg10, %36) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %38 = "llvm.add"(%arg11, %36) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %39 = "llvm.or"(%37, %38) : (i64, i64) -> i64
    "llvm.return"(%39) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "add_or_m3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: i64):
    %32 = "llvm.mlir.constant"() <{value = 4294967293 : i64}> : () -> i64
    %33 = "llvm.add"(%arg9, %32) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %34 = "llvm.or"(%arg9, %32) : (i64, i64) -> i64
    %35 = "llvm.add"(%33, %34) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%35) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "append_32ones", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg8: i64):
    %28 = "llvm.mlir.constant"() <{value = 32 : i64}> : () -> i64
    %29 = "llvm.mlir.constant"() <{value = 4294967295 : i64}> : () -> i64
    %30 = "llvm.shl"(%arg8, %28) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %31 = "llvm.or"(%30, %29) : (i64, i64) -> i64
    "llvm.return"(%31) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg7: i1):
    %25 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %26 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %27 = "llvm.select"(%arg7, %25, %26) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%27) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select5", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: i1):
    %22 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %23 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %24 = "llvm.select"(%arg6, %22, %23) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%24) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.zeroext}], function_type = !llvm.func<i32 (i1)>, linkage = #llvm.linkage<external>, sym_name = "select9", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg5: i1):
    %19 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %20 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %21 = "llvm.select"(%arg5, %19, %20) <{fastmathFlags = #llvm.fastmath<none>}> : (i1, i32, i32) -> i32
    "llvm.return"(%21) : (i32) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<ptr (ptr, i64)>, linkage = #llvm.linkage<external>, sym_name = "shl_add_knownbits", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: i64):
    %12 = "llvm.mlir.constant"() <{value = 16383 : i64}> : () -> i64
    %13 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %14 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %15 = "llvm.and"(%arg4, %12) : (i64, i64) -> i64
    %16 = "llvm.mul"(%15, %13) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    %17 = "llvm.lshr"(%16, %14) : (i64, i64) -> i64
    %18 = "llvm.getelementptr"(%arg3, %17) <{elem_type = i8, noWrapFlags = 0 : i32, rawConstantIndices = array<i32: -2147483648>}> : (!llvm.ptr, i64) -> !llvm.ptr
    "llvm.return"(%18) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "exactashr1mul6", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg2: i64):
    %8 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %9 = "llvm.mlir.constant"() <{value = 6 : i64}> : () -> i64
    %10 = "llvm.ashr"(%arg2, %8) <{isExact}> : (i64, i64) -> i64
    %11 = "llvm.mul"(%10, %9) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%11) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "exactlshr3mul22", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg1: i64):
    %4 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %5 = "llvm.mlir.constant"() <{value = 22 : i64}> : () -> i64
    %6 = "llvm.lshr"(%arg1, %4) <{isExact}> : (i64, i64) -> i64
    %7 = "llvm.mul"(%6, %5) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%7) : (i64) -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 (i64)>, linkage = #llvm.linkage<external>, sym_name = "exactashr1mul36", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: i64):
    %0 = "llvm.mlir.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "llvm.mlir.constant"() <{value = 36 : i64}> : () -> i64
    %2 = "llvm.ashr"(%arg0, %0) <{isExact}> : (i64, i64) -> i64
    %3 = "llvm.mul"(%2, %1) <{overflowFlags = 0 : i32}> : (i64, i64) -> i64
    "llvm.return"(%3) : (i64) -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

