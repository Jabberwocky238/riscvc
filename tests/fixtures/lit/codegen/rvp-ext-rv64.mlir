"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_padd_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg447: !llvm.ptr, %arg448: !llvm.ptr, %arg449: !llvm.ptr):
    %707 = "llvm.load"(%arg448) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %708 = "llvm.load"(%arg449) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %709 = "llvm.add"(%707, %708) <{overflowFlags = 0 : i32}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%709, %arg447) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psub_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg444: !llvm.ptr, %arg445: !llvm.ptr, %arg446: !llvm.ptr):
    %704 = "llvm.load"(%arg445) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %705 = "llvm.load"(%arg446) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %706 = "llvm.sub"(%704, %705) <{overflowFlags = 0 : i32}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%706, %arg444) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_padd_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg441: !llvm.ptr, %arg442: !llvm.ptr, %arg443: !llvm.ptr):
    %701 = "llvm.load"(%arg442) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %702 = "llvm.load"(%arg443) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %703 = "llvm.add"(%701, %702) <{overflowFlags = 0 : i32}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%703, %arg441) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psub_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg438: !llvm.ptr, %arg439: !llvm.ptr, %arg440: !llvm.ptr):
    %698 = "llvm.load"(%arg439) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %699 = "llvm.load"(%arg440) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %700 = "llvm.sub"(%698, %699) <{overflowFlags = 0 : i32}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%700, %arg438) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_and_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg435: !llvm.ptr, %arg436: !llvm.ptr, %arg437: !llvm.ptr):
    %695 = "llvm.load"(%arg436) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %696 = "llvm.load"(%arg437) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %697 = "llvm.and"(%695, %696) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%697, %arg435) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_or_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg432: !llvm.ptr, %arg433: !llvm.ptr, %arg434: !llvm.ptr):
    %692 = "llvm.load"(%arg433) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %693 = "llvm.load"(%arg434) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %694 = "llvm.or"(%692, %693) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%694, %arg432) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_xor_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg429: !llvm.ptr, %arg430: !llvm.ptr, %arg431: !llvm.ptr):
    %689 = "llvm.load"(%arg430) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %690 = "llvm.load"(%arg431) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %691 = "llvm.xor"(%689, %690) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%691, %arg429) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_andn_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg426: !llvm.ptr, %arg427: !llvm.ptr, %arg428: !llvm.ptr):
    %684 = "llvm.mlir.constant"() <{value = dense<-1> : vector<4xi16>}> : () -> vector<4xi16>
    %685 = "llvm.load"(%arg427) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %686 = "llvm.load"(%arg428) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %687 = "llvm.xor"(%686, %684) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %688 = "llvm.and"(%685, %687) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%688, %arg426) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_orn_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg423: !llvm.ptr, %arg424: !llvm.ptr, %arg425: !llvm.ptr):
    %679 = "llvm.mlir.constant"() <{value = dense<-1> : vector<4xi16>}> : () -> vector<4xi16>
    %680 = "llvm.load"(%arg424) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %681 = "llvm.load"(%arg425) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %682 = "llvm.xor"(%681, %679) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %683 = "llvm.or"(%680, %682) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%683, %arg423) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_xnor_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg420: !llvm.ptr, %arg421: !llvm.ptr, %arg422: !llvm.ptr):
    %674 = "llvm.mlir.constant"() <{value = dense<-1> : vector<4xi16>}> : () -> vector<4xi16>
    %675 = "llvm.load"(%arg421) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %676 = "llvm.load"(%arg422) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %677 = "llvm.xor"(%676, %674) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %678 = "llvm.xor"(%675, %677) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%678, %arg420) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_and_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg417: !llvm.ptr, %arg418: !llvm.ptr, %arg419: !llvm.ptr):
    %671 = "llvm.load"(%arg418) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %672 = "llvm.load"(%arg419) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %673 = "llvm.and"(%671, %672) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%673, %arg417) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_or_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg414: !llvm.ptr, %arg415: !llvm.ptr, %arg416: !llvm.ptr):
    %668 = "llvm.load"(%arg415) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %669 = "llvm.load"(%arg416) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %670 = "llvm.or"(%668, %669) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%670, %arg414) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_xor_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg411: !llvm.ptr, %arg412: !llvm.ptr, %arg413: !llvm.ptr):
    %665 = "llvm.load"(%arg412) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %666 = "llvm.load"(%arg413) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %667 = "llvm.xor"(%665, %666) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%667, %arg411) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_andn_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg408: !llvm.ptr, %arg409: !llvm.ptr, %arg410: !llvm.ptr):
    %660 = "llvm.mlir.constant"() <{value = dense<-1> : vector<8xi8>}> : () -> vector<8xi8>
    %661 = "llvm.load"(%arg409) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %662 = "llvm.load"(%arg410) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %663 = "llvm.xor"(%662, %660) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    %664 = "llvm.and"(%661, %663) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%664, %arg408) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_orn_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg405: !llvm.ptr, %arg406: !llvm.ptr, %arg407: !llvm.ptr):
    %655 = "llvm.mlir.constant"() <{value = dense<-1> : vector<8xi8>}> : () -> vector<8xi8>
    %656 = "llvm.load"(%arg406) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %657 = "llvm.load"(%arg407) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %658 = "llvm.xor"(%657, %655) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    %659 = "llvm.or"(%656, %658) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%659, %arg405) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_xnor_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg402: !llvm.ptr, %arg403: !llvm.ptr, %arg404: !llvm.ptr):
    %650 = "llvm.mlir.constant"() <{value = dense<-1> : vector<8xi8>}> : () -> vector<8xi8>
    %651 = "llvm.load"(%arg403) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %652 = "llvm.load"(%arg404) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %653 = "llvm.xor"(%652, %650) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    %654 = "llvm.xor"(%651, %653) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%654, %arg402) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_and_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg399: !llvm.ptr, %arg400: !llvm.ptr, %arg401: !llvm.ptr):
    %647 = "llvm.load"(%arg400) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %648 = "llvm.load"(%arg401) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %649 = "llvm.and"(%647, %648) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%649, %arg399) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_or_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg396: !llvm.ptr, %arg397: !llvm.ptr, %arg398: !llvm.ptr):
    %644 = "llvm.load"(%arg397) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %645 = "llvm.load"(%arg398) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %646 = "llvm.or"(%644, %645) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%646, %arg396) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_xor_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg393: !llvm.ptr, %arg394: !llvm.ptr, %arg395: !llvm.ptr):
    %641 = "llvm.load"(%arg394) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %642 = "llvm.load"(%arg395) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %643 = "llvm.xor"(%641, %642) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%643, %arg393) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_andn_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg390: !llvm.ptr, %arg391: !llvm.ptr, %arg392: !llvm.ptr):
    %636 = "llvm.mlir.constant"() <{value = dense<-1> : vector<2xi32>}> : () -> vector<2xi32>
    %637 = "llvm.load"(%arg391) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %638 = "llvm.load"(%arg392) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %639 = "llvm.xor"(%638, %636) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %640 = "llvm.and"(%637, %639) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%640, %arg390) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_orn_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg387: !llvm.ptr, %arg388: !llvm.ptr, %arg389: !llvm.ptr):
    %631 = "llvm.mlir.constant"() <{value = dense<-1> : vector<2xi32>}> : () -> vector<2xi32>
    %632 = "llvm.load"(%arg388) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %633 = "llvm.load"(%arg389) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %634 = "llvm.xor"(%633, %631) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %635 = "llvm.or"(%632, %634) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%635, %arg387) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_xnor_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg384: !llvm.ptr, %arg385: !llvm.ptr, %arg386: !llvm.ptr):
    %626 = "llvm.mlir.constant"() <{value = dense<-1> : vector<2xi32>}> : () -> vector<2xi32>
    %627 = "llvm.load"(%arg385) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %628 = "llvm.load"(%arg386) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %629 = "llvm.xor"(%628, %626) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %630 = "llvm.xor"(%627, %629) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%630, %arg384) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_not_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg382: !llvm.ptr, %arg383: !llvm.ptr):
    %623 = "llvm.mlir.constant"() <{value = dense<-1> : vector<4xi16>}> : () -> vector<4xi16>
    %624 = "llvm.load"(%arg383) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %625 = "llvm.xor"(%624, %623) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%625, %arg382) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_not_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg380: !llvm.ptr, %arg381: !llvm.ptr):
    %620 = "llvm.mlir.constant"() <{value = dense<-1> : vector<8xi8>}> : () -> vector<8xi8>
    %621 = "llvm.load"(%arg381) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %622 = "llvm.xor"(%621, %620) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%622, %arg380) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_not_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg378: !llvm.ptr, %arg379: !llvm.ptr):
    %617 = "llvm.mlir.constant"() <{value = dense<-1> : vector<2xi32>}> : () -> vector<2xi32>
    %618 = "llvm.load"(%arg379) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %619 = "llvm.xor"(%618, %617) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%619, %arg378) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psadd_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg375: !llvm.ptr, %arg376: !llvm.ptr, %arg377: !llvm.ptr):
    %614 = "llvm.load"(%arg376) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %615 = "llvm.load"(%arg377) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %616 = "llvm.intr.sadd.sat"(%614, %615) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%616, %arg375) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psaddu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg372: !llvm.ptr, %arg373: !llvm.ptr, %arg374: !llvm.ptr):
    %611 = "llvm.load"(%arg373) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %612 = "llvm.load"(%arg374) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %613 = "llvm.intr.uadd.sat"(%611, %612) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%613, %arg372) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pssub_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg369: !llvm.ptr, %arg370: !llvm.ptr, %arg371: !llvm.ptr):
    %608 = "llvm.load"(%arg370) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %609 = "llvm.load"(%arg371) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %610 = "llvm.intr.ssub.sat"(%608, %609) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%610, %arg369) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pssubu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg366: !llvm.ptr, %arg367: !llvm.ptr, %arg368: !llvm.ptr):
    %605 = "llvm.load"(%arg367) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %606 = "llvm.load"(%arg368) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %607 = "llvm.intr.usub.sat"(%605, %606) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%607, %arg366) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psadd_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg363: !llvm.ptr, %arg364: !llvm.ptr, %arg365: !llvm.ptr):
    %602 = "llvm.load"(%arg364) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %603 = "llvm.load"(%arg365) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %604 = "llvm.intr.sadd.sat"(%602, %603) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%604, %arg363) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psaddu_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg360: !llvm.ptr, %arg361: !llvm.ptr, %arg362: !llvm.ptr):
    %599 = "llvm.load"(%arg361) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %600 = "llvm.load"(%arg362) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %601 = "llvm.intr.uadd.sat"(%599, %600) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%601, %arg360) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pssub_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg357: !llvm.ptr, %arg358: !llvm.ptr, %arg359: !llvm.ptr):
    %596 = "llvm.load"(%arg358) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %597 = "llvm.load"(%arg359) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %598 = "llvm.intr.ssub.sat"(%596, %597) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%598, %arg357) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pssubu_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg354: !llvm.ptr, %arg355: !llvm.ptr, %arg356: !llvm.ptr):
    %593 = "llvm.load"(%arg355) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %594 = "llvm.load"(%arg356) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %595 = "llvm.intr.usub.sat"(%593, %594) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%595, %arg354) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_paadd_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg351: !llvm.ptr, %arg352: !llvm.ptr, %arg353: !llvm.ptr):
    %585 = "llvm.mlir.constant"() <{value = dense<1> : vector<4xi32>}> : () -> vector<4xi32>
    %586 = "llvm.load"(%arg352) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %587 = "llvm.load"(%arg353) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %588 = "llvm.sext"(%586) : (vector<4xi16>) -> vector<4xi32>
    %589 = "llvm.sext"(%587) : (vector<4xi16>) -> vector<4xi32>
    %590 = "llvm.add"(%588, %589) <{overflowFlags = 1 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %591 = "llvm.ashr"(%590, %585) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %592 = "llvm.trunc"(%591) <{overflowFlags = 0 : i32}> : (vector<4xi32>) -> vector<4xi16>
    "llvm.store"(%592, %arg351) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_paaddu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg348: !llvm.ptr, %arg349: !llvm.ptr, %arg350: !llvm.ptr):
    %578 = "llvm.mlir.constant"() <{value = dense<1> : vector<4xi16>}> : () -> vector<4xi16>
    %579 = "llvm.load"(%arg349) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %580 = "llvm.load"(%arg350) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %581 = "llvm.and"(%579, %580) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %582 = "llvm.xor"(%579, %580) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %583 = "llvm.lshr"(%582, %578) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %584 = "llvm.add"(%581, %583) <{overflowFlags = 0 : i32}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%584, %arg348) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_paadd_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg345: !llvm.ptr, %arg346: !llvm.ptr, %arg347: !llvm.ptr):
    %570 = "llvm.mlir.constant"() <{value = dense<1> : vector<8xi16>}> : () -> vector<8xi16>
    %571 = "llvm.load"(%arg346) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %572 = "llvm.load"(%arg347) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %573 = "llvm.sext"(%571) : (vector<8xi8>) -> vector<8xi16>
    %574 = "llvm.sext"(%572) : (vector<8xi8>) -> vector<8xi16>
    %575 = "llvm.add"(%573, %574) <{overflowFlags = 1 : i32}> : (vector<8xi16>, vector<8xi16>) -> vector<8xi16>
    %576 = "llvm.ashr"(%575, %570) : (vector<8xi16>, vector<8xi16>) -> vector<8xi16>
    %577 = "llvm.trunc"(%576) <{overflowFlags = 0 : i32}> : (vector<8xi16>) -> vector<8xi8>
    "llvm.store"(%577, %arg345) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_paaddu_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg342: !llvm.ptr, %arg343: !llvm.ptr, %arg344: !llvm.ptr):
    %563 = "llvm.mlir.constant"() <{value = dense<1> : vector<8xi8>}> : () -> vector<8xi8>
    %564 = "llvm.load"(%arg343) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %565 = "llvm.load"(%arg344) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %566 = "llvm.and"(%564, %565) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    %567 = "llvm.xor"(%564, %565) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    %568 = "llvm.lshr"(%567, %563) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    %569 = "llvm.add"(%566, %568) <{overflowFlags = 0 : i32}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%569, %arg342) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pdif_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg339: !llvm.ptr, %arg340: !llvm.ptr, %arg341: !llvm.ptr):
    %558 = "llvm.load"(%arg340) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %559 = "llvm.load"(%arg341) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %560 = "llvm.intr.smin"(%558, %559) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %561 = "llvm.intr.smax"(%558, %559) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %562 = "llvm.sub"(%561, %560) <{overflowFlags = 0 : i32}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%562, %arg339) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pdifu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg336: !llvm.ptr, %arg337: !llvm.ptr, %arg338: !llvm.ptr):
    %553 = "llvm.load"(%arg337) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %554 = "llvm.load"(%arg338) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %555 = "llvm.intr.umin"(%553, %554) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %556 = "llvm.intr.umax"(%553, %554) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    %557 = "llvm.sub"(%556, %555) <{overflowFlags = 0 : i32}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%557, %arg336) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pdif_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg333: !llvm.ptr, %arg334: !llvm.ptr, %arg335: !llvm.ptr):
    %548 = "llvm.load"(%arg334) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %549 = "llvm.load"(%arg335) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %550 = "llvm.intr.smin"(%548, %549) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    %551 = "llvm.intr.smax"(%548, %549) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    %552 = "llvm.sub"(%551, %550) <{overflowFlags = 0 : i32}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%552, %arg333) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pdifu_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg330: !llvm.ptr, %arg331: !llvm.ptr, %arg332: !llvm.ptr):
    %543 = "llvm.load"(%arg331) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %544 = "llvm.load"(%arg332) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %545 = "llvm.intr.umin"(%543, %544) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    %546 = "llvm.intr.umax"(%543, %544) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    %547 = "llvm.sub"(%546, %545) <{overflowFlags = 0 : i32}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%547, %arg330) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pasub_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg327: !llvm.ptr, %arg328: !llvm.ptr, %arg329: !llvm.ptr):
    %535 = "llvm.mlir.constant"() <{value = dense<1> : vector<4xi32>}> : () -> vector<4xi32>
    %536 = "llvm.load"(%arg328) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %537 = "llvm.load"(%arg329) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %538 = "llvm.sext"(%536) : (vector<4xi16>) -> vector<4xi32>
    %539 = "llvm.sext"(%537) : (vector<4xi16>) -> vector<4xi32>
    %540 = "llvm.sub"(%538, %539) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %541 = "llvm.ashr"(%540, %535) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %542 = "llvm.trunc"(%541) <{overflowFlags = 0 : i32}> : (vector<4xi32>) -> vector<4xi16>
    "llvm.store"(%542, %arg327) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pasubu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg324: !llvm.ptr, %arg325: !llvm.ptr, %arg326: !llvm.ptr):
    %527 = "llvm.mlir.constant"() <{value = dense<1> : vector<4xi32>}> : () -> vector<4xi32>
    %528 = "llvm.load"(%arg325) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %529 = "llvm.load"(%arg326) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %530 = "llvm.zext"(%528) : (vector<4xi16>) -> vector<4xi32>
    %531 = "llvm.zext"(%529) : (vector<4xi16>) -> vector<4xi32>
    %532 = "llvm.sub"(%530, %531) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %533 = "llvm.lshr"(%532, %527) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %534 = "llvm.trunc"(%533) <{overflowFlags = 0 : i32}> : (vector<4xi32>) -> vector<4xi16>
    "llvm.store"(%534, %arg324) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pasub_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg321: !llvm.ptr, %arg322: !llvm.ptr, %arg323: !llvm.ptr):
    %519 = "llvm.mlir.constant"() <{value = dense<1> : vector<8xi16>}> : () -> vector<8xi16>
    %520 = "llvm.load"(%arg322) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %521 = "llvm.load"(%arg323) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %522 = "llvm.sext"(%520) : (vector<8xi8>) -> vector<8xi16>
    %523 = "llvm.sext"(%521) : (vector<8xi8>) -> vector<8xi16>
    %524 = "llvm.sub"(%522, %523) <{overflowFlags = 0 : i32}> : (vector<8xi16>, vector<8xi16>) -> vector<8xi16>
    %525 = "llvm.ashr"(%524, %519) : (vector<8xi16>, vector<8xi16>) -> vector<8xi16>
    %526 = "llvm.trunc"(%525) <{overflowFlags = 0 : i32}> : (vector<8xi16>) -> vector<8xi8>
    "llvm.store"(%526, %arg321) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pasubu_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg318: !llvm.ptr, %arg319: !llvm.ptr, %arg320: !llvm.ptr):
    %511 = "llvm.mlir.constant"() <{value = dense<1> : vector<8xi16>}> : () -> vector<8xi16>
    %512 = "llvm.load"(%arg319) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %513 = "llvm.load"(%arg320) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %514 = "llvm.zext"(%512) : (vector<8xi8>) -> vector<8xi16>
    %515 = "llvm.zext"(%513) : (vector<8xi8>) -> vector<8xi16>
    %516 = "llvm.sub"(%514, %515) <{overflowFlags = 0 : i32}> : (vector<8xi16>, vector<8xi16>) -> vector<8xi16>
    %517 = "llvm.lshr"(%516, %511) : (vector<8xi16>, vector<8xi16>) -> vector<8xi16>
    %518 = "llvm.trunc"(%517) <{overflowFlags = 0 : i32}> : (vector<8xi16>) -> vector<8xi8>
    "llvm.store"(%518, %arg318) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pli_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg317: !llvm.ptr):
    %507 = "llvm.mlir.constant"() <{value = dense<100> : vector<4xi16>}> : () -> vector<4xi16>
    %508 = "llvm.mlir.constant"() <{value = 0 : i16}> : () -> i16
    %509 = "llvm.mlir.constant"() <{value = dense<0> : vector<4xi16>}> : () -> vector<4xi16>
    %510 = "llvm.add"(%507, %509) <{overflowFlags = 0 : i32}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%510, %arg317) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pli_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg316: !llvm.ptr):
    %503 = "llvm.mlir.constant"() <{value = dense<64> : vector<8xi8>}> : () -> vector<8xi8>
    %504 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %505 = "llvm.mlir.constant"() <{value = dense<0> : vector<8xi8>}> : () -> vector<8xi8>
    %506 = "llvm.add"(%503, %505) <{overflowFlags = 0 : i32}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%506, %arg316) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pli_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg315: !llvm.ptr):
    %499 = "llvm.mlir.constant"() <{value = dense<-256> : vector<2xi32>}> : () -> vector<2xi32>
    %500 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %501 = "llvm.mlir.constant"() <{value = dense<0> : vector<2xi32>}> : () -> vector<2xi32>
    %502 = "llvm.add"(%499, %501) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%502, %arg315) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_extract_vector_16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg313: !llvm.ptr, %arg314: !llvm.ptr):
    %496 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %497 = "llvm.load"(%arg314) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %498 = "llvm.extractelement"(%497, %496) : (vector<4xi16>, i32) -> i16
    "llvm.store"(%498, %arg313) <{alignment = 2 : i64, ordering = 0 : i64}> : (i16, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_extract_vector_8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg311: !llvm.ptr, %arg312: !llvm.ptr):
    %493 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %494 = "llvm.load"(%arg312) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %495 = "llvm.extractelement"(%494, %493) : (vector<8xi8>, i32) -> i8
    "llvm.store"(%495, %arg311) <{alignment = 1 : i64, ordering = 0 : i64}> : (i8, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_extract_vector_32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg309: !llvm.ptr, %arg310: !llvm.ptr):
    %490 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %491 = "llvm.load"(%arg310) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %492 = "llvm.extractelement"(%491, %490) : (vector<2xi32>, i32) -> i32
    "llvm.store"(%492, %arg309) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_extract_vector_32_elem1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg307: !llvm.ptr, %arg308: !llvm.ptr):
    %487 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %488 = "llvm.load"(%arg308) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %489 = "llvm.extractelement"(%488, %487) : (vector<2xi32>, i32) -> i32
    "llvm.store"(%489, %arg307) <{alignment = 4 : i64, ordering = 0 : i64}> : (i32, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_padd_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg304: !llvm.ptr, %arg305: !llvm.ptr, %arg306: !llvm.ptr):
    %484 = "llvm.load"(%arg305) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %485 = "llvm.load"(%arg306) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %486 = "llvm.add"(%484, %485) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%486, %arg304) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psub_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg301: !llvm.ptr, %arg302: !llvm.ptr, %arg303: !llvm.ptr):
    %481 = "llvm.load"(%arg302) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %482 = "llvm.load"(%arg303) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %483 = "llvm.sub"(%481, %482) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%483, %arg301) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psadd_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg298: !llvm.ptr, %arg299: !llvm.ptr, %arg300: !llvm.ptr):
    %478 = "llvm.load"(%arg299) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %479 = "llvm.load"(%arg300) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %480 = "llvm.intr.sadd.sat"(%478, %479) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%480, %arg298) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psaddu_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg295: !llvm.ptr, %arg296: !llvm.ptr, %arg297: !llvm.ptr):
    %475 = "llvm.load"(%arg296) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %476 = "llvm.load"(%arg297) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %477 = "llvm.intr.uadd.sat"(%475, %476) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%477, %arg295) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pssub_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg292: !llvm.ptr, %arg293: !llvm.ptr, %arg294: !llvm.ptr):
    %472 = "llvm.load"(%arg293) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %473 = "llvm.load"(%arg294) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %474 = "llvm.intr.ssub.sat"(%472, %473) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%474, %arg292) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pssubu_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg289: !llvm.ptr, %arg290: !llvm.ptr, %arg291: !llvm.ptr):
    %469 = "llvm.load"(%arg290) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %470 = "llvm.load"(%arg291) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %471 = "llvm.intr.usub.sat"(%469, %470) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%471, %arg289) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_paadd_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg286: !llvm.ptr, %arg287: !llvm.ptr, %arg288: !llvm.ptr):
    %461 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi64>}> : () -> vector<2xi64>
    %462 = "llvm.load"(%arg287) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %463 = "llvm.load"(%arg288) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %464 = "llvm.sext"(%462) : (vector<2xi32>) -> vector<2xi64>
    %465 = "llvm.sext"(%463) : (vector<2xi32>) -> vector<2xi64>
    %466 = "llvm.add"(%464, %465) <{overflowFlags = 1 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %467 = "llvm.ashr"(%466, %461) : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %468 = "llvm.trunc"(%467) <{overflowFlags = 0 : i32}> : (vector<2xi64>) -> vector<2xi32>
    "llvm.store"(%468, %arg286) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_paaddu_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg283: !llvm.ptr, %arg284: !llvm.ptr, %arg285: !llvm.ptr):
    %454 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi32>}> : () -> vector<2xi32>
    %455 = "llvm.load"(%arg284) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %456 = "llvm.load"(%arg285) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %457 = "llvm.and"(%455, %456) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %458 = "llvm.xor"(%455, %456) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %459 = "llvm.lshr"(%458, %454) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %460 = "llvm.add"(%457, %459) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%460, %arg283) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pasub_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg280: !llvm.ptr, %arg281: !llvm.ptr, %arg282: !llvm.ptr):
    %446 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi64>}> : () -> vector<2xi64>
    %447 = "llvm.load"(%arg281) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %448 = "llvm.load"(%arg282) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %449 = "llvm.sext"(%447) : (vector<2xi32>) -> vector<2xi64>
    %450 = "llvm.sext"(%448) : (vector<2xi32>) -> vector<2xi64>
    %451 = "llvm.sub"(%449, %450) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %452 = "llvm.ashr"(%451, %446) : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %453 = "llvm.trunc"(%452) <{overflowFlags = 0 : i32}> : (vector<2xi64>) -> vector<2xi32>
    "llvm.store"(%453, %arg280) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pasubu_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg277: !llvm.ptr, %arg278: !llvm.ptr, %arg279: !llvm.ptr):
    %438 = "llvm.mlir.constant"() <{value = dense<1> : vector<2xi64>}> : () -> vector<2xi64>
    %439 = "llvm.load"(%arg278) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %440 = "llvm.load"(%arg279) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %441 = "llvm.zext"(%439) : (vector<2xi32>) -> vector<2xi64>
    %442 = "llvm.zext"(%440) : (vector<2xi32>) -> vector<2xi64>
    %443 = "llvm.sub"(%441, %442) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %444 = "llvm.lshr"(%443, %438) : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %445 = "llvm.trunc"(%444) <{overflowFlags = 0 : i32}> : (vector<2xi64>) -> vector<2xi32>
    "llvm.store"(%445, %arg277) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_non_const_splat_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg274: !llvm.ptr, %arg275: !llvm.ptr, %arg276: i32):
    %433 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %434 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %435 = "llvm.load"(%arg275) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %436 = "llvm.insertelement"(%433, %arg276, %434) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %437 = "llvm.shufflevector"(%436, %433) <{mask = array<i32: 0, 0>}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%437, %arg274) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i8, i8, i8, i8, i8, i8, i8, i8)>, linkage = #llvm.linkage<external>, sym_name = "test_build_vector_i8", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg265: !llvm.ptr, %arg266: i8, %arg267: i8, %arg268: i8, %arg269: i8, %arg270: i8, %arg271: i8, %arg272: i8, %arg273: i8):
    %416 = "llvm.mlir.poison"() : () -> vector<8xi8>
    %417 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %418 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %419 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %420 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %421 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %422 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %423 = "llvm.mlir.constant"() <{value = 6 : i32}> : () -> i32
    %424 = "llvm.mlir.constant"() <{value = 7 : i32}> : () -> i32
    %425 = "llvm.insertelement"(%416, %arg266, %417) : (vector<8xi8>, i8, i32) -> vector<8xi8>
    %426 = "llvm.insertelement"(%425, %arg267, %418) : (vector<8xi8>, i8, i32) -> vector<8xi8>
    %427 = "llvm.insertelement"(%426, %arg268, %419) : (vector<8xi8>, i8, i32) -> vector<8xi8>
    %428 = "llvm.insertelement"(%427, %arg269, %420) : (vector<8xi8>, i8, i32) -> vector<8xi8>
    %429 = "llvm.insertelement"(%428, %arg270, %421) : (vector<8xi8>, i8, i32) -> vector<8xi8>
    %430 = "llvm.insertelement"(%429, %arg271, %422) : (vector<8xi8>, i8, i32) -> vector<8xi8>
    %431 = "llvm.insertelement"(%430, %arg272, %423) : (vector<8xi8>, i8, i32) -> vector<8xi8>
    %432 = "llvm.insertelement"(%431, %arg273, %424) : (vector<8xi8>, i8, i32) -> vector<8xi8>
    "llvm.store"(%432, %arg265) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i16, i16, i16, i16)>, linkage = #llvm.linkage<external>, sym_name = "test_build_vector_i16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg260: !llvm.ptr, %arg261: i16, %arg262: i16, %arg263: i16, %arg264: i16):
    %407 = "llvm.mlir.poison"() : () -> vector<4xi16>
    %408 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %409 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %410 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %411 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %412 = "llvm.insertelement"(%407, %arg261, %408) : (vector<4xi16>, i16, i32) -> vector<4xi16>
    %413 = "llvm.insertelement"(%412, %arg262, %409) : (vector<4xi16>, i16, i32) -> vector<4xi16>
    %414 = "llvm.insertelement"(%413, %arg263, %410) : (vector<4xi16>, i16, i32) -> vector<4xi16>
    %415 = "llvm.insertelement"(%414, %arg264, %411) : (vector<4xi16>, i16, i32) -> vector<4xi16>
    "llvm.store"(%415, %arg260) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, i32, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_build_vector_i32", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg257: !llvm.ptr, %arg258: i32, %arg259: i32):
    %402 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %403 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %404 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %405 = "llvm.insertelement"(%402, %arg258, %403) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %406 = "llvm.insertelement"(%405, %arg259, %404) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    "llvm.store"(%406, %arg257) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pslli_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg255: !llvm.ptr, %arg256: !llvm.ptr):
    %399 = "llvm.mlir.constant"() <{value = dense<2> : vector<4xi16>}> : () -> vector<4xi16>
    %400 = "llvm.load"(%arg256) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %401 = "llvm.shl"(%400, %399) <{overflowFlags = 0 : i32}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%401, %arg255) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pslli_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg253: !llvm.ptr, %arg254: !llvm.ptr):
    %396 = "llvm.mlir.constant"() <{value = dense<2> : vector<8xi8>}> : () -> vector<8xi8>
    %397 = "llvm.load"(%arg254) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %398 = "llvm.shl"(%397, %396) <{overflowFlags = 0 : i32}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%398, %arg253) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pslli_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg251: !llvm.ptr, %arg252: !llvm.ptr):
    %393 = "llvm.mlir.constant"() <{value = dense<2> : vector<2xi32>}> : () -> vector<2xi32>
    %394 = "llvm.load"(%arg252) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %395 = "llvm.shl"(%394, %393) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%395, %arg251) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrli_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg249: !llvm.ptr, %arg250: !llvm.ptr):
    %390 = "llvm.mlir.constant"() <{value = dense<2> : vector<2xi32>}> : () -> vector<2xi32>
    %391 = "llvm.load"(%arg250) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %392 = "llvm.lshr"(%391, %390) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%392, %arg249) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrli_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg247: !llvm.ptr, %arg248: !llvm.ptr):
    %387 = "llvm.mlir.constant"() <{value = dense<2> : vector<4xi16>}> : () -> vector<4xi16>
    %388 = "llvm.load"(%arg248) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %389 = "llvm.lshr"(%388, %387) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%389, %arg247) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrli_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg245: !llvm.ptr, %arg246: !llvm.ptr):
    %384 = "llvm.mlir.constant"() <{value = dense<2> : vector<8xi8>}> : () -> vector<8xi8>
    %385 = "llvm.load"(%arg246) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %386 = "llvm.lshr"(%385, %384) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%386, %arg245) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrai_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg243: !llvm.ptr, %arg244: !llvm.ptr):
    %381 = "llvm.mlir.constant"() <{value = dense<2> : vector<2xi32>}> : () -> vector<2xi32>
    %382 = "llvm.load"(%arg244) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %383 = "llvm.ashr"(%382, %381) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%383, %arg243) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrai_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg241: !llvm.ptr, %arg242: !llvm.ptr):
    %378 = "llvm.mlir.constant"() <{value = dense<2> : vector<4xi16>}> : () -> vector<4xi16>
    %379 = "llvm.load"(%arg242) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %380 = "llvm.ashr"(%379, %378) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%380, %arg241) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrai_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg239: !llvm.ptr, %arg240: !llvm.ptr):
    %375 = "llvm.mlir.constant"() <{value = dense<2> : vector<8xi8>}> : () -> vector<8xi8>
    %376 = "llvm.load"(%arg240) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %377 = "llvm.ashr"(%376, %375) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%377, %arg239) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psslai_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg237: !llvm.ptr, %arg238: !llvm.ptr):
    %372 = "llvm.mlir.constant"() <{value = dense<2> : vector<2xi32>}> : () -> vector<2xi32>
    %373 = "llvm.load"(%arg238) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %374 = "llvm.intr.sshl.sat"(%373, %372) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%374, %arg237) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_psll_ws", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg234: !llvm.ptr, %arg235: !llvm.ptr, %arg236: i32):
    %366 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %367 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %368 = "llvm.load"(%arg235) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %369 = "llvm.insertelement"(%366, %arg236, %367) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %370 = "llvm.shufflevector"(%369, %366) <{mask = array<i32: 0, 0>}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %371 = "llvm.shl"(%368, %370) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%371, %arg234) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psll_ws_vec_shamt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg231: !llvm.ptr, %arg232: !llvm.ptr, %arg233: !llvm.ptr):
    %363 = "llvm.load"(%arg232) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %364 = "llvm.load"(%arg233) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %365 = "llvm.shl"(%363, %364) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%365, %arg231) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_psrl_ws", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg228: !llvm.ptr, %arg229: !llvm.ptr, %arg230: i32):
    %357 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %358 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %359 = "llvm.load"(%arg229) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %360 = "llvm.insertelement"(%357, %arg230, %358) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %361 = "llvm.shufflevector"(%360, %357) <{mask = array<i32: 0, 0>}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %362 = "llvm.lshr"(%359, %361) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%362, %arg228) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, i32)>, linkage = #llvm.linkage<external>, sym_name = "test_psra_ws", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg225: !llvm.ptr, %arg226: !llvm.ptr, %arg227: i32):
    %351 = "llvm.mlir.poison"() : () -> vector<2xi32>
    %352 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %353 = "llvm.load"(%arg226) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %354 = "llvm.insertelement"(%351, %arg227, %352) : (vector<2xi32>, i32, i32) -> vector<2xi32>
    %355 = "llvm.shufflevector"(%354, %351) <{mask = array<i32: 0, 0>}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %356 = "llvm.ashr"(%353, %355) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%356, %arg225) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrl_ws_vec_shamt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg222: !llvm.ptr, %arg223: !llvm.ptr, %arg224: !llvm.ptr):
    %348 = "llvm.load"(%arg223) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %349 = "llvm.load"(%arg224) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %350 = "llvm.lshr"(%348, %349) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%350, %arg222) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psra_ws_vec_shamt", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg219: !llvm.ptr, %arg220: !llvm.ptr, %arg221: !llvm.ptr):
    %345 = "llvm.load"(%arg220) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %346 = "llvm.load"(%arg221) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %347 = "llvm.ashr"(%345, %346) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%347, %arg219) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulh_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg216: !llvm.ptr, %arg217: !llvm.ptr, %arg218: !llvm.ptr):
    %337 = "llvm.mlir.constant"() <{value = dense<16> : vector<4xi32>}> : () -> vector<4xi32>
    %338 = "llvm.load"(%arg217) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %339 = "llvm.load"(%arg218) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %340 = "llvm.sext"(%338) : (vector<4xi16>) -> vector<4xi32>
    %341 = "llvm.sext"(%339) : (vector<4xi16>) -> vector<4xi32>
    %342 = "llvm.mul"(%340, %341) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %343 = "llvm.lshr"(%342, %337) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %344 = "llvm.trunc"(%343) <{overflowFlags = 0 : i32}> : (vector<4xi32>) -> vector<4xi16>
    "llvm.store"(%344, %arg216) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulh_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg213: !llvm.ptr, %arg214: !llvm.ptr, %arg215: !llvm.ptr):
    %329 = "llvm.mlir.constant"() <{value = dense<32> : vector<2xi64>}> : () -> vector<2xi64>
    %330 = "llvm.load"(%arg214) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %331 = "llvm.load"(%arg215) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %332 = "llvm.sext"(%330) : (vector<2xi32>) -> vector<2xi64>
    %333 = "llvm.sext"(%331) : (vector<2xi32>) -> vector<2xi64>
    %334 = "llvm.mul"(%332, %333) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %335 = "llvm.lshr"(%334, %329) : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %336 = "llvm.trunc"(%335) <{overflowFlags = 0 : i32}> : (vector<2xi64>) -> vector<2xi32>
    "llvm.store"(%336, %arg213) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg210: !llvm.ptr, %arg211: !llvm.ptr, %arg212: !llvm.ptr):
    %321 = "llvm.mlir.constant"() <{value = dense<16> : vector<4xi32>}> : () -> vector<4xi32>
    %322 = "llvm.load"(%arg211) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %323 = "llvm.load"(%arg212) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %324 = "llvm.zext"(%322) : (vector<4xi16>) -> vector<4xi32>
    %325 = "llvm.zext"(%323) : (vector<4xi16>) -> vector<4xi32>
    %326 = "llvm.mul"(%324, %325) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %327 = "llvm.lshr"(%326, %321) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %328 = "llvm.trunc"(%327) <{overflowFlags = 0 : i32}> : (vector<4xi32>) -> vector<4xi16>
    "llvm.store"(%328, %arg210) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhu_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg207: !llvm.ptr, %arg208: !llvm.ptr, %arg209: !llvm.ptr):
    %313 = "llvm.mlir.constant"() <{value = dense<32> : vector<2xi64>}> : () -> vector<2xi64>
    %314 = "llvm.load"(%arg208) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %315 = "llvm.load"(%arg209) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %316 = "llvm.zext"(%314) : (vector<2xi32>) -> vector<2xi64>
    %317 = "llvm.zext"(%315) : (vector<2xi32>) -> vector<2xi64>
    %318 = "llvm.mul"(%316, %317) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %319 = "llvm.lshr"(%318, %313) : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %320 = "llvm.trunc"(%319) <{overflowFlags = 0 : i32}> : (vector<2xi64>) -> vector<2xi32>
    "llvm.store"(%320, %arg207) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhsu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg204: !llvm.ptr, %arg205: !llvm.ptr, %arg206: !llvm.ptr):
    %305 = "llvm.mlir.constant"() <{value = dense<16> : vector<4xi32>}> : () -> vector<4xi32>
    %306 = "llvm.load"(%arg205) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %307 = "llvm.load"(%arg206) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %308 = "llvm.sext"(%306) : (vector<4xi16>) -> vector<4xi32>
    %309 = "llvm.zext"(%307) : (vector<4xi16>) -> vector<4xi32>
    %310 = "llvm.mul"(%308, %309) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %311 = "llvm.lshr"(%310, %305) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %312 = "llvm.trunc"(%311) <{overflowFlags = 0 : i32}> : (vector<4xi32>) -> vector<4xi16>
    "llvm.store"(%312, %arg204) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhsu_h_commuted", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg201: !llvm.ptr, %arg202: !llvm.ptr, %arg203: !llvm.ptr):
    %297 = "llvm.mlir.constant"() <{value = dense<16> : vector<4xi32>}> : () -> vector<4xi32>
    %298 = "llvm.load"(%arg202) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %299 = "llvm.load"(%arg203) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %300 = "llvm.zext"(%298) : (vector<4xi16>) -> vector<4xi32>
    %301 = "llvm.sext"(%299) : (vector<4xi16>) -> vector<4xi32>
    %302 = "llvm.mul"(%300, %301) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %303 = "llvm.lshr"(%302, %297) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %304 = "llvm.trunc"(%303) <{overflowFlags = 0 : i32}> : (vector<4xi32>) -> vector<4xi16>
    "llvm.store"(%304, %arg201) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhsu_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg198: !llvm.ptr, %arg199: !llvm.ptr, %arg200: !llvm.ptr):
    %289 = "llvm.mlir.constant"() <{value = dense<32> : vector<2xi64>}> : () -> vector<2xi64>
    %290 = "llvm.load"(%arg199) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %291 = "llvm.load"(%arg200) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %292 = "llvm.sext"(%290) : (vector<2xi32>) -> vector<2xi64>
    %293 = "llvm.zext"(%291) : (vector<2xi32>) -> vector<2xi64>
    %294 = "llvm.mul"(%292, %293) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %295 = "llvm.lshr"(%294, %289) : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %296 = "llvm.trunc"(%295) <{overflowFlags = 0 : i32}> : (vector<2xi64>) -> vector<2xi32>
    "llvm.store"(%296, %arg198) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhsu_w_commuted", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg195: !llvm.ptr, %arg196: !llvm.ptr, %arg197: !llvm.ptr):
    %281 = "llvm.mlir.constant"() <{value = dense<32> : vector<2xi64>}> : () -> vector<2xi64>
    %282 = "llvm.load"(%arg196) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %283 = "llvm.load"(%arg197) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %284 = "llvm.zext"(%282) : (vector<2xi32>) -> vector<2xi64>
    %285 = "llvm.sext"(%283) : (vector<2xi32>) -> vector<2xi64>
    %286 = "llvm.mul"(%284, %285) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %287 = "llvm.lshr"(%286, %281) : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %288 = "llvm.trunc"(%287) <{overflowFlags = 0 : i32}> : (vector<2xi64>) -> vector<2xi32>
    "llvm.store"(%288, %arg195) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhr_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg192: !llvm.ptr, %arg193: !llvm.ptr, %arg194: !llvm.ptr):
    %271 = "llvm.mlir.constant"() <{value = dense<32768> : vector<4xi32>}> : () -> vector<4xi32>
    %272 = "llvm.mlir.constant"() <{value = dense<16> : vector<4xi32>}> : () -> vector<4xi32>
    %273 = "llvm.load"(%arg193) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %274 = "llvm.load"(%arg194) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %275 = "llvm.sext"(%273) : (vector<4xi16>) -> vector<4xi32>
    %276 = "llvm.sext"(%274) : (vector<4xi16>) -> vector<4xi32>
    %277 = "llvm.mul"(%275, %276) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %278 = "llvm.add"(%277, %271) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %279 = "llvm.lshr"(%278, %272) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %280 = "llvm.trunc"(%279) <{overflowFlags = 0 : i32}> : (vector<4xi32>) -> vector<4xi16>
    "llvm.store"(%280, %arg192) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhr_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg189: !llvm.ptr, %arg190: !llvm.ptr, %arg191: !llvm.ptr):
    %261 = "llvm.mlir.constant"() <{value = dense<2147483648> : vector<2xi64>}> : () -> vector<2xi64>
    %262 = "llvm.mlir.constant"() <{value = dense<32> : vector<2xi64>}> : () -> vector<2xi64>
    %263 = "llvm.load"(%arg190) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %264 = "llvm.load"(%arg191) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %265 = "llvm.sext"(%263) : (vector<2xi32>) -> vector<2xi64>
    %266 = "llvm.sext"(%264) : (vector<2xi32>) -> vector<2xi64>
    %267 = "llvm.mul"(%265, %266) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %268 = "llvm.add"(%267, %261) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %269 = "llvm.lshr"(%268, %262) : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %270 = "llvm.trunc"(%269) <{overflowFlags = 0 : i32}> : (vector<2xi64>) -> vector<2xi32>
    "llvm.store"(%270, %arg189) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhru_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg186: !llvm.ptr, %arg187: !llvm.ptr, %arg188: !llvm.ptr):
    %251 = "llvm.mlir.constant"() <{value = dense<32768> : vector<4xi32>}> : () -> vector<4xi32>
    %252 = "llvm.mlir.constant"() <{value = dense<16> : vector<4xi32>}> : () -> vector<4xi32>
    %253 = "llvm.load"(%arg187) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %254 = "llvm.load"(%arg188) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %255 = "llvm.zext"(%253) : (vector<4xi16>) -> vector<4xi32>
    %256 = "llvm.zext"(%254) : (vector<4xi16>) -> vector<4xi32>
    %257 = "llvm.mul"(%255, %256) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %258 = "llvm.add"(%257, %251) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %259 = "llvm.lshr"(%258, %252) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %260 = "llvm.trunc"(%259) <{overflowFlags = 0 : i32}> : (vector<4xi32>) -> vector<4xi16>
    "llvm.store"(%260, %arg186) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhru_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg183: !llvm.ptr, %arg184: !llvm.ptr, %arg185: !llvm.ptr):
    %241 = "llvm.mlir.constant"() <{value = dense<2147483648> : vector<2xi64>}> : () -> vector<2xi64>
    %242 = "llvm.mlir.constant"() <{value = dense<32> : vector<2xi64>}> : () -> vector<2xi64>
    %243 = "llvm.load"(%arg184) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %244 = "llvm.load"(%arg185) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %245 = "llvm.zext"(%243) : (vector<2xi32>) -> vector<2xi64>
    %246 = "llvm.zext"(%244) : (vector<2xi32>) -> vector<2xi64>
    %247 = "llvm.mul"(%245, %246) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %248 = "llvm.add"(%247, %241) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %249 = "llvm.lshr"(%248, %242) : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %250 = "llvm.trunc"(%249) <{overflowFlags = 0 : i32}> : (vector<2xi64>) -> vector<2xi32>
    "llvm.store"(%250, %arg183) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhrsu_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg180: !llvm.ptr, %arg181: !llvm.ptr, %arg182: !llvm.ptr):
    %231 = "llvm.mlir.constant"() <{value = dense<32768> : vector<4xi32>}> : () -> vector<4xi32>
    %232 = "llvm.mlir.constant"() <{value = dense<16> : vector<4xi32>}> : () -> vector<4xi32>
    %233 = "llvm.load"(%arg181) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %234 = "llvm.load"(%arg182) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %235 = "llvm.sext"(%233) : (vector<4xi16>) -> vector<4xi32>
    %236 = "llvm.zext"(%234) : (vector<4xi16>) -> vector<4xi32>
    %237 = "llvm.mul"(%235, %236) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %238 = "llvm.add"(%237, %231) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %239 = "llvm.lshr"(%238, %232) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %240 = "llvm.trunc"(%239) <{overflowFlags = 0 : i32}> : (vector<4xi32>) -> vector<4xi16>
    "llvm.store"(%240, %arg180) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhrsu_h_commuted", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg177: !llvm.ptr, %arg178: !llvm.ptr, %arg179: !llvm.ptr):
    %221 = "llvm.mlir.constant"() <{value = dense<32768> : vector<4xi32>}> : () -> vector<4xi32>
    %222 = "llvm.mlir.constant"() <{value = dense<16> : vector<4xi32>}> : () -> vector<4xi32>
    %223 = "llvm.load"(%arg178) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %224 = "llvm.load"(%arg179) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %225 = "llvm.zext"(%223) : (vector<4xi16>) -> vector<4xi32>
    %226 = "llvm.sext"(%224) : (vector<4xi16>) -> vector<4xi32>
    %227 = "llvm.mul"(%225, %226) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %228 = "llvm.add"(%227, %221) <{overflowFlags = 0 : i32}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %229 = "llvm.lshr"(%228, %222) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %230 = "llvm.trunc"(%229) <{overflowFlags = 0 : i32}> : (vector<4xi32>) -> vector<4xi16>
    "llvm.store"(%230, %arg177) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhrsu_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg174: !llvm.ptr, %arg175: !llvm.ptr, %arg176: !llvm.ptr):
    %211 = "llvm.mlir.constant"() <{value = dense<2147483648> : vector<2xi64>}> : () -> vector<2xi64>
    %212 = "llvm.mlir.constant"() <{value = dense<32> : vector<2xi64>}> : () -> vector<2xi64>
    %213 = "llvm.load"(%arg175) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %214 = "llvm.load"(%arg176) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %215 = "llvm.sext"(%213) : (vector<2xi32>) -> vector<2xi64>
    %216 = "llvm.zext"(%214) : (vector<2xi32>) -> vector<2xi64>
    %217 = "llvm.mul"(%215, %216) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %218 = "llvm.add"(%217, %211) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %219 = "llvm.lshr"(%218, %212) : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %220 = "llvm.trunc"(%219) <{overflowFlags = 0 : i32}> : (vector<2xi64>) -> vector<2xi32>
    "llvm.store"(%220, %arg174) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmulhrsu_w_commuted", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg171: !llvm.ptr, %arg172: !llvm.ptr, %arg173: !llvm.ptr):
    %201 = "llvm.mlir.constant"() <{value = dense<2147483648> : vector<2xi64>}> : () -> vector<2xi64>
    %202 = "llvm.mlir.constant"() <{value = dense<32> : vector<2xi64>}> : () -> vector<2xi64>
    %203 = "llvm.load"(%arg172) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %204 = "llvm.load"(%arg173) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %205 = "llvm.zext"(%203) : (vector<2xi32>) -> vector<2xi64>
    %206 = "llvm.sext"(%204) : (vector<2xi32>) -> vector<2xi64>
    %207 = "llvm.mul"(%205, %206) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %208 = "llvm.add"(%207, %201) <{overflowFlags = 0 : i32}> : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %209 = "llvm.lshr"(%208, %202) : (vector<2xi64>, vector<2xi64>) -> vector<2xi64>
    %210 = "llvm.trunc"(%209) <{overflowFlags = 0 : i32}> : (vector<2xi64>) -> vector<2xi32>
    "llvm.store"(%210, %arg171) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmul_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg168: !llvm.ptr, %arg169: !llvm.ptr, %arg170: !llvm.ptr):
    %198 = "llvm.load"(%arg169) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %199 = "llvm.load"(%arg170) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %200 = "llvm.mul"(%198, %199) <{overflowFlags = 0 : i32}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%200, %arg168) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmul_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg165: !llvm.ptr, %arg166: !llvm.ptr, %arg167: !llvm.ptr):
    %195 = "llvm.load"(%arg166) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %196 = "llvm.load"(%arg167) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %197 = "llvm.mul"(%195, %196) <{overflowFlags = 0 : i32}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%197, %arg165) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pmul_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg162: !llvm.ptr, %arg163: !llvm.ptr, %arg164: !llvm.ptr):
    %192 = "llvm.load"(%arg163) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %193 = "llvm.load"(%arg164) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %194 = "llvm.mul"(%192, %193) <{overflowFlags = 0 : i32}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%194, %arg162) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psdiv_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg159: !llvm.ptr, %arg160: !llvm.ptr, %arg161: !llvm.ptr):
    %189 = "llvm.load"(%arg160) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %190 = "llvm.load"(%arg161) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %191 = "llvm.sdiv"(%189, %190) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%191, %arg159) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psdiv_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg156: !llvm.ptr, %arg157: !llvm.ptr, %arg158: !llvm.ptr):
    %186 = "llvm.load"(%arg157) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %187 = "llvm.load"(%arg158) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %188 = "llvm.sdiv"(%186, %187) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%188, %arg156) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psdiv_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg153: !llvm.ptr, %arg154: !llvm.ptr, %arg155: !llvm.ptr):
    %183 = "llvm.load"(%arg154) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %184 = "llvm.load"(%arg155) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %185 = "llvm.sdiv"(%183, %184) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%185, %arg153) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pudiv_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg150: !llvm.ptr, %arg151: !llvm.ptr, %arg152: !llvm.ptr):
    %180 = "llvm.load"(%arg151) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %181 = "llvm.load"(%arg152) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %182 = "llvm.udiv"(%180, %181) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%182, %arg150) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pudiv_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg147: !llvm.ptr, %arg148: !llvm.ptr, %arg149: !llvm.ptr):
    %177 = "llvm.load"(%arg148) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %178 = "llvm.load"(%arg149) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %179 = "llvm.udiv"(%177, %178) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%179, %arg147) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_pudiv_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg144: !llvm.ptr, %arg145: !llvm.ptr, %arg146: !llvm.ptr):
    %174 = "llvm.load"(%arg145) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %175 = "llvm.load"(%arg146) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %176 = "llvm.udiv"(%174, %175) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%176, %arg144) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrem_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg141: !llvm.ptr, %arg142: !llvm.ptr, %arg143: !llvm.ptr):
    %171 = "llvm.load"(%arg142) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %172 = "llvm.load"(%arg143) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %173 = "llvm.srem"(%171, %172) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%173, %arg141) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrem_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg138: !llvm.ptr, %arg139: !llvm.ptr, %arg140: !llvm.ptr):
    %168 = "llvm.load"(%arg139) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %169 = "llvm.load"(%arg140) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %170 = "llvm.srem"(%168, %169) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%170, %arg138) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_psrem_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg135: !llvm.ptr, %arg136: !llvm.ptr, %arg137: !llvm.ptr):
    %165 = "llvm.load"(%arg136) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %166 = "llvm.load"(%arg137) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %167 = "llvm.srem"(%165, %166) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%167, %arg135) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_purem_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg132: !llvm.ptr, %arg133: !llvm.ptr, %arg134: !llvm.ptr):
    %162 = "llvm.load"(%arg133) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %163 = "llvm.load"(%arg134) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %164 = "llvm.urem"(%162, %163) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%164, %arg132) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_purem_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg129: !llvm.ptr, %arg130: !llvm.ptr, %arg131: !llvm.ptr):
    %159 = "llvm.load"(%arg130) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %160 = "llvm.load"(%arg131) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %161 = "llvm.urem"(%159, %160) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%161, %arg129) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_purem_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg126: !llvm.ptr, %arg127: !llvm.ptr, %arg128: !llvm.ptr):
    %156 = "llvm.load"(%arg127) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %157 = "llvm.load"(%arg128) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %158 = "llvm.urem"(%156, %157) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%158, %arg126) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_eq_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg123: !llvm.ptr, %arg124: !llvm.ptr, %arg125: !llvm.ptr):
    %152 = "llvm.load"(%arg124) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %153 = "llvm.load"(%arg125) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %154 = "llvm.icmp"(%152, %153) <{predicate = 0 : i64}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi1>
    %155 = "llvm.sext"(%154) : (vector<4xi1>) -> vector<4xi16>
    "llvm.store"(%155, %arg123) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ne_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg120: !llvm.ptr, %arg121: !llvm.ptr, %arg122: !llvm.ptr):
    %148 = "llvm.load"(%arg121) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %149 = "llvm.load"(%arg122) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %150 = "llvm.icmp"(%148, %149) <{predicate = 1 : i64}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi1>
    %151 = "llvm.sext"(%150) : (vector<4xi1>) -> vector<4xi16>
    "llvm.store"(%151, %arg120) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_slt_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg117: !llvm.ptr, %arg118: !llvm.ptr, %arg119: !llvm.ptr):
    %144 = "llvm.load"(%arg118) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %145 = "llvm.load"(%arg119) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %146 = "llvm.icmp"(%144, %145) <{predicate = 2 : i64}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi1>
    %147 = "llvm.sext"(%146) : (vector<4xi1>) -> vector<4xi16>
    "llvm.store"(%147, %arg117) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sle_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg114: !llvm.ptr, %arg115: !llvm.ptr, %arg116: !llvm.ptr):
    %140 = "llvm.load"(%arg115) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %141 = "llvm.load"(%arg116) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %142 = "llvm.icmp"(%140, %141) <{predicate = 3 : i64}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi1>
    %143 = "llvm.sext"(%142) : (vector<4xi1>) -> vector<4xi16>
    "llvm.store"(%143, %arg114) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sgt_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg111: !llvm.ptr, %arg112: !llvm.ptr, %arg113: !llvm.ptr):
    %136 = "llvm.load"(%arg112) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %137 = "llvm.load"(%arg113) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %138 = "llvm.icmp"(%136, %137) <{predicate = 4 : i64}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi1>
    %139 = "llvm.sext"(%138) : (vector<4xi1>) -> vector<4xi16>
    "llvm.store"(%139, %arg111) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sge_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg108: !llvm.ptr, %arg109: !llvm.ptr, %arg110: !llvm.ptr):
    %132 = "llvm.load"(%arg109) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %133 = "llvm.load"(%arg110) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %134 = "llvm.icmp"(%132, %133) <{predicate = 5 : i64}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi1>
    %135 = "llvm.sext"(%134) : (vector<4xi1>) -> vector<4xi16>
    "llvm.store"(%135, %arg108) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ult_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg105: !llvm.ptr, %arg106: !llvm.ptr, %arg107: !llvm.ptr):
    %128 = "llvm.load"(%arg106) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %129 = "llvm.load"(%arg107) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %130 = "llvm.icmp"(%128, %129) <{predicate = 6 : i64}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi1>
    %131 = "llvm.sext"(%130) : (vector<4xi1>) -> vector<4xi16>
    "llvm.store"(%131, %arg105) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ule_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg102: !llvm.ptr, %arg103: !llvm.ptr, %arg104: !llvm.ptr):
    %124 = "llvm.load"(%arg103) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %125 = "llvm.load"(%arg104) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %126 = "llvm.icmp"(%124, %125) <{predicate = 7 : i64}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi1>
    %127 = "llvm.sext"(%126) : (vector<4xi1>) -> vector<4xi16>
    "llvm.store"(%127, %arg102) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ugt_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg99: !llvm.ptr, %arg100: !llvm.ptr, %arg101: !llvm.ptr):
    %120 = "llvm.load"(%arg100) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %121 = "llvm.load"(%arg101) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %122 = "llvm.icmp"(%120, %121) <{predicate = 8 : i64}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi1>
    %123 = "llvm.sext"(%122) : (vector<4xi1>) -> vector<4xi16>
    "llvm.store"(%123, %arg99) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_uge_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg96: !llvm.ptr, %arg97: !llvm.ptr, %arg98: !llvm.ptr):
    %116 = "llvm.load"(%arg97) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %117 = "llvm.load"(%arg98) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %118 = "llvm.icmp"(%116, %117) <{predicate = 9 : i64}> : (vector<4xi16>, vector<4xi16>) -> vector<4xi1>
    %119 = "llvm.sext"(%118) : (vector<4xi1>) -> vector<4xi16>
    "llvm.store"(%119, %arg96) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_eq_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg93: !llvm.ptr, %arg94: !llvm.ptr, %arg95: !llvm.ptr):
    %112 = "llvm.load"(%arg94) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %113 = "llvm.load"(%arg95) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %114 = "llvm.icmp"(%112, %113) <{predicate = 0 : i64}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi1>
    %115 = "llvm.sext"(%114) : (vector<8xi1>) -> vector<8xi8>
    "llvm.store"(%115, %arg93) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ne_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg90: !llvm.ptr, %arg91: !llvm.ptr, %arg92: !llvm.ptr):
    %108 = "llvm.load"(%arg91) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %109 = "llvm.load"(%arg92) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %110 = "llvm.icmp"(%108, %109) <{predicate = 1 : i64}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi1>
    %111 = "llvm.sext"(%110) : (vector<8xi1>) -> vector<8xi8>
    "llvm.store"(%111, %arg90) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_slt_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg87: !llvm.ptr, %arg88: !llvm.ptr, %arg89: !llvm.ptr):
    %104 = "llvm.load"(%arg88) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %105 = "llvm.load"(%arg89) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %106 = "llvm.icmp"(%104, %105) <{predicate = 2 : i64}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi1>
    %107 = "llvm.sext"(%106) : (vector<8xi1>) -> vector<8xi8>
    "llvm.store"(%107, %arg87) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sle_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg84: !llvm.ptr, %arg85: !llvm.ptr, %arg86: !llvm.ptr):
    %100 = "llvm.load"(%arg85) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %101 = "llvm.load"(%arg86) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %102 = "llvm.icmp"(%100, %101) <{predicate = 3 : i64}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi1>
    %103 = "llvm.sext"(%102) : (vector<8xi1>) -> vector<8xi8>
    "llvm.store"(%103, %arg84) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sgt_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg81: !llvm.ptr, %arg82: !llvm.ptr, %arg83: !llvm.ptr):
    %96 = "llvm.load"(%arg82) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %97 = "llvm.load"(%arg83) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %98 = "llvm.icmp"(%96, %97) <{predicate = 4 : i64}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi1>
    %99 = "llvm.sext"(%98) : (vector<8xi1>) -> vector<8xi8>
    "llvm.store"(%99, %arg81) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sge_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg78: !llvm.ptr, %arg79: !llvm.ptr, %arg80: !llvm.ptr):
    %92 = "llvm.load"(%arg79) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %93 = "llvm.load"(%arg80) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %94 = "llvm.icmp"(%92, %93) <{predicate = 5 : i64}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi1>
    %95 = "llvm.sext"(%94) : (vector<8xi1>) -> vector<8xi8>
    "llvm.store"(%95, %arg78) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ult_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg75: !llvm.ptr, %arg76: !llvm.ptr, %arg77: !llvm.ptr):
    %88 = "llvm.load"(%arg76) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %89 = "llvm.load"(%arg77) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %90 = "llvm.icmp"(%88, %89) <{predicate = 6 : i64}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi1>
    %91 = "llvm.sext"(%90) : (vector<8xi1>) -> vector<8xi8>
    "llvm.store"(%91, %arg75) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ule_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg72: !llvm.ptr, %arg73: !llvm.ptr, %arg74: !llvm.ptr):
    %84 = "llvm.load"(%arg73) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %85 = "llvm.load"(%arg74) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %86 = "llvm.icmp"(%84, %85) <{predicate = 7 : i64}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi1>
    %87 = "llvm.sext"(%86) : (vector<8xi1>) -> vector<8xi8>
    "llvm.store"(%87, %arg72) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ugt_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg69: !llvm.ptr, %arg70: !llvm.ptr, %arg71: !llvm.ptr):
    %80 = "llvm.load"(%arg70) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %81 = "llvm.load"(%arg71) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %82 = "llvm.icmp"(%80, %81) <{predicate = 8 : i64}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi1>
    %83 = "llvm.sext"(%82) : (vector<8xi1>) -> vector<8xi8>
    "llvm.store"(%83, %arg69) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_uge_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg66: !llvm.ptr, %arg67: !llvm.ptr, %arg68: !llvm.ptr):
    %76 = "llvm.load"(%arg67) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %77 = "llvm.load"(%arg68) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %78 = "llvm.icmp"(%76, %77) <{predicate = 9 : i64}> : (vector<8xi8>, vector<8xi8>) -> vector<8xi1>
    %79 = "llvm.sext"(%78) : (vector<8xi1>) -> vector<8xi8>
    "llvm.store"(%79, %arg66) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_eq_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg63: !llvm.ptr, %arg64: !llvm.ptr, %arg65: !llvm.ptr):
    %72 = "llvm.load"(%arg64) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %73 = "llvm.load"(%arg65) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %74 = "llvm.icmp"(%72, %73) <{predicate = 0 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    %75 = "llvm.sext"(%74) : (vector<2xi1>) -> vector<2xi32>
    "llvm.store"(%75, %arg63) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ne_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg60: !llvm.ptr, %arg61: !llvm.ptr, %arg62: !llvm.ptr):
    %68 = "llvm.load"(%arg61) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %69 = "llvm.load"(%arg62) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %70 = "llvm.icmp"(%68, %69) <{predicate = 1 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    %71 = "llvm.sext"(%70) : (vector<2xi1>) -> vector<2xi32>
    "llvm.store"(%71, %arg60) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_slt_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg57: !llvm.ptr, %arg58: !llvm.ptr, %arg59: !llvm.ptr):
    %64 = "llvm.load"(%arg58) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %65 = "llvm.load"(%arg59) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %66 = "llvm.icmp"(%64, %65) <{predicate = 2 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    %67 = "llvm.sext"(%66) : (vector<2xi1>) -> vector<2xi32>
    "llvm.store"(%67, %arg57) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sle_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg54: !llvm.ptr, %arg55: !llvm.ptr, %arg56: !llvm.ptr):
    %60 = "llvm.load"(%arg55) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %61 = "llvm.load"(%arg56) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %62 = "llvm.icmp"(%60, %61) <{predicate = 3 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    %63 = "llvm.sext"(%62) : (vector<2xi1>) -> vector<2xi32>
    "llvm.store"(%63, %arg54) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sgt_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg51: !llvm.ptr, %arg52: !llvm.ptr, %arg53: !llvm.ptr):
    %56 = "llvm.load"(%arg52) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %57 = "llvm.load"(%arg53) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %58 = "llvm.icmp"(%56, %57) <{predicate = 4 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    %59 = "llvm.sext"(%58) : (vector<2xi1>) -> vector<2xi32>
    "llvm.store"(%59, %arg51) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_sge_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg48: !llvm.ptr, %arg49: !llvm.ptr, %arg50: !llvm.ptr):
    %52 = "llvm.load"(%arg49) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %53 = "llvm.load"(%arg50) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %54 = "llvm.icmp"(%52, %53) <{predicate = 5 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    %55 = "llvm.sext"(%54) : (vector<2xi1>) -> vector<2xi32>
    "llvm.store"(%55, %arg48) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ult_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg45: !llvm.ptr, %arg46: !llvm.ptr, %arg47: !llvm.ptr):
    %48 = "llvm.load"(%arg46) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %49 = "llvm.load"(%arg47) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %50 = "llvm.icmp"(%48, %49) <{predicate = 6 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    %51 = "llvm.sext"(%50) : (vector<2xi1>) -> vector<2xi32>
    "llvm.store"(%51, %arg45) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ule_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg42: !llvm.ptr, %arg43: !llvm.ptr, %arg44: !llvm.ptr):
    %44 = "llvm.load"(%arg43) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %45 = "llvm.load"(%arg44) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %46 = "llvm.icmp"(%44, %45) <{predicate = 7 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    %47 = "llvm.sext"(%46) : (vector<2xi1>) -> vector<2xi32>
    "llvm.store"(%47, %arg42) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_ugt_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg39: !llvm.ptr, %arg40: !llvm.ptr, %arg41: !llvm.ptr):
    %40 = "llvm.load"(%arg40) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %41 = "llvm.load"(%arg41) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %42 = "llvm.icmp"(%40, %41) <{predicate = 8 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    %43 = "llvm.sext"(%42) : (vector<2xi1>) -> vector<2xi32>
    "llvm.store"(%43, %arg39) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_uge_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg36: !llvm.ptr, %arg37: !llvm.ptr, %arg38: !llvm.ptr):
    %36 = "llvm.load"(%arg37) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %37 = "llvm.load"(%arg38) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %38 = "llvm.icmp"(%36, %37) <{predicate = 9 : i64}> : (vector<2xi32>, vector<2xi32>) -> vector<2xi1>
    %39 = "llvm.sext"(%38) : (vector<2xi1>) -> vector<2xi32>
    "llvm.store"(%39, %arg36) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_smin_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg33: !llvm.ptr, %arg34: !llvm.ptr, %arg35: !llvm.ptr):
    %33 = "llvm.load"(%arg34) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %34 = "llvm.load"(%arg35) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %35 = "llvm.intr.smin"(%33, %34) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%35, %arg33) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_umin_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg30: !llvm.ptr, %arg31: !llvm.ptr, %arg32: !llvm.ptr):
    %30 = "llvm.load"(%arg31) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %31 = "llvm.load"(%arg32) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %32 = "llvm.intr.umin"(%30, %31) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%32, %arg30) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_smin_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg27: !llvm.ptr, %arg28: !llvm.ptr, %arg29: !llvm.ptr):
    %27 = "llvm.load"(%arg28) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %28 = "llvm.load"(%arg29) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %29 = "llvm.intr.smin"(%27, %28) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%29, %arg27) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_umin_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg24: !llvm.ptr, %arg25: !llvm.ptr, %arg26: !llvm.ptr):
    %24 = "llvm.load"(%arg25) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %25 = "llvm.load"(%arg26) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %26 = "llvm.intr.umin"(%24, %25) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%26, %arg24) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_smin_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg21: !llvm.ptr, %arg22: !llvm.ptr, %arg23: !llvm.ptr):
    %21 = "llvm.load"(%arg22) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %22 = "llvm.load"(%arg23) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %23 = "llvm.intr.smin"(%21, %22) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%23, %arg21) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_umin_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg18: !llvm.ptr, %arg19: !llvm.ptr, %arg20: !llvm.ptr):
    %18 = "llvm.load"(%arg19) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %19 = "llvm.load"(%arg20) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %20 = "llvm.intr.umin"(%18, %19) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%20, %arg18) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_smax_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg15: !llvm.ptr, %arg16: !llvm.ptr, %arg17: !llvm.ptr):
    %15 = "llvm.load"(%arg16) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %16 = "llvm.load"(%arg17) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %17 = "llvm.intr.smax"(%15, %16) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%17, %arg15) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_umax_h", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg12: !llvm.ptr, %arg13: !llvm.ptr, %arg14: !llvm.ptr):
    %12 = "llvm.load"(%arg13) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %13 = "llvm.load"(%arg14) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<4xi16>
    %14 = "llvm.intr.umax"(%12, %13) : (vector<4xi16>, vector<4xi16>) -> vector<4xi16>
    "llvm.store"(%14, %arg12) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<4xi16>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_smax_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg9: !llvm.ptr, %arg10: !llvm.ptr, %arg11: !llvm.ptr):
    %9 = "llvm.load"(%arg10) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %10 = "llvm.load"(%arg11) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %11 = "llvm.intr.smax"(%9, %10) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%11, %arg9) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_umax_b", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg6: !llvm.ptr, %arg7: !llvm.ptr, %arg8: !llvm.ptr):
    %6 = "llvm.load"(%arg7) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %7 = "llvm.load"(%arg8) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<8xi8>
    %8 = "llvm.intr.umax"(%6, %7) : (vector<8xi8>, vector<8xi8>) -> vector<8xi8>
    "llvm.store"(%8, %arg6) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<8xi8>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_smax_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg3: !llvm.ptr, %arg4: !llvm.ptr, %arg5: !llvm.ptr):
    %3 = "llvm.load"(%arg4) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %4 = "llvm.load"(%arg5) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %5 = "llvm.intr.smax"(%3, %4) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%5, %arg3) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (ptr, ptr, ptr)>, linkage = #llvm.linkage<external>, sym_name = "test_umax_w", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr):
    %0 = "llvm.load"(%arg1) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %1 = "llvm.load"(%arg2) <{alignment = 8 : i64, ordering = 0 : i64}> : (!llvm.ptr) -> vector<2xi32>
    %2 = "llvm.intr.umax"(%0, %1) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    "llvm.store"(%2, %arg0) <{alignment = 8 : i64, ordering = 0 : i64}> : (vector<2xi32>, !llvm.ptr) -> ()
    "llvm.return"() : () -> ()
  }) : () -> ()
}) {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, i64 = dense<[32, 64]> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little">, llvm.module_asm = [], llvm.target_triple = ""} : () -> ()

