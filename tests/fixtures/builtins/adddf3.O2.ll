; ModuleID = '../llvm-project/compiler-rt/lib/builtins/adddf3.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/adddf3.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: nounwind
define dso_local double @__adddf3(double noundef %a, double noundef %b) local_unnamed_addr #0 {
entry:
  %0 = bitcast double %a to i64
  %1 = bitcast double %b to i64
  %2 = tail call double @llvm.fabs.f64(double %a)
  %and.i = bitcast double %2 to i64
  %3 = tail call double @llvm.fabs.f64(double %b)
  %and2.i = bitcast double %3 to i64
  %4 = add nsw i64 %and.i, -9218868437227405312
  %cmp.i = icmp ult i64 %4, -9218868437227405311
  %5 = add nsw i64 %and2.i, -9218868437227405312
  %cmp4.i = icmp ult i64 %5, -9218868437227405311
  %or.cond243.i = select i1 %cmp.i, i1 true, i1 %cmp4.i
  br i1 %or.cond243.i, label %if.then.i, label %if.end38.i

if.then.i:                                        ; preds = %entry
  %cmp5.i = icmp samesign ugt i64 %and.i, 9218868437227405312
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i

if.then6.i:                                       ; preds = %if.then.i
  %or.i = or i64 %0, 2251799813685248
  %6 = bitcast i64 %or.i to double
  br label %__addXf3__.exit

if.end.i:                                         ; preds = %if.then.i
  %cmp9.i = icmp samesign ugt i64 %and2.i, 9218868437227405312
  br i1 %cmp9.i, label %if.then10.i, label %if.end14.i

if.then10.i:                                      ; preds = %if.end.i
  %or12.i = or i64 %1, 2251799813685248
  %7 = bitcast i64 %or12.i to double
  br label %__addXf3__.exit

if.end14.i:                                       ; preds = %if.end.i
  %cmp15.i = icmp eq i64 %and.i, 9218868437227405312
  br i1 %cmp15.i, label %if.then16.i, label %if.end22.i

if.then16.i:                                      ; preds = %if.end14.i
  %xor.i = xor i64 %1, %0
  %cmp19.i = icmp eq i64 %xor.i, -9223372036854775808
  %spec.select269.i = select i1 %cmp19.i, double 0x7FF8000000000000, double %a
  br label %__addXf3__.exit

if.end22.i:                                       ; preds = %if.end14.i
  %cmp23.i = icmp eq i64 %and2.i, 9218868437227405312
  br i1 %cmp23.i, label %__addXf3__.exit, label %if.end25.i

if.end25.i:                                       ; preds = %if.end22.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  %tobool27.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool.not.i, label %if.then26.i, label %if.end34.i

if.then26.i:                                      ; preds = %if.end25.i
  br i1 %tobool27.not.i, label %if.then28.i, label %__addXf3__.exit

if.then28.i:                                      ; preds = %if.then26.i
  %and31.i = and i64 %1, %0
  %8 = bitcast i64 %and31.i to double
  br label %__addXf3__.exit

if.end34.i:                                       ; preds = %if.end25.i
  br i1 %tobool27.not.i, label %__addXf3__.exit, label %if.end38.i

if.end38.i:                                       ; preds = %if.end34.i, %entry
  %cmp39.i = icmp samesign ugt i64 %and2.i, %and.i
  %bRep.0.i = select i1 %cmp39.i, i64 %0, i64 %1
  %aRep.0.i = select i1 %cmp39.i, i64 %1, i64 %0
  %shr.i = lshr i64 %aRep.0.i, 52
  %9 = trunc nuw nsw i64 %shr.i to i32
  %conv.i = and i32 %9, 2047
  %shr43.i = lshr i64 %bRep.0.i, 52
  %10 = trunc nuw nsw i64 %shr43.i to i32
  %conv45.i = and i32 %10, 2047
  %and46.i = and i64 %aRep.0.i, 4503599627370495
  %and47.i = and i64 %bRep.0.i, 4503599627370495
  %cmp48.i = icmp eq i32 %conv.i, 0
  br i1 %cmp48.i, label %if.then50.i, label %if.end52.i

