; ModuleID = 'tests/programs/bitint.c'
source_filename = "tests/programs/bitint.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

@s = internal unnamed_addr global i64 -7046029254386353131, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @mix128(ptr dead_on_unwind noalias writable writeonly sret(i128) align 8 captures(none) initializes((0, 16)) %agg.result, ptr dead_on_return noundef readonly captures(none) %0, ptr dead_on_return noundef readonly captures(none) %1, i32 noundef %sh) local_unnamed_addr #0 {
entry:
  %a = load i128, ptr %0, align 8, !tbaa !10
  %b = load i128, ptr %1, align 8, !tbaa !10
  %mul = mul i128 %b, %a
  %sh_prom = zext i32 %sh to i128
  %shl = shl i128 %a, %sh_prom
  %sub = sub nsw i32 127, %sh
  %sh_prom1 = zext nneg i32 %sub to i128
  %shr = lshr i128 %b, %sh_prom1
  %add = add i128 %b, %a
  %sub4 = sub i128 %a, %b
  %shl6 = shl i128 %a, 37
  %shr8 = lshr i128 %b, 70
  %shr11 = ashr i128 %a, %sh_prom
  %xor = xor i128 %shl6, %shl
  %xor2 = xor i128 %xor, %shr11
  %xor3 = xor i128 %xor2, %mul
  %xor5 = xor i128 %xor3, %shr
  %xor7 = xor i128 %xor5, %add
  %xor9 = xor i128 %xor7, %sub4
  %xor12 = xor i128 %xor9, %shr8
  store i128 %xor12, ptr %agg.result, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @sdiv128(ptr dead_on_unwind noalias writable writeonly sret(i128) align 8 captures(none) initializes((0, 16)) %agg.result, ptr dead_on_return noundef readonly captures(none) %0, ptr dead_on_return noundef readonly captures(none) %1) local_unnamed_addr #0 {
entry:
  %a = load i128, ptr %0, align 8, !tbaa !10
  %b = load i128, ptr %1, align 8, !tbaa !10
  %a.frozen = freeze i128 %a
  %b.frozen = freeze i128 %b
  %div = sdiv i128 %a.frozen, %b.frozen
  %2 = mul i128 %div, %b.frozen
  %rem.decomposed = sub i128 %a.frozen, %2
  %add = add i128 %rem.decomposed, %div
  store i128 %add, ptr %agg.result, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @udiv128(ptr dead_on_unwind noalias writable writeonly sret(i128) align 8 captures(none) initializes((0, 16)) %agg.result, ptr dead_on_return noundef readonly captures(none) %0, ptr dead_on_return noundef readonly captures(none) %1) local_unnamed_addr #0 {
entry:
  %a = load i128, ptr %0, align 8, !tbaa !10
  %b = load i128, ptr %1, align 8, !tbaa !10
  %a.frozen = freeze i128 %a
  %b.frozen = freeze i128 %b
  %div = udiv i128 %a.frozen, %b.frozen
  %2 = mul i128 %div, %b.frozen
  %rem.decomposed = sub i128 %a.frozen, %2
  %xor = xor i128 %rem.decomposed, %div
  store i128 %xor, ptr %agg.result, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @mix112(ptr dead_on_unwind noalias writable writeonly sret(i128) align 8 captures(none) initializes((0, 16)) %agg.result, ptr dead_on_return noundef readonly captures(none) %0, ptr dead_on_return noundef readonly captures(none) %1, i32 noundef %sh) local_unnamed_addr #0 {
entry:
  %2 = load i128, ptr %0, align 8, !tbaa !12
  %a = trunc i128 %2 to i112
  %3 = load i128, ptr %1, align 8, !tbaa !12
  %b = trunc i128 %3 to i112
  %mul = mul i112 %b, %a
  %sh_prom = zext nneg i32 %sh to i112
  %shr = ashr i112 %a, %sh_prom
  %div = sdiv i32 %sh, 2
  %sh_prom6 = zext nneg i32 %div to i112
  %shl = shl i112 %b, %sh_prom6
  %shr9 = ashr i112 %b, 60
  %or = or i112 %shr9, 1
  %div10 = sdiv i112 %a, %or
  %or14 = or i112 %b, 1
  %rem = srem i112 %a, %or14
  %add = add i112 %div10, %shr
  %sub = add i112 %add, %mul
  %add11 = sub i112 %sub, %shl
  %add15 = add nsw i112 %add11, %rem
  %storedv16 = sext i112 %add15 to i128
  store i128 %storedv16, ptr %agg.result, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local void @mix96(ptr dead_on_unwind noalias writable writeonly sret(i128) align 8 captures(none) initializes((0, 16)) %agg.result, ptr dead_on_return noundef readonly captures(none) %0, ptr dead_on_return noundef readonly captures(none) %1) local_unnamed_addr #0 {
