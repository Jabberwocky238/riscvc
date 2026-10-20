; ModuleID = '../llvm-project/compiler-rt/lib/builtins/divdf3.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/divdf3.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local double @__divdf3(double noundef %a, double noundef %b) local_unnamed_addr #0 {
entry:
  %0 = bitcast double %a to i64
  %shr.i = lshr i64 %0, 52
  %1 = trunc nuw nsw i64 %shr.i to i32
  %conv.i = and i32 %1, 2047
  %2 = bitcast double %b to i64
  %shr2.i = lshr i64 %2, 52
  %3 = trunc nuw nsw i64 %shr2.i to i32
  %conv4.i = and i32 %3, 2047
  %xor.i = xor i64 %2, %0
  %and7.i = and i64 %xor.i, -9223372036854775808
  %and9.i = and i64 %0, 4503599627370495
  %and11.i = and i64 %2, 4503599627370495
  %4 = add nsw i32 %conv.i, -2047
  %cmp.i = icmp ult i32 %4, -2046
  %5 = add nsw i32 %conv4.i, -2047
  %cmp14.i = icmp ult i32 %5, -2046
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp14.i
  br i1 %or.cond.i, label %if.then.i, label %if.end71.i

if.then.i:                                        ; preds = %entry
  %6 = tail call double @llvm.fabs.f64(double %a)
  %and17.i = bitcast double %6 to i64
  %7 = tail call double @llvm.fabs.f64(double %b)
  %and19.i = bitcast double %7 to i64
  %cmp20.i = icmp samesign ugt i64 %and17.i, 9218868437227405312
  br i1 %cmp20.i, label %if.then22.i, label %if.end.i

if.then22.i:                                      ; preds = %if.then.i
  %or.i = or i64 %0, 2251799813685248
  %8 = bitcast i64 %or.i to double
  br label %__divXf3__.exit

if.end.i:                                         ; preds = %if.then.i
  %cmp25.i = icmp samesign ugt i64 %and19.i, 9218868437227405312
  br i1 %cmp25.i, label %if.then27.i, label %if.end31.i

if.then27.i:                                      ; preds = %if.end.i
  %or29.i = or i64 %2, 2251799813685248
  %9 = bitcast i64 %or29.i to double
  br label %__divXf3__.exit

if.end31.i:                                       ; preds = %if.end.i
  %cmp32.i = icmp eq i64 %and17.i, 9218868437227405312
  %cmp35.i = icmp eq i64 %and19.i, 9218868437227405312
  br i1 %cmp32.i, label %if.then34.i, label %if.end41.i

if.then34.i:                                      ; preds = %if.end31.i
  br i1 %cmp35.i, label %__divXf3__.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then34.i
  %or39.i = or disjoint i64 %and7.i, 9218868437227405312
  %10 = bitcast i64 %or39.i to double
  br label %__divXf3__.exit

if.end41.i:                                       ; preds = %if.end31.i
  br i1 %cmp35.i, label %if.then44.i, label %if.end46.i

if.then44.i:                                      ; preds = %if.end41.i
  %11 = bitcast i64 %and7.i to double
  br label %__divXf3__.exit

if.end46.i:                                       ; preds = %if.end41.i
  %tobool.not.i = icmp eq i64 %and17.i, 0
  %tobool48.not.i = icmp eq i64 %and19.i, 0
  br i1 %tobool.not.i, label %if.then47.i, label %if.end53.i

if.then47.i:                                      ; preds = %if.end46.i
  %12 = bitcast i64 %and7.i to double
  %spec.select.i = select i1 %tobool48.not.i, double 0x7FF8000000000000, double %12
  br label %__divXf3__.exit

if.end53.i:                                       ; preds = %if.end46.i
  br i1 %tobool48.not.i, label %if.then55.i, label %if.end58.i

if.then55.i:                                      ; preds = %if.end53.i
  %or56.i = or disjoint i64 %and7.i, 9218868437227405312
  %13 = bitcast i64 %or56.i to double
  br label %__divXf3__.exit

if.end58.i:                                       ; preds = %if.end53.i
  %cmp59.i = icmp samesign ult i64 %and17.i, 4503599627370496
  br i1 %cmp59.i, label %if.then61.i, label %if.end63.i