if.then50.i:                                      ; preds = %if.end38.i
  %11 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %and46.i, i1 true)
  %cast.i.i.i = trunc nuw nsw i64 %11 to i32
  %sub.i.i = add nsw i32 %cast.i.i.i, -11
  %sh_prom.i.i = zext nneg i32 %sub.i.i to i64
  %shl.i.i = shl i64 %and46.i, %sh_prom.i.i
  %sub2.i.i = sub nsw i32 12, %cast.i.i.i
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then50.i, %if.end38.i
  %aSignificand.0.i = phi i64 [ %shl.i.i, %if.then50.i ], [ %and46.i, %if.end38.i ]
  %aExponent.0.i = phi i32 [ %sub2.i.i, %if.then50.i ], [ %conv.i, %if.end38.i ]
  %cmp53.i = icmp eq i32 %conv45.i, 0
  br i1 %cmp53.i, label %if.then55.i, label %if.end57.i

if.then55.i:                                      ; preds = %if.end52.i
  %12 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %and47.i, i1 true)
  %cast.i.i246.i = trunc nuw nsw i64 %12 to i32
  %sub.i247.i = add nsw i32 %cast.i.i246.i, -11
  %sh_prom.i248.i = zext nneg i32 %sub.i247.i to i64
  %shl.i249.i = shl i64 %and47.i, %sh_prom.i248.i
  %sub2.i250.i = sub nsw i32 12, %cast.i.i246.i
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then55.i, %if.end52.i
  %bSignificand.0.i = phi i64 [ %shl.i249.i, %if.then55.i ], [ %and47.i, %if.end52.i ]
  %bExponent.0.i = phi i32 [ %sub2.i250.i, %if.then55.i ], [ %conv45.i, %if.end52.i ]
  %and58.i = and i64 %aRep.0.i, -9223372036854775808
  %xor59.i = xor i64 %1, %0
  %tobool61.not.i = icmp sgt i64 %xor59.i, -1
  %or62.i = shl i64 %aSignificand.0.i, 3
  %shl.i = or i64 %or62.i, 36028797018963968
  %or63.i = shl i64 %bSignificand.0.i, 3
  %shl64.i = or i64 %or63.i, 36028797018963968
  %sub65.i = sub nsw i32 %aExponent.0.i, %bExponent.0.i
  %tobool66.not.i = icmp eq i32 %aExponent.0.i, %bExponent.0.i
  br i1 %tobool66.not.i, label %if.end82.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.end57.i
  %cmp68.i = icmp ult i32 %sub65.i, 64
  br i1 %cmp68.i, label %if.then70.i, label %if.end82.i

if.then70.i:                                      ; preds = %if.then67.i
  %sub71.i = sub nuw nsw i32 64, %sub65.i
  %sh_prom.i = zext nneg i32 %sub71.i to i64
  %shl72.i = shl i64 %shl64.i, %sh_prom.i
  %cmp73.i = icmp ne i64 %shl72.i, 0
  %sh_prom76.i = zext nneg i32 %sub65.i to i64
  %shr77.i = lshr i64 %shl64.i, %sh_prom76.i
  %conv78.i = zext i1 %cmp73.i to i64
  %or79.i = or i64 %shr77.i, %conv78.i
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then70.i, %if.then67.i, %if.end57.i
  %bSignificand.1.i = phi i64 [ %shl64.i, %if.end57.i ], [ %or79.i, %if.then70.i ], [ 1, %if.then67.i ]
  br i1 %tobool61.not.i, label %if.else101.i, label %if.then84.i

if.then84.i:                                      ; preds = %if.end82.i
  %sub85.i = sub i64 %shl.i, %bSignificand.1.i
  %cmp86.i = icmp eq i64 %shl.i, %bSignificand.1.i
  br i1 %cmp86.i, label %__addXf3__.exit, label %if.end90.i

