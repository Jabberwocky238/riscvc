; ModuleID = '../llvm-project/compiler-rt/lib/builtins/udivmoddi4.c'
source_filename = "../llvm-project/compiler-rt/lib/builtins/udivmoddi4.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define dso_local i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, ptr noundef writeonly captures(address_is_null) %rem) local_unnamed_addr #0 {
entry:
  %n.sroa.0.0.extract.trunc = trunc i64 %a to i32
  %n.sroa.23.0.extract.shift = lshr i64 %a, 32
  %n.sroa.23.0.extract.trunc = trunc nuw i64 %n.sroa.23.0.extract.shift to i32
  %d.sroa.0.0.extract.trunc = trunc i64 %b to i32
  %d.sroa.16.0.extract.shift = lshr i64 %b, 32
  %d.sroa.16.0.extract.trunc = trunc nuw i64 %d.sroa.16.0.extract.shift to i32
  %cmp = icmp eq i64 %n.sroa.23.0.extract.shift, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i64 %d.sroa.16.0.extract.shift, 0
  %tobool.not = icmp eq ptr %rem, null
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.then
  %div = udiv i32 %n.sroa.0.0.extract.trunc, %d.sroa.0.0.extract.trunc
  br i1 %tobool.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then3
  %0 = mul i32 %div, %d.sroa.0.0.extract.trunc
  %rem6.decomposed = sub i32 %n.sroa.0.0.extract.trunc, %0
  %conv = zext i32 %rem6.decomposed to i64
  store i64 %conv, ptr %rem, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then3
  %conv9 = zext i32 %div to i64
  br label %cleanup

if.end10:                                         ; preds = %if.then
  br i1 %tobool.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.end10
  store i64 %a, ptr %rem, align 8, !tbaa !10
  br label %cleanup

if.end16:                                         ; preds = %entry
  %cmp18 = icmp eq i32 %d.sroa.0.0.extract.trunc, 0
  %cmp22 = icmp eq i64 %d.sroa.16.0.extract.shift, 0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end16
  br i1 %cmp22, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.then20
  %cmp38 = icmp eq i32 %n.sroa.0.0.extract.trunc, 0
  br i1 %cmp38, label %if.then40, label %if.end53

if.then40:                                        ; preds = %if.end36
  %tobool41.not = icmp eq ptr %rem, null
  %div51 = udiv i32 %n.sroa.23.0.extract.trunc, %d.sroa.16.0.extract.trunc
  br i1 %tobool41.not, label %if.end48, label %if.then42

if.then42:                                        ; preds = %if.then40
  %1 = mul i32 %div51, %d.sroa.16.0.extract.trunc
  %rem45.decomposed = sub i32 %n.sroa.23.0.extract.trunc, %1
  %r.sroa.19.0.insert.ext = zext i32 %rem45.decomposed to i64
  %r.sroa.19.0.insert.shift = shl nuw i64 %r.sroa.19.0.insert.ext, 32
  store i64 %r.sroa.19.0.insert.shift, ptr %rem, align 8, !tbaa !10
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.then40
  %conv52 = zext i32 %div51 to i64
  br label %cleanup

if.end53:                                         ; preds = %if.end36
  %sub = add i32 %d.sroa.16.0.extract.trunc, -1
  %2 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %d.sroa.16.0.extract.trunc)
  %cmp56 = icmp samesign ult i32 %2, 2
  br i1 %cmp56, label %if.then58, label %if.end72

if.then58:                                        ; preds = %if.end53
  %tobool59.not = icmp eq ptr %rem, null
  br i1 %tobool59.not, label %if.end68, label %if.then60

if.then60:                                        ; preds = %if.then58
  %and66 = and i32 %sub, %n.sroa.23.0.extract.trunc
  %r.sroa.19.0.insert.ext313 = zext i32 %and66 to i64
  %r.sroa.19.0.insert.shift314 = shl nuw i64 %r.sroa.19.0.insert.ext313, 32
  %r.sroa.0.0.insert.ext297 = and i64 %a, 4294967295
  %r.sroa.0.0.insert.insert299 = or disjoint i64 %r.sroa.19.0.insert.shift314, %r.sroa.0.0.insert.ext297
  store i64 %r.sroa.0.0.insert.insert299, ptr %rem, align 8, !tbaa !10
  br label %if.end68