if.then61.i:                                      ; preds = %if.end58.i
  %14 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %and9.i, i1 true)
  %cast.i.i.i = trunc nuw nsw i64 %14 to i32
  %sub.i.i = add nsw i32 %cast.i.i.i, -11
  %sh_prom.i.i = zext nneg i32 %sub.i.i to i64
  %shl.i.i = shl i64 %and9.i, %sh_prom.i.i
  %sub2.i.i = sub nsw i32 12, %cast.i.i.i
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %if.end58.i
  %aSignificand.0.i = phi i64 [ %shl.i.i, %if.then61.i ], [ %and9.i, %if.end58.i ]
  %scale.0.i = phi i32 [ %sub2.i.i, %if.then61.i ], [ 0, %if.end58.i ]
  %cmp64.i = icmp samesign ult i64 %and19.i, 4503599627370496
  br i1 %cmp64.i, label %if.then66.i, label %if.end71.i

if.then66.i:                                      ; preds = %if.end63.i
  %15 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %and11.i, i1 true)
  %cast.i.i281.i = trunc nuw nsw i64 %15 to i32
  %sub.i282.i = add nsw i32 %cast.i.i281.i, -11
  %sh_prom.i283.i = zext nneg i32 %sub.i282.i to i64
  %shl.i284.i = shl i64 %and11.i, %sh_prom.i283.i
  %sub2.i285.neg.i = add nsw i32 %cast.i.i281.i, -12
  %sub68.i = add nsw i32 %sub2.i285.neg.i, %scale.0.i
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then66.i, %if.end63.i, %entry
  %bSignificand.1.i = phi i64 [ %and11.i, %entry ], [ %and11.i, %if.end63.i ], [ %shl.i284.i, %if.then66.i ]
  %aSignificand.2.i = phi i64 [ %and9.i, %entry ], [ %aSignificand.0.i, %if.end63.i ], [ %aSignificand.0.i, %if.then66.i ]
  %scale.3.i = phi i32 [ 0, %entry ], [ %scale.0.i, %if.end63.i ], [ %sub68.i, %if.then66.i ]
  %or72.i = or i64 %aSignificand.2.i, 4503599627370496
  %or73.i = or i64 %bSignificand.1.i, 4503599627370496
  %sub74.i = sub nsw i32 %conv.i, %conv4.i
  %add75.i = add nsw i32 %scale.3.i, %sub74.i
  %add76.i = add nsw i32 %add75.i, 1023
  %shl.i = shl i64 %bSignificand.1.i, 11
  %shr77.i = lshr i64 %or73.i, 21
  %conv78.i = trunc i64 %shr77.i to i32
  %sub79.i = sub i32 1963258675, %conv78.i
  %conv80.i = zext i32 %sub79.i to i64
  %conv81.i = and i64 %shr77.i, 4294967295
  %mul.i = mul nuw i64 %conv81.i, %conv80.i
  %shr82.i = lshr i64 %mul.i, 32
  %16 = trunc nuw i64 %shr82.i to i32
  %conv84.i = sub i32 0, %16
  %conv86.i = zext i32 %conv84.i to i64
  %mul87.i = mul nuw i64 %conv86.i, %conv80.i
  %shr88.i = lshr i64 %mul87.i, 31
  %conv91.i = and i64 %shr88.i, 4294967295
  %mul93.i = mul nuw i64 %conv91.i, %conv81.i
  %shr94.i = lshr i64 %mul93.i, 32
  %17 = trunc nuw i64 %shr94.i to i32
  %conv96.i = sub i32 0, %17
  %conv98.i = zext i32 %conv96.i to i64
  %mul99.i = mul nuw i64 %conv91.i, %conv98.i
  %shr100.i = lshr i64 %mul99.i, 31
  %conv103.i = and i64 %shr100.i, 4294967295
  %mul105.i = mul nuw i64 %conv103.i, %conv81.i
  %shr106.i = lshr i64 %mul105.i, 32
  %18 = trunc nuw i64 %shr106.i to i32
  %conv108.i = sub i32 0, %18
  %conv110.i = zext i32 %conv108.i to i64
  %mul111.i = mul nuw i64 %conv103.i, %conv110.i
  %shr112.i = lshr i64 %mul111.i, 31
  %conv113.i = trunc i64 %shr112.i to i32
  %sub114.i = add i32 %conv113.i, -1
  %conv115.i = zext i32 %sub114.i to i64
  %and118.i = and i64 %shl.i, 4294965248
  %mul121.i = mul nuw i64 %conv81.i, %conv115.i
  %mul123.i = mul nuw i64 %and118.i, %conv115.i
  %shr124.i = lshr i64 %mul123.i, 32
  %19 = add nuw i64 %mul121.i, %shr124.i
  %sub127.i = sub i64 1, %19
  %and128.i = and i64 %sub127.i, 4294967295
  %shr129.i = lshr i64 %sub127.i, 32
  %mul131.i = shl nuw nsw i64 %conv115.i, 1
  %shl132.i = mul i64 %mul131.i, %shr129.i
  %mul134.i = mul nuw i64 %and128.i, %conv115.i
  %shr135.i = lshr i64 %mul134.i, 31
  %add136.i = add i64 %shl132.i, -225
  %sub140.i = add i64 %add136.i, %shr135.i
  %shl141.i = shl i64 %or72.i, 1
  %and.i.i = and i64 %sub140.i, 4294967295
  %and1.i.i = and i64 %shl141.i, 4294967294
  %mul.i.i = mul nuw i64 %and.i.i, %and1.i.i
  %shr.i.i = lshr i64 %shl141.i, 32
  %mul3.i.i = mul nuw i64 %and.i.i, %shr.i.i
  %shr4.i.i = lshr i64 %sub140.i, 32
  %mul6.i.i = mul nuw i64 %shr4.i.i, %and1.i.i
  %mul9.i.i = mul nuw i64 %shr4.i.i, %shr.i.i
  %shr11.i.i = lshr i64 %mul.i.i, 32
  %and12.i.i = and i64 %mul3.i.i, 4294967295
  %add.i.i = add nuw nsw i64 %shr11.i.i, %and12.i.i
  %and13.i.i = and i64 %mul6.i.i, 4294967294
  %add14.i.i = add nuw nsw i64 %add.i.i, %and13.i.i
  %shr16.i.i = lshr i64 %mul3.i.i, 32
  %shr17.i.i = lshr i64 %mul6.i.i, 32
  %shr19.i.i = lshr i64 %add14.i.i, 32
  %add18.i.i = add nuw i64 %shr17.i.i, %mul9.i.i
  %add20.i.i = add nuw i64 %add18.i.i, %shr16.i.i
  %add21.i.i = add nuw i64 %add20.i.i, %shr19.i.i
  %cmp142.i = icmp ult i64 %add21.i.i, 9007199254740992
  br i1 %cmp142.i, label %if.then144.i, label %if.else156.i