if.end90.i:                                       ; preds = %if.then84.i
  %cmp91.i = icmp ult i64 %sub85.i, 36028797018963968
  br i1 %cmp91.i, label %if.end115.thread.i, label %if.end115.i

if.end115.thread.i:                               ; preds = %if.end90.i
  %13 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %sub85.i, i1 true)
  %cast.i.i = trunc nuw nsw i64 %13 to i32
  %sub96.i = add nsw i32 %cast.i.i, -8
  %sh_prom97.i = zext nneg i32 %sub96.i to i64
  %shl98.i = shl i64 %sub85.i, %sh_prom97.i
  %sub99.i = sub nsw i32 %aExponent.0.i, %sub96.i
  br label %if.end121.i

if.else101.i:                                     ; preds = %if.end82.i
  %add.i = add i64 %bSignificand.1.i, %shl.i
  %and102.i = and i64 %add.i, 72057594037927936
  %tobool103.not.i = icmp eq i64 %and102.i, 0
  br i1 %tobool103.not.i, label %if.end115.i, label %if.then104.i

if.then104.i:                                     ; preds = %if.else101.i
  %and106.i = and i64 %bSignificand.1.i, 1
  %shr109.i = lshr i64 %add.i, 1
  %or112.i = or i64 %shr109.i, %and106.i
  %add113.i = add nsw i32 %aExponent.0.i, 1
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then104.i, %if.else101.i, %if.end90.i
  %aSignificand.1.i = phi i64 [ %add.i, %if.else101.i ], [ %or112.i, %if.then104.i ], [ %sub85.i, %if.end90.i ]
  %aExponent.1.i = phi i32 [ %aExponent.0.i, %if.else101.i ], [ %add113.i, %if.then104.i ], [ %aExponent.0.i, %if.end90.i ]
  %cmp116.i = icmp sgt i32 %aExponent.1.i, 2046
  br i1 %cmp116.i, label %if.then118.i, label %if.end121.i

if.then118.i:                                     ; preds = %if.end115.i
  %or119.i = or disjoint i64 %and58.i, 9218868437227405312
  %14 = bitcast i64 %or119.i to double
  br label %__addXf3__.exit

if.end121.i:                                      ; preds = %if.end115.i, %if.end115.thread.i
  %aExponent.1264.i = phi i32 [ %sub99.i, %if.end115.thread.i ], [ %aExponent.1.i, %if.end115.i ]
  %aSignificand.1263.i = phi i64 [ %shl98.i, %if.end115.thread.i ], [ %aSignificand.1.i, %if.end115.i ]
  %cmp122.i = icmp slt i32 %aExponent.1264.i, 1
  br i1 %cmp122.i, label %if.then124.i, label %if.end139.i

if.then124.i:                                     ; preds = %if.end121.i
  %sub126.i = sub nsw i32 1, %aExponent.1264.i
  %sub128.i = add nsw i32 %aExponent.1264.i, 63
  %sh_prom129.i = zext nneg i32 %sub128.i to i64
  %shl130.i = shl i64 %aSignificand.1263.i, %sh_prom129.i
  %cmp131.i = icmp ne i64 %shl130.i, 0
  %sh_prom134.i = zext nneg i32 %sub126.i to i64
  %shr135.i = lshr i64 %aSignificand.1263.i, %sh_prom134.i
  %conv137.i = zext i1 %cmp131.i to i64
  %or138.i = or i64 %shr135.i, %conv137.i
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.then124.i, %if.end121.i
  %aSignificand.2.i = phi i64 [ %or138.i, %if.then124.i ], [ %aSignificand.1263.i, %if.end121.i ]
  %aExponent.2.i = phi i32 [ 0, %if.then124.i ], [ %aExponent.1264.i, %if.end121.i ]
  %15 = trunc i64 %aSignificand.2.i to i32
  %conv141.i = and i32 %15, 7
  %shr142.i = lshr i64 %aSignificand.2.i, 3
  %and143.i = and i64 %shr142.i, 4503599627370495
  %conv144.i = zext nneg i32 %aExponent.2.i to i64
  %shl145.i = shl nuw nsw i64 %conv144.i, 52
  %or146.i = or disjoint i64 %shl145.i, %and143.i
  %or147.i = or disjoint i64 %or146.i, %and58.i
  %call148.i = tail call i32 @__fe_getround() #4
  switch i32 %call148.i, label %sw.epilog.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb159.i
    i32 2, label %sw.bb165.i
  ]