entry:
  %2 = load i128, ptr %0, align 8, !tbaa !14
  %a = trunc i128 %2 to i96
  %3 = load i128, ptr %1, align 8, !tbaa !14
  %b = trunc i128 %3 to i96
  %mul = mul i96 %b, %a
  %shr = ashr i96 %a, 50
  %or = or i96 %b, 1
  %div = sdiv i96 %a, %or
  %sub = sub i96 %div, %shr
  %add = add i96 %sub, %mul
  %storedv7 = sext i96 %add to i128
  store i128 %storedv7, ptr %agg.result, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none)
define dso_local zeroext i48 @mix48(i48 noundef zeroext %a, i48 noundef signext %b, i32 noundef %sh) local_unnamed_addr #1 {
entry:
  %mul = mul i48 %b, %a
  %sh_prom = zext nneg i32 %sh to i48
  %shr = ashr i48 %b, %sh_prom
  %or = or i48 %b, 1
  %div = udiv i48 %a, %or
  %rem = srem i48 %b, 1000
  %add = add i48 %rem, %mul
  %add6 = add i48 %add, %shr
  %add8 = add i48 %add6, %div
  ret i48 %add8
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none)
define dso_local i32 @main() local_unnamed_addr #2 {
entry:
  %tmp2 = alloca i128, align 8
  %byval-temp = alloca i128, align 8
  %byval-temp3 = alloca i128, align 8
  %tmp9 = alloca i128, align 8
  %byval-temp10 = alloca i128, align 8
  %byval-temp11 = alloca i128, align 8
  %tmp20 = alloca i128, align 8
  %byval-temp21 = alloca i128, align 8
  %byval-temp22 = alloca i128, align 8
  %tmp35 = alloca i128, align 8
  %byval-temp36 = alloca i128, align 8
  %byval-temp38 = alloca i128, align 8
  %tmp48 = alloca i128, align 8
  %byval-temp49 = alloca i128, align 8
  %byval-temp51 = alloca i128, align 8
  %s.promoted = load i64, ptr @s, align 8, !tbaa !16
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  store i64 %xor3.i, ptr @s, align 8, !tbaa !16
  ret i32 %add97