if.then144.i:                                     ; preds = %if.end71.i
  %cmp145.i = icmp samesign ult i64 %add21.i.i, 4503599627370496
  %sub149.i = add nsw i32 %add75.i, 1022
  %shl148.i = zext i1 %cmp145.i to i64
  %quotient_UQ1.0.i = shl nuw nsw i64 %add21.i.i, %shl148.i
  %writtenExponent.0.i = select i1 %cmp145.i, i32 %sub149.i, i32 %add76.i
  %shl151.i = shl i64 %aSignificand.2.i, 53
  %mul152.i = mul i64 %quotient_UQ1.0.i, %or73.i
  %sub153.i = sub i64 %shl151.i, %mul152.i
  %sub154.i = add nsw i32 %writtenExponent.0.i, -1
  br label %if.end161.i

if.else156.i:                                     ; preds = %if.end71.i
  %shr157.i = lshr i64 %add21.i.i, 1
  %shl158.i = shl i64 %aSignificand.2.i, 52
  %mul159.i = mul i64 %shr157.i, %or73.i
  %sub160.i = sub i64 %shl158.i, %mul159.i
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.else156.i, %if.then144.i
  %quotient_UQ1.1.i = phi i64 [ %quotient_UQ1.0.i, %if.then144.i ], [ %shr157.i, %if.else156.i ]
  %aSignificand.3.i = phi i64 [ %shl141.i, %if.then144.i ], [ %or72.i, %if.else156.i ]
  %writtenExponent.1.i = phi i32 [ %sub154.i, %if.then144.i ], [ %add76.i, %if.else156.i ]
  %residualLo.0.i = phi i64 [ %sub153.i, %if.then144.i ], [ %sub160.i, %if.else156.i ]
  %cmp162.i = icmp sgt i32 %writtenExponent.1.i, 2046
  br i1 %cmp162.i, label %if.then164.i, label %if.end167.i