if.end68:                                         ; preds = %if.then60, %if.then58
  %3 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %d.sroa.16.0.extract.trunc, i1 true)
  %shr = lshr i32 %n.sroa.23.0.extract.trunc, %3
  %conv71 = zext i32 %shr to i64
  br label %cleanup

if.end72:                                         ; preds = %if.end53
  %4 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %d.sroa.16.0.extract.trunc, i1 true)
  %5 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %n.sroa.23.0.extract.trunc, i1 true)
  %sub75 = sub nsw i32 %4, %5
  %cmp76 = icmp ugt i32 %sub75, 30
  br i1 %cmp76, label %if.then78, label %if.end82

if.then78:                                        ; preds = %if.end72
  %tobool79.not = icmp eq ptr %rem, null
  br i1 %tobool79.not, label %cleanup, label %if.then80

if.then80:                                        ; preds = %if.then78
  store i64 %a, ptr %rem, align 8, !tbaa !10
  br label %cleanup

if.end82:                                         ; preds = %if.end72
  %inc = add nuw nsw i32 %sub75, 1
  %sub85 = sub nuw nsw i32 31, %sub75
  %shl = shl i32 %n.sroa.0.0.extract.trunc, %sub85
  %shr88 = lshr i32 %n.sroa.23.0.extract.trunc, %inc
  %shl92 = shl i32 %n.sroa.23.0.extract.trunc, %sub85
  %shr94 = lshr i32 %n.sroa.0.0.extract.trunc, %inc
  %or = or i32 %shl92, %shr94
  br label %for.body.preheader

if.else:                                          ; preds = %if.end16
  br i1 %cmp22, label %if.then99, label %if.else183

if.then99:                                        ; preds = %if.else
  %sub102 = add i32 %d.sroa.0.0.extract.trunc, -1
  %6 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %d.sroa.0.0.extract.trunc)
  %cmp104 = icmp samesign ult i32 %6, 2
  br i1 %cmp104, label %if.then106, label %if.end131

if.then106:                                       ; preds = %if.then99
  %tobool107.not = icmp eq ptr %rem, null
  br i1 %tobool107.not, label %if.end114, label %if.then108

if.then108:                                       ; preds = %if.then106
  %and112 = and i32 %sub102, %n.sroa.0.0.extract.trunc
  %conv113 = zext i32 %and112 to i64
  store i64 %conv113, ptr %rem, align 8, !tbaa !10
  br label %if.end114

if.end114:                                        ; preds = %if.then108, %if.then106
  %cmp116 = icmp eq i32 %d.sroa.0.0.extract.trunc, 1
  br i1 %cmp116, label %cleanup, label %if.end119

if.end119:                                        ; preds = %if.end114
  %7 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %d.sroa.0.0.extract.trunc, i1 true)
  %shr122 = lshr i32 %n.sroa.23.0.extract.trunc, %7
  %or129 = tail call i32 @llvm.fshr.i32(i32 %n.sroa.23.0.extract.trunc, i32 %n.sroa.0.0.extract.trunc, i32 %7)
  %q.sroa.15.0.insert.ext = zext i32 %shr122 to i64
  %q.sroa.15.0.insert.shift = shl nuw i64 %q.sroa.15.0.insert.ext, 32
  %q.sroa.0.0.insert.ext = zext i32 %or129 to i64
  %q.sroa.0.0.insert.insert = or disjoint i64 %q.sroa.15.0.insert.shift, %q.sroa.0.0.insert.ext
  br label %cleanup

if.end131:                                        ; preds = %if.then99
  %8 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %d.sroa.0.0.extract.trunc, i1 true)
  %add = add nuw nsw i32 %8, 33
  %9 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %n.sroa.23.0.extract.trunc, i1 true)
  %sub134 = sub nuw nsw i32 %add, %9
  %cmp135 = icmp eq i32 %sub134, 32
  br i1 %cmp135, label %for.body.preheader, label %if.else144

if.else144:                                       ; preds = %if.end131
  %cmp145 = icmp samesign ult i32 %sub134, 32
  br i1 %cmp145, label %if.then147, label %if.else163