sw.bb.i:                                          ; preds = %if.end139.i
  %cmp149.i = icmp samesign ugt i32 %conv141.i, 4
  %inc.i = zext i1 %cmp149.i to i64
  %spec.select.i = add i64 %or147.i, %inc.i
  %cmp153.i = icmp eq i32 %conv141.i, 4
  br i1 %cmp153.i, label %sw.epilog.thread.i, label %sw.epilog.i

sw.epilog.thread.i:                               ; preds = %sw.bb.i
  %and156.i = and i64 %shr142.i, 1
  %add157.i = add i64 %or147.i, %and156.i
  br label %if.then173.i

sw.bb159.i:                                       ; preds = %if.end139.i
  %tobool160.i = icmp ne i64 %and58.i, 0
  %tobool161.i = icmp ne i32 %conv141.i, 0
  %or.cond.i = select i1 %tobool160.i, i1 %tobool161.i, i1 false
  %inc163.i = zext i1 %or.cond.i to i64
  %spec.select244.i = add nsw i64 %or147.i, %inc163.i
  br label %sw.epilog.i

sw.bb165.i:                                       ; preds = %if.end139.i
  %tobool166.i = icmp eq i64 %and58.i, 0
  %tobool168.i = icmp ne i32 %conv141.i, 0
  %or.cond187.i = select i1 %tobool166.i, i1 %tobool168.i, i1 false
  %inc170.i = zext i1 %or.cond187.i to i64
  %spec.select245.i = add i64 %or147.i, %inc170.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb165.i, %sw.bb159.i, %sw.bb.i, %if.end139.i
  %result.1.i = phi i64 [ %or147.i, %if.end139.i ], [ %spec.select245.i, %sw.bb165.i ], [ %spec.select.i, %sw.bb.i ], [ %spec.select244.i, %sw.bb159.i ]
  %tobool172.not.i = icmp eq i32 %conv141.i, 0
  br i1 %tobool172.not.i, label %if.end175.i, label %if.then173.i

if.then173.i:                                     ; preds = %sw.epilog.i, %sw.epilog.thread.i
  %result.1267.i = phi i64 [ %add157.i, %sw.epilog.thread.i ], [ %result.1.i, %sw.epilog.i ]
  %call174.i = tail call i32 @__fe_raise_inexact() #4
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.then173.i, %sw.epilog.i
  %result.1268.i = phi i64 [ %result.1267.i, %if.then173.i ], [ %result.1.i, %sw.epilog.i ]
  %16 = bitcast i64 %result.1268.i to double
  br label %__addXf3__.exit

__addXf3__.exit:                                  ; preds = %if.then6.i, %if.then10.i, %if.then16.i, %if.end22.i, %if.then26.i, %if.then28.i, %if.end34.i, %if.then84.i, %if.then118.i, %if.end175.i
  %retval.1.i = phi double [ %6, %if.then6.i ], [ %7, %if.then10.i ], [ 0.000000e+00, %if.then84.i ], [ %8, %if.then28.i ], [ %spec.select269.i, %if.then16.i ], [ %a, %if.end34.i ], [ %b, %if.then26.i ], [ %b, %if.end22.i ], [ %16, %if.end175.i ], [ %14, %if.then118.i ]
  ret double %retval.1.i
}

declare dso_local i32 @__fe_getround() local_unnamed_addr #1

declare dso_local i32 @__fe_raise_inexact() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