if.then164.i:                                     ; preds = %if.end161.i
  %or165.i = or disjoint i64 %and7.i, 9218868437227405312
  %20 = bitcast i64 %or165.i to double
  br label %__divXf3__.exit

if.end167.i:                                      ; preds = %if.end161.i
  %cmp168.i = icmp sgt i32 %writtenExponent.1.i, 0
  br i1 %cmp168.i, label %if.then170.i, label %if.else176.i

if.then170.i:                                     ; preds = %if.end167.i
  %and171.i = and i64 %quotient_UQ1.1.i, 4503599627370495
  %conv172.i = zext nneg i32 %writtenExponent.1.i to i64
  %shl173.i = shl nuw nsw i64 %conv172.i, 52
  %or174.i = or disjoint i64 %shl173.i, %and171.i
  %shl175.i = shl i64 %residualLo.0.i, 1
  br label %if.end192.i

if.else176.i:                                     ; preds = %if.end167.i
  %cmp178.i = icmp slt i32 %writtenExponent.1.i, -52
  br i1 %cmp178.i, label %if.then180.i, label %if.end182.i

if.then180.i:                                     ; preds = %if.else176.i
  %21 = bitcast i64 %and7.i to double
  br label %__divXf3__.exit

if.end182.i:                                      ; preds = %if.else176.i
  %add177.i = add nsw i32 %writtenExponent.1.i, 52
  %add184.i = sub nsw i32 1, %writtenExponent.1.i
  %sh_prom.i = zext nneg i32 %add184.i to i64
  %shr185.i = lshr i64 %quotient_UQ1.1.i, %sh_prom.i
  %sh_prom187.i = zext nneg i32 %add177.i to i64
  %shl188.i = shl i64 %aSignificand.3.i, %sh_prom187.i
  %mul189.i = shl i64 %or73.i, 1
  %shl190.i = mul i64 %mul189.i, %shr185.i
  %sub191.i = sub i64 %shl188.i, %shl190.i
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.end182.i, %if.then170.i
  %residualLo.1.i = phi i64 [ %shl175.i, %if.then170.i ], [ %sub191.i, %if.end182.i ]
  %absResult.0.i = phi i64 [ %or174.i, %if.then170.i ], [ %shr185.i, %if.end182.i ]
  %and193.i = and i64 %absResult.0.i, 1
  %add194.i = add i64 %and193.i, %residualLo.1.i
  %cmp195.i = icmp ugt i64 %add194.i, %or73.i
  %conv197.i = zext i1 %cmp195.i to i64
  %add198.i = add nuw nsw i64 %absResult.0.i, %conv197.i
  %or199.i = or i64 %add198.i, %and7.i
  %22 = bitcast i64 %or199.i to double
  br label %__divXf3__.exit

__divXf3__.exit:                                  ; preds = %if.then22.i, %if.then27.i, %if.then34.i, %if.else.i, %if.then44.i, %if.then47.i, %if.then55.i, %if.then164.i, %if.then180.i, %if.end192.i
  %retval.3.i = phi double [ %21, %if.then180.i ], [ %20, %if.then164.i ], [ %22, %if.end192.i ], [ %spec.select.i, %if.then47.i ], [ %8, %if.then22.i ], [ %13, %if.then55.i ], [ 0x7FF8000000000000, %if.then34.i ], [ %11, %if.then44.i ], [ %10, %if.else.i ], [ %9, %if.then27.i ]
  ret double %retval.3.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
