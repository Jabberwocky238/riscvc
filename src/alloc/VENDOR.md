# src/alloc：regalloc2 的内化副本

## 来历

| | |
|---|---|
| 上游 | <https://github.com/bytecodealliance/regalloc2> |
| 版本 | tag `v0.15.2`，提交 `2fe490bc9dda433f70c54f90f7633ed929f693d9` |
| 许可 | Apache-2.0 WITH LLVM-exception（见本目录 `LICENSE`）；`ion/` 的若干文件源自 Mozilla IonMonkey 的 `BacktrackingAllocator`，文件头注释已原样保留 |
| 核对 | 该 tag 的 `src/` 与我们原先依赖的 crates.io 包 `regalloc2-0.15.2` 的 `src/` **逐文件相同**（`diff -rq` 无输出） |

## 为什么内化

拷贝合并卡在上游：0.15.2 **没有** `is_move`、没有外部 reg hint、没有 rematerialization，
而 bundle merging 只认 `OperandConstraint::Reuse` 与块参数两条。上游自己挂着
[issue #265](https://github.com/bytecodealliance/regalloc2/issues/265)（分配结果在破坏性操作周围产生多余搬运），
没有修。实测我们 O2 的体积比 llc 多 14%，其中 `mv` 一项占 60%（core.O2）。

要动策略就得能改它，所以搬进来。

## 对上游源码做了什么

⛔ **只有下面四条，全是机械改写。** 改策略是以后的事，到时每一条都要记到这里，
否则再也没法跟上游对账。

1. `lib.rs` → `mod.rs`：去掉 `#![no_std]` 与 `extern crate std / alloc`，加模块文档，
   并补两行名字：
   - `pub(crate) use ::alloc;` —— 上游是 2018 edition，内部一律写 `crate::alloc::…` 指
     `alloc` 这个 extern crate；搬成模块后 `crate` 变成了 riscvc，把名字补回来。
   - `pub(crate) use crate::define_index;` —— 该宏带 `#[macro_export]`，落在 crate 根。
2. 全局 `crate::` → `crate::regalloc::`（59 处）。模块名是 `regalloc` 而不是 `alloc`，
   因为 crate 根已有 `extern crate alloc`，同名会让搬来的每一句 `use alloc::…` 变歧义。
3. 四处 `unsafe fn` 体内补 `unsafe { }`（`impl Allocator for Bump`）：riscvc 是 edition 2024，
   `unsafe_op_in_unsafe_fn` 不再默认放行。安全契约原样转发给内层分配器，语义不变。
4. 一条都没删：`fuzzing/`、`serialize.rs`、`fastalloc/` 原样留着（各自的 `cfg` 本来就关着）。
   `checker.rs` **特意保留**——内化之后上游的 fuzzing 不再兜底，它是唯一的自检。

5. `Stats` 加 `moves_by_prio: [usize; 6]`，在 `InsertedMoves::push` 处按
   `InsertMovePrio` 计数，`ion/mod.rs::run` 收尾时拷进 `Output.stats`。
   **这是内化的第一个实际收益**：「这条 `mv` 为什么存在」上游不往外给，
   而它正是 O2 体积缺口的拆解依据。riscvc 侧经 `codegen::Observer` 注入式取用。

   ⚠ 顺带发现上游的死字段：`splits_clobbers` / `splits_hot` / `splits_conflicts` /
   `splits_defs` / `splits_all` 声明了但**一次都不写**，只有 `splits` 是活的。⛔ 别读。

6. `Stats` 加拆分起因（`split_conflict` / `split_pressure` / `split_minimal`）与
   `bparam_merge: [usize; 6]`（块参数合并的成败与失败原因），各在 `ion/process.rs`
   的两个 `split_and_requeue_bundle` 调用点、`split_into_minimal_bundles` 入口、
   以及 `ion/merge.rs` 的五个 `return false` 与块参数那一轮的调用点计数。
   `Ctx` 随之多一个 `in_blockparam_merge: bool`（只为把失败原因限定在那一轮）。
7. `Function` trait 加 `fn is_rematerializable(&self, vreg) -> bool`，缺省 `false`。
   上游设计过 rematerialization（issue #8）但 0.15.2 一行都没实现；这里**只用于统计**
   （`ion/moves.rs` 的段间接缝处记 `seam_rematerializable`），⛔ 没有任何变换读它。

上游的三个 feature（`enable-serde` / `trace-log` / `fuzzing`）riscvc 不声明，
在根 `Cargo.toml` 的 `[lints.rust] unexpected_cfgs` 里登记为已知值。

## 怎么跟上游

```bash
git clone https://github.com/bytecodealliance/regalloc2.git /tmp/ra2
cd /tmp/ra2 && git diff v0.15.2 <新 tag> -- src/   # 看上游改了什么
```
再把改动手工并进来。**本地改动少，就是为了这一步能一直做得动。**

## 验收

搬进来当天：`riscvc llc` 对 `tests/fixtures/rust/` 的四份语料
（compiler_builtins / core × O0 / O2，共 40 万行汇编）输出**逐字节相同**。