for.body:                                         ; preds = %entry, %for.body
  %h.0213 = phi i32 [ 0, %entry ], [ %add97, %for.body ]
  %i.0212 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %xor3.i210211 = phi i64 [ %s.promoted, %entry ], [ %xor3.i, %for.body ]
  %shl.i.i = shl i64 %xor3.i210211, 13
  %xor.i.i = xor i64 %shl.i.i, %xor3.i210211
  %shr.i.i = lshr i64 %xor.i.i, 7
  %xor1.i.i = xor i64 %shr.i.i, %xor.i.i
  %shl2.i.i = shl i64 %xor1.i.i, 17
  %xor3.i.i = xor i64 %shl2.i.i, %xor1.i.i
  %conv.i = zext i64 %xor3.i.i to i128
  %shl.i = shl nuw i128 %conv.i, 64
  %shl.i3.i = shl i64 %xor3.i.i, 13
  %xor.i4.i = xor i64 %shl.i3.i, %xor3.i.i
  %shr.i5.i = lshr i64 %xor.i4.i, 7
  %xor1.i6.i = xor i64 %shr.i5.i, %xor.i4.i
  %shl2.i7.i = shl i64 %xor1.i6.i, 17
  %xor3.i8.i = xor i64 %shl2.i7.i, %xor1.i6.i
  %conv2.i = zext i64 %xor3.i8.i to i128
  %or.i = or disjoint i128 %shl.i, %conv2.i
  %shl.i.i134 = shl i64 %xor3.i8.i, 13
  %xor.i.i135 = xor i64 %shl.i.i134, %xor3.i8.i
  %shr.i.i136 = lshr i64 %xor.i.i135, 7
  %xor1.i.i137 = xor i64 %shr.i.i136, %xor.i.i135
  %shl2.i.i138 = shl i64 %xor1.i.i137, 17
  %xor3.i.i139 = xor i64 %shl2.i.i138, %xor1.i.i137
  %conv.i140 = zext i64 %xor3.i.i139 to i128
  %shl.i141 = shl nuw i128 %conv.i140, 64
  %shl.i3.i142 = shl i64 %xor3.i.i139, 13
  %xor.i4.i143 = xor i64 %shl.i3.i142, %xor3.i.i139
  %shr.i5.i144 = lshr i64 %xor.i4.i143, 7
  %xor1.i6.i145 = xor i64 %shr.i5.i144, %xor.i4.i143
  %shl2.i7.i146 = shl i64 %xor1.i6.i145, 17
  %xor3.i8.i147 = xor i64 %shl2.i7.i146, %xor1.i6.i145
  %conv2.i148 = zext i64 %xor3.i8.i147 to i128
  %or.i149 = or disjoint i128 %shl.i141, %conv2.i148
  %or = or i128 %or.i149, 1
  %shl.i150 = shl i64 %xor3.i8.i147, 13
  %xor.i = xor i64 %shl.i150, %xor3.i8.i147
  %shr.i = lshr i64 %xor.i, 7
  %xor1.i = xor i64 %shr.i, %xor.i
  %shl2.i = shl i64 %xor1.i, 17
  %xor3.i = xor i64 %shl2.i, %xor1.i
  %0 = trunc i64 %xor1.i to i32
  %conv = and i32 %0, 127
  %mul = mul i32 %h.0213, 33
  call void @llvm.lifetime.start.p0(ptr nonnull %byval-temp) #4
  store i128 %or.i, ptr %byval-temp, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %byval-temp3) #4
  store i128 %or, ptr %byval-temp3, align 8, !tbaa !10
  call void @mix128(ptr dead_on_unwind nonnull writable sret(i128) align 8 %tmp2, ptr dead_on_return noundef nonnull %byval-temp, ptr dead_on_return noundef nonnull %byval-temp3, i32 noundef %conv) #5
  %1 = load i128, ptr %tmp2, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %byval-temp) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %byval-temp3) #4
  %conv.i151 = trunc i128 %1 to i32
  %shr.i152 = lshr i128 %1, 32
  %mul.1.i = mul i32 %conv.i151, 31
  %conv.1.i = trunc i128 %shr.i152 to i32
  %add.1.i = add i32 %mul.1.i, %conv.1.i
  %shr.1.i = lshr i128 %1, 64
  %mul.2.i = mul i32 %add.1.i, 31
  %conv.2.i = trunc i128 %shr.1.i to i32
  %add.2.i = add i32 %mul.2.i, %conv.2.i
  %shr.2.i = lshr i128 %1, 96
  %mul.3.i = mul i32 %add.2.i, 31
  %conv.3.i = trunc nuw i128 %shr.2.i to i32
  %add.3.i = add i32 %mul, %conv.3.i
  %add = add i32 %add.3.i, %mul.3.i
  %mul6 = mul i32 %add, 33
  %mul7 = mul nuw nsw i32 %i.0212, 3
  %sh_prom = zext nneg i32 %mul7 to i128
  %shr = lshr i128 %or, %sh_prom
  %or8 = or i128 %shr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %byval-temp10) #4
  store i128 %or.i, ptr %byval-temp10, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %byval-temp11) #4
  store i128 %or8, ptr %byval-temp11, align 8, !tbaa !10
  call void @sdiv128(ptr dead_on_unwind nonnull writable sret(i128) align 8 %tmp9, ptr dead_on_return noundef nonnull %byval-temp10, ptr dead_on_return noundef nonnull %byval-temp11) #5
  %2 = load i128, ptr %tmp9, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %byval-temp10) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %byval-temp11) #4
  %conv.i154 = trunc i128 %2 to i32
  %shr.i155 = lshr i128 %2, 32
  %mul.1.i156 = mul i32 %conv.i154, 31
  %conv.1.i157 = trunc i128 %shr.i155 to i32
  %add.1.i158 = add i32 %mul.1.i156, %conv.1.i157
  %shr.1.i159 = lshr i128 %2, 64
  %mul.2.i160 = mul i32 %add.1.i158, 31
  %conv.2.i161 = trunc i128 %shr.1.i159 to i32
  %add.2.i162 = add i32 %mul.2.i160, %conv.2.i161
  %shr.2.i163 = lshr i128 %2, 96
  %mul.3.i164 = mul i32 %add.2.i162, 31
  %conv.3.i165 = trunc nuw i128 %shr.2.i163 to i32
  %add.3.i166 = add i32 %mul6, %conv.3.i165
  %add14 = add i32 %add.3.i166, %mul.3.i164
  %mul15 = mul i32 %add14, 33
  call void @llvm.lifetime.start.p0(ptr nonnull %byval-temp21) #4
  store i128 %or.i, ptr %byval-temp21, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %byval-temp22) #4
  store i128 %or8, ptr %byval-temp22, align 8, !tbaa !10
  call void @udiv128(ptr dead_on_unwind nonnull writable sret(i128) align 8 %tmp20, ptr dead_on_return noundef nonnull %byval-temp21, ptr dead_on_return noundef nonnull %byval-temp22) #5
  %3 = load i128, ptr %tmp20, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %byval-temp21) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %byval-temp22) #4
  %conv.i168 = trunc i128 %3 to i32
  %shr.i169 = lshr i128 %3, 32
  %mul.1.i170 = mul i32 %conv.i168, 31
  %conv.1.i171 = trunc i128 %shr.i169 to i32
  %add.1.i172 = add i32 %mul.1.i170, %conv.1.i171
  %shr.1.i173 = lshr i128 %3, 64
  %mul.2.i174 = mul i32 %add.1.i172, 31
  %conv.2.i175 = trunc i128 %shr.1.i173 to i32
  %add.2.i176 = add i32 %mul.2.i174, %conv.2.i175
  %shr.2.i177 = lshr i128 %3, 96
  %mul.3.i178 = mul i32 %add.2.i176, 31
  %conv.3.i179 = trunc nuw i128 %shr.2.i177 to i32
  %add.3.i180 = add i32 %mul15, %conv.3.i179
  %add25 = add i32 %add.3.i180, %mul.3.i178
  %conv26 = trunc i128 %or.i to i112
  %storedv = sext i112 %conv26 to i128
  %mul27 = shl nuw nsw i32 %i.0212, 1
  %sh_prom28 = zext nneg i32 %mul27 to i128
  %shr29 = lshr i128 %or, %sh_prom28
  %conv30 = trunc i128 %shr29 to i112
  %storedv31 = sext i112 %conv30 to i128
  %mul32 = mul i32 %add25, 33
  %rem34.urem = add nsw i32 %conv, -112
  %rem34.cmp = icmp samesign ult i32 %conv, 112
  %rem34 = select i1 %rem34.cmp, i32 %conv, i32 %rem34.urem
  call void @llvm.lifetime.start.p0(ptr nonnull %byval-temp36) #4
  store i128 %storedv, ptr %byval-temp36, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %byval-temp38) #4
  store i128 %storedv31, ptr %byval-temp38, align 8, !tbaa !12
  call void @mix112(ptr dead_on_unwind nonnull writable sret(i128) align 8 %tmp35, ptr dead_on_return noundef nonnull %byval-temp36, ptr dead_on_return noundef nonnull %byval-temp38, i32 noundef %rem34) #5
  %4 = load i128, ptr %tmp35, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %byval-temp36) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %byval-temp38) #4
  %5 = shl i128 %4, 16
  %conv41 = ashr exact i128 %5, 16
  %conv.i182 = trunc i128 %4 to i32
  %shr.i183 = lshr i128 %4, 32
  %mul.1.i184 = mul i32 %conv.i182, 31
  %conv.1.i185 = trunc i128 %shr.i183 to i32
  %add.1.i186 = add i32 %mul.1.i184, %conv.1.i185
  %shr.1.i187 = lshr i128 %4, 64
  %mul.2.i188 = mul i32 %add.1.i186, 31
  %conv.2.i189 = trunc i128 %shr.1.i187 to i32
  %add.2.i190 = add i32 %mul.2.i188, %conv.2.i189
  %shr.2.i191 = lshr i128 %conv41, 96
  %mul.3.i192 = mul i32 %add.2.i190, 31
  %conv.3.i193 = trunc nuw i128 %shr.2.i191 to i32
  %add.3.i194 = add i32 %mul32, %conv.3.i193
  %add44 = add i32 %add.3.i194, %mul.3.i192
  %mul45 = mul i32 %add44, 33
  %conv46 = trunc i128 %or.i to i96
  %conv47 = trunc i128 %or to i96
  call void @llvm.lifetime.start.p0(ptr nonnull %byval-temp49) #4
  %storedv50 = sext i96 %conv46 to i128
  store i128 %storedv50, ptr %byval-temp49, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %byval-temp51) #4
  %storedv52 = sext i96 %conv47 to i128
  store i128 %storedv52, ptr %byval-temp51, align 8, !tbaa !14
  call void @mix96(ptr dead_on_unwind nonnull writable sret(i128) align 8 %tmp48, ptr dead_on_return noundef nonnull %byval-temp49, ptr dead_on_return noundef nonnull %byval-temp51) #5
  %6 = load i128, ptr %tmp48, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %byval-temp49) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %byval-temp51) #4
  %7 = shl i128 %6, 32
  %conv54 = ashr exact i128 %7, 32
  %conv.i196 = trunc i128 %6 to i32
  %shr.i197 = lshr i128 %6, 32
  %mul.1.i198 = mul i32 %conv.i196, 31
  %conv.1.i199 = trunc i128 %shr.i197 to i32
  %add.1.i200 = add i32 %mul.1.i198, %conv.1.i199
  %shr.1.i201 = lshr i128 %6, 64
  %mul.2.i202 = mul i32 %add.1.i200, 31
  %conv.2.i203 = trunc i128 %shr.1.i201 to i32
  %add.2.i204 = add i32 %mul.2.i202, %conv.2.i203
  %shr.2.i205 = lshr i128 %conv54, 96
  %mul.3.i206 = mul i32 %add.2.i204, 31
  %conv.3.i207 = trunc nuw i128 %shr.2.i205 to i32
  %add.3.i208 = add i32 %mul45, %conv.3.i207
  %add57 = add i32 %add.3.i208, %mul.3.i206
  %mul58 = mul i32 %add57, 33
  %conv59 = trunc i64 %xor3.i8.i to i48
  %conv60 = trunc i128 %or to i48
  %rem61.lhs.trunc = trunc nuw nsw i32 %conv to i8
  %rem61209 = urem i8 %rem61.lhs.trunc, 48
  %rem61.zext = zext nneg i8 %rem61209 to i32
  %call62 = tail call zeroext i48 @mix48(i48 noundef zeroext %conv59, i48 noundef signext %conv60, i32 noundef %rem61.zext) #5
  %conv63 = trunc i48 %call62 to i32
  %cmp65 = icmp ult i128 %or.i, %or
  %conv66 = zext i1 %cmp65 to i32
  %cmp67 = icmp slt i128 %or.i, %or
  %mul69 = select i1 %cmp67, i32 2, i32 0
  %cmp73.not = icmp slt i112 %conv26, %conv30
  %mul75 = select i1 %cmp73.not, i32 0, i32 4
  %cmp79 = icmp sgt i96 %conv46, %conv47
  %mul81 = select i1 %cmp79, i32 8, i32 0
  %8 = ashr i128 %shl.i, 120
  %conv85 = trunc nsw i128 %8 to i32
  %conv91 = trunc i64 %xor3.i.i to i32
  %conv95 = trunc i128 %shr29 to i32
  %add64 = add i32 %conv85, %conv91
  %add82 = add i32 %add64, %conv66
  %add70 = add i32 %add82, %mul69
  %add86 = add i32 %add70, %conv95
  %add76 = add i32 %add86, %mul81
  %add87 = add i32 %add76, %mul75
  %add96 = add i32 %add87, %conv63
  %add97 = add i32 %add96, %mul58
  %inc = add nuw nsw i32 %i.0212, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: readwrite) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem0: none, target_mem1: none) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+f,+i,+m,+zicsr,+zmmul,-a,-b,-c,-d,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvisni,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvbc32e,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvqdotq,-h,-q,-relax,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smnpm,-smrnmi,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-sspm,-ssqosid,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-svvptc,-v,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcalculet,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-za64rs,-zaamo,-zabha,-zacas,-zalasr,-zalrsc,-zama16b,-zawrs,-zba,-zbb,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zca,-zcb,-zcd,-zce,-zcf,-zclsd,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zic64b,-zicbom,-zicbop,-zicboz,-ziccamoa,-ziccamoc,-ziccif,-zicclsm,-ziccrse,-zicntr,-zicond,-zifencei,-zihintntl,-zihintpause,-zihpm,-zilsd,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-ztso,-zvbb,-zvbc,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

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
!11 = !{!"_BitInt(128)", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"_BitInt(112)", !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"_BitInt(96)", !8, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long long", !8, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
