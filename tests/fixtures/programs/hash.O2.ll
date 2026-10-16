; ModuleID = 'tests/programs/hash.c'
source_filename = "tests/programs/hash.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@buf = internal unnamed_addr global [1027 x i8] zeroinitializer, align 1
@table = internal unnamed_addr global [256 x i32] zeroinitializer, align 4
@.crctable = private unnamed_addr constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117]

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body

for.cond1.preheader.i:                            ; preds = %for.body, %for.cond1.preheader.i
  %i.018.i = phi i32 [ %inc7.i, %for.cond1.preheader.i ], [ 0, %for.body ]
  %crc.le.shift.i = lshr i32 %i.018.i, 8
  %tbl.ptradd.i = getelementptr inbounds nuw i32, ptr @.crctable, i32 %i.018.i
  %tbl.ld.i = load i32, ptr %tbl.ptradd.i, align 4
  %crc.next.i = xor i32 %crc.le.shift.i, %tbl.ld.i
  %arrayidx.i = getelementptr inbounds nuw i32, ptr @table, i32 %i.018.i
  store i32 %crc.next.i, ptr %arrayidx.i, align 4, !tbaa !6
  %inc7.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, 256
  br i1 %exitcond.not.i, label %for.body5, label %for.cond1.preheader.i, !llvm.loop !10

for.body:                                         ; preds = %entry, %for.body
  %i.075 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %s.074 = phi i32 [ -1640531527, %entry ], [ %add, %for.body ]
  %mul = mul i32 %s.074, 1664525
  %add = add i32 %mul, 1013904223
  %shr = lshr i32 %add, 24
  %conv = trunc nuw i32 %shr to i8
  %arrayidx = getelementptr inbounds nuw i8, ptr @buf, i32 %i.075
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !12
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, 1027
  br i1 %exitcond.not, label %for.cond1.preheader.i, label %for.body, !llvm.loop !13

for.cond.cleanup4:                                ; preds = %adler32.exit
  ret i32 %xor

for.body5:                                        ; preds = %for.cond1.preheader.i, %adler32.exit
  %n.077 = phi i32 [ %add15, %adler32.exit ], [ 0, %for.cond1.preheader.i ]
  %h.076 = phi i32 [ %xor, %adler32.exit ], [ 0, %for.cond1.preheader.i ]
  %tobool.not5.i.not = icmp eq i32 %n.077, 0
  br i1 %tobool.not5.i.not, label %murmur3.exit, label %while.body.i

while.body.i:                                     ; preds = %for.body5, %while.body.i
  %c.08.i = phi i32 [ %xor1.i, %while.body.i ], [ -1, %for.body5 ]
  %n.addr.07.i = phi i32 [ %dec.i, %while.body.i ], [ %n.077, %for.body5 ]
  %p.addr.06.i = phi ptr [ %incdec.ptr.i, %while.body.i ], [ @buf, %for.body5 ]
  %dec.i = add nsw i32 %n.addr.07.i, -1
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %p.addr.06.i, i32 1
  %0 = load i8, ptr %p.addr.06.i, align 1, !tbaa !12
  %c.0.tr.i = trunc i32 %c.08.i to i8
  %xor.narrow.i = xor i8 %0, %c.0.tr.i
  %and.i = zext i8 %xor.narrow.i to i32
  %arrayidx.i27 = getelementptr inbounds nuw i32, ptr @table, i32 %and.i
  %1 = load i32, ptr %arrayidx.i27, align 4, !tbaa !6
  %shr.i = lshr i32 %c.08.i, 8
  %xor1.i = xor i32 %1, %shr.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body.i, label %while.body.i, !llvm.loop !14

for.body.i:                                       ; preds = %while.body.i, %for.body.i
  %i.07.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %while.body.i ]
  %h.06.i = phi i32 [ %mul.i, %for.body.i ], [ -2128831035, %while.body.i ]
  %arrayidx.i28 = getelementptr inbounds nuw i8, ptr @buf, i32 %i.07.i
  %2 = load i8, ptr %arrayidx.i28, align 1, !tbaa !12
  %conv.i = zext i8 %2 to i32
  %xor.i = xor i32 %h.06.i, %conv.i
  %mul.i = mul i32 %xor.i, 16777619
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i29 = icmp eq i32 %inc.i, %n.077
  br i1 %exitcond.not.i29, label %fnv1a.exit, label %for.body.i, !llvm.loop !15

fnv1a.exit:                                       ; preds = %for.body.i
  %3 = xor i32 %xor1.i, -1
  %or.i = tail call noundef i32 @llvm.fshl.i32(i32 %mul.i, i32 %mul.i, i32 7)
  %add8 = add i32 %or.i, %3
  %div.i707172 = lshr i32 %n.077, 2
  %cmp94.i = icmp samesign ugt i32 %n.077, 3
  br i1 %cmp94.i, label %for.body.i33, label %for.cond.cleanup.i