if.then147:                                       ; preds = %if.else144
  %sub150 = sub nuw nsw i32 32, %sub134
  %shl151 = shl i32 %n.sroa.0.0.extract.trunc, %sub150
  %shr154 = lshr i32 %n.sroa.23.0.extract.trunc, %sub134
  %shl158 = shl i32 %n.sroa.23.0.extract.trunc, %sub150
  %shr160 = lshr i32 %n.sroa.0.0.extract.trunc, %sub134
  %or161 = or disjoint i32 %shl158, %shr160
  br label %for.body.preheader

if.else163:                                       ; preds = %if.else144
  %sub165 = sub nuw nsw i32 64, %sub134
  %shl166 = shl i32 %n.sroa.0.0.extract.trunc, %sub165
  %shl170 = shl i32 %n.sroa.23.0.extract.trunc, %sub165
  %sub172 = add nsw i32 %sub134, -32
  %shr173 = lshr i32 %n.sroa.0.0.extract.trunc, %sub172
  %or174 = or i32 %shl170, %shr173
  %shr179 = lshr i32 %n.sroa.23.0.extract.trunc, %sub172
  br label %for.body.preheader

if.else183:                                       ; preds = %if.else
  %10 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %d.sroa.16.0.extract.trunc, i1 true)
  %11 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %n.sroa.23.0.extract.trunc, i1 true)
  %sub186 = sub nsw i32 %10, %11
  %cmp187 = icmp ugt i32 %sub186, 31
  br i1 %cmp187, label %if.then189, label %if.end193

if.then189:                                       ; preds = %if.else183
  %tobool190.not = icmp eq ptr %rem, null
  br i1 %tobool190.not, label %cleanup, label %if.then191

if.then191:                                       ; preds = %if.then189
  store i64 %a, ptr %rem, align 8, !tbaa !10
  br label %cleanup

if.end193:                                        ; preds = %if.else183
  %inc194 = add nuw nsw i32 %sub186, 1
  %cmp196 = icmp eq i32 %inc194, 32
  br i1 %cmp196, label %for.body.preheader, label %if.else204