for.cond.cleanup.i:                               ; preds = %for.body.i33, %fnv1a.exit
  %h.0.lcssa.i30 = phi i32 [ %n.077, %fnv1a.exit ], [ %add20.i, %for.body.i33 ]
  %and.i31 = and i32 %n.077, 3
  switch i32 %and.i31, label %default.unreachable [
    i32 3, label %sw.bb.i
    i32 2, label %for.cond.cleanup.sw.bb28_crit_edge.i
    i32 1, label %for.cond.cleanup.sw.bb35_crit_edge.i
    i32 0, label %murmur3.exit
  ]

for.cond.cleanup.sw.bb28_crit_edge.i:             ; preds = %for.cond.cleanup.i
  %.pre.i = and i32 %n.077, 2044
  br label %sw.bb28.i

for.cond.cleanup.sw.bb35_crit_edge.i:             ; preds = %for.cond.cleanup.i
  %.pre97.i = and i32 %n.077, 2044
  br label %sw.bb35.i

for.body.i33:                                     ; preds = %fnv1a.exit, %for.body.i33
  %h.096.i = phi i32 [ %add20.i, %for.body.i33 ], [ %n.077, %fnv1a.exit ]
  %i.095.i = phi i32 [ %inc.i39, %for.body.i33 ], [ 0, %fnv1a.exit ]
  %mul.i34 = shl nsw i32 %i.095.i, 2
  %arrayidx.i35 = getelementptr inbounds nuw i8, ptr @buf, i32 %mul.i34
  %4 = load i8, ptr %arrayidx.i35, align 1, !tbaa !12
  %conv.i36 = zext i8 %4 to i32
  %arrayidx2.i = getelementptr inbounds nuw i8, ptr %arrayidx.i35, i32 1
  %5 = load i8, ptr %arrayidx2.i, align 1, !tbaa !12
  %conv3.i = zext i8 %5 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i37 = or disjoint i32 %shl.i, %conv.i36
  %arrayidx6.i = getelementptr inbounds nuw i8, ptr %arrayidx.i35, i32 2
  %6 = load i8, ptr %arrayidx6.i, align 1, !tbaa !12
  %conv7.i = zext i8 %6 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 16
  %or9.i = or disjoint i32 %or.i37, %shl8.i
  %arrayidx12.i = getelementptr inbounds nuw i8, ptr %arrayidx.i35, i32 3
  %7 = load i8, ptr %arrayidx12.i, align 1, !tbaa !12
  %conv13.i = zext i8 %7 to i32
  %shl14.i = shl nuw i32 %conv13.i, 24
  %or15.i = or disjoint i32 %or9.i, %shl14.i
  %mul16.i = mul i32 %or15.i, -862048943
  %or.i.i = tail call noundef i32 @llvm.fshl.i32(i32 %mul16.i, i32 %mul16.i, i32 15)
  %mul17.i = mul i32 %or.i.i, 461845907
  %xor.i38 = xor i32 %mul17.i, %h.096.i
  %or.i92.i = tail call noundef i32 @llvm.fshl.i32(i32 %xor.i38, i32 %xor.i38, i32 13)
  %mul19.i = mul i32 %or.i92.i, 5
  %add20.i = add i32 %mul19.i, -430675100
  %inc.i39 = add nuw nsw i32 %i.095.i, 1
  %exitcond.not.i40 = icmp eq i32 %inc.i39, %div.i707172
  br i1 %exitcond.not.i40, label %for.cond.cleanup.i, label %for.body.i33, !llvm.loop !16

sw.bb.i:                                          ; preds = %for.cond.cleanup.i
  %mul22.i = and i32 %n.077, 2044
  %8 = getelementptr i8, ptr @buf, i32 %mul22.i
  %arrayidx24.i = getelementptr i8, ptr %8, i32 2
  %9 = load i8, ptr %arrayidx24.i, align 1, !tbaa !12
  %conv25.i = zext i8 %9 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 16
  br label %sw.bb28.i

sw.bb28.i:                                        ; preds = %sw.bb.i, %for.cond.cleanup.sw.bb28_crit_edge.i
  %mul29.pre-phi.i = phi i32 [ %.pre.i, %for.cond.cleanup.sw.bb28_crit_edge.i ], [ %mul22.i, %sw.bb.i ]
  %k21.0.i = phi i32 [ 0, %for.cond.cleanup.sw.bb28_crit_edge.i ], [ %shl26.i, %sw.bb.i ]
  %10 = getelementptr i8, ptr @buf, i32 %mul29.pre-phi.i
  %arrayidx31.i = getelementptr i8, ptr %10, i32 1
  %11 = load i8, ptr %arrayidx31.i, align 1, !tbaa !12
  %conv32.i = zext i8 %11 to i32
  %shl33.i = shl nuw nsw i32 %conv32.i, 8
  %xor34.i = or disjoint i32 %shl33.i, %k21.0.i
  br label %sw.bb35.i

sw.bb35.i:                                        ; preds = %sw.bb28.i, %for.cond.cleanup.sw.bb35_crit_edge.i
  %mul36.pre-phi.i = phi i32 [ %.pre97.i, %for.cond.cleanup.sw.bb35_crit_edge.i ], [ %mul29.pre-phi.i, %sw.bb28.i ]
  %k21.1.i = phi i32 [ 0, %for.cond.cleanup.sw.bb35_crit_edge.i ], [ %xor34.i, %sw.bb28.i ]
  %arrayidx37.i = getelementptr inbounds nuw i8, ptr @buf, i32 %mul36.pre-phi.i
  %12 = load i8, ptr %arrayidx37.i, align 1, !tbaa !12
  %conv38.i = zext i8 %12 to i32
  %xor39.i = xor i32 %k21.1.i, %conv38.i
  %mul40.i = mul i32 %xor39.i, -862048943
  %or.i93.i = tail call noundef i32 @llvm.fshl.i32(i32 %mul40.i, i32 %mul40.i, i32 15)
  %mul42.i = mul i32 %or.i93.i, 461845907
  %xor43.i = xor i32 %mul42.i, %h.0.lcssa.i30
  br label %murmur3.exit

default.unreachable:                              ; preds = %for.cond.cleanup.i
  unreachable

murmur3.exit:                                     ; preds = %for.body5, %for.cond.cleanup.i, %sw.bb35.i
  %add86168 = phi i32 [ %add8, %sw.bb35.i ], [ %add8, %for.cond.cleanup.i ], [ -1907432768, %for.body5 ]
  %h.1.i = phi i32 [ %xor43.i, %sw.bb35.i ], [ %h.0.lcssa.i30, %for.cond.cleanup.i ], [ 0, %for.body5 ]
  %shr.i32 = lshr i32 %h.1.i, 16
  %13 = xor i32 %n.077, %shr.i32
  %xor45.i = xor i32 %13, %h.1.i
  %mul46.i = mul i32 %xor45.i, -2048144789
  %shr47.i = lshr i32 %mul46.i, 13
  %xor48.i = xor i32 %shr47.i, %mul46.i
  %mul49.i = mul i32 %xor48.i, -1028477387
  %shr50.i = lshr i32 %mul49.i, 16
  %xor51.i = xor i32 %shr50.i, %mul49.i
  %or.i41 = tail call noundef i32 @llvm.fshl.i32(i32 %xor51.i, i32 %xor51.i, i32 13)
  %add11 = add i32 %or.i41, %add86168
  br i1 %tobool.not5.i.not, label %adler32.exit, label %for.body.i44

for.cond.cleanup.loopexit.i:                      ; preds = %for.body.i44
  %14 = shl nuw i32 %rem2.i, 16
  %15 = or disjoint i32 %14, %rem.i
  br label %adler32.exit

for.body.i44:                                     ; preds = %murmur3.exit, %for.body.i44
  %i.011.i = phi i32 [ %inc.i47, %for.body.i44 ], [ 0, %murmur3.exit ]
  %b.010.i = phi i32 [ %rem2.i, %for.body.i44 ], [ 0, %murmur3.exit ]
  %a.09.i = phi i32 [ %rem.i, %for.body.i44 ], [ 1, %murmur3.exit ]
  %arrayidx.i45 = getelementptr inbounds nuw i8, ptr @buf, i32 %i.011.i
  %16 = load i8, ptr %arrayidx.i45, align 1, !tbaa !12
  %conv.i46 = zext i8 %16 to i32
  %add.i = add nuw nsw i32 %a.09.i, %conv.i46
  %rem.i = urem i32 %add.i, 65521
  %add1.i = add nuw nsw i32 %rem.i, %b.010.i
  %rem2.i = urem i32 %add1.i, 65521
  %inc.i47 = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i48 = icmp eq i32 %inc.i47, %n.077
  br i1 %exitcond.not.i48, label %for.cond.cleanup.loopexit.i, label %for.body.i44, !llvm.loop !17

adler32.exit:                                     ; preds = %murmur3.exit, %for.cond.cleanup.loopexit.i
  %or.i43 = phi i32 [ 1, %murmur3.exit ], [ %15, %for.cond.cleanup.loopexit.i ]
  %add13 = add i32 %add11, %or.i43
  %xor = xor i32 %add13, %h.076
  %add15 = add nuw nsw i32 %n.077, 97
  %cmp2 = icmp samesign ult i32 %n.077, 931
  br i1 %cmp2, label %for.body5, label %for.cond.cleanup4, !llvm.loop !18
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32f"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv32i2p1_m2p0_f2p2_zicsr2p0_zmmul1p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 0}
!5 = !{!"clang version 22.1.8"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!8, !8, i64 0}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