if.else204:                                       ; preds = %if.end193
  %sub206 = sub nuw nsw i32 31, %sub186
  %shl207 = shl i32 %n.sroa.0.0.extract.trunc, %sub206
  %shr210 = lshr i32 %n.sroa.23.0.extract.trunc, %inc194
  %shl214 = shl i32 %n.sroa.23.0.extract.trunc, %sub206
  %shr216 = lshr i32 %n.sroa.0.0.extract.trunc, %inc194
  %or217 = or i32 %shl214, %shr216
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end82, %if.else204, %if.else163, %if.then147, %if.end131, %if.end193
  %sr.1461.ph = phi i32 [ 32, %if.end193 ], [ 32, %if.end131 ], [ %sub134, %if.then147 ], [ %sub134, %if.else163 ], [ %inc194, %if.else204 ], [ %inc, %if.end82 ]
  %r.sroa.0.1460.ph = phi i32 [ %n.sroa.23.0.extract.trunc, %if.end193 ], [ %n.sroa.23.0.extract.trunc, %if.end131 ], [ %or161, %if.then147 ], [ %shr179, %if.else163 ], [ %or217, %if.else204 ], [ %or, %if.end82 ]
  %r.sroa.19.1459.ph = phi i32 [ 0, %if.end193 ], [ 0, %if.end131 ], [ %shr154, %if.then147 ], [ 0, %if.else163 ], [ %shr210, %if.else204 ], [ %shr88, %if.end82 ]
  %q.sroa.0.1458.ph = phi i32 [ 0, %if.end193 ], [ 0, %if.end131 ], [ 0, %if.then147 ], [ %shl166, %if.else163 ], [ 0, %if.else204 ], [ 0, %if.end82 ]
  %q.sroa.15.1457.ph = phi i32 [ %n.sroa.0.0.extract.trunc, %if.end193 ], [ %n.sroa.0.0.extract.trunc, %if.end131 ], [ %shl151, %if.then147 ], [ %or174, %if.else163 ], [ %shl207, %if.else204 ], [ %shl, %if.end82 ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %carry.0462 = phi i32 [ %conv250, %for.body ], [ 0, %for.body.preheader ]
  %sr.1461 = phi i32 [ %dec, %for.body ], [ %sr.1461.ph, %for.body.preheader ]
  %r.sroa.0.1460 = phi i32 [ %r.sroa.0.0.extract.trunc, %for.body ], [ %r.sroa.0.1460.ph, %for.body.preheader ]
  %r.sroa.19.1459 = phi i32 [ %r.sroa.19.0.extract.trunc, %for.body ], [ %r.sroa.19.1459.ph, %for.body.preheader ]
  %q.sroa.0.1458 = phi i32 [ %or244, %for.body ], [ %q.sroa.0.1458.ph, %for.body.preheader ]
  %q.sroa.15.1457 = phi i32 [ %or240, %for.body ], [ %q.sroa.15.1457.ph, %for.body.preheader ]
  %or228 = tail call i32 @llvm.fshl.i32(i32 %r.sroa.19.1459, i32 %r.sroa.0.1460, i32 1)
  %or234 = tail call i32 @llvm.fshl.i32(i32 %r.sroa.0.1460, i32 %q.sroa.15.1457, i32 1)
  %or240 = tail call i32 @llvm.fshl.i32(i32 %q.sroa.15.1457, i32 %q.sroa.0.1458, i32 1)
  %shl243 = shl i32 %q.sroa.0.1458, 1
  %or244 = or i32 %carry.0462, %shl243
  %r.sroa.19.0.insert.ext318 = zext i32 %or228 to i64
  %r.sroa.19.0.insert.shift319 = shl nuw i64 %r.sroa.19.0.insert.ext318, 32
  %r.sroa.0.0.insert.ext301 = zext i32 %or234 to i64
  %r.sroa.0.0.insert.insert303 = or disjoint i64 %r.sroa.19.0.insert.shift319, %r.sroa.0.0.insert.ext301
  %12 = xor i64 %r.sroa.0.0.insert.insert303, -1
  %sub247 = add i64 %b, %12
  %and249 = lshr i64 %sub247, 63
  %conv250 = trunc nuw nsw i64 %and249 to i32
  %isneg = icmp slt i64 %sub247, 0
  %and251 = select i1 %isneg, i64 %b, i64 0
  %sub252 = sub i64 %r.sroa.0.0.insert.insert303, %and251
  %r.sroa.0.0.extract.trunc = trunc i64 %sub252 to i32
  %r.sroa.19.0.extract.shift = lshr i64 %sub252, 32
  %r.sroa.19.0.extract.trunc = trunc nuw i64 %r.sroa.19.0.extract.shift to i32
  %dec = add nsw i32 %sr.1461, -1
  %cmp222.not = icmp eq i32 %dec, 0
  br i1 %cmp222.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.body
  %q.sroa.15.0.insert.ext343 = zext i32 %or240 to i64
  %q.sroa.0.0.insert.ext335 = zext i32 %or244 to i64
  %13 = shl i64 %q.sroa.15.0.insert.ext343, 33
  %14 = shl nuw nsw i64 %q.sroa.0.0.insert.ext335, 1
  %.masked = and i64 %14, 4294967296
  %q.sroa.15.0.extract.shift = or disjoint i64 %.masked, %13
  %tobool256.not = icmp eq ptr %rem, null
  br i1 %tobool256.not, label %if.end258, label %if.then257

if.then257:                                       ; preds = %for.end
  store i64 %sub252, ptr %rem, align 8, !tbaa !10
  br label %if.end258

if.end258:                                        ; preds = %if.then257, %for.end
  %.masked468 = and i64 %14, 4294967294
  %q.sroa.0.0.insert.ext339 = or disjoint i64 %and249, %.masked468
  %q.sroa.0.0.insert.insert341 = or disjoint i64 %q.sroa.15.0.extract.shift, %q.sroa.0.0.insert.ext339
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.then189, %if.then191, %if.end114, %if.then78, %if.then80, %if.end10, %if.then12, %if.end258, %if.end119, %if.end68, %if.end48, %if.end
  %retval.0 = phi i64 [ %conv9, %if.end ], [ %a, %if.end114 ], [ 0, %if.then189 ], [ %conv52, %if.end48 ], [ %conv71, %if.end68 ], [ 0, %if.end10 ], [ %q.sroa.0.0.insert.insert341, %if.end258 ], [ 0, %if.then78 ], [ %q.sroa.0.0.insert.insert, %if.end119 ], [ 0, %if.then12 ], [ 0, %if.then80 ], [ 0, %if.then191 ], [ poison, %if.then20 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
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
!10 = !{!11, !11, i64 0}
!11 = !{!"long long", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
