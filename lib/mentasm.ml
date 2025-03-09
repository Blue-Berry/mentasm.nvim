open Core
open Async
open Vcaml
module Asm = Asm

type state =
  | Prod
  | Test of { time_source : Time_source.Read_write.t }

let register_callback_to_auto_command
      client
      (callback : run_in_background:_ -> client:'b Client.t -> unit Deferred.Or_error.t)
  =
  let open Deferred.Or_error.Let_syntax in
  let%bind group = Autocmd.Group.create [%here] client "mentasm" in
  let events = Nonempty_list.return Autocmd.Event.CursorMoved in
  Autocmd.create
    [%here]
    client
    ~description:"test"
    ~once:false
    ~group
    ~patterns_or_buffer:(Patterns [ "*" ])
    ~events
    (Ocaml_from_nvim.Callback.anon_rpc callback)
;;

let asm =
  {|
	.file ""
	.section .rodata.cst16,"aM",@progbits,16
	.align	16
caml_negf_mask:
	.quad	0x8000000000000000
	.quad	0
	.align	16
caml_absf_mask:
	.quad	0x7fffffffffffffff
	.quad	-1
	.data
	.globl	camlLqtree.data_begin
camlLqtree.data_begin:
	.text
	.globl	camlLqtree.code_begin
camlLqtree.code_begin:
	.data
	.align	8
	.data
	.align	8
	.quad	3063
	.globl	camlLqtree__to_index_1517
camlLqtree__to_index_1517:
	.globl	camlLqtree.to_index_442_closure
camlLqtree.to_index_442_closure:
	.quad	camlLqtree.to_index_442
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__to_bbox_2529
camlLqtree__to_bbox_2529:
	.globl	camlLqtree.to_bbox_407_closure
camlLqtree.to_bbox_407_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.to_bbox_407
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__subdivide_leaf_2545
camlLqtree__subdivide_leaf_2545:
	.globl	camlLqtree.subdivide_leaf_962_closure
camlLqtree.subdivide_leaf_962_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.subdivide_leaf_962
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__subdivide_2542
camlLqtree__subdivide_2542:
	.globl	camlLqtree.subdivide_859_closure
camlLqtree.subdivide_859_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.subdivide_859
	.data
	.align	8
	.quad	3063
	.globl	camlLqtree__size_1516
camlLqtree__size_1516:
	.globl	camlLqtree.size_360_closure
camlLqtree.size_360_closure:
	.quad	camlLqtree.size_360
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
	.globl	camlLqtree__sexp_of_t_2538
camlLqtree__sexp_of_t_2538:
	.globl	camlLqtree.sexp_of_t_766_closure
camlLqtree.sexp_of_t_766_closure:
	.quad	camlLqtree.sexp_of_t_766
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
	.globl	camlLqtree__sexp_of_t_2530
camlLqtree__sexp_of_t_2530:
	.globl	camlLqtree.sexp_of_t_485_closure
camlLqtree.sexp_of_t_485_closure:
	.quad	camlLqtree.sexp_of_t_485
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
	.globl	camlLqtree__sexp_of_t_1511
camlLqtree__sexp_of_t_1511:
	.globl	camlLqtree.sexp_of_t_178_closure
camlLqtree.sexp_of_t_178_closure:
	.quad	camlLqtree.sexp_of_t_178
	.quad	0x100000000000005
	.data
	.align	8
	.quad	7159
	.globl	camlLqtree__sexp_of_centroid_1507
camlLqtree__sexp_of_centroid_1507:
	.globl	camlLqtree.sexp_of_centroid_88_closure
camlLqtree.sexp_of_centroid_88_closure:
	.quad	camlLqtree.sexp_of_centroid_88
	.quad	0x10000000000000d
	.quad	3321
	.globl	camlLqtree.sexp_of_centroid_110_closure
camlLqtree.sexp_of_centroid_110_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.sexp_of_centroid_110
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__populate_2554
camlLqtree__populate_2554:
	.globl	camlLqtree.populate_1388_closure
camlLqtree.populate_1388_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.populate_1388
	.data
	.align	8
	.quad	3063
	.globl	camlLqtree__of_index_1518
camlLqtree__of_index_1518:
	.globl	camlLqtree.of_index_453_closure
camlLqtree.of_index_453_closure:
	.quad	camlLqtree.of_index_453
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
	.globl	camlLqtree__node_type_1521
camlLqtree__node_type_1521:
	.globl	camlLqtree.node_type_591_closure
camlLqtree.node_type_591_closure:
	.quad	camlLqtree.node_type_591
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__node_check_2548
camlLqtree__node_check_2548:
	.globl	camlLqtree.node_check_1076_closure
camlLqtree.node_check_1076_closure:
	.quad	caml_curry3
	.quad	0x300000000000007
	.quad	camlLqtree.node_check_1076
	.data
	.align	8
	.quad	3063
	.globl	camlLqtree__new_t_2539
camlLqtree__new_t_2539:
	.globl	camlLqtree.new_t_821_closure
camlLqtree.new_t_821_closure:
	.quad	camlLqtree.new_t_821
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__new_node_1520
camlLqtree__new_node_1520:
	.globl	camlLqtree.new_node_579_closure
camlLqtree.new_node_579_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.new_node_579
	.data
	.align	8
	.quad	3063
	.globl	camlLqtree__midy_1515
camlLqtree__midy_1515:
	.globl	camlLqtree.midy_331_closure
camlLqtree.midy_331_closure:
	.quad	camlLqtree.midy_331
	.quad	0x100000000000005
	.data
	.align	8
	.quad	3063
	.globl	camlLqtree__midx_1514
camlLqtree__midx_1514:
	.globl	camlLqtree.midx_302_closure
camlLqtree.midx_302_closure:
	.quad	camlLqtree.midx_302
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__insert_2551
camlLqtree__insert_2551:
	.globl	camlLqtree.insert_1233_closure
camlLqtree.insert_1233_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.insert_1233
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__get_node_1522
camlLqtree__get_node_1522:
	.globl	camlLqtree.get_node_788_closure
camlLqtree.get_node_788_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.get_node_788
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__equal_2531
camlLqtree__equal_2531:
	.globl	camlLqtree.equal_615_closure
camlLqtree.equal_615_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.equal_615
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__contains_point_1513
camlLqtree__contains_point_1513:
	.globl	camlLqtree.contains_point_273_closure
camlLqtree.contains_point_273_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.contains_point_273
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__contains_2528
camlLqtree__contains_2528:
	.globl	camlLqtree.contains_378_closure
camlLqtree.contains_378_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.contains_378
	.data
	.align	8
	.quad	3063
	.globl	camlLqtree__clear_2555
camlLqtree__clear_2555:
	.globl	camlLqtree.clear_1415_closure
camlLqtree.clear_1415_closure:
	.quad	camlLqtree.clear_1415
	.quad	0x100000000000005
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__centroid_sum_1509
camlLqtree__centroid_sum_1509:
	.globl	camlLqtree.centroid_sum_120_closure
camlLqtree.centroid_sum_120_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.centroid_sum_120
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__build_qtree_in_2553
camlLqtree__build_qtree_in_2553:
	.globl	camlLqtree.build_qtree_in_1357_closure
camlLqtree.build_qtree_in_1357_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.build_qtree_in_1357
	.data
	.align	8
	.quad	4087
	.globl	camlLqtree__acc_by_qtree_2550
camlLqtree__acc_by_qtree_2550:
	.globl	camlLqtree.acc_by_qtree_1116_closure
camlLqtree.acc_by_qtree_1116_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.acc_by_qtree_1116
	.data
	.align	8
	.quad	4087
camlLqtree.2:
camlLqtree.iter_4713_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.iter_4713
	.data
	.align	8
	.quad	4087
camlLqtree.1:
camlLqtree.iter_5243_closure:
	.quad	caml_curry2
	.quad	0x200000000000007
	.quad	camlLqtree.iter_5243
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__cond_2562
camlLqtree__cond_2562:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__simplify_fv_2563
camlLqtree__simplify_fv_2563:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__cond_3598
camlLqtree__cond_3598:
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__simplify_fv_3599
camlLqtree__simplify_fv_3599:
	.quad	1
	.data
	.align	8
	.quad	14080
	.globl	camlLqtree__Pmakeblock_1597
camlLqtree__Pmakeblock_1597:
	.quad	camlLqtree__prim_5912
	.quad	camlLqtree.sexp_of_t_766_closure
	.quad	2001
	.quad	camlLqtree.get_node_788_closure
	.quad	camlLqtree.new_t_821_closure
	.quad	camlLqtree.subdivide_859_closure
	.quad	camlLqtree.subdivide_leaf_962_closure
	.quad	camlLqtree.node_check_1076_closure
	.quad	camlLqtree.acc_by_qtree_1116_closure
	.quad	camlLqtree.insert_1233_closure
	.quad	camlLqtree.build_qtree_in_1357_closure
	.quad	camlLqtree.populate_1388_closure
	.quad	camlLqtree.clear_1415_closure
	.data
	.align	8
	.globl	camlLqtree.gc_roots
camlLqtree.gc_roots:
	.quad	camlLqtree__Pmakeblock_1597
	.quad	camlLqtree__simplify_fv_3599
	.quad	camlLqtree__cond_3598
	.quad	camlLqtree__simplify_fv_2563
	.quad	camlLqtree__cond_2562
	.quad	0
	.text
	.align	16
	.globl	camlLqtree.sexp_of_centroid_88
camlLqtree.sexp_of_centroid_88:
	.cfi_startproc
.L100:
	cmpq	(%r14), %r15
	jbe	.L101
.L102:
	movq	8(%rax), %rbx
	movq	(%rax), %rax
	jmp	camlLqtree.sexp_of_centroid_110@PLT
.L101:
	call	caml_call_gc@PLT
.L103:
	jmp	.L102
	.cfi_endproc
	.type camlLqtree.sexp_of_centroid_88,@function
	.size camlLqtree.sexp_of_centroid_88,. - camlLqtree.sexp_of_centroid_88
	.text
	.align	16
	.globl	camlLqtree.iter_4713
camlLqtree.iter_4713:
	.file	1	"list.ml"
	.loc	1	110	13
	.cfi_startproc
	leaq	-344(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L106
.L107:
	subq	$24, %rsp
	.cfi_adjust_cfa_offset 24
.L105:
	testb	$1, %al
	je	.L104
	movl	$1, %eax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	ret
	.cfi_adjust_cfa_offset 24
	.align	4
.L104:
	movq	%rdi, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rax, (%rsp)
	.loc	1	112	4
	movq	(%rax), %rax
	.file	2	"lqtree/lqtree.ml"
	.loc	2	273	38
	movq	8(%rax), %rdi
	.loc	2	273	30
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L108
.L110:
	leaq	8(%r15), %rsi
	movq	$2048, -8(%rsi)
	.loc	2	273	30
	movq	(%rax), %rax
	movq	%rax, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rbx, %rax
	movq	%rsi, %rbx
	.loc	2	274	9
	call	camlLqtree.insert_1233@PLT
.L111:
	movq	(%rsp), %rax
	.loc	1	112	4
	movq	8(%rax), %rax
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rdi
	.loc	1	110	13
	jmp	.L105
.L108:
	call	caml_call_gc@PLT
.L109:
	jmp	.L110
.L106:
	push	$36
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L107
	.cfi_adjust_cfa_offset -24
	.cfi_endproc
	.type camlLqtree.iter_4713,@function
	.size camlLqtree.iter_4713,. - camlLqtree.iter_4713
	.text
	.align	16
	.globl	camlLqtree.iter_5243
camlLqtree.iter_5243:
	.loc	1	110	13
	.cfi_startproc
	leaq	-344(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L114
.L115:
	subq	$24, %rsp
	.cfi_adjust_cfa_offset 24
.L113:
	testb	$1, %al
	je	.L112
	movl	$1, %eax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	ret
	.cfi_adjust_cfa_offset 24
	.align	4
.L112:
	movq	%rdi, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rax, (%rsp)
	.loc	1	112	4
	movq	(%rax), %rax
	.loc	2	264	38
	movq	8(%rax), %rdi
	.loc	2	264	30
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L116
.L118:
	leaq	8(%r15), %rsi
	movq	$2048, -8(%rsi)
	.loc	2	264	30
	movq	(%rax), %rax
	movq	%rax, (%rsi)
	movq	%rdi, 8(%rsi)
	movq	%rbx, %rax
	movq	%rsi, %rbx
	.loc	2	265	9
	call	camlLqtree.insert_1233@PLT
.L119:
	movq	(%rsp), %rax
	.loc	1	112	4
	movq	8(%rax), %rax
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rdi
	.loc	1	110	13
	jmp	.L113
.L116:
	call	caml_call_gc@PLT
.L117:
	jmp	.L118
.L114:
	push	$36
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L115
	.cfi_adjust_cfa_offset -24
	.cfi_endproc
	.type camlLqtree.iter_5243,@function
	.size camlLqtree.iter_5243,. - camlLqtree.iter_5243
	.text
	.align	16
	.globl	camlLqtree.sexp_of_centroid_110
camlLqtree.sexp_of_centroid_110:
	.loc	2	10	0
	.cfi_startproc
	leaq	-336(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L121
.L122:
	subq	$16, %rsp
	.cfi_adjust_cfa_offset 16
.L120:
	movq	%rbx, (%rsp)
	movq	camlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	.file	3	"src/sexp_conv.ml"
	.loc	3	34	28
	movq	(%rbx), %rbx
	.loc	3	34	27
	movq	(%rbx), %rdi
	.loc	3	34	27
	call	*%rdi
.L123:
	.loc	3	34	22
	subq	$16, %r15
	cmpq	(%r14), %r15
	jb	.L124
.L126:
	leaq	8(%r15), %rbx
	movq	%rbx, 8(%rsp)
	movq	$1024, -8(%rbx)
	movq	%rax, (%rbx)
	movq	(%rsp), %rax
	.loc	2	10	16
	movq	8(%rax), %rbx
	.loc	2	10	16
	movq	(%rax), %rax
	.loc	2	10	16
	call	camlNbody.sexp_of_point_216@PLT
.L127:
	.loc	2	10	16
	subq	$64, %r15
	cmpq	(%r14), %r15
	jb	.L128
.L130:
	leaq	8(%r15), %rbx
	.loc	2	10	16
	addq	$40, %rbx
	movq	$2048, -8(%rbx)
	movq	%rax, (%rbx)
	movq	$1, 8(%rbx)
	.loc	2	10	16
	leaq	-24(%rbx), %rdi
	movq	$2048, -8(%rdi)
	movq	8(%rsp), %rax
	movq	%rax, (%rdi)
	movq	%rbx, 8(%rdi)
	.loc	2	10	16
	leaq	-16(%rdi), %rax
	movq	$1025, -8(%rax)
	movq	%rdi, (%rax)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	ret
	.cfi_adjust_cfa_offset 16
.L128:
	call	caml_call_gc@PLT
.L129:
	jmp	.L130
.L124:
	call	caml_call_gc@PLT
.L125:
	jmp	.L126
.L121:
	push	$35
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L122
	.cfi_adjust_cfa_offset -16
	.cfi_endproc
	.type camlLqtree.sexp_of_centroid_110,@function
	.size camlLqtree.sexp_of_centroid_110,. - camlLqtree.sexp_of_centroid_110
	.text
	.align	16
	.globl	camlLqtree.centroid_sum_120
camlLqtree.centroid_sum_120:
	.loc	2	12	17
	.cfi_startproc
	.loc	2	15	6
	.loc	2	15	6
.L131:
	.loc	2	15	6
	movq	(%rbx), %rdi
	.loc	2	14	6
	movq	(%rax), %rsi
	.file	4	"src/owl/maths/owl_maths.ml"
	.loc	4	10	10
	movsd	(%rsi), %xmm0
	movapd	%xmm0, %xmm1
	.loc	4	10	10
	addsd	(%rdi), %xmm1
	.loc	2	15	6
	movq	8(%rbx), %rbx
	.file	5	"nbody/nbody.ml"
	.loc	5	21	24
	movq	8(%rbx), %rsi
	.loc	5	21	24
	movq	(%rbx), %rbx
	.loc	2	14	6
	movq	8(%rax), %rax
	.loc	5	21	24
	movq	8(%rax), %rdx
	.loc	5	21	24
	movq	(%rax), %rax
	movsd	.L132(%rip), %xmm2
	.loc	4	16	10
	divsd	%xmm1, %xmm2
	.loc	4	14	10
	subq	$96, %r15
	cmpq	(%r14), %r15
	jb	.L133
.L135:
	leaq	8(%r15), %rcx
	.loc	4	14	10
	addq	$80, %rcx
	movq	$1277, -8(%rcx)
	.loc	4	14	10
	movsd	(%rdi), %xmm3
	movapd	%xmm3, %xmm4
	.loc	4	14	10
	mulsd	(%rsi), %xmm4
	movapd	%xmm0, %xmm5
	.loc	4	14	10
	mulsd	(%rdx), %xmm5
	.loc	4	10	10
	addsd	%xmm4, %xmm5
	movapd	%xmm2, %xmm4
	.loc	4	14	10
	mulsd	%xmm5, %xmm4
	movsd	%xmm4, (%rcx)
	.loc	4	14	10
	leaq	-16(%rcx), %rdi
	movq	$1277, -8(%rdi)
	.loc	4	14	10
	mulsd	(%rbx), %xmm3
	.loc	4	14	10
	mulsd	(%rax), %xmm0
	.loc	4	10	10
	addsd	%xmm3, %xmm0
	.loc	4	14	10
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, (%rdi)
	.loc	5	21	48
	leaq	-24(%rdi), %rbx
	movq	$2048, -8(%rbx)
	movq	%rdi, (%rbx)
	movq	%rcx, 8(%rbx)
	.loc	4	10	10
	leaq	-16(%rbx), %rdi
	movq	$1277, -8(%rdi)
	movsd	%xmm1, (%rdi)
	.loc	2	17	2
	leaq	-24(%rdi), %rax
	movq	$2048, -8(%rax)
	movq	%rdi, (%rax)
	movq	%rbx, 8(%rax)
	ret
.L133:
	call	caml_call_gc@PLT
.L134:
	jmp	.L135
	.cfi_endproc
	.type camlLqtree.centroid_sum_120,@function
	.size camlLqtree.centroid_sum_120,. - camlLqtree.centroid_sum_120
	.text
	.align	16
	.globl	camlLqtree.sexp_of_t_178
camlLqtree.sexp_of_t_178:
	.loc	2	23	2
	.cfi_startproc
	leaq	-344(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L137
.L138:
	subq	$24, %rsp
	.cfi_adjust_cfa_offset 24
.L136:
	movq	%rax, 16(%rsp)
	.loc	2	23	2
	movsd	24(%rax), %xmm0
	movq	camlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.loc	3	34	28
	movq	(%rax), %rbx
	.loc	2	23	2
	subq	$16, %r15
	cmpq	(%r14), %r15
	jb	.L139
.L141:
	leaq	8(%r15), %rax
	movq	$1277, -8(%rax)
	movsd	%xmm0, (%rax)
	.loc	3	34	27
	movq	(%rbx), %rdi
	.loc	3	34	27
	call	*%rdi
.L142:
	.loc	3	34	22
	subq	$120, %r15
	cmpq	(%r14), %r15
	jb	.L143
.L145:
	leaq	8(%r15), %rbx
	.loc	3	34	22
	addq	$104, %rbx
	movq	$1024, -8(%rbx)
	movq	%rax, (%rbx)
	.loc	2	27	6
	leaq	-24(%rbx), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	.loc	2	27	6
	leaq	-24(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	camlLqtree__const_block_193@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rbx)
	movq	%rax, 8(%rbx)
	.loc	2	27	6
	leaq	-16(%rbx), %rax
	movq	$1025, -8(%rax)
	movq	%rbx, (%rax)
	.loc	2	27	6
	leaq	-24(%rax), %rdi
	movq	%rdi, (%rsp)
	movq	$2048, -8(%rdi)
	movq	%rax, (%rdi)
	movq	$1, 8(%rdi)
	movq	16(%rsp), %rax
	.loc	2	23	2
	movsd	16(%rax), %xmm0
	movq	camlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.loc	3	34	28
	movq	(%rax), %rbx
	.loc	2	23	2
	leaq	-16(%rdi), %rax
	movq	$1277, -8(%rax)
	movsd	%xmm0, (%rax)
	.loc	3	34	27
	movq	(%rbx), %rdi
	.loc	3	34	27
	call	*%rdi
.L146:
	.loc	3	34	22
	subq	$120, %r15
	cmpq	(%r14), %r15
	jb	.L147
.L149:
	leaq	8(%r15), %rbx
	.loc	3	34	22
	addq	$104, %rbx
	movq	$1024, -8(%rbx)
	movq	%rax, (%rbx)
	.loc	2	26	6
	leaq	-24(%rbx), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	.loc	2	26	6
	leaq	-24(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	camlLqtree__const_block_214@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rbx)
	movq	%rax, 8(%rbx)
	.loc	2	26	6
	leaq	-16(%rbx), %rax
	movq	$1025, -8(%rax)
	movq	%rbx, (%rax)
	.loc	2	26	6
	leaq	-24(%rax), %rdi
	movq	%rdi, 8(%rsp)
	movq	$2048, -8(%rdi)
	movq	%rax, (%rdi)
	movq	(%rsp), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rsp), %rax
	.loc	2	23	2
	movsd	8(%rax), %xmm0
	movq	camlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.loc	3	34	28
	movq	(%rax), %rbx
	.loc	2	23	2
	leaq	-16(%rdi), %rax
	movq	$1277, -8(%rax)
	movsd	%xmm0, (%rax)
	.loc	3	34	27
	movq	(%rbx), %rdi
	.loc	3	34	27
	call	*%rdi
.L150:
	.loc	3	34	22
	subq	$120, %r15
	cmpq	(%r14), %r15
	jb	.L151
.L153:
	leaq	8(%r15), %rbx
	.loc	3	34	22
	addq	$104, %rbx
	movq	$1024, -8(%rbx)
	movq	%rax, (%rbx)
	.loc	2	25	6
	leaq	-24(%rbx), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	.loc	2	25	6
	leaq	-24(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	camlLqtree__const_block_235@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rbx)
	movq	%rax, 8(%rbx)
	.loc	2	25	6
	leaq	-16(%rbx), %rax
	movq	$1025, -8(%rax)
	movq	%rbx, (%rax)
	.loc	2	25	6
	leaq	-24(%rax), %rdi
	movq	%rdi, (%rsp)
	movq	$2048, -8(%rdi)
	movq	%rax, (%rdi)
	movq	8(%rsp), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rsp), %rax
	.loc	2	23	2
	movsd	(%rax), %xmm0
	movq	camlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.loc	3	34	28
	movq	(%rax), %rbx
	.loc	2	23	2
	leaq	-16(%rdi), %rax
	movq	$1277, -8(%rax)
	movsd	%xmm0, (%rax)
	.loc	3	34	27
	movq	(%rbx), %rdi
	.loc	3	34	27
	call	*%rdi
.L154:
	.loc	3	34	22
	subq	$120, %r15
	cmpq	(%r14), %r15
	jb	.L155
.L157:
	leaq	8(%r15), %rbx
	.loc	3	34	22
	addq	$104, %rbx
	movq	$1024, -8(%rbx)
	movq	%rax, (%rbx)
	.loc	2	24	6
	leaq	-24(%rbx), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	.loc	2	24	6
	leaq	-24(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	camlLqtree__const_block_256@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rbx)
	movq	%rax, 8(%rbx)
	.loc	2	24	6
	leaq	-16(%rbx), %rax
	movq	$1025, -8(%rax)
	movq	%rbx, (%rax)
	.loc	2	24	6
	leaq	-24(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	%rax, (%rbx)
	movq	(%rsp), %rax
	movq	%rax, 8(%rbx)
	.loc	2	23	2
	leaq	-16(%rbx), %rax
	movq	$1025, -8(%rax)
	movq	%rbx, (%rax)
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	ret
	.cfi_adjust_cfa_offset 24
.L155:
	call	caml_call_gc@PLT
.L156:
	jmp	.L157
.L151:
	call	caml_call_gc@PLT
.L152:
	jmp	.L153
.L147:
	call	caml_call_gc@PLT
.L148:
	jmp	.L149
.L143:
	call	caml_call_gc@PLT
.L144:
	jmp	.L145
.L139:
	call	caml_call_gc@PLT
.L140:
	jmp	.L141
.L137:
	push	$36
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L138
	.cfi_adjust_cfa_offset -24
	.cfi_endproc
	.type camlLqtree.sexp_of_t_178,@function
	.size camlLqtree.sexp_of_t_178,. - camlLqtree.sexp_of_t_178
	.text
	.align	16
	.globl	camlLqtree.contains_point_273
camlLqtree.contains_point_273:
	.loc	2	31	21
	.cfi_startproc
	.loc	2	31	22
.L161:
	.loc	2	31	22
	movq	8(%rax), %rdi
	.loc	2	31	22
	movq	(%rax), %rax
	.loc	2	32	4
	movsd	(%rax), %xmm0
	.loc	2	32	4
	movsd	(%rbx), %xmm1
	comisd	%xmm1, %xmm0
	jb	.L158
	.loc	2	32	25
	movsd	16(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jb	.L159
	.loc	2	32	36
	movsd	(%rdi), %xmm0
	.loc	2	32	36
	movsd	8(%rbx), %xmm1
	comisd	%xmm1, %xmm0
	jb	.L160
	.loc	2	32	57
	movsd	24(%rbx), %xmm1
	.loc	2	32	52
	cmplesd	%xmm1, %xmm0
	movd	%xmm0, %rax
	neg	%rax
	.loc	2	32	52
	leaq	1(%rax,%rax), %rax
	ret
	.align	4
.L160:
	movl	$1, %eax
	ret
	.align	4
.L159:
	movl	$1, %eax
	ret
	.align	4
.L158:
	movl	$1, %eax
	ret
	.cfi_endproc
	.type camlLqtree.contains_point_273,@function
	.size camlLqtree.contains_point_273,. - camlLqtree.contains_point_273
	.text
	.align	16
	.globl	camlLqtree.midx_302
camlLqtree.midx_302:
	.loc	2	35	11
	.cfi_startproc
	.loc	2	35	54
	.loc	2	35	54
.L162:
	.loc	2	35	54
	movsd	(%rax), %xmm0
	movsd	.L163(%rip), %xmm1
	.loc	2	35	43
	movsd	16(%rax), %xmm2
	.loc	4	12	10
	subsd	%xmm0, %xmm2
	.loc	4	16	10
	divsd	%xmm1, %xmm2
	.loc	4	10	10
	subq	$16, %r15
	cmpq	(%r14), %r15
	jb	.L164
.L166:
	leaq	8(%r15), %rbx
	movq	$1277, -8(%rbx)
	.loc	4	10	10
	addsd	(%rax), %xmm2
	movsd	%xmm2, (%rbx)
	movq	%rbx, %rax
	ret
.L164:
	call	caml_call_gc@PLT
.L165:
	jmp	.L166
	.cfi_endproc
	.type camlLqtree.midx_302,@function
	.size camlLqtree.midx_302,. - camlLqtree.midx_302
	.text
	.align	16
	.globl	camlLqtree.midy_331
camlLqtree.midy_331:
	.loc	2	36	11
	.cfi_startproc
	.loc	2	36	54
	.loc	2	36	54
.L167:
	.loc	2	36	54
	movsd	8(%rax), %xmm0
	movsd	.L163(%rip), %xmm1
	.loc	2	36	43
	movsd	24(%rax), %xmm2
	.loc	4	12	10
	subsd	%xmm0, %xmm2
	.loc	4	16	10
	divsd	%xmm1, %xmm2
	.loc	4	10	10
	subq	$16, %r15
	cmpq	(%r14), %r15
	jb	.L168
.L170:
	leaq	8(%r15), %rbx
	movq	$1277, -8(%rbx)
	.loc	4	10	10
	addsd	8(%rax), %xmm2
	movsd	%xmm2, (%rbx)
	movq	%rbx, %rax
	ret
.L168:
	call	caml_call_gc@PLT
.L169:
	jmp	.L170
	.cfi_endproc
	.type camlLqtree.midy_331,@function
	.size camlLqtree.midy_331,. - camlLqtree.midy_331
	.text
	.align	16
	.globl	camlLqtree.size_360
camlLqtree.size_360:
	.loc	2	37	11
	.cfi_startproc
	.loc	2	37	41
	.loc	2	37	41
.L171:
	.loc	2	37	41
	movsd	(%rax), %xmm0
	.loc	4	12	10
	subq	$16, %r15
	cmpq	(%r14), %r15
	jb	.L172
.L174:
	leaq	8(%r15), %rbx
	movq	$1277, -8(%rbx)
	.loc	2	37	30
	movsd	16(%rax), %xmm1
	.loc	4	12	10
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx)
	movq	%rbx, %rax
	ret
.L172:
	call	caml_call_gc@PLT
.L173:
	jmp	.L174
	.cfi_endproc
	.type camlLqtree.size_360,@function
	.size camlLqtree.size_360,. - camlLqtree.size_360
	.text
	.align	16
	.globl	camlLqtree.contains_378
camlLqtree.contains_378:
	.loc	2	49	15
	.cfi_startproc
	.loc	2	35	54
.L178:
	.loc	2	35	54
	movsd	(%rbx), %xmm0
	movsd	.L163(%rip), %xmm1
	.loc	2	35	43
	movsd	16(%rbx), %xmm2
	.loc	4	12	10
	subsd	%xmm0, %xmm2
	.loc	4	16	10
	divsd	%xmm1, %xmm2
	.loc	4	10	10
	addsd	(%rbx), %xmm2
	.loc	2	49	16
	movq	(%rax), %rdi
	.loc	2	50	10
	movsd	(%rdi), %xmm0
	.loc	2	50	10
	cmplesd	%xmm2, %xmm0
	movd	%xmm0, %rdi
	neg	%rdi
	.loc	2	50	10
	leaq	1(%rdi,%rdi), %rdi
	.loc	2	36	54
	movsd	8(%rbx), %xmm0
	.loc	2	36	43
	movsd	24(%rbx), %xmm2
	.loc	4	12	10
	subsd	%xmm0, %xmm2
	.loc	4	16	10
	divsd	%xmm1, %xmm2
	.loc	4	10	10
	addsd	8(%rbx), %xmm2
	.loc	2	49	16
	movq	8(%rax), %rax
	.loc	2	50	29
	movsd	(%rax), %xmm0
	.loc	2	50	29
	cmplesd	%xmm2, %xmm0
	movd	%xmm0, %rax
	neg	%rax
	.loc	2	50	29
	leaq	1(%rax,%rax), %rax
	cmpq	$1, %rdi
	je	.L176
	cmpq	$1, %rax
	je	.L177
	movl	$5, %eax
	ret
	.align	4
.L177:
	movl	$1, %eax
	ret
	.align	4
.L176:
	cmpq	$1, %rax
	je	.L175
	movl	$7, %eax
	ret
	.align	4
.L175:
	movl	$3, %eax
	ret
	.cfi_endproc
	.type camlLqtree.contains_378,@function
	.size camlLqtree.contains_378,. - camlLqtree.contains_378
	.text
	.align	16
	.globl	camlLqtree.to_bbox_407
camlLqtree.to_bbox_407:
	.loc	2	57	14
	.cfi_startproc
	.loc	2	35	54
	.loc	2	35	54
.L183:
	.loc	2	35	54
	movsd	(%rbx), %xmm1
	movsd	.L163(%rip), %xmm2
	.loc	2	35	43
	movsd	16(%rbx), %xmm3
	movapd	%xmm3, %xmm0
	.loc	4	12	10
	subsd	%xmm1, %xmm0
	.loc	4	16	10
	divsd	%xmm2, %xmm0
	.loc	4	10	10
	addsd	(%rbx), %xmm0
	.loc	2	36	54
	movsd	8(%rbx), %xmm1
	.loc	2	36	43
	movsd	24(%rbx), %xmm4
	movapd	%xmm4, %xmm5
	.loc	4	12	10
	subsd	%xmm1, %xmm5
	.loc	4	16	10
	divsd	%xmm2, %xmm5
	.loc	4	10	10
	addsd	8(%rbx), %xmm5
	sarq	$1, %rax
	leaq	.L184(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rax, %rdx
	jmp	*%rdx
	.section .rodata
	.align	4
.L184:
	.long	.L182 - .L184
	.long	.L181 - .L184
	.long	.L180 - .L184
	.long	.L179 - .L184
	.text
	.align	4
.L182:
	.loc	2	61	12
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L185
.L187:
	leaq	8(%r15), %rax
	movq	$4350, -8(%rax)
	.loc	2	61	12
	movsd	(%rbx), %xmm1
	movsd	%xmm1, (%rax)
	movsd	%xmm5, 8(%rax)
	movsd	%xmm0, 16(%rax)
	movsd	%xmm4, 24(%rax)
	ret
	.align	4
.L181:
	.loc	2	62	12
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L188
.L190:
	leaq	8(%r15), %rax
	movq	$4350, -8(%rax)
	movsd	%xmm0, (%rax)
	movsd	%xmm5, 8(%rax)
	movsd	%xmm3, 16(%rax)
	movsd	%xmm4, 24(%rax)
	ret
	.align	4
.L180:
	.loc	2	63	12
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L191
.L193:
	leaq	8(%r15), %rax
	movq	$4350, -8(%rax)
	.loc	2	63	12
	movsd	(%rbx), %xmm2
	movsd	%xmm2, (%rax)
	movsd	%xmm1, 8(%rax)
	movsd	%xmm0, 16(%rax)
	movsd	%xmm5, 24(%rax)
	ret
	.align	4
.L179:
	.loc	2	64	12
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L194
.L196:
	leaq	8(%r15), %rax
	movq	$4350, -8(%rax)
	movsd	%xmm0, (%rax)
	movsd	%xmm1, 8(%rax)
	movsd	%xmm3, 16(%rax)
	movsd	%xmm5, 24(%rax)
	ret
.L194:
	call	caml_call_gc@PLT
.L195:
	jmp	.L196
.L191:
	call	caml_call_gc@PLT
.L192:
	jmp	.L193
.L188:
	call	caml_call_gc@PLT
.L189:
	jmp	.L190
.L185:
	call	caml_call_gc@PLT
.L186:
	jmp	.L187
	.cfi_endproc
	.type camlLqtree.to_bbox_407,@function
	.size camlLqtree.to_bbox_407,. - camlLqtree.to_bbox_407
	.text
	.align	16
	.globl	camlLqtree.to_index_442
camlLqtree.to_index_442:
	.loc	2	67	15
	.cfi_startproc
.L197:
	sarq	$1, %rax
	leaq	1(%rax,%rax), %rax
	ret
	.cfi_endproc
	.type camlLqtree.to_index_442,@function
	.size camlLqtree.to_index_442,. - camlLqtree.to_index_442
	.text
	.align	16
	.globl	camlLqtree.of_index_453
camlLqtree.of_index_453:
	.loc	2	75	15
	.cfi_startproc
.L199:
	cmpq	$7, %rax
	jbe	.L198
	movq	camlLqtree__Pmakeblock_3583@GOTPCREL(%rip), %rax
	.file	6	"stdlib.ml"
	.loc	6	29	17
	call	caml_raise_exn@PLT
.L200:
	.align	4
.L198:
	sarq	$1, %rax
	leaq	1(%rax,%rax), %rax
	ret
	.cfi_endproc
	.type camlLqtree.of_index_453,@function
	.size camlLqtree.of_index_453,. - camlLqtree.of_index_453
	.text
	.align	16
	.globl	camlLqtree.sexp_of_t_485
camlLqtree.sexp_of_t_485:
	.loc	2	91	2
	.cfi_startproc
	leaq	-352(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L202
.L203:
	.loc	2	91	2
	subq	$32, %rsp
	.cfi_adjust_cfa_offset 32
	.loc	2	91	2
.L201:
	.loc	2	91	2
	movq	(%rax), %rbx
	movq	%rbx, 24(%rsp)
	.loc	2	91	2
	movq	8(%rax), %rbx
	movq	%rbx, 16(%rsp)
	.loc	2	91	2
	movq	16(%rax), %rbx
	movq	%rbx, (%rsp)
	.loc	2	91	2
	movq	24(%rax), %rax
	.loc	2	95	6
	call	camlLqtree.sexp_of_t_178@PLT
.L204:
	.loc	2	95	6
	subq	$88, %r15
	cmpq	(%r14), %r15
	jb	.L205
.L207:
	leaq	8(%r15), %rbx
	.loc	2	95	6
	addq	$64, %rbx
	movq	$2048, -8(%rbx)
	movq	%rax, (%rbx)
	movq	$1, 8(%rbx)
	.loc	2	95	6
	leaq	-24(%rbx), %rax
	movq	$2048, -8(%rax)
	movq	camlLqtree__const_block_506@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rax)
	movq	%rbx, 8(%rax)
	.loc	2	95	6
	leaq	-16(%rax), %rbx
	movq	$1025, -8(%rbx)
	movq	%rax, (%rbx)
	.loc	2	95	6
	leaq	-24(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	movq	camlStdlib__const_immstring_545@GOTPCREL(%rip), %rdi
	movq	(%rsp), %rsi
	.loc	6	266	2
	movq	caml_format_int@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L208:
	.loc	3	33	20
	subq	$104, %r15
	cmpq	(%r14), %r15
	jb	.L209
.L211:
	leaq	8(%r15), %rbx
	.loc	3	33	20
	addq	$88, %rbx
	movq	$1024, -8(%rbx)
	movq	%rax, (%rbx)
	.loc	2	94	14
	leaq	-24(%rbx), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	.loc	2	94	14
	leaq	-24(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	camlLqtree__const_block_525@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rbx)
	movq	%rax, 8(%rbx)
	.loc	2	94	14
	leaq	-16(%rbx), %rax
	movq	$1025, -8(%rax)
	movq	%rbx, (%rax)
	.loc	2	94	14
	leaq	-24(%rax), %rbx
	movq	%rbx, (%rsp)
	movq	$2048, -8(%rbx)
	movq	%rax, (%rbx)
	movq	8(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	camlStdlib__const_immstring_545@GOTPCREL(%rip), %rdi
	movq	16(%rsp), %rsi
	.loc	6	266	2
	movq	caml_format_int@GOTPCREL(%rip), %rax
	call	caml_c_call@PLT
.L212:
	.loc	3	33	20
	subq	$104, %r15
	cmpq	(%r14), %r15
	jb	.L213
.L215:
	leaq	8(%r15), %rbx
	.loc	3	33	20
	addq	$88, %rbx
	movq	$1024, -8(%rbx)
	movq	%rax, (%rbx)
	.loc	2	93	14
	leaq	-24(%rbx), %rax
	movq	$2048, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	.loc	2	93	14
	leaq	-24(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	camlLqtree__const_block_544@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rbx)
	movq	%rax, 8(%rbx)
	.loc	2	93	14
	leaq	-16(%rbx), %rax
	movq	$1025, -8(%rax)
	movq	%rbx, (%rax)
	.loc	2	93	14
	leaq	-24(%rax), %rbx
	movq	%rbx, 8(%rsp)
	movq	$2048, -8(%rbx)
	movq	%rax, (%rbx)
	movq	(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	24(%rsp), %rax
	.loc	2	92	14
	movq	8(%rax), %rbx
	.loc	2	92	14
	movq	(%rax), %rax
	.loc	2	92	14
	call	camlLqtree.sexp_of_centroid_110@PLT
.L216:
	.loc	2	92	14
	subq	$104, %r15
	cmpq	(%r14), %r15
	jb	.L217
.L219:
	leaq	8(%r15), %rbx
	.loc	2	92	14
	addq	$80, %rbx
	movq	$2048, -8(%rbx)
	movq	%rax, (%rbx)
	movq	$1, 8(%rbx)
	.loc	2	92	14
	leaq	-24(%rbx), %rax
	movq	$2048, -8(%rax)
	movq	camlLqtree__const_block_560@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rax)
	movq	%rbx, 8(%rax)
	.loc	2	92	14
	leaq	-16(%rax), %rbx
	movq	$1025, -8(%rbx)
	movq	%rax, (%rbx)
	.loc	2	92	14
	leaq	-24(%rbx), %rdi
	movq	$2048, -8(%rdi)
	movq	%rbx, (%rdi)
	movq	8(%rsp), %rax
	movq	%rax, 8(%rdi)
	.loc	2	91	2
	leaq	-16(%rdi), %rax
	movq	$1025, -8(%rax)
	movq	%rdi, (%rax)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	ret
	.cfi_adjust_cfa_offset 32
.L217:
	call	caml_call_gc@PLT
.L218:
	jmp	.L219
.L213:
	call	caml_call_gc@PLT
.L214:
	jmp	.L215
.L209:
	call	caml_call_gc@PLT
.L210:
	jmp	.L211
.L205:
	call	caml_call_gc@PLT
.L206:
	jmp	.L207
.L202:
	push	$37
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L203
	.cfi_adjust_cfa_offset -32
	.cfi_endproc
	.type camlLqtree.sexp_of_t_485,@function
	.size camlLqtree.sexp_of_t_485,. - camlLqtree.sexp_of_t_485
	.text
	.align	16
	.globl	camlLqtree.new_node_579
camlLqtree.new_node_579:
	.loc	2	99	15
	.cfi_startproc
	.loc	2	99	31
	.loc	2	99	31
.L220:
	.loc	2	99	31
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L221
.L223:
	leaq	8(%r15), %rdi
	movq	$4096, -8(%rdi)
	movq	%rax, (%rdi)
	movq	$1, 8(%rdi)
	movq	$1, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rdi, %rax
	ret
.L221:
	call	caml_call_gc@PLT
.L222:
	jmp	.L223
	.cfi_endproc
	.type camlLqtree.new_node_579,@function
	.size camlLqtree.new_node_579,. - camlLqtree.new_node_579
	.text
	.align	16
	.globl	camlLqtree.node_type_591
camlLqtree.node_type_591:
	.loc	2	107	16
	.cfi_startproc
	.loc	2	108	7
.L225:
	.loc	2	108	7
	movq	8(%rax), %rbx
	cmpq	$1, %rbx
	jne	.L224
	xorpd	%xmm0, %xmm0
	.loc	2	110	17
	movq	(%rax), %rax
	.loc	2	110	10
	movq	(%rax), %rax
	.loc	2	111	9
	movsd	(%rax), %xmm1
	.loc	2	111	9
	cmpneqsd	%xmm0, %xmm1
	movd	%xmm1, %rax
	neg	%rax
	.loc	2	111	9
	leaq	1(%rax,%rax), %rax
	ret
	.align	4
.L224:
	movl	$5, %eax
	ret
	.cfi_endproc
	.type camlLqtree.node_type_591,@function
	.size camlLqtree.node_type_591,. - camlLqtree.node_type_591
	.text
	.align	16
	.globl	camlLqtree.equal_615
camlLqtree.equal_615:
	.loc	2	115	12
	.cfi_startproc
	leaq	-344(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L231
.L232:
	subq	$24, %rsp
	.cfi_adjust_cfa_offset 24
.L230:
	movq	%rax, %rsi
	.loc	2	125	39
	movq	8(%rbx), %rax
	movq	%rax, (%rsp)
	.loc	2	125	27
	movq	8(%rsi), %r9
	.loc	2	126	33
	movq	16(%rbx), %r12
	.loc	2	126	25
	movq	16(%rsi), %r13
	.loc	2	127	33
	movq	24(%rbx), %rax
	.loc	2	127	25
	movq	24(%rsi), %rdi
	.loc	2	129	32
	movq	(%rbx), %rcx
	.loc	2	129	21
	movq	(%rsi), %r8
	.loc	2	116	35
	movq	8(%rcx), %rdx
	.loc	2	116	22
	movq	8(%r8), %r10
	.loc	5	23	13
	movq	8(%r10), %r11
	.loc	5	23	32
	movq	8(%rdx), %rbp
	.loc	4	12	10
	movsd	(%rbp), %xmm0
	.loc	4	12	10
	subsd	(%r11), %xmm0
	.loc	5	23	13
	movq	(%r10), %r10
	.loc	5	23	32
	movq	(%rdx), %rdx
	.loc	4	12	10
	movsd	(%rdx), %xmm1
	.loc	4	12	10
	subsd	(%r10), %xmm1
	movsd	.L233(%rip), %xmm2
	.loc	4	58	12
	mulsd	%xmm0, %xmm0
	.loc	4	58	12
	mulsd	%xmm1, %xmm1
	.loc	4	10	10
	addsd	%xmm0, %xmm1
	comisd	%xmm1, %xmm2
	jbe	.L228
	.loc	2	116	35
	movq	(%rcx), %rdx
	.loc	2	116	22
	movq	(%r8), %rcx
	.loc	4	12	10
	movsd	(%rcx), %xmm0
	.loc	4	12	10
	subsd	(%rdx), %xmm0
	comisd	%xmm0, %xmm2
	jbe	.L228
	.loc	2	120	21
	movsd	8(%rax), %xmm0
	.loc	2	120	6
	movsd	8(%rdi), %xmm1
	.loc	4	12	10
	subsd	%xmm0, %xmm1
	comisd	%xmm1, %xmm2
	jbe	.L228
	.loc	2	121	24
	movsd	24(%rax), %xmm0
	.loc	2	121	9
	movsd	24(%rdi), %xmm1
	.loc	4	12	10
	subsd	%xmm0, %xmm1
	comisd	%xmm1, %xmm2
	jbe	.L228
	.loc	2	122	24
	movsd	(%rax), %xmm0
	.loc	2	122	9
	movsd	(%rdi), %xmm1
	.loc	4	12	10
	subsd	%xmm0, %xmm1
	comisd	%xmm1, %xmm2
	jbe	.L228
	.loc	2	123	24
	movsd	16(%rax), %xmm0
	.loc	2	123	9
	movsd	16(%rdi), %xmm1
	.loc	4	12	10
	subsd	%xmm0, %xmm1
	comisd	%xmm1, %xmm2
	jbe	.L228
	movq	(%rsp), %rax
	cmpq	%rax, %r9
	jne	.L229
	.loc	2	131	9
	cmpq	%r12, %r13
	sete	%al
	movzbq	%al, %rax
	.loc	2	131	9
	leaq	1(%rax,%rax), %rax
	jmp	.L227
	.align	4
.L229:
	movl	$1, %eax
	jmp	.L227
	.align	4
.L228:
	movl	$1, %eax
.L227:
	cmpq	$1, %rax
	je	.L226
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	ret
	.cfi_adjust_cfa_offset 24
	.align	4
.L226:
	movq	%rax, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rsi, %rax
	.loc	2	135	36
	call	camlLqtree.sexp_of_t_485@PLT
.L234:
	movq	%rax, %rbx
	movl	$1, %eax
	.loc	2	135	35
	call	camlSexplib0__Sexp.to_string_hum_1283@PLT
.L235:
	movq	%rax, (%rsp)
	movq	camlLqtree__const_block_740@GOTPCREL(%rip), %rdi
	movq	camlLqtree__Pmakeblock_5933@GOTPCREL(%rip), %rbx
	movq	camlStdlib__Printf.anon_fn$5bprintf.ml$3a20$2c14$2d$2d48$5d_445_closure@GOTPCREL(%rip), %rax
	.file	7	"camlinternalFormat.ml"
	.loc	7	1563	4
	call	camlCamlinternalFormat.make_printf_5097@PLT
.L236:
	movq	%rax, %rbx
	.loc	2	135	6
	movq	(%rbx), %rdi
	movq	(%rsp), %rax
	.loc	2	135	6
	call	*%rdi
.L237:
	movq	8(%rsp), %rax
	.loc	2	136	36
	call	camlLqtree.sexp_of_t_485@PLT
.L238:
	movq	%rax, %rbx
	movl	$1, %eax
	.loc	2	136	35
	call	camlSexplib0__Sexp.to_string_hum_1283@PLT
.L239:
	movq	%rax, (%rsp)
	movq	camlLqtree__const_block_740@GOTPCREL(%rip), %rdi
	movq	camlLqtree__Pmakeblock_5934@GOTPCREL(%rip), %rbx
	movq	camlStdlib__Printf.anon_fn$5bprintf.ml$3a20$2c14$2d$2d48$5d_445_closure@GOTPCREL(%rip), %rax
	.loc	7	1563	4
	call	camlCamlinternalFormat.make_printf_5097@PLT
.L240:
	movq	%rax, %rbx
	.loc	2	136	6
	movq	(%rbx), %rdi
	movq	(%rsp), %rax
	.loc	2	136	6
	call	*%rdi
.L241:
	movq	16(%rsp), %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	ret
	.cfi_adjust_cfa_offset 24
.L231:
	push	$36
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L232
	.cfi_adjust_cfa_offset -24
	.cfi_endproc
	.type camlLqtree.equal_615,@function
	.size camlLqtree.equal_615,. - camlLqtree.equal_615
	.text
	.align	16
	.globl	camlLqtree.sexp_of_t_766
camlLqtree.sexp_of_t_766:
	.loc	2	147	16
	.cfi_startproc
	leaq	-344(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L246
.L247:
	.loc	2	148	33
	subq	$24, %rsp
	.cfi_adjust_cfa_offset 24
	.loc	2	148	33
.L245:
	.loc	2	148	33
	movq	(%rax), %rax
	.loc	2	148	16
	call	camlStdlib__Dynarray.to_list_1837@PLT
.L248:
	testb	$1, %al
	je	.L244
	movl	$1, %eax
	movq	%rax, %rbx
	jmp	.L242
	.align	4
.L244:
	.loc	1	85	4
	movq	8(%rax), %rbx
	.loc	1	85	4
	movq	(%rax), %rax
	testb	$1, %bl
	je	.L243
	.loc	1	83	15
	call	camlLqtree.sexp_of_t_485@PLT
.L249:
	.loc	1	84	6
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L250
.L252:
	leaq	8(%r15), %rbx
	movq	$2048, -8(%rbx)
	movq	%rax, (%rbx)
	movq	$1, 8(%rbx)
	jmp	.L242
	.align	4
.L243:
	movq	%rbx, (%rsp)
	.loc	1	86	15
	call	camlLqtree.sexp_of_t_485@PLT
.L253:
	movq	%rax, 8(%rsp)
	movq	(%rsp), %rax
	.loc	1	85	8
	movq	(%rax), %rax
	.loc	1	87	15
	call	camlLqtree.sexp_of_t_485@PLT
.L254:
	.loc	1	88	10
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L255
.L257:
	leaq	8(%r15), %rdx
	movq	%rdx, 16(%rsp)
	movq	$2048, -8(%rdx)
	movq	%rax, (%rdx)
	movq	$48059, 8(%rdx)
	movq	(%rsp), %rax
	.loc	1	85	8
	movq	8(%rax), %rsi
	movq	camlLqtree.sexp_of_t_485_closure@GOTPCREL(%rip), %rdi
	movl	$3, %ebx
	movq	%rdx, %rax
	.loc	1	88	14
	call	camlStdlib__List.map_dps_509@PLT
.L258:
	.loc	1	88	6
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L259
.L261:
	leaq	8(%r15), %rbx
	movq	$2048, -8(%rbx)
	movq	8(%rsp), %rax
	movq	%rax, (%rbx)
	movq	16(%rsp), %rax
	movq	%rax, 8(%rbx)
.L242:
	.loc	3	54	34
	subq	$16, %r15
	cmpq	(%r14), %r15
	jb	.L262
.L264:
	leaq	8(%r15), %rax
	movq	$1025, -8(%rax)
	movq	%rbx, (%rax)
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	ret
	.cfi_adjust_cfa_offset 24
.L262:
	call	caml_call_gc@PLT
.L263:
	jmp	.L264
.L259:
	call	caml_call_gc@PLT
.L260:
	jmp	.L261
.L255:
	call	caml_call_gc@PLT
.L256:
	jmp	.L257
.L250:
	call	caml_call_gc@PLT
.L251:
	jmp	.L252
.L246:
	push	$36
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L247
	.cfi_adjust_cfa_offset -24
	.cfi_endproc
	.type camlLqtree.sexp_of_t_766,@function
	.size camlLqtree.sexp_of_t_766,. - camlLqtree.sexp_of_t_766
	.text
	.align	16
	.globl	camlLqtree.get_node_788
camlLqtree.get_node_788:
	.loc	2	154	15
	.cfi_startproc
	.loc	2	155	35
	.loc	2	155	35
.L267:
	.loc	2	155	35
	movq	(%rax), %rdi
	.file	8	"dynarray.ml"
	.loc	8	251	15
	movq	(%rdi), %rdi
	cmpq	%rdi, %rbx
	jle	.L266
	movq	camlLqtree__Pmakeblock_1523@GOTPCREL(%rip), %rax
	.loc	2	155	4
	call	caml_raise_exn@PLT
.L268:
	.align	4
.L266:
	.loc	2	156	17
	movq	(%rax), %rax
	.loc	8	238	8
	movq	8(%rax), %rdi
	.loc	8	238	8
	movq	-8(%rdi), %rsi
	.loc	8	238	8
	shrq	$9, %rsi
	.loc	8	238	8
	cmpq	%rbx, %rsi
	jbe	.L269
	.loc	8	238	8
	movq	-4(%rdi,%rbx,4), %rdi
	testb	$1, %dil
	je	.L265
	.loc	8	241	54
	movq	(%rax), %rdi
	movq	camlStdlib__Dynarray__const_immstring_551@GOTPCREL(%rip), %rax
	.loc	8	241	6
	jmp	camlStdlib__Dynarray.unexpected_empty_element_374@PLT
	.align	4
.L265:
	.loc	8	239	14
	movq	(%rdi), %rax
	ret
.L269:
	call	caml_ml_array_bound_error@PLT
.L270:
	.cfi_endproc
	.type camlLqtree.get_node_788,@function
	.size camlLqtree.get_node_788,. - camlLqtree.get_node_788
	.text
	.align	16
	.globl	camlLqtree.new_t_821
camlLqtree.new_t_821:
	.loc	2	160	12
	.cfi_startproc
	leaq	-336(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L272
.L273:
	subq	$16, %rsp
	.cfi_adjust_cfa_offset 16
.L271:
	movq	%rax, (%rsp)
	.loc	8	213	16
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L274
.L276:
	leaq	8(%r15), %rax
	movq	%rax, 8(%rsp)
	movq	$2048, -8(%rax)
	movq	$1, (%rax)
	movq	camlStdlib__Dynarray__Pmakeblock_arg_3221@GOTPCREL(%rip), %rbx
	movq	%rbx, 8(%rax)
	movl	$2001, %ebx
	.loc	2	162	4
	call	camlStdlib__Dynarray.set_capacity_1003@PLT
.L277:
	.loc	2	99	31
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L278
.L280:
	leaq	8(%r15), %rbx
	movq	$4096, -8(%rbx)
	movq	camlLqtree__Pmakeblock_2547@GOTPCREL(%rip), %rax
	movq	%rax, (%rbx)
	movq	$1, 8(%rbx)
	movq	$1, 16(%rbx)
	movq	(%rsp), %rax
	movq	%rax, 24(%rbx)
	movq	8(%rsp), %rax
	.loc	2	164	4
	call	camlStdlib__Dynarray.add_last_1102@PLT
.L281:
	.loc	2	165	4
	subq	$16, %r15
	cmpq	(%r14), %r15
	jb	.L282
.L284:
	leaq	8(%r15), %rax
	movq	$1024, -8(%rax)
	movq	8(%rsp), %rbx
	movq	%rbx, (%rax)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	ret
	.cfi_adjust_cfa_offset 16
.L282:
	call	caml_call_gc@PLT
.L283:
	jmp	.L284
.L278:
	call	caml_call_gc@PLT
.L279:
	jmp	.L280
.L274:
	call	caml_call_gc@PLT
.L275:
	jmp	.L276
.L272:
	push	$35
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L273
	.cfi_adjust_cfa_offset -16
	.cfi_endproc
	.type camlLqtree.new_t_821,@function
	.size camlLqtree.new_t_821,. - camlLqtree.new_t_821
	.text
	.align	16
	.globl	camlLqtree.subdivide_859
camlLqtree.subdivide_859:
	.loc	2	168	16
	.cfi_startproc
	leaq	-368(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L296
.L297:
	.loc	2	169	19
	subq	$48, %rsp
	.cfi_adjust_cfa_offset 48
	.loc	2	169	19
.L295:
	.loc	2	169	19
	movq	(%rax), %rdi
	.loc	8	251	15
	movq	(%rdi), %rdi
	cmpq	%rdi, %rbx
	jg	.L294
	movq	%rdi, 8(%rsp)
	movq	%rbx, (%rsp)
	movq	%rax, 32(%rsp)
	jmp	.L293
	.align	4
.L294:
	movq	camlLqtree__Pmakeblock_1523@GOTPCREL(%rip), %rax
	.loc	2	155	4
	call	caml_raise_exn@PLT
.L298:
	.align	4
.L293:
	.loc	2	156	17
	movq	(%rax), %rax
	.loc	8	238	8
	movq	8(%rax), %rdi
	.loc	8	238	8
	movq	-8(%rdi), %rsi
	.loc	8	238	8
	shrq	$9, %rsi
	.loc	8	238	8
	cmpq	%rbx, %rsi
	jbe	.L299
	.loc	8	238	8
	movq	-4(%rdi,%rbx,4), %rdi
	testb	$1, %dil
	je	.L292
	.loc	8	241	54
	movq	(%rax), %rdi
	movq	camlStdlib__Dynarray__const_immstring_551@GOTPCREL(%rip), %rax
	.loc	8	241	6
	call	camlStdlib__Dynarray.unexpected_empty_element_374@PLT
.L301:
	jmp	.L291
	.align	4
.L292:
	.loc	8	239	14
	movq	(%rdi), %rax
.L291:
	.loc	2	108	7
	movq	8(%rax), %rbx
	cmpq	$1, %rbx
	jne	.L290
	xorpd	%xmm0, %xmm0
	.loc	2	110	17
	movq	(%rax), %rbx
	.loc	2	110	10
	movq	(%rbx), %rbx
	.loc	2	111	9
	movsd	(%rbx), %xmm1
	.loc	2	111	9
	cmpneqsd	%xmm0, %xmm1
	movd	%xmm1, %rbx
	neg	%rbx
	.loc	2	111	9
	leaq	1(%rbx,%rbx), %rbx
	jmp	.L289
	.align	4
.L290:
	movl	$5, %ebx
.L289:
	cmpq	$5, %rbx
	je	.L288
	movq	%rax, 16(%rsp)
	jmp	.L287
	.align	4
.L288:
	movq	camlLqtree__Pmakeblock_1524@GOTPCREL(%rip), %rax
	.loc	2	171	4
	call	caml_raise_exn@PLT
.L302:
	.align	4
.L287:
	.loc	2	172	35
	movq	24(%rax), %rbx
	.loc	2	172	35
	movq	16(%rax), %rsi
	.loc	2	172	35
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L303
.L305:
	leaq	8(%r15), %rdi
	movq	$4096, -8(%rdi)
	.loc	2	172	35
	movq	(%rax), %rax
	movq	%rax, (%rdi)
	movq	8(%rsp), %rax
	movq	%rax, 8(%rdi)
	movq	%rsi, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	32(%rsp), %rax
	.loc	2	172	17
	movq	(%rax), %rax
	movq	(%rsp), %rbx
	.loc	2	172	4
	call	camlStdlib__Dynarray.set_560@PLT
.L306:
	movq	16(%rsp), %rdx
	.loc	2	173	66
	movq	16(%rdx), %rax
	.loc	2	173	21
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L307
.L309:
	leaq	8(%r15), %rbx
	movq	$4096, -8(%rbx)
	movq	8(%rsp), %rsi
	movq	%rsi, %rdi
	.loc	2	173	24
	addq	$2, %rdi
	movq	%rdi, (%rbx)
	movq	%rsi, %rdi
	.loc	2	173	38
	addq	$4, %rdi
	movq	%rdi, 8(%rbx)
	.loc	2	173	52
	addq	$6, %rsi
	movq	%rsi, 16(%rbx)
	movq	%rax, 24(%rbx)
	movl	$1, %eax
	cmpq	$7, %rax
	jg	.L285
	movq	%rax, 40(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rdx, 16(%rsp)
.L286:
	movq	16(%rsp), %rbx
	.loc	2	175	17
	movq	24(%rbx), %rbx
	movq	%rbx, (%rsp)
	.loc	2	175	47
	call	camlLqtree.of_index_453@PLT
.L310:
	movq	(%rsp), %rbx
	.loc	2	175	17
	call	camlLqtree.to_bbox_407@PLT
.L311:
	.loc	2	178	8
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L312
.L314:
	leaq	8(%r15), %rbx
	movq	$4096, -8(%rbx)
	movq	camlLqtree__Pmakeblock_2547@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rbx)
	movq	$1, 8(%rbx)
	movq	24(%rsp), %rsi
	.loc	2	178	53
	movq	-8(%rsi), %rdi
	.loc	2	178	53
	shrq	$9, %rdi
	movq	40(%rsp), %rdx
	.loc	2	178	53
	cmpq	%rdx, %rdi
	jbe	.L315
	.loc	2	178	53
	movq	-4(%rsi,%rdx,4), %rdi
	movq	%rdi, 16(%rbx)
	movq	%rax, 24(%rbx)
	movq	32(%rsp), %rax
	.loc	2	177	8
	movq	(%rax), %rax
	.loc	2	176	6
	call	camlStdlib__Dynarray.add_last_1102@PLT
.L317:
	movq	40(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 40(%rsp)
	cmpq	$7, %rbx
	jne	.L286
.L285:
	movq	8(%rsp), %rax
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	ret
	.cfi_adjust_cfa_offset 48
.L312:
	call	caml_call_gc@PLT
.L313:
	jmp	.L314
.L307:
	call	caml_call_gc@PLT
.L308:
	jmp	.L309
.L303:
	call	caml_call_gc@PLT
.L304:
	jmp	.L305
.L315:
	call	caml_ml_array_bound_error@PLT
.L316:
.L299:
	call	caml_ml_array_bound_error@PLT
.L300:
.L296:
	push	$39
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L297
	.cfi_adjust_cfa_offset -48
	.cfi_endproc
	.type camlLqtree.subdivide_859,@function
	.size camlLqtree.subdivide_859,. - camlLqtree.subdivide_859
	.text
	.align	16
	.globl	camlLqtree.subdivide_leaf_962
camlLqtree.subdivide_leaf_962:
	.loc	2	183	21
	.cfi_startproc
	leaq	-384(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L331
.L332:
	.loc	2	184	19
	subq	$64, %rsp
	.cfi_adjust_cfa_offset 64
	.loc	2	184	19
.L330:
	.loc	2	184	19
	movq	(%rax), %rdi
	.loc	8	251	15
	movq	(%rdi), %rdi
	cmpq	%rdi, %rbx
	jg	.L329
	movq	%rdi, 8(%rsp)
	movq	%rbx, (%rsp)
	movq	%rax, 32(%rsp)
	jmp	.L328
	.align	4
.L329:
	movq	camlLqtree__Pmakeblock_1523@GOTPCREL(%rip), %rax
	.loc	2	155	4
	call	caml_raise_exn@PLT
.L333:
	.align	4
.L328:
	.loc	2	156	17
	movq	(%rax), %rax
	.loc	8	238	8
	movq	8(%rax), %rdi
	.loc	8	238	8
	movq	-8(%rdi), %rsi
	.loc	8	238	8
	shrq	$9, %rsi
	.loc	8	238	8
	cmpq	%rbx, %rsi
	jbe	.L334
	.loc	8	238	8
	movq	-4(%rdi,%rbx,4), %rdi
	testb	$1, %dil
	je	.L327
	.loc	8	241	54
	movq	(%rax), %rdi
	movq	camlStdlib__Dynarray__const_immstring_551@GOTPCREL(%rip), %rax
	.loc	8	241	6
	call	camlStdlib__Dynarray.unexpected_empty_element_374@PLT
.L336:
	jmp	.L326
	.align	4
.L327:
	.loc	8	239	14
	movq	(%rdi), %rax
.L326:
	.loc	2	108	7
	movq	8(%rax), %rbx
	cmpq	$1, %rbx
	jne	.L325
	xorpd	%xmm0, %xmm0
	.loc	2	110	17
	movq	(%rax), %rbx
	.loc	2	110	10
	movq	(%rbx), %rbx
	.loc	2	111	9
	movsd	(%rbx), %xmm1
	.loc	2	111	9
	cmpneqsd	%xmm0, %xmm1
	movd	%xmm1, %rbx
	neg	%rbx
	.loc	2	111	9
	leaq	1(%rbx,%rbx), %rbx
	jmp	.L324
	.align	4
.L325:
	movl	$5, %ebx
.L324:
	cmpq	$3, %rbx
	jne	.L323
	movq	%rax, 16(%rsp)
	jmp	.L322
	.align	4
.L323:
	movq	camlLqtree__Pmakeblock_1525@GOTPCREL(%rip), %rax
	.loc	2	186	4
	call	caml_raise_exn@PLT
.L337:
	.align	4
.L322:
	.loc	2	187	17
	movq	(%rax), %rbx
	.loc	2	187	8
	movq	8(%rbx), %rdi
	movq	%rdi, 56(%rsp)
	.loc	2	187	8
	movq	(%rbx), %rbx
	movq	%rbx, 48(%rsp)
	.loc	2	188	35
	movq	24(%rax), %rbx
	.loc	2	188	35
	movq	16(%rax), %rsi
	.loc	2	188	35
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L338
.L340:
	leaq	8(%r15), %rdi
	movq	$4096, -8(%rdi)
	.loc	2	188	35
	movq	(%rax), %rax
	movq	%rax, (%rdi)
	movq	8(%rsp), %rax
	movq	%rax, 8(%rdi)
	movq	%rsi, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	32(%rsp), %rax
	.loc	2	188	17
	movq	(%rax), %rax
	movq	(%rsp), %rbx
	.loc	2	188	4
	call	camlStdlib__Dynarray.set_560@PLT
.L341:
	movq	16(%rsp), %rdx
	.loc	2	189	66
	movq	16(%rdx), %rax
	.loc	2	189	21
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L342
.L344:
	leaq	8(%r15), %rbx
	movq	$4096, -8(%rbx)
	movq	8(%rsp), %rsi
	movq	%rsi, %rdi
	.loc	2	189	24
	addq	$2, %rdi
	movq	%rdi, (%rbx)
	movq	%rsi, %rdi
	.loc	2	189	38
	addq	$4, %rdi
	movq	%rdi, 8(%rbx)
	.loc	2	189	52
	addq	$6, %rsi
	movq	%rsi, 16(%rbx)
	movq	%rax, 24(%rbx)
	movl	$1, %eax
	cmpq	$7, %rax
	jg	.L318
	movq	%rax, 40(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rdx, 16(%rsp)
.L319:
	movq	16(%rsp), %rbx
	.loc	2	191	17
	movq	24(%rbx), %rbx
	movq	%rbx, (%rsp)
	.loc	2	191	47
	call	camlLqtree.of_index_453@PLT
.L345:
	movq	(%rsp), %rbx
	.loc	2	191	17
	call	camlLqtree.to_bbox_407@PLT
.L346:
	movq	%rax, %rbx
	movq	%rbx, (%rsp)
	movq	56(%rsp), %rax
	.loc	2	192	24
	call	camlLqtree.contains_point_273@PLT
.L347:
	cmpq	$1, %rax
	je	.L321
	.loc	2	192	57
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L348
.L350:
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	48(%rsp), %rbx
	movq	%rbx, (%rax)
	movq	56(%rsp), %rbx
	movq	%rbx, 8(%rax)
	jmp	.L320
	.align	4
.L321:
	movq	camlLqtree__Pmakeblock_2547@GOTPCREL(%rip), %rax
.L320:
	movq	24(%rsp), %rdi
	.loc	2	193	66
	movq	-8(%rdi), %rbx
	.loc	2	193	66
	shrq	$9, %rbx
	movq	40(%rsp), %rsi
	.loc	2	193	66
	cmpq	%rsi, %rbx
	jbe	.L351
	.loc	2	193	66
	movq	-4(%rdi,%rsi,4), %rdi
	.loc	2	193	33
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L353
.L355:
	leaq	8(%r15), %rbx
	movq	$4096, -8(%rbx)
	movq	%rax, (%rbx)
	movq	$1, 8(%rbx)
	movq	%rdi, 16(%rbx)
	movq	(%rsp), %rax
	movq	%rax, 24(%rbx)
	movq	32(%rsp), %rax
	.loc	2	193	24
	movq	(%rax), %rax
	.loc	2	193	6
	call	camlStdlib__Dynarray.add_last_1102@PLT
.L356:
	movq	40(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 40(%rsp)
	cmpq	$7, %rbx
	jne	.L319
.L318:
	movq	8(%rsp), %rax
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	ret
	.cfi_adjust_cfa_offset 64
.L353:
	call	caml_call_gc@PLT
.L354:
	jmp	.L355
.L348:
	call	caml_call_gc@PLT
.L349:
	jmp	.L350
.L342:
	call	caml_call_gc@PLT
.L343:
	jmp	.L344
.L338:
	call	caml_call_gc@PLT
.L339:
	jmp	.L340
.L351:
	call	caml_ml_array_bound_error@PLT
.L352:
.L334:
	call	caml_ml_array_bound_error@PLT
.L335:
.L331:
	push	$41
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L332
	.cfi_adjust_cfa_offset -64
	.cfi_endproc
	.type camlLqtree.subdivide_leaf_962,@function
	.size camlLqtree.subdivide_leaf_962,. - camlLqtree.subdivide_leaf_962
	.text
	.align	16
	.globl	camlLqtree.node_check_1076
camlLqtree.node_check_1076:
	.loc	2	198	17
	.cfi_startproc
	leaq	-344(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L359
.L360:
	subq	$24, %rsp
	.cfi_adjust_cfa_offset 24
.L358:
	movq	%rdi, (%rsp)
	.loc	5	23	13
	movq	8(%rax), %rsi
	.loc	5	23	32
	movq	8(%rbx), %rdx
	.loc	4	12	10
	movsd	(%rdx), %xmm0
	.loc	4	12	10
	subsd	(%rsi), %xmm0
	movsd	%xmm0, 8(%rsp)
	.loc	5	23	13
	movq	(%rax), %rsi
	.loc	5	23	32
	movq	(%rbx), %rbx
	.loc	4	12	10
	movsd	(%rbx), %xmm0
	.loc	4	12	10
	subsd	(%rsi), %xmm0
	movsd	%xmm0, 16(%rsp)
	movq	%rdi, %rbx
	.loc	2	200	22
	call	camlLqtree.contains_point_273@PLT
.L361:
	movq	%rax, %rbx
	movq	(%rsp), %rax
	.loc	2	37	41
	movsd	(%rax), %xmm0
	.loc	2	37	30
	movsd	16(%rax), %xmm1
	.loc	4	12	10
	subsd	%xmm0, %xmm1
	.loc	4	58	12
	mulsd	%xmm1, %xmm1
	movsd	.L362(%rip), %xmm0
	movsd	8(%rsp), %xmm2
	.loc	4	58	12
	mulsd	%xmm2, %xmm2
	movsd	16(%rsp), %xmm3
	.loc	4	58	12
	mulsd	%xmm3, %xmm3
	.loc	4	10	10
	addsd	%xmm2, %xmm3
	.loc	4	14	10
	mulsd	%xmm0, %xmm3
	comisd	%xmm1, %xmm3
	jbe	.L357
	movl	$4, %eax
	.loc	2	202	48
	subq	%rbx, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	ret
	.cfi_adjust_cfa_offset 24
	.align	4
.L357:
	movl	$1, %eax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	ret
	.cfi_adjust_cfa_offset 24
.L359:
	push	$36
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L360
	.cfi_adjust_cfa_offset -24
	.cfi_endproc
	.type camlLqtree.node_check_1076,@function
	.size camlLqtree.node_check_1076,. - camlLqtree.node_check_1076
	.text
	.align	16
	.globl	camlLqtree.acc_by_qtree_1116
camlLqtree.acc_by_qtree_1116:
	.loc	2	212	19
	.cfi_startproc
	.loc	2	213	20
	.loc	2	213	20
.L363:
	.loc	2	213	20
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L364
.L366:
	leaq	8(%r15), %rsi
	movq	$4343, -8(%rsi)
	movq	caml_curry3@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rsi)
	movabsq	$216172782113783815, %rdi
	movq	%rdi, 8(%rsi)
	movq	camlLqtree.acc_aux_1125@GOTPCREL(%rip), %rdi
	movq	%rdi, 16(%rsi)
	movq	%rax, 24(%rsi)
	movq	camlNbody__const_block_522@GOTPCREL(%rip), %rdi
	movl	$1, %edx
	movq	%rbx, %rax
	movq	%rdx, %rbx
	.loc	2	227	4
	jmp	camlLqtree.acc_aux_1125@PLT
.L364:
	call	caml_call_gc@PLT
.L365:
	jmp	.L366
	.cfi_endproc
	.type camlLqtree.acc_by_qtree_1116,@function
	.size camlLqtree.acc_by_qtree_1116,. - camlLqtree.acc_by_qtree_1116
	.text
	.align	16
	.globl	camlLqtree.acc_aux_1125
camlLqtree.acc_aux_1125:
	.loc	2	213	20
	.cfi_startproc
	leaq	-368(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L381
.L382:
	.loc	2	213	20
	subq	$48, %rsp
	.cfi_adjust_cfa_offset 48
	.loc	2	213	20
.L380:
	.loc	2	213	20
	cmpq	(%r14), %r15
	jbe	.L383
.L384:
	.loc	2	155	35
	movq	(%rax), %rdx
	.loc	8	251	15
	movq	(%rdx), %rdx
	cmpq	%rdx, %rbx
	jg	.L379
	movq	%rsi, 32(%rsp)
	movq	%rdi, 40(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.L378
	.align	4
.L379:
	movq	camlLqtree__Pmakeblock_1523@GOTPCREL(%rip), %rax
	.loc	2	155	4
	call	caml_raise_exn@PLT
.L386:
	.align	4
.L378:
	.loc	2	156	17
	movq	(%rax), %rax
	.loc	8	238	8
	movq	8(%rax), %rdi
	.loc	8	238	8
	movq	-8(%rdi), %rsi
	.loc	8	238	8
	shrq	$9, %rsi
	.loc	8	238	8
	cmpq	%rbx, %rsi
	jbe	.L387
	.loc	8	238	8
	movq	-4(%rdi,%rbx,4), %rdi
	testb	$1, %dil
	je	.L377
	.loc	8	241	54
	movq	(%rax), %rdi
	movq	camlStdlib__Dynarray__const_immstring_551@GOTPCREL(%rip), %rax
	.loc	8	241	6
	call	camlStdlib__Dynarray.unexpected_empty_element_374@PLT
.L389:
	movq	%rax, %rsi
	movq	%rsi, 16(%rsp)
	jmp	.L376
	.align	4
.L377:
	.loc	8	239	14
	movq	(%rdi), %rsi
	movq	%rsi, 16(%rsp)
.L376:
	.loc	2	215	19
	movq	(%rsi), %rax
	.loc	2	215	10
	movq	8(%rax), %rdi
	movq	%rdi, 8(%rsp)
	.loc	2	215	10
	movq	(%rax), %rbx
	movq	%rbx, (%rsp)
	.loc	2	108	7
	movq	8(%rsi), %rax
	cmpq	$1, %rax
	jne	.L375
	xorpd	%xmm0, %xmm0
	.loc	2	111	9
	movsd	(%rbx), %xmm1
	.loc	2	111	9
	cmpneqsd	%xmm0, %xmm1
	movd	%xmm1, %rax
	neg	%rax
	.loc	2	111	9
	leaq	1(%rax,%rax), %rax
	jmp	.L374
	.align	4
.L375:
	movl	$5, %eax
.L374:
	sarq	$1, %rax
	cmpq	$1, %rax
	je	.L371
	ja	.L369
.L373:
	.loc	2	217	19
	movq	16(%rsi), %rbx
	cmpq	$1, %rbx
	jne	.L372
	movq	40(%rsp), %rax
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	ret
	.cfi_adjust_cfa_offset 48
	.align	4
.L372:
	movq	24(%rsp), %rax
	movq	40(%rsp), %rdi
	movq	32(%rsp), %rsi
	.loc	2	218	17
	jmp	.L380
	.align	4
.L371:
	.loc	2	219	18
	movq	16(%rsi), %rax
	cmpq	$1, %rax
	jne	.L370
	movq	32(%rsp), %rax
	movq	24(%rax), %rax
	.loc	2	219	42
	call	camlNbody.acc_on_439@PLT
.L390:
	.loc	5	24	29
	movq	8(%rax), %rbx
	movq	40(%rsp), %rsi
	.loc	5	24	12
	movq	8(%rsi), %rdi
	.loc	4	10	10
	movsd	(%rdi), %xmm0
	.loc	4	10	10
	addsd	(%rbx), %xmm0
	.loc	5	24	29
	movq	(%rax), %rax
	.loc	4	10	10
	subq	$56, %r15
	cmpq	(%r14), %r15
	jb	.L391
.L393:
	leaq	8(%r15), %rbx
	.loc	4	10	10
	addq	$40, %rbx
	movq	$1277, -8(%rbx)
	movsd	%xmm0, (%rbx)
	.loc	4	10	10
	leaq	-16(%rbx), %rdi
	movq	$1277, -8(%rdi)
	.loc	5	24	12
	movq	(%rsi), %rsi
	.loc	4	10	10
	movsd	(%rsi), %xmm0
	.loc	4	10	10
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rdi)
	.loc	5	24	53
	leaq	-24(%rdi), %rax
	movq	$2048, -8(%rax)
	movq	%rdi, (%rax)
	movq	%rbx, 8(%rax)
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	ret
	.cfi_adjust_cfa_offset 48
	.align	4
.L370:
	movq	32(%rsp), %rax
	movq	24(%rax), %rax
	.loc	2	220	44
	call	camlNbody.acc_on_439@PLT
.L394:
	.loc	5	24	29
	movq	8(%rax), %rbx
	movq	40(%rsp), %rdx
	.loc	5	24	12
	movq	8(%rdx), %rdi
	.loc	4	10	10
	movsd	(%rdi), %xmm0
	.loc	4	10	10
	addsd	(%rbx), %xmm0
	.loc	5	24	29
	movq	(%rax), %rax
	.loc	4	10	10
	subq	$56, %r15
	cmpq	(%r14), %r15
	jb	.L395
.L397:
	leaq	8(%r15), %rbx
	.loc	4	10	10
	addq	$40, %rbx
	movq	$1277, -8(%rbx)
	movsd	%xmm0, (%rbx)
	.loc	4	10	10
	leaq	-16(%rbx), %rsi
	movq	$1277, -8(%rsi)
	.loc	5	24	12
	movq	(%rdx), %rdi
	.loc	4	10	10
	movsd	(%rdi), %xmm0
	.loc	4	10	10
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rsi)
	.loc	5	24	53
	leaq	-24(%rsi), %rdi
	movq	$2048, -8(%rdi)
	movq	%rsi, (%rdi)
	movq	%rbx, 8(%rdi)
	movq	16(%rsp), %rax
	.loc	2	220	26
	movq	16(%rax), %rbx
	movq	24(%rsp), %rax
	movq	32(%rsp), %rsi
	.loc	2	220	16
	jmp	.L380
	.align	4
.L369:
	.loc	2	221	37
	movq	24(%rsi), %rsi
	movq	32(%rsp), %rax
	movq	24(%rax), %rax
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	.loc	2	221	18
	call	camlLqtree.node_check_1076@PLT
.L398:
	cmpq	$1, %rax
	je	.L367
	movq	16(%rsp), %rax
	.loc	2	221	50
	movq	16(%rax), %rax
	cmpq	$1, %rax
	jne	.L367
	movq	32(%rsp), %rax
	movq	24(%rax), %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rdi
	.loc	2	222	15
	call	camlNbody.acc_on_439@PLT
.L399:
	.loc	5	24	29
	movq	8(%rax), %rbx
	movq	40(%rsp), %rsi
	.loc	5	24	12
	movq	8(%rsi), %rdi
	.loc	4	10	10
	movsd	(%rdi), %xmm0
	.loc	4	10	10
	addsd	(%rbx), %xmm0
	.loc	5	24	29
	movq	(%rax), %rax
	.loc	4	10	10
	subq	$56, %r15
	cmpq	(%r14), %r15
	jb	.L400
.L402:
	leaq	8(%r15), %rbx
	.loc	4	10	10
	addq	$40, %rbx
	movq	$1277, -8(%rbx)
	movsd	%xmm0, (%rbx)
	.loc	4	10	10
	leaq	-16(%rbx), %rdi
	movq	$1277, -8(%rdi)
	.loc	5	24	12
	movq	(%rsi), %rsi
	.loc	4	10	10
	movsd	(%rsi), %xmm0
	.loc	4	10	10
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rdi)
	.loc	5	24	53
	leaq	-24(%rdi), %rax
	movq	$2048, -8(%rax)
	movq	%rdi, (%rax)
	movq	%rbx, 8(%rax)
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	ret
	.cfi_adjust_cfa_offset 48
	.align	4
.L367:
	movq	16(%rsp), %rax
	.loc	2	223	37
	movq	24(%rax), %rdi
	movq	32(%rsp), %rax
	movq	24(%rax), %rax
	movq	8(%rsp), %rbx
	.loc	2	223	18
	call	camlLqtree.node_check_1076@PLT
.L403:
	cmpq	$1, %rax
	je	.L368
	movq	32(%rsp), %rax
	movq	24(%rax), %rax
	movq	(%rsp), %rbx
	movq	8(%rsp), %rdi
	.loc	2	224	36
	call	camlNbody.acc_on_439@PLT
.L404:
	.loc	5	24	29
	movq	8(%rax), %rbx
	movq	40(%rsp), %rdx
	.loc	5	24	12
	movq	8(%rdx), %rdi
	.loc	4	10	10
	movsd	(%rdi), %xmm0
	.loc	4	10	10
	addsd	(%rbx), %xmm0
	.loc	5	24	29
	movq	(%rax), %rax
	.loc	4	10	10
	subq	$56, %r15
	cmpq	(%r14), %r15
	jb	.L405
.L407:
	leaq	8(%r15), %rbx
	.loc	4	10	10
	addq	$40, %rbx
	movq	$1277, -8(%rbx)
	movsd	%xmm0, (%rbx)
	.loc	4	10	10
	leaq	-16(%rbx), %rsi
	movq	$1277, -8(%rsi)
	.loc	5	24	12
	movq	(%rdx), %rdi
	.loc	4	10	10
	movsd	(%rdi), %xmm0
	.loc	4	10	10
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rsi)
	.loc	5	24	53
	leaq	-24(%rsi), %rdi
	movq	$2048, -8(%rdi)
	movq	%rsi, (%rdi)
	movq	%rbx, 8(%rdi)
	movq	16(%rsp), %rax
	.loc	2	224	18
	movq	16(%rax), %rbx
	movq	24(%rsp), %rax
	movq	32(%rsp), %rsi
	.loc	2	224	8
	jmp	.L380
	.align	4
.L368:
	movq	16(%rsp), %rax
	.loc	2	225	26
	movq	8(%rax), %rbx
	movq	24(%rsp), %rax
	movq	40(%rsp), %rdi
	movq	32(%rsp), %rsi
	.loc	2	225	16
	jmp	.L380
.L405:
	call	caml_call_gc@PLT
.L406:
	jmp	.L407
.L400:
	call	caml_call_gc@PLT
.L401:
	jmp	.L402
.L395:
	call	caml_call_gc@PLT
.L396:
	jmp	.L397
.L391:
	call	caml_call_gc@PLT
.L392:
	jmp	.L393
.L383:
	call	caml_call_gc@PLT
.L385:
	jmp	.L384
.L387:
	call	caml_ml_array_bound_error@PLT
.L388:
.L381:
	push	$39
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L382
	.cfi_adjust_cfa_offset -48
	.cfi_endproc
	.type camlLqtree.acc_aux_1125,@function
	.size camlLqtree.acc_aux_1125,. - camlLqtree.acc_aux_1125
	.text
	.align	16
	.globl	camlLqtree.insert_1233
camlLqtree.insert_1233:
	.loc	2	230	13
	.cfi_startproc
	.loc	2	230	23
	.loc	2	230	23
.L408:
	.loc	2	230	23
	movq	8(%rbx), %rsi
	.loc	2	230	23
	movq	(%rbx), %rbx
	.loc	2	231	23
	subq	$48, %r15
	cmpq	(%r14), %r15
	jb	.L409
.L411:
	leaq	8(%r15), %rdi
	movq	$5367, -8(%rdi)
	movq	caml_curry2@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rdi)
	movabsq	$144115188075855879, %rdx
	movq	%rdx, 8(%rdi)
	movq	camlLqtree.insert_aux_1249@GOTPCREL(%rip), %rdx
	movq	%rdx, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rsi, 32(%rdi)
	movl	$1, %ebx
	.loc	2	257	4
	jmp	camlLqtree.insert_aux_1249@PLT
.L409:
	call	caml_call_gc@PLT
.L410:
	jmp	.L411
	.cfi_endproc
	.type camlLqtree.insert_1233,@function
	.size camlLqtree.insert_1233,. - camlLqtree.insert_1233
	.text
	.align	16
	.globl	camlLqtree.insert_aux_1249
camlLqtree.insert_aux_1249:
	.loc	2	231	23
	.cfi_startproc
	leaq	-360(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L423
.L424:
	.loc	2	155	35
	subq	$40, %rsp
	.cfi_adjust_cfa_offset 40
	.loc	2	155	35
.L422:
	.loc	2	155	35
	movq	(%rax), %rsi
	.loc	8	251	15
	movq	(%rsi), %rsi
	cmpq	%rsi, %rbx
	jg	.L421
	movq	%rdi, 16(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.L420
	.align	4
.L421:
	movq	camlLqtree__Pmakeblock_1523@GOTPCREL(%rip), %rax
	.loc	2	155	4
	call	caml_raise_exn@PLT
.L425:
	.align	4
.L420:
	.loc	2	156	17
	movq	(%rax), %rax
	.loc	8	238	8
	movq	8(%rax), %rdi
	.loc	8	238	8
	movq	-8(%rdi), %rsi
	.loc	8	238	8
	shrq	$9, %rsi
	.loc	8	238	8
	cmpq	%rbx, %rsi
	jbe	.L426
	.loc	8	238	8
	movq	-4(%rdi,%rbx,4), %rdi
	testb	$1, %dil
	je	.L419
	.loc	8	241	54
	movq	(%rax), %rdi
	movq	camlStdlib__Dynarray__const_immstring_551@GOTPCREL(%rip), %rax
	.loc	8	241	6
	call	camlStdlib__Dynarray.unexpected_empty_element_374@PLT
.L428:
	movq	%rax, %r12
	movq	%r12, 8(%rsp)
	jmp	.L418
	.align	4
.L419:
	.loc	8	239	14
	movq	(%rdi), %r12
	movq	%r12, 8(%rsp)
.L418:
	.loc	2	108	7
	movq	8(%r12), %rax
	cmpq	$1, %rax
	jne	.L417
	xorpd	%xmm0, %xmm0
	.loc	2	110	17
	movq	(%r12), %rax
	.loc	2	110	10
	movq	(%rax), %rax
	.loc	2	111	9
	movsd	(%rax), %xmm1
	.loc	2	111	9
	cmpneqsd	%xmm0, %xmm1
	movd	%xmm1, %rax
	neg	%rax
	.loc	2	111	9
	leaq	1(%rax,%rax), %rax
	jmp	.L416
	.align	4
.L417:
	movl	$5, %eax
.L416:
	sarq	$1, %rax
	cmpq	$1, %rax
	je	.L414
	ja	.L412
.L415:
	.loc	2	239	25
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L429
.L431:
	leaq	8(%r15), %rsi
	movq	$2048, -8(%rsi)
	movq	16(%rsp), %rbx
	movq	24(%rbx), %rax
	movq	%rax, (%rsi)
	movq	32(%rbx), %rax
	movq	%rax, 8(%rsi)
	movq	%r12, %rdi
	.loc	2	239	8
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_modify@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	24(%rsp), %rax
	.loc	2	240	21
	movq	(%rax), %rax
	movq	32(%rsp), %rbx
	movq	%r12, %rdi
	.loc	2	240	8
	addq	$40, %rsp
	.cfi_adjust_cfa_offset -40
	jmp	camlStdlib__Dynarray.set_560@PLT
	.cfi_adjust_cfa_offset 40
	.align	4
.L414:
	.loc	2	242	21
	movq	(%r12), %rbx
	.loc	2	242	12
	movq	8(%rbx), %rdi
	.loc	5	23	13
	movq	8(%rdi), %rsi
	movq	16(%rsp), %rax
	movq	32(%rax), %rdx
	.loc	5	23	32
	movq	8(%rdx), %rcx
	.loc	4	12	10
	movsd	(%rcx), %xmm0
	.loc	4	12	10
	subsd	(%rsi), %xmm0
	.loc	5	23	13
	movq	(%rdi), %rdi
	.loc	5	23	32
	movq	(%rdx), %rsi
	.loc	4	12	10
	movsd	(%rsi), %xmm1
	.loc	4	12	10
	subsd	(%rdi), %xmm1
	movsd	.L233(%rip), %xmm2
	.loc	4	58	12
	mulsd	%xmm0, %xmm0
	.loc	4	58	12
	mulsd	%xmm1, %xmm1
	.loc	4	10	10
	addsd	%xmm0, %xmm1
	comisd	%xmm1, %xmm2
	jbe	.L413
	.loc	2	242	12
	movq	(%rbx), %rbx
	.loc	4	10	10
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L432
.L434:
	leaq	8(%r15), %rdi
	.loc	4	10	10
	addq	$24, %rdi
	movq	$1277, -8(%rdi)
	movq	24(%rax), %rax
	.loc	4	10	10
	movsd	(%rax), %xmm0
	.loc	4	10	10
	addsd	(%rbx), %xmm0
	movsd	%xmm0, (%rdi)
	.loc	2	245	27
	leaq	-24(%rdi), %rsi
	movq	$2048, -8(%rsi)
	movq	%rdi, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	%r12, %rdi
	.loc	2	245	10
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_modify@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	24(%rsp), %rax
	.loc	2	246	23
	movq	(%rax), %rax
	movq	32(%rsp), %rbx
	movq	%r12, %rdi
	.loc	2	246	10
	addq	$40, %rsp
	.cfi_adjust_cfa_offset -40
	jmp	camlStdlib__Dynarray.set_560@PLT
	.cfi_adjust_cfa_offset 40
	.align	4
.L413:
	movq	24(%rsp), %rax
	movq	32(%rsp), %rbx
	.loc	2	249	25
	call	camlLqtree.subdivide_leaf_962@PLT
.L435:
	movq	%rax, (%rsp)
	.loc	2	250	56
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L436
.L438:
	leaq	8(%r15), %rbx
	movq	$2048, -8(%rbx)
	movq	16(%rsp), %rdi
	movq	24(%rdi), %rax
	movq	%rax, (%rbx)
	movq	32(%rdi), %rax
	movq	%rax, 8(%rbx)
	movq	8(%rsp), %rax
	.loc	2	250	42
	movq	(%rax), %rax
	.loc	2	250	29
	call	camlLqtree.centroid_sum_120@PLT
.L439:
	movq	8(%rsp), %r12
	movq	%r12, %rdi
	movq	%rax, %rsi
	.loc	2	251	10
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_modify@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	(%rsp), %rax
	.loc	2	252	10
	movq	%rax, 8(%r12)
	movq	24(%rsp), %rax
	.loc	2	253	23
	movq	(%rax), %rax
	movq	32(%rsp), %rbx
	movq	%r12, %rdi
	.loc	2	253	10
	call	camlStdlib__Dynarray.set_560@PLT
.L440:
	movq	8(%rsp), %rax
	.loc	2	254	44
	movq	24(%rax), %rbx
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	.loc	2	254	22
	call	camlLqtree.contains_378@PLT
.L441:
	sarq	$1, %rax
	salq	$1, %rax
	incq	%rax
	movq	(%rsp), %rbx
	.loc	2	255	23
	leaq	-1(%rbx,%rax), %rbx
	movq	24(%rsp), %rax
	movq	16(%rsp), %rdi
	.loc	2	255	10
	jmp	.L422
	.align	4
.L412:
	.loc	2	235	38
	movq	24(%r12), %rbx
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	.loc	2	235	16
	call	camlLqtree.contains_378@PLT
.L442:
	sarq	$1, %rax
	salq	$1, %rax
	incq	%rax
	movq	%rax, (%rsp)
	.loc	2	236	52
	subq	$24, %r15
	cmpq	(%r14), %r15
	jb	.L443
.L445:
	leaq	8(%r15), %rbx
	movq	$2048, -8(%rbx)
	movq	16(%rsp), %rdi
	movq	24(%rdi), %rax
	movq	%rax, (%rbx)
	movq	32(%rdi), %rax
	movq	%rax, 8(%rbx)
	movq	8(%rsp), %rax
	.loc	2	236	38
	movq	(%rax), %rax
	.loc	2	236	25
	call	camlLqtree.centroid_sum_120@PLT
.L446:
	movq	8(%rsp), %r12
	movq	%r12, %rdi
	movq	%rax, %rsi
	.loc	2	236	8
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_modify@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	.loc	2	237	22
	movq	8(%r12), %rax
	movq	(%rsp), %rbx
	.loc	2	237	21
	leaq	-1(%rax,%rbx), %rbx
	movq	24(%rsp), %rax
	movq	16(%rsp), %rdi
	.loc	2	237	8
	jmp	.L422
.L443:
	call	caml_call_gc@PLT
.L444:
	jmp	.L445
.L436:
	call	caml_call_gc@PLT
.L437:
	jmp	.L438
.L432:
	call	caml_call_gc@PLT
.L433:
	jmp	.L434
.L429:
	call	caml_call_gc@PLT
.L430:
	jmp	.L431
.L426:
	call	caml_ml_array_bound_error@PLT
.L427:
.L423:
	push	$38
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L424
	.cfi_adjust_cfa_offset -40
	.cfi_endproc
	.type camlLqtree.insert_aux_1249,@function
	.size camlLqtree.insert_aux_1249,. - camlLqtree.insert_aux_1249
	.text
	.align	16
	.globl	camlLqtree.build_qtree_in_1357
camlLqtree.build_qtree_in_1357:
	.loc	2	260	21
	.cfi_startproc
	leaq	-336(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L448
.L449:
	subq	$16, %rsp
	.cfi_adjust_cfa_offset 16
.L447:
	movq	%rax, (%rsp)
	movq	%rbx, %rax
	.loc	2	261	12
	call	camlLqtree.new_t_821@PLT
.L450:
	movq	%rax, %rbx
	movq	%rbx, 8(%rsp)
	movq	camlLqtree.1@GOTPCREL(%rip), %rdi
	movq	(%rsp), %rax
	.loc	1	110	13
	call	camlLqtree.iter_5243@PLT
.L451:
	movq	8(%rsp), %rax
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	ret
	.cfi_adjust_cfa_offset 16
.L448:
	push	$35
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L449
	.cfi_adjust_cfa_offset -16
	.cfi_endproc
	.type camlLqtree.build_qtree_in_1357,@function
	.size camlLqtree.build_qtree_in_1357,. - camlLqtree.build_qtree_in_1357
	.text
	.align	16
	.globl	camlLqtree.populate_1388
camlLqtree.populate_1388:
	.loc	2	270	15
	.cfi_startproc
.L452:
	movq	%rax, %rsi
	movq	%rbx, %rax
	movq	camlLqtree.2@GOTPCREL(%rip), %rdi
	movq	%rsi, %rbx
	.loc	1	110	13
	jmp	camlLqtree.iter_4713@PLT
	.cfi_endproc
	.type camlLqtree.populate_1388,@function
	.size camlLqtree.populate_1388,. - camlLqtree.populate_1388
	.text
	.align	16
	.globl	camlLqtree.clear_1415
camlLqtree.clear_1415:
	.loc	2	278	12
	.cfi_startproc
	leaq	-336(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L455
.L456:
	.loc	2	279	23
	subq	$16, %rsp
	.cfi_adjust_cfa_offset 16
	.loc	2	279	23
.L454:
	.loc	2	279	23
	movq	(%rax), %rdi
	.loc	8	251	15
	movq	(%rdi), %rbx
	cmpq	$1, %rbx
	jne	.L453
	movl	$1, %eax
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	ret
	.cfi_adjust_cfa_offset 16
	.align	4
.L453:
	movq	%rax, 8(%rsp)
	movl	$1, %ebx
	movq	%rdi, %rax
	.loc	2	282	17
	call	camlStdlib__Dynarray.get_538@PLT
.L457:
	.loc	2	283	17
	addq	$24, %rax
	.loc	2	283	17
	movq	(%rax), %rax
	movq	%rax, (%rsp)
	movq	8(%rsp), %rax
	.loc	2	284	21
	movq	(%rax), %rax
	.loc	2	284	6
	call	camlStdlib__Dynarray.clear_814@PLT
.L458:
	.loc	2	99	31
	subq	$40, %r15
	cmpq	(%r14), %r15
	jb	.L459
.L461:
	leaq	8(%r15), %rbx
	movq	$4096, -8(%rbx)
	movq	camlLqtree__Pmakeblock_2547@GOTPCREL(%rip), %rax
	movq	%rax, (%rbx)
	movq	$1, 8(%rbx)
	movq	$1, 16(%rbx)
	movq	(%rsp), %rax
	movq	%rax, 24(%rbx)
	movq	8(%rsp), %rax
	.loc	2	286	24
	movq	(%rax), %rax
	.loc	2	286	6
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	camlStdlib__Dynarray.add_last_1102@PLT
	.cfi_adjust_cfa_offset 16
.L459:
	call	caml_call_gc@PLT
.L460:
	jmp	.L461
.L455:
	push	$35
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L456
	.cfi_adjust_cfa_offset -16
	.cfi_endproc
	.type camlLqtree.clear_1415,@function
	.size camlLqtree.clear_1415,. - camlLqtree.clear_1415
	.data
	.align	8
	.quad	9984
	.globl	camlLqtree
camlLqtree:
	.quad	camlOwl_maths.add_455_closure
	.quad	camlOwl_maths.sub_463_closure
	.quad	camlOwl_maths.div_479_closure
	.quad	camlLqtree.sexp_of_centroid_88_closure
	.quad	camlLqtree.centroid_sum_120_closure
	.quad	camlLqtree__Pmakeblock_1630
	.quad	camlLqtree__Pmakeblock_1625
	.quad	camlLqtree__Pmakeblock_1618
	.quad	camlLqtree__Pmakeblock_1597
	.data
	.align	8
	.quad	1793
	.globl	camlLqtree__Pmakeblock_arg_5939
camlLqtree__Pmakeblock_arg_5939:
	.quad	camlLqtree__apply_arg_5938
	.data
	.align	8
	.quad	1795
	.globl	camlLqtree__apply_arg_5938
camlLqtree__apply_arg_5938:
	.quad	camlLqtree__Pmakeblock_5937
	.data
	.align	8
	.quad	1793
	.globl	camlLqtree__Pmakeblock_5937
camlLqtree__Pmakeblock_5937:
	.quad	camlLqtree__Pmakeblock_5936
	.data
	.align	8
	.quad	2816
	.globl	camlLqtree__Pmakeblock_5936
camlLqtree__Pmakeblock_5936:
	.quad	camlLqtree__Pmakeblock_arg_5935
	.quad	1
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__Pmakeblock_arg_5935
camlLqtree__Pmakeblock_arg_5935:
	.quad	camlPpx_expect_runtime__Current_file__const_immstring_92
	.data
	.align	8
	.quad	2818
	.globl	camlLqtree__Pmakeblock_5934
camlLqtree__Pmakeblock_5934:
	.quad	1
	.quad	camlLqtree__const_immstring_738
	.data
	.align	8
	.quad	2818
	.globl	camlLqtree__Pmakeblock_5933
camlLqtree__Pmakeblock_5933:
	.quad	1
	.quad	camlLqtree__const_immstring_716
	.data
	.align	8
	.quad	2816
	.globl	camlLqtree__Pmakeblock_5925
camlLqtree__Pmakeblock_5925:
	.quad	caml_exn_Failure
	.quad	camlPpx_inline_test_lib__const_immstring_2517
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__Psetfield_arg_5924
camlLqtree__Psetfield_arg_5924:
	.quad	camlLqtree__const_immstring_1471
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__Pmakeblock_arg_5923
camlLqtree__Pmakeblock_arg_5923:
	.quad	camlPpx_expect_runtime__Current_file__const_immstring_33
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__Pmakeblock_arg_5922
camlLqtree__Pmakeblock_arg_5922:
	.quad	camlPpx_expect_runtime__Current_file__const_immstring_35
	.data
	.align	8
	.quad	2816
	.globl	camlLqtree__Pmakeblock_5921
camlLqtree__Pmakeblock_5921:
	.quad	camlLqtree__Pmakeblock_5920
	.quad	1
	.data
	.align	8
	.quad	2816
	.globl	camlLqtree__Pmakeblock_5920
camlLqtree__Pmakeblock_5920:
	.quad	camlPpx_expect_runtime__Current_file__const_immstring_46
	.quad	camlLqtree__Pmakeblock_5919
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__Pmakeblock_5919
camlLqtree__Pmakeblock_5919:
	.quad	camlLqtree__const_immstring_806
	.data
	.align	8
	.quad	2045
	.globl	camlLqtree__Pfloatcomp_arg_5917
camlLqtree__Pfloatcomp_arg_5917:
	.quad	0x3ee4f8b588e368f1
	.data
	.align	8
	.quad	2045
	.globl	camlLqtree__prim_5912
camlLqtree__prim_5912:
	.quad	0x4008000000000000
	.data
	.align	8
	.quad	2045
	.globl	camlLqtree__Pfloatcomp_arg_5907
camlLqtree__Pfloatcomp_arg_5907:
	.quad	0
	.data
	.align	8
	.quad	2045
	.globl	camlLqtree__prim_5905
camlLqtree__prim_5905:
	.quad	0x4000000000000000
	.data
	.align	8
	.quad	2045
	.globl	camlLqtree__prim_5904
camlLqtree__prim_5904:
	.quad	0x3ff0000000000000
	.data
	.align	8
	.quad	2816
	.globl	camlLqtree__Pmakeblock_3583
camlLqtree__Pmakeblock_3583:
	.quad	caml_exn_Failure
	.quad	camlLqtree__const_immstring_466
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.quad	2816
	.globl	camlLqtree__Pmakeblock_2547
camlLqtree__Pmakeblock_2547:
	.quad	camlLqtree__Pfloatcomp_arg_5907
	.quad	camlNbody__const_block_522
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.quad	5888
	.globl	camlLqtree__Pmakeblock_1630
camlLqtree__Pmakeblock_1630:
	.quad	camlLqtree.sexp_of_t_178_closure
	.quad	camlLqtree.contains_point_273_closure
	.quad	camlLqtree.midx_302_closure
	.quad	camlLqtree.midy_331_closure
	.quad	camlLqtree.size_360_closure
	.data
	.align	8
	.quad	4864
	.globl	camlLqtree__Pmakeblock_1625
camlLqtree__Pmakeblock_1625:
	.quad	camlLqtree.contains_378_closure
	.quad	camlLqtree.to_bbox_407_closure
	.quad	camlLqtree.to_index_442_closure
	.quad	camlLqtree.of_index_453_closure
	.data
	.align	8
	.quad	4864
	.globl	camlLqtree__Pmakeblock_1618
camlLqtree__Pmakeblock_1618:
	.quad	camlLqtree.sexp_of_t_485_closure
	.quad	camlLqtree.new_node_579_closure
	.quad	camlLqtree.node_type_591_closure
	.quad	camlLqtree.equal_615_closure
	.data
	.align	8
	.quad	2816
	.globl	camlLqtree__Pmakeblock_1525
camlLqtree__Pmakeblock_1525:
	.quad	caml_exn_Assert_failure
	.quad	camlLqtree__const_block_992
	.data
	.align	8
	.quad	2816
	.globl	camlLqtree__Pmakeblock_1524
camlLqtree__Pmakeblock_1524:
	.quad	caml_exn_Assert_failure
	.quad	camlLqtree__const_block_888
	.data
	.align	8
	.quad	2816
	.globl	camlLqtree__Pmakeblock_1523
camlLqtree__Pmakeblock_1523:
	.quad	caml_exn_Assert_failure
	.quad	camlLqtree__const_block_807
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.data
	.align	8
	.quad	2044
	.globl	camlLqtree__const_immstring_1497
camlLqtree__const_immstring_1497:
	.ascii	"Lqtree"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	2044
	.globl	camlLqtree__const_immstring_1471
camlLqtree__const_immstring_1471:
	.ascii	"lqtree"
	.space	1
	.byte	1
	.data
	.align	8
	.quad	3840
	.globl	camlLqtree__const_block_992
camlLqtree__const_block_992:
	.quad	camlLqtree__const_immstring_806
	.quad	373
	.quad	9
	.data
	.align	8
	.quad	3840
	.globl	camlLqtree__const_block_888
camlLqtree__const_block_888:
	.quad	camlLqtree__const_immstring_806
	.quad	343
	.quad	9
	.data
	.align	8
	.quad	3840
	.globl	camlLqtree__const_block_807
camlLqtree__const_block_807:
	.quad	camlLqtree__const_immstring_806
	.quad	311
	.quad	9
	.data
	.align	8
	.quad	4092
	.globl	camlLqtree__const_immstring_806
camlLqtree__const_immstring_806:
	.ascii	"lqtree/lqtree.ml"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	2818
	.globl	camlLqtree__const_block_740
camlLqtree__const_block_740:
	.quad	1
	.quad	camlLqtree__const_block_739
	.data
	.align	8
	.quad	2828
	.globl	camlLqtree__const_block_739
camlLqtree__const_block_739:
	.quad	21
	.quad	1
	.data
	.align	8
	.quad	3068
	.globl	camlLqtree__const_immstring_738
camlLqtree__const_immstring_738:
	.ascii	"Node B: "
	.space	7
	.byte	7
	.data
	.align	8
	.quad	3068
	.globl	camlLqtree__const_immstring_716
camlLqtree__const_immstring_716:
	.ascii	"Node A: "
	.space	7
	.byte	7
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__const_block_560
camlLqtree__const_block_560:
	.quad	camlLqtree__const_immstring_559
	.data
	.align	8
	.quad	3068
	.globl	camlLqtree__const_immstring_559
camlLqtree__const_immstring_559:
	.ascii	"centroid"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__const_block_544
camlLqtree__const_block_544:
	.quad	camlLqtree__const_immstring_543
	.data
	.align	8
	.quad	3068
	.globl	camlLqtree__const_immstring_543
camlLqtree__const_immstring_543:
	.ascii	"children"
	.space	7
	.byte	7
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__const_block_525
camlLqtree__const_block_525:
	.quad	camlLqtree__const_immstring_524
	.data
	.align	8
	.quad	2044
	.globl	camlLqtree__const_immstring_524
camlLqtree__const_immstring_524:
	.ascii	"next"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__const_block_506
camlLqtree__const_block_506:
	.quad	camlLqtree__const_immstring_505
	.data
	.align	8
	.quad	2044
	.globl	camlLqtree__const_immstring_505
camlLqtree__const_immstring_505:
	.ascii	"bbox"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	4092
	.globl	camlLqtree__const_immstring_466
camlLqtree__const_immstring_466:
	.ascii	"Quadrant.of_index"
	.space	6
	.byte	6
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__const_block_256
camlLqtree__const_block_256:
	.quad	camlLqtree__const_immstring_255
	.data
	.align	8
	.quad	2044
	.globl	camlLqtree__const_immstring_255
camlLqtree__const_immstring_255:
	.ascii	"minx"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__const_block_235
camlLqtree__const_block_235:
	.quad	camlLqtree__const_immstring_234
	.data
	.align	8
	.quad	2044
	.globl	camlLqtree__const_immstring_234
camlLqtree__const_immstring_234:
	.ascii	"miny"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__const_block_214
camlLqtree__const_block_214:
	.quad	camlLqtree__const_immstring_213
	.data
	.align	8
	.quad	2044
	.globl	camlLqtree__const_immstring_213
camlLqtree__const_immstring_213:
	.ascii	"maxx"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	1792
	.globl	camlLqtree__const_block_193
camlLqtree__const_block_193:
	.quad	camlLqtree__const_immstring_192
	.data
	.align	8
	.quad	2044
	.globl	camlLqtree__const_immstring_192
camlLqtree__const_immstring_192:
	.ascii	"maxy"
	.space	3
	.byte	3
	.data
	.align	8
	.quad	3068
	.globl	camlLqtree__const_immstring_59
camlLqtree__const_immstring_59:
	.ascii	"lqtree.ml"
	.space	6
	.byte	6
	.text
	.align	16
	.globl	camlLqtree.entry
camlLqtree.entry:
	.cfi_startproc
	leaq	-328(%rsp), %r10
	cmpq	40(%r14), %r10
	jb	.L474
.L475:
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
.L473:
	movq	camlLqtree__const_immstring_1497@GOTPCREL(%rip), %rbx
	movq	camlPpx_module_timer_runtime__module_timer_1085@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.file	9	"runtime/ppx_module_timer_runtime.ml"
	.loc	9	135	31
	call	camlPpx_module_timer_runtime.record_start_186@PLT
.L476:
	movq	camlLqtree__const_immstring_1471@GOTPCREL(%rip), %rsi
	movq	camlPpx_bench_lib__Benchmark_accumulator__libname_ref_511@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.file	10	"runtime-lib/benchmark_accumulator.ml"
	.loc	10	13	16
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_modify@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlPpx_expect_runtime__Current_file__Pmakeblock_274@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.file	11	"runtime/current_file.ml"
	.loc	11	6	8
	movq	(%rax), %rax
	testb	$1, %al
	je	.L472
	movq	camlLqtree__Pmakeblock_5919@GOTPCREL(%rip), %rsi
	movq	camlPpx_expect_runtime__Current_file__Pmakeblock_274@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	11	7	12
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_modify@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	jmp	.L471
.L472:
	.loc	3	30	25
	call	caml_alloc1@PLT
.L477:
	leaq	8(%r15), %rbx
	movq	%rbx, (%rsp)
	movq	$1024, -8(%rbx)
	.loc	11	8	4
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	camlLqtree__Pmakeblock_5921@GOTPCREL(%rip), %rax
	.file	12	"src/sexp.ml"
	.loc	12	358	44
	call	camlSexplib0__Sexp.conv_fields_1409@PLT
.L478:
	.loc	12	358	33
	subq	$144, %r15
	call	caml_allocN@PLT
.L479:
	leaq	8(%r15), %rbx
	.loc	12	358	33
	addq	$120, %rbx
	movq	$2048, -8(%rbx)
	movq	(%rsp), %rdi
	movq	%rdi, (%rbx)
	movq	$1, 8(%rbx)
	.loc	12	358	19
	leaq	-24(%rbx), %rdi
	movq	$2048, -8(%rdi)
	movq	camlLqtree__Pmakeblock_arg_5922@GOTPCREL(%rip), %rsi
	movq	%rsi, (%rdi)
	movq	%rbx, 8(%rdi)
	.loc	12	358	14
	leaq	-16(%rdi), %rbx
	movq	$1025, -8(%rbx)
	movq	%rdi, (%rbx)
	.loc	12	358	14
	leaq	-24(%rbx), %rdi
	movq	$2048, -8(%rdi)
	movq	%rbx, (%rdi)
	movq	%rax, 8(%rdi)
	.loc	12	360	7
	leaq	-24(%rdi), %rax
	movq	$2048, -8(%rax)
	movq	camlLqtree__Pmakeblock_arg_5923@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	.loc	12	360	2
	leaq	-16(%rax), %rbx
	movq	$1025, -8(%rbx)
	movq	%rax, (%rbx)
	.file	13	"src/info.ml"
	.loc	13	244	31
	leaq	-16(%rbx), %rax
	movq	$1027, -8(%rax)
	movq	%rbx, (%rax)
	.loc	13	244	20
	call	camlBase__Info.of_message_684@PLT
.L480:
	.file	14	"src/error.ml"
	.loc	14	9	27
	call	camlBase__Info.to_exn_1288@PLT
.L481:
	.loc	14	9	21
	call	caml_raise_exn@PLT
.L482:
.L471:
	movq	camlPpx_inline_test_lib__Pmakeblock_3573@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.file	15	"runtime-lib/ppx_inline_test_lib.ml"
	.loc	15	610	8
	movq	(%rax), %rax
	testb	$1, %al
	je	.L465
	movq	camlLqtree__Psetfield_arg_5924@GOTPCREL(%rip), %rsi
	movq	camlPpx_inline_test_lib__Pmakeblock_3573@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	15	616	4
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_modify@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlPpx_inline_test_lib__force_drop_3571@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	je	.L470
	movq	$-1900389787, %rax
	jmp	.L469
.L470:
	movq	camlPpx_inline_test_lib__Pmakeblock_3572@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.loc	15	132	36
	movq	(%rax), %rax
.L469:
	testb	$1, %al
	jne	.L465
	.loc	15	619	7
	movq	8(%rax), %r12
	movq	camlLqtree__const_immstring_1471@GOTPCREL(%rip), %rsi
	.loc	15	619	18
	movq	(%r12), %rax
	.loc	15	620	10
	movq	(%rax), %rdi
	.loc	15	620	10
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_string_equal@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	cmpq	$1, %rax
	je	.L465
	.loc	15	619	18
	movq	8(%r12), %rbx
	.loc	15	625	13
	movq	(%rbx), %rax
	.loc	2	1	0
	cmpq	$2050162989, %rax
	setge	%al
	movzbq	%al, %rax
	.loc	2	1	0
	leaq	1(%rax,%rax), %rax
	cmpq	$1, %rax
	je	.L468
	.loc	15	624	34
	movq	8(%rbx), %rax
	testb	$1, %al
	je	.L468
	movl	$1, %r12d
	jmp	.L467
.L468:
	movl	$3, %r12d
.L467:
	movq	camlPpx_inline_test_lib__const_immstring_618@GOTPCREL(%rip), %rsi
	movq	camlLqtree__const_immstring_59@GOTPCREL(%rip), %rdi
	.loc	15	627	12
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_string_equal@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	cmpq	$1, %rax
	je	.L466
	cmpq	$1, %r12
	je	.L466
	movq	camlLqtree__Pmakeblock_5925@GOTPCREL(%rip), %rax
	.loc	6	29	17
	call	caml_raise_exn@PLT
.L483:
.L466:
	movq	camlLqtree__const_immstring_59@GOTPCREL(%rip), %rsi
	movq	camlPpx_inline_test_lib__Pmakeblock_3563@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	15	146	22
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_modify@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
.L465:
	movq	camlPpx_inline_test_lib__Pmakeblock_3573@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.loc	15	636	8
	movq	(%rax), %rsi
	movq	camlLqtree__simplify_fv_3599@GOTPCREL(%rip), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlLqtree__simplify_fv_3599@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.loc	15	637	4
	andq	$1, %rax
	.loc	15	637	4
	leaq	1(%rax,%rax), %rsi
	movq	camlLqtree__cond_3598@GOTPCREL(%rip), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlLqtree__cond_3598@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	jne	.L464
	movq	camlLqtree__const_immstring_1471@GOTPCREL(%rip), %rsi
	movq	camlLqtree__simplify_fv_3599@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.loc	15	642	4
	movq	(%rax), %rdi
	.loc	15	642	19
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_string_equal@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	cmpq	$1, %rax
	je	.L464
	movl	$1, %esi
	movq	camlPpx_inline_test_lib__Pmakeblock_3573@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	15	642	41
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_modify@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
.L464:
	movq	camlPpx_expect_runtime__Current_file__Pmakeblock_274@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.loc	11	18	8
	movq	(%rax), %rsi
	movq	camlLqtree__simplify_fv_2563@GOTPCREL(%rip), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlLqtree__simplify_fv_2563@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.loc	11	19	4
	andq	$1, %rax
	.loc	11	19	4
	leaq	1(%rax,%rax), %rsi
	movq	camlLqtree__cond_2562@GOTPCREL(%rip), %rdi
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_initialize@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlLqtree__cond_2562@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	je	.L463
	.loc	13	185	37
	call	caml_alloc1@PLT
.L484:
	leaq	8(%r15), %rax
	movq	$1024, -8(%rax)
	movq	camlLqtree__Pmakeblock_arg_5939@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	.loc	14	9	27
	call	camlBase__Info.to_exn_1288@PLT
.L485:
	.loc	14	9	21
	call	caml_raise_exn@PLT
.L486:
.L463:
	movl	$1, %esi
	movq	camlPpx_expect_runtime__Current_file__Pmakeblock_274@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	11	19	14
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_modify@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
.L462:
	movq	camlPpx_bench_lib__Benchmark_accumulator__const_immstring_35@GOTPCREL(%rip), %rsi
	movq	camlPpx_bench_lib__Benchmark_accumulator__libname_ref_511@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	10	14	17
	movq	%rsp, %rbx
	.cfi_remember_state
	.cfi_def_cfa_register %rbx
	movq	64(%r14), %rsp
	call	caml_modify@PLT
	movq	%rbx, %rsp
	.cfi_restore_state
	movq	camlLqtree__const_immstring_1497@GOTPCREL(%rip), %rbx
	movq	camlPpx_module_timer_runtime__module_timer_1085@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	.loc	9	136	31
	call	camlPpx_module_timer_runtime.record_until_230@PLT
.L487:
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset -8
	ret
	.cfi_adjust_cfa_offset 8
.L474:
	push	$34
	.cfi_adjust_cfa_offset 8
	call	caml_call_realloc_stack@PLT
	popq	%r10
	.cfi_adjust_cfa_offset -8
	jmp	.L475
	.cfi_adjust_cfa_offset -8
	.cfi_endproc
	.type camlLqtree.entry,@function
	.size camlLqtree.entry,. - camlLqtree.entry
	.data
	.align	8
	.section .rodata.cst8,"aM",@progbits,8
	.align	8
.L362:
	.quad	0x4008000000000000
.L233:
	.quad	0x3ee4f8b588e368f1
.L163:
	.quad	0x4000000000000000
.L132:
	.quad	0x3ff0000000000000
	.text
	.globl	camlLqtree.code_end
camlLqtree.code_end:
	.data
				/* relocation table start */
	.align	8
				/* relocation table end */
	.data
	.quad	0
	.globl	camlLqtree.data_end
camlLqtree.data_end:
	.quad	0
	.align	8
	.globl	camlLqtree.frametable
camlLqtree.frametable:
	.quad	133
	.quad	.L487
	.word	17
	.word	0
	.align	4
	.long	(.L488 - .) + 0
	.align	8
	.quad	.L486
	.word	17
	.word	0
	.align	4
	.long	(.L489 - .) + 0
	.align	8
	.quad	.L485
	.word	17
	.word	0
	.align	4
	.long	(.L490 - .) + 0
	.align	8
	.quad	.L484
	.word	19
	.word	0
	.byte	1
	.byte	0
	.align	4
	.long	(.L491 - .) + 0
	.align	8
	.quad	.L483
	.word	17
	.word	0
	.align	4
	.long	(.L492 - .) + 0
	.align	8
	.quad	.L482
	.word	17
	.word	0
	.align	4
	.long	(.L493 - .) + 0
	.align	8
	.quad	.L481
	.word	17
	.word	0
	.align	4
	.long	(.L494 - .) + 0
	.align	8
	.quad	.L480
	.word	17
	.word	0
	.align	4
	.long	(.L495 - .) + 0
	.align	8
	.quad	.L479
	.word	19
	.word	2
	.word	0
	.word	1
	.byte	7
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.align	4
	.long	(.L496 - .) + 0
	.long	(.L497 - .) + 0
	.long	(.L498 - .) + 0
	.long	(.L499 - .) + 0
	.long	(.L500 - .) + 0
	.long	(.L501 - .) + 0
	.long	(.L502 - .) + 0
	.align	8
	.quad	.L478
	.word	17
	.word	1
	.word	0
	.align	4
	.long	(.L503 - .) + 0
	.align	8
	.quad	.L477
	.word	19
	.word	1
	.word	1
	.byte	1
	.byte	0
	.align	4
	.long	(.L504 - .) + 0
	.align	8
	.quad	.L476
	.word	17
	.word	0
	.align	4
	.long	(.L505 - .) + 0
	.align	8
	.quad	.L460
	.word	27
	.word	2
	.word	0
	.word	8
	.byte	1
	.byte	3
	.align	4
	.long	(.L506 - .) + 0
	.align	8
	.quad	.L458
	.word	25
	.word	2
	.word	0
	.word	8
	.align	4
	.long	(.L507 - .) + 0
	.align	8
	.quad	.L457
	.word	25
	.word	1
	.word	8
	.align	4
	.long	(.L508 - .) + 0
	.align	8
	.quad	.L451
	.word	25
	.word	1
	.word	8
	.align	4
	.long	(.L509 - .) + 0
	.align	8
	.quad	.L450
	.word	25
	.word	1
	.word	0
	.align	4
	.long	(.L510 - .) + 0
	.align	8
	.quad	.L446
	.word	49
	.word	3
	.word	8
	.word	16
	.word	24
	.align	4
	.long	(.L511 - .) + 0
	.align	8
	.quad	.L444
	.word	51
	.word	3
	.word	8
	.word	16
	.word	24
	.byte	1
	.byte	1
	.align	4
	.long	(.L512 - .) + 0
	.align	8
	.quad	.L442
	.word	49
	.word	3
	.word	8
	.word	16
	.word	24
	.align	4
	.long	(.L513 - .) + 0
	.align	8
	.quad	.L441
	.word	49
	.word	3
	.word	0
	.word	16
	.word	24
	.align	4
	.long	(.L514 - .) + 0
	.align	8
	.quad	.L440
	.word	49
	.word	4
	.word	0
	.word	8
	.word	16
	.word	24
	.align	4
	.long	(.L515 - .) + 0
	.align	8
	.quad	.L439
	.word	49
	.word	5
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.align	4
	.long	(.L516 - .) + 0
	.align	8
	.quad	.L437
	.word	51
	.word	5
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.byte	1
	.byte	1
	.align	4
	.long	(.L517 - .) + 0
	.align	8
	.quad	.L435
	.word	49
	.word	4
	.word	8
	.word	16
	.word	24
	.word	32
	.align	4
	.long	(.L518 - .) + 0
	.align	8
	.quad	.L433
	.word	51
	.word	6
	.word	1
	.word	3
	.word	9
	.word	17
	.word	24
	.word	32
	.byte	2
	.byte	1
	.byte	0
	.align	4
	.long	(.L519 - .) + 0
	.long	(.L520 - .) + 0
	.align	8
	.quad	.L430
	.word	51
	.word	4
	.word	16
	.word	17
	.word	24
	.word	32
	.byte	1
	.byte	1
	.align	4
	.long	(.L521 - .) + 0
	.align	8
	.quad	.L428
	.word	49
	.word	3
	.word	16
	.word	24
	.word	32
	.align	4
	.long	(.L522 - .) + 0
	.align	8
	.quad	.L427
	.word	49
	.word	0
	.align	4
	.long	(.L523 - .) + 0
	.align	8
	.quad	.L425
	.word	49
	.word	0
	.align	4
	.long	(.L524 - .) + 0
	.align	8
	.quad	.L410
	.word	11
	.word	3
	.word	1
	.word	3
	.word	7
	.byte	1
	.byte	4
	.align	4
	.long	(.L525 - .) + 0
	.align	8
	.quad	.L406
	.word	59
	.word	5
	.word	1
	.word	9
	.word	16
	.word	24
	.word	32
	.byte	3
	.byte	1
	.byte	0
	.byte	0
	.align	4
	.long	(.L526 - .) + 0
	.long	(.L527 - .) + 0
	.long	(.L528 - .) + 0
	.align	8
	.quad	.L404
	.word	57
	.word	4
	.word	16
	.word	24
	.word	32
	.word	40
	.align	4
	.long	(.L529 - .) + 0
	.align	8
	.quad	.L403
	.word	57
	.word	6
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.align	4
	.long	(.L530 - .) + 0
	.align	8
	.quad	.L401
	.word	59
	.word	2
	.word	1
	.word	7
	.byte	3
	.byte	1
	.byte	0
	.byte	0
	.align	4
	.long	(.L531 - .) + 0
	.long	(.L532 - .) + 0
	.long	(.L533 - .) + 0
	.align	8
	.quad	.L399
	.word	57
	.word	1
	.word	40
	.align	4
	.long	(.L534 - .) + 0
	.align	8
	.quad	.L398
	.word	57
	.word	6
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.align	4
	.long	(.L535 - .) + 0
	.align	8
	.quad	.L396
	.word	59
	.word	5
	.word	1
	.word	9
	.word	16
	.word	24
	.word	32
	.byte	3
	.byte	1
	.byte	0
	.byte	0
	.align	4
	.long	(.L536 - .) + 0
	.long	(.L537 - .) + 0
	.long	(.L538 - .) + 0
	.align	8
	.quad	.L394
	.word	57
	.word	4
	.word	16
	.word	24
	.word	32
	.word	40
	.align	4
	.long	(.L539 - .) + 0
	.align	8
	.quad	.L392
	.word	59
	.word	2
	.word	1
	.word	7
	.byte	3
	.byte	1
	.byte	0
	.byte	0
	.align	4
	.long	(.L540 - .) + 0
	.long	(.L541 - .) + 0
	.long	(.L542 - .) + 0
	.align	8
	.quad	.L390
	.word	57
	.word	1
	.word	40
	.align	4
	.long	(.L543 - .) + 0
	.align	8
	.quad	.L389
	.word	57
	.word	3
	.word	24
	.word	32
	.word	40
	.align	4
	.long	(.L544 - .) + 0
	.align	8
	.quad	.L388
	.word	57
	.word	0
	.align	4
	.long	(.L545 - .) + 0
	.align	8
	.quad	.L386
	.word	57
	.word	0
	.align	4
	.long	(.L546 - .) + 0
	.align	8
	.quad	.L385
	.word	58
	.word	4
	.word	1
	.word	3
	.word	5
	.word	7
	.byte	0
	.align	8
	.quad	.L365
	.word	11
	.word	2
	.word	1
	.word	3
	.byte	1
	.byte	3
	.align	4
	.long	(.L547 - .) + 0
	.align	8
	.quad	.L361
	.word	33
	.word	1
	.word	0
	.align	4
	.long	(.L548 - .) + 0
	.align	8
	.quad	.L356
	.word	73
	.word	6
	.word	8
	.word	16
	.word	24
	.word	32
	.word	48
	.word	56
	.align	4
	.long	(.L549 - .) + 0
	.align	8
	.quad	.L354
	.word	75
	.word	8
	.word	0
	.word	1
	.word	8
	.word	16
	.word	24
	.word	32
	.word	48
	.word	56
	.byte	1
	.byte	3
	.align	4
	.long	(.L550 - .) + 0
	.align	8
	.quad	.L352
	.word	73
	.word	0
	.align	4
	.long	(.L551 - .) + 0
	.align	8
	.quad	.L349
	.word	75
	.word	7
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	48
	.word	56
	.byte	1
	.byte	1
	.align	4
	.long	(.L552 - .) + 0
	.align	8
	.quad	.L347
	.word	73
	.word	7
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	48
	.word	56
	.align	4
	.long	(.L553 - .) + 0
	.align	8
	.quad	.L346
	.word	73
	.word	6
	.word	8
	.word	16
	.word	24
	.word	32
	.word	48
	.word	56
	.align	4
	.long	(.L554 - .) + 0
	.align	8
	.quad	.L345
	.word	73
	.word	7
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.word	48
	.word	56
	.align	4
	.long	(.L555 - .) + 0
	.align	8
	.quad	.L343
	.word	75
	.word	6
	.word	1
	.word	8
	.word	9
	.word	32
	.word	48
	.word	56
	.byte	1
	.byte	3
	.align	4
	.long	(.L556 - .) + 0
	.align	8
	.quad	.L341
	.word	73
	.word	5
	.word	8
	.word	16
	.word	32
	.word	48
	.word	56
	.align	4
	.long	(.L557 - .) + 0
	.align	8
	.quad	.L339
	.word	75
	.word	9
	.word	0
	.word	1
	.word	3
	.word	7
	.word	8
	.word	16
	.word	32
	.word	48
	.word	56
	.byte	1
	.byte	3
	.align	4
	.long	(.L558 - .) + 0
	.align	8
	.quad	.L337
	.word	73
	.word	0
	.align	4
	.long	(.L559 - .) + 0
	.align	8
	.quad	.L336
	.word	73
	.word	3
	.word	0
	.word	8
	.word	32
	.align	4
	.long	(.L560 - .) + 0
	.align	8
	.quad	.L335
	.word	73
	.word	0
	.align	4
	.long	(.L561 - .) + 0
	.align	8
	.quad	.L333
	.word	73
	.word	0
	.align	4
	.long	(.L562 - .) + 0
	.align	8
	.quad	.L317
	.word	57
	.word	4
	.word	8
	.word	16
	.word	24
	.word	32
	.align	4
	.long	(.L563 - .) + 0
	.align	8
	.quad	.L316
	.word	57
	.word	0
	.align	4
	.long	(.L564 - .) + 0
	.align	8
	.quad	.L313
	.word	59
	.word	5
	.word	1
	.word	8
	.word	16
	.word	24
	.word	32
	.byte	1
	.byte	3
	.align	4
	.long	(.L565 - .) + 0
	.align	8
	.quad	.L311
	.word	57
	.word	4
	.word	8
	.word	16
	.word	24
	.word	32
	.align	4
	.long	(.L566 - .) + 0
	.align	8
	.quad	.L310
	.word	57
	.word	5
	.word	0
	.word	8
	.word	16
	.word	24
	.word	32
	.align	4
	.long	(.L567 - .) + 0
	.align	8
	.quad	.L308
	.word	59
	.word	4
	.word	1
	.word	8
	.word	9
	.word	32
	.byte	1
	.byte	3
	.align	4
	.long	(.L568 - .) + 0
	.align	8
	.quad	.L306
	.word	57
	.word	3
	.word	8
	.word	16
	.word	32
	.align	4
	.long	(.L569 - .) + 0
	.align	8
	.quad	.L304
	.word	59
	.word	7
	.word	0
	.word	1
	.word	3
	.word	7
	.word	8
	.word	16
	.word	32
	.byte	1
	.byte	3
	.align	4
	.long	(.L570 - .) + 0
	.align	8
	.quad	.L302
	.word	57
	.word	0
	.align	4
	.long	(.L571 - .) + 0
	.align	8
	.quad	.L301
	.word	57
	.word	3
	.word	0
	.word	8
	.word	32
	.align	4
	.long	(.L572 - .) + 0
	.align	8
	.quad	.L300
	.word	57
	.word	0
	.align	4
	.long	(.L573 - .) + 0
	.align	8
	.quad	.L298
	.word	57
	.word	0
	.align	4
	.long	(.L574 - .) + 0
	.align	8
	.quad	.L283
	.word	27
	.word	1
	.word	8
	.byte	1
	.byte	0
	.align	4
	.long	(.L575 - .) + 0
	.align	8
	.quad	.L281
	.word	25
	.word	1
	.word	8
	.align	4
	.long	(.L576 - .) + 0
	.align	8
	.quad	.L279
	.word	27
	.word	2
	.word	0
	.word	8
	.byte	1
	.byte	3
	.align	4
	.long	(.L577 - .) + 0
	.align	8
	.quad	.L277
	.word	25
	.word	2
	.word	0
	.word	8
	.align	4
	.long	(.L578 - .) + 0
	.align	8
	.quad	.L275
	.word	27
	.word	1
	.word	0
	.byte	1
	.byte	1
	.align	4
	.long	(.L579 - .) + 0
	.align	8
	.quad	.L270
	.word	9
	.word	0
	.align	4
	.long	(.L580 - .) + 0
	.align	8
	.quad	.L268
	.word	9
	.word	0
	.align	4
	.long	(.L581 - .) + 0
	.align	8
	.quad	.L263
	.word	35
	.word	1
	.word	3
	.byte	1
	.byte	0
	.align	4
	.long	(.L582 - .) + 0
	.align	8
	.quad	.L260
	.word	35
	.word	2
	.word	8
	.word	16
	.byte	1
	.byte	1
	.align	4
	.long	(.L583 - .) + 0
	.align	8
	.quad	.L258
	.word	33
	.word	2
	.word	8
	.word	16
	.align	4
	.long	(.L584 - .) + 0
	.align	8
	.quad	.L256
	.word	35
	.word	3
	.word	0
	.word	1
	.word	8
	.byte	1
	.byte	1
	.align	4
	.long	(.L585 - .) + 0
	.align	8
	.quad	.L254
	.word	33
	.word	2
	.word	0
	.word	8
	.align	4
	.long	(.L586 - .) + 0
	.align	8
	.quad	.L253
	.word	33
	.word	1
	.word	0
	.align	4
	.long	(.L587 - .) + 0
	.align	8
	.quad	.L251
	.word	35
	.word	1
	.word	1
	.byte	1
	.byte	1
	.align	4
	.long	(.L588 - .) + 0
	.align	8
	.quad	.L249
	.word	33
	.word	0
	.align	4
	.long	(.L589 - .) + 0
	.align	8
	.quad	.L248
	.word	33
	.word	0
	.align	4
	.long	(.L590 - .) + 0
	.align	8
	.quad	.L241
	.word	33
	.word	0
	.align	4
	.long	(.L591 - .) + 0
	.align	8
	.quad	.L240
	.word	33
	.word	1
	.word	0
	.align	4
	.long	(.L592 - .) + 0
	.align	8
	.quad	.L239
	.word	33
	.word	0
	.align	4
	.long	(.L593 - .) + 0
	.align	8
	.quad	.L238
	.word	33
	.word	0
	.align	4
	.long	(.L594 - .) + 0
	.align	8
	.quad	.L237
	.word	33
	.word	1
	.word	8
	.align	4
	.long	(.L595 - .) + 0
	.align	8
	.quad	.L236
	.word	33
	.word	2
	.word	0
	.word	8
	.align	4
	.long	(.L596 - .) + 0
	.align	8
	.quad	.L235
	.word	33
	.word	1
	.word	8
	.align	4
	.long	(.L597 - .) + 0
	.align	8
	.quad	.L234
	.word	33
	.word	1
	.word	8
	.align	4
	.long	(.L598 - .) + 0
	.align	8
	.quad	.L222
	.word	11
	.word	2
	.word	1
	.word	3
	.byte	1
	.byte	3
	.align	4
	.long	(.L599 - .) + 0
	.align	8
	.quad	.L218
	.word	43
	.word	2
	.word	1
	.word	8
	.byte	5
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.align	4
	.long	(.L600 - .) + 0
	.long	(.L601 - .) + 0
	.long	(.L601 - .) + 0
	.long	(.L601 - .) + 0
	.long	(.L601 - .) + 0
	.align	8
	.quad	.L216
	.word	41
	.word	1
	.word	8
	.align	4
	.long	(.L601 - .) + 0
	.align	8
	.quad	.L214
	.word	43
	.word	3
	.word	0
	.word	1
	.word	24
	.byte	5
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.align	4
	.long	(.L602 - .) + 0
	.long	(.L602 - .) + 0
	.long	(.L602 - .) + 0
	.long	(.L602 - .) + 0
	.long	(.L603 - .) + 0
	.align	8
	.quad	.L212
	.word	41
	.word	2
	.word	0
	.word	24
	.align	4
	.long	(.L604 - .) + 0
	.align	8
	.quad	.L210
	.word	43
	.word	4
	.word	1
	.word	8
	.word	16
	.word	24
	.byte	5
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.align	4
	.long	(.L605 - .) + 0
	.long	(.L605 - .) + 0
	.long	(.L605 - .) + 0
	.long	(.L605 - .) + 0
	.long	(.L606 - .) + 0
	.align	8
	.quad	.L208
	.word	41
	.word	3
	.word	8
	.word	16
	.word	24
	.align	4
	.long	(.L607 - .) + 0
	.align	8
	.quad	.L206
	.word	43
	.word	4
	.word	0
	.word	1
	.word	16
	.word	24
	.byte	4
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.align	4
	.long	(.L608 - .) + 0
	.long	(.L608 - .) + 0
	.long	(.L608 - .) + 0
	.long	(.L608 - .) + 0
	.align	8
	.quad	.L204
	.word	41
	.word	3
	.word	0
	.word	16
	.word	24
	.align	4
	.long	(.L608 - .) + 0
	.align	8
	.quad	.L200
	.word	9
	.word	0
	.align	4
	.long	(.L609 - .) + 0
	.align	8
	.quad	.L195
	.word	11
	.word	0
	.byte	1
	.byte	3
	.align	4
	.long	(.L610 - .) + 0
	.align	8
	.quad	.L192
	.word	11
	.word	1
	.word	3
	.byte	1
	.byte	3
	.align	4
	.long	(.L611 - .) + 0
	.align	8
	.quad	.L189
	.word	11
	.word	0
	.byte	1
	.byte	3
	.align	4
	.long	(.L612 - .) + 0
	.align	8
	.quad	.L186
	.word	11
	.word	1
	.word	3
	.byte	1
	.byte	3
	.align	4
	.long	(.L613 - .) + 0
	.align	8
	.quad	.L173
	.word	11
	.word	1
	.word	1
	.byte	1
	.byte	0
	.align	4
	.long	(.L614 - .) + 0
	.align	8
	.quad	.L169
	.word	11
	.word	1
	.word	1
	.byte	1
	.byte	0
	.align	4
	.long	(.L615 - .) + 0
	.align	8
	.quad	.L165
	.word	11
	.word	1
	.word	1
	.byte	1
	.byte	0
	.align	4
	.long	(.L616 - .) + 0
	.align	8
	.quad	.L156
	.word	35
	.word	2
	.word	0
	.word	1
	.byte	6
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.align	4
	.long	(.L617 - .) + 0
	.long	(.L618 - .) + 0
	.long	(.L618 - .) + 0
	.long	(.L618 - .) + 0
	.long	(.L618 - .) + 0
	.long	(.L619 - .) + 0
	.align	8
	.quad	.L154
	.word	33
	.word	1
	.word	0
	.align	4
	.long	(.L620 - .) + 0
	.align	8
	.quad	.L152
	.word	35
	.word	3
	.word	1
	.word	8
	.word	16
	.byte	6
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.align	4
	.long	(.L617 - .) + 0
	.long	(.L621 - .) + 0
	.long	(.L621 - .) + 0
	.long	(.L621 - .) + 0
	.long	(.L621 - .) + 0
	.long	(.L622 - .) + 0
	.align	8
	.quad	.L150
	.word	33
	.word	2
	.word	8
	.word	16
	.align	4
	.long	(.L623 - .) + 0
	.align	8
	.quad	.L148
	.word	35
	.word	3
	.word	0
	.word	1
	.word	16
	.byte	6
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.align	4
	.long	(.L617 - .) + 0
	.long	(.L624 - .) + 0
	.long	(.L624 - .) + 0
	.long	(.L624 - .) + 0
	.long	(.L624 - .) + 0
	.long	(.L625 - .) + 0
	.align	8
	.quad	.L146
	.word	33
	.word	2
	.word	0
	.word	16
	.align	4
	.long	(.L626 - .) + 0
	.align	8
	.quad	.L144
	.word	35
	.word	2
	.word	1
	.word	16
	.byte	6
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.align	4
	.long	(.L617 - .) + 0
	.long	(.L627 - .) + 0
	.long	(.L627 - .) + 0
	.long	(.L627 - .) + 0
	.long	(.L627 - .) + 0
	.long	(.L628 - .) + 0
	.align	8
	.quad	.L142
	.word	33
	.word	1
	.word	16
	.align	4
	.long	(.L629 - .) + 0
	.align	8
	.quad	.L140
	.word	35
	.word	2
	.word	3
	.word	16
	.byte	1
	.byte	0
	.align	4
	.long	(.L617 - .) + 0
	.align	8
	.quad	.L134
	.word	11
	.word	5
	.word	1
	.word	3
	.word	5
	.word	7
	.word	9
	.byte	5
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.align	4
	.long	(.L630 - .) + 0
	.long	(.L631 - .) + 0
	.long	(.L632 - .) + 0
	.long	(.L633 - .) + 0
	.long	(.L634 - .) + 0
	.align	8
	.quad	.L129
	.word	27
	.word	2
	.word	1
	.word	8
	.byte	3
	.byte	0
	.byte	1
	.byte	1
	.align	4
	.long	(.L635 - .) + 0
	.long	(.L635 - .) + 0
	.long	(.L635 - .) + 0
	.align	8
	.quad	.L127
	.word	25
	.word	1
	.word	8
	.align	4
	.long	(.L635 - .) + 0
	.align	8
	.quad	.L125
	.word	27
	.word	2
	.word	0
	.word	1
	.byte	1
	.byte	0
	.align	4
	.long	(.L636 - .) + 0
	.align	8
	.quad	.L123
	.word	25
	.word	1
	.word	0
	.align	4
	.long	(.L637 - .) + 0
	.align	8
	.quad	.L119
	.word	33
	.word	3
	.word	0
	.word	8
	.word	16
	.align	4
	.long	(.L638 - .) + 0
	.align	8
	.quad	.L117
	.word	35
	.word	6
	.word	0
	.word	1
	.word	3
	.word	5
	.word	8
	.word	16
	.byte	1
	.byte	1
	.align	4
	.long	(.L639 - .) + 0
	.align	8
	.quad	.L111
	.word	33
	.word	3
	.word	0
	.word	8
	.word	16
	.align	4
	.long	(.L640 - .) + 0
	.align	8
	.quad	.L109
	.word	35
	.word	6
	.word	0
	.word	1
	.word	3
	.word	5
	.word	8
	.word	16
	.byte	1
	.byte	1
	.align	4
	.long	(.L641 - .) + 0
	.align	8
	.quad	.L103
	.word	10
	.word	1
	.word	1
	.byte	0
	.align	8
	.align	4
.L495:
	.long	(.L643 - .) + 1
	.long	127947088
	.long	(.L645 - .) + 1
	.long	5276024
	.long	(.L647 - .) + 1543503873
	.long	5050459
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L633:
	.long	(.L651 - .) + 1
	.long	7350400
	.long	(.L653 - .) + 1
	.long	11059640
	.long	(.L654 - .) + 0
	.long	8921480
	.align	4
.L489:
	.long	(.L655 - .) + 3
	.long	4740392
	.long	(.L645 - .) + 1
	.long	5269880
	.long	(.L656 - .) + 1
	.long	11014816
	.long	(.L649 - .) + 0
	.long	150998040
	.align	4
.L593:
	.long	(.L657 - .) + 0
	.long	71339632
	.align	4
.L605:
	.long	(.L658 - .) + 0
	.long	49297552
	.align	4
.L600:
	.long	(.L658 - .) + -201326592
	.long	48105649
	.align	4
.L595:
	.long	(.L657 - .) + 0
	.long	70785648
	.align	4
.L522:
	.long	(.L660 - .) + 1
	.long	126360048
	.long	(.L661 - .) + 1
	.long	81793256
	.long	(.L662 - .) + 0
	.long	121652512
	.align	4
.L564:
	.long	(.L663 - .) + 0
	.long	93378072
	.align	4
.L594:
	.long	(.L657 - .) + 0
	.long	71340408
	.align	4
.L625:
	.long	(.L665 - .) + 1
	.long	17848760
	.long	(.L666 - .) + 0
	.long	13637712
	.align	4
.L554:
	.long	(.L667 - .) + 0
	.long	100156960
	.align	4
.L614:
	.long	(.L668 - .) + 1
	.long	6301824
	.long	(.L669 - .) + 0
	.long	19429760
	.align	4
.L500:
	.long	(.L671 - .) + 1
	.long	187709760
	.long	(.L672 - .) + 1
	.long	188765496
	.long	(.L647 - .) + 738197505
	.long	5511259
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L546:
	.long	(.L661 - .) + 3
	.long	81269088
	.long	(.L673 - .) + 0
	.long	112215328
	.align	4
.L632:
	.long	(.L653 - .) + 1
	.long	11059712
	.long	(.L654 - .) + 0
	.long	8921480
	.align	4
.L599:
	.long	(.L674 - .) + 0
	.long	51936840
	.align	4
.L587:
	.long	(.L676 - .) + 1
	.long	45104280
	.long	(.L677 - .) + 1
	.long	28352024
	.long	(.L678 - .) + 0
	.long	78123400
	.align	4
.L618:
	.long	(.L666 - .) + 0
	.long	12589136
	.align	4
.L560:
	.long	(.L660 - .) + 1
	.long	126360048
	.long	(.L661 - .) + 1
	.long	81793256
	.long	(.L667 - .) + 0
	.long	97008920
	.align	4
.L513:
	.long	(.L662 - .) + 0
	.long	123224440
	.align	4
.L548:
	.long	(.L679 - .) + 0
	.long	104880536
	.align	4
.L635:
	.long	(.L680 - .) + 0
	.long	5259544
	.align	4
.L571:
	.long	(.L663 - .) + 2
	.long	89657680
	.align	4
.L515:
	.long	(.L662 - .) + 0
	.long	132655456
	.align	4
.L516:
	.long	(.L662 - .) + 0
	.long	131102208
	.align	4
.L590:
	.long	(.L678 - .) + 0
	.long	77611336
	.align	4
.L559:
	.long	(.L667 - .) + 2
	.long	97521992
	.align	4
.L538:
	.long	(.L681 - .) + 1
	.long	5253248
	.long	(.L682 - .) + 1
	.long	12647992
	.long	(.L673 - .) + 0
	.long	115380720
	.align	4
.L547:
	.long	(.L683 - .) + 805306368
	.long	-2146611200
	.align	4
.L578:
	.long	(.L684 - .) + 0
	.long	84939072
	.align	4
.L589:
	.long	(.L676 - .) + 1
	.long	43531416
	.long	(.L677 - .) + 1
	.long	28352024
	.long	(.L678 - .) + 0
	.long	78123400
	.align	4
.L582:
	.long	(.L677 - .) + 1
	.long	28346904
	.long	(.L678 - .) + 0
	.long	78123400
	.align	4
.L568:
	.long	(.L663 - .) + 0
	.long	90723952
	.align	4
.L525:
	.long	(.L685 - .) + 1610612736
	.long	-2146537472
	.align	4
.L634:
	.long	(.L651 - .) + 1
	.long	7350400
	.long	(.L653 - .) + 1
	.long	11068928
	.long	(.L654 - .) + 0
	.long	8921480
	.align	4
.L638:
	.long	(.L686 - .) + 1
	.long	138945704
	.long	(.L687 - .) + 0
	.long	58732664
	.align	4
.L555:
	.long	(.L667 - .) + 0
	.long	100187680
	.align	4
.L521:
	.long	(.L662 - .) + 0
	.long	125330680
	.align	4
.L508:
	.long	(.L688 - .) + 0
	.long	147866936
	.align	4
.L523:
	.long	(.L660 - .) + 1
	.long	124788872
	.long	(.L661 - .) + 1
	.long	81793256
	.long	(.L662 - .) + 0
	.long	121652512
	.align	4
.L549:
	.long	(.L667 - .) + 0
	.long	101194432
	.align	4
.L576:
	.long	(.L684 - .) + 0
	.long	85987584
	.align	4
.L553:
	.long	(.L667 - .) + 0
	.long	100688280
	.align	4
.L623:
	.long	(.L665 - .) + 1
	.long	17853880
	.long	(.L666 - .) + 0
	.long	13113424
	.align	4
.L567:
	.long	(.L663 - .) + 0
	.long	91799072
	.align	4
.L602:
	.long	(.L658 - .) + 0
	.long	48773296
	.align	4
.L631:
	.long	(.L681 - .) + 1
	.long	5253248
	.long	(.L654 - .) + 0
	.long	8402088
	.align	4
.L636:
	.long	(.L665 - .) + 1
	.long	17848760
	.long	(.L680 - .) + 0
	.long	5259544
	.align	4
.L604:
	.long	(.L690 - .) + 1
	.long	139462808
	.long	(.L691 - .) + 1
	.long	17327440
	.long	(.L658 - .) + 0
	.long	48773296
	.align	4
.L526:
	.long	(.L682 - .) + 1
	.long	12637752
	.long	(.L673 - .) + 0
	.long	117469616
	.align	4
.L511:
	.long	(.L662 - .) + 0
	.long	123758048
	.align	4
.L497:
	.long	(.L672 - .) + 1
	.long	188746048
	.long	(.L647 - .) + 738197505
	.long	5511259
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L588:
	.long	(.L676 - .) + 1
	.long	44046416
	.long	(.L677 - .) + 1
	.long	28352024
	.long	(.L678 - .) + 0
	.long	78123400
	.align	4
.L580:
	.long	(.L660 - .) + 1
	.long	124788872
	.long	(.L661 - .) + 0
	.long	81793256
	.align	4
.L617:
	.long	(.L666 - .) + 1946157056
	.long	12454065
	.align	4
.L517:
	.long	(.L662 - .) + 0
	.long	131129856
	.align	4
.L498:
	.long	(.L672 - .) + 1
	.long	188751168
	.long	(.L647 - .) + 738197505
	.long	5511259
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L621:
	.long	(.L666 - .) + 0
	.long	13113424
	.align	4
.L541:
	.long	(.L681 - .) + 1
	.long	5253248
	.long	(.L682 - .) + 1
	.long	12637672
	.long	(.L673 - .) + 0
	.long	114855384
	.align	4
.L505:
	.long	(.L693 - .) + 1
	.long	70811216
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L510:
	.long	(.L694 - .) + 0
	.long	136851616
	.align	4
.L606:
	.long	(.L691 - .) + 1
	.long	17322320
	.long	(.L658 - .) + 0
	.long	49297552
	.align	4
.L527:
	.long	(.L681 - .) + 1
	.long	5253248
	.long	(.L682 - .) + 1
	.long	12637672
	.long	(.L673 - .) + 0
	.long	117469616
	.align	4
.L581:
	.long	(.L661 - .) + 2
	.long	81269088
	.align	4
.L640:
	.long	(.L695 - .) + 1
	.long	143664304
	.long	(.L687 - .) + 0
	.long	58732664
	.align	4
.L514:
	.long	(.L662 - .) + 0
	.long	133192104
	.align	4
.L488:
	.long	(.L696 - .) + 1
	.long	71335504
	.long	(.L649 - .) + 0
	.long	150998040
	.align	4
.L502:
	.long	(.L671 - .) + 1
	.long	187729216
	.long	(.L672 - .) + 1
	.long	188765496
	.long	(.L647 - .) + 738197505
	.long	5511259
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L586:
	.long	(.L676 - .) + 1
	.long	45628568
	.long	(.L677 - .) + 1
	.long	28352024
	.long	(.L678 - .) + 0
	.long	78123400
	.align	4
.L545:
	.long	(.L660 - .) + 1
	.long	124788872
	.long	(.L661 - .) + 1
	.long	81793256
	.long	(.L673 - .) + 0
	.long	112215328
	.align	4
.L611:
	.long	(.L697 - .) + 0
	.long	33042784
	.align	4
.L610:
	.long	(.L697 - .) + 0
	.long	33567072
	.align	4
.L607:
	.long	(.L690 - .) + 1
	.long	139462808
	.long	(.L691 - .) + 1
	.long	17327440
	.long	(.L658 - .) + 0
	.long	49297552
	.align	4
.L579:
	.long	(.L698 - .) + -1140850687
	.long	111886344
	.long	(.L684 - .) + 0
	.long	84427024
	.align	4
.L563:
	.long	(.L663 - .) + -1543503872
	.long	92412504
	.align	4
.L552:
	.long	(.L667 - .) + 0
	.long	100722168
	.align	4
.L597:
	.long	(.L657 - .) + 0
	.long	70815344
	.align	4
.L573:
	.long	(.L660 - .) + 1
	.long	124788872
	.long	(.L661 - .) + 1
	.long	81793256
	.long	(.L663 - .) + 0
	.long	89144600
	.align	4
.L639:
	.long	(.L686 - .) + 1
	.long	138443096
	.long	(.L687 - .) + 0
	.long	58732664
	.align	4
.L630:
	.long	(.L654 - .) + 0
	.long	8915336
	.align	4
.L627:
	.long	(.L666 - .) + 0
	.long	14162000
	.align	4
.L504:
	.long	(.L699 - .) + 1
	.long	15754504
	.long	(.L647 - .) + 1
	.long	6315368
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L603:
	.long	(.L691 - .) + 1
	.long	17322320
	.long	(.L658 - .) + 0
	.long	48773296
	.align	4
.L499:
	.long	(.L671 - .) + 1
	.long	187709920
	.long	(.L672 - .) + 1
	.long	188765496
	.long	(.L647 - .) + 738197505
	.long	5511259
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L620:
	.long	(.L665 - .) + 1
	.long	17853880
	.long	(.L666 - .) + 0
	.long	12589136
	.align	4
.L519:
	.long	(.L662 - .) + 0
	.long	128478520
	.align	4
.L626:
	.long	(.L665 - .) + 1
	.long	17853880
	.long	(.L666 - .) + 0
	.long	13637712
	.align	4
.L629:
	.long	(.L665 - .) + 1
	.long	17853880
	.long	(.L666 - .) + 0
	.long	14162000
	.align	4
.L596:
	.long	(.L701 - .) + 1
	.long	819466672
	.long	(.L703 - .) + 1
	.long	10488312
	.long	(.L704 - .) + 1
	.long	14177624
	.long	(.L705 - .) + 1
	.long	16270616
	.long	(.L657 - .) + 0
	.long	70785648
	.align	4
.L570:
	.long	(.L663 - .) + 0
	.long	90213832
	.align	4
.L536:
	.long	(.L682 - .) + 1
	.long	12637752
	.long	(.L673 - .) + 0
	.long	115380720
	.align	4
.L557:
	.long	(.L667 - .) + 0
	.long	98570696
	.align	4
.L544:
	.long	(.L660 - .) + 1
	.long	126360048
	.long	(.L661 - .) + 1
	.long	81793256
	.long	(.L673 - .) + 0
	.long	112215328
	.align	4
.L608:
	.long	(.L658 - .) + 0
	.long	49813584
	.align	4
.L561:
	.long	(.L660 - .) + 1
	.long	124788872
	.long	(.L661 - .) + 1
	.long	81793256
	.long	(.L667 - .) + 0
	.long	97008920
	.align	4
.L534:
	.long	(.L673 - .) + 0
	.long	116407552
	.align	4
.L615:
	.long	(.L681 - .) + 1
	.long	5253248
	.long	(.L706 - .) + 0
	.long	18905640
	.align	4
.L612:
	.long	(.L697 - .) + 0
	.long	32518496
	.align	4
.L537:
	.long	(.L681 - .) + 1
	.long	5253248
	.long	(.L682 - .) + 1
	.long	12637672
	.long	(.L673 - .) + 0
	.long	115380720
	.align	4
.L562:
	.long	(.L661 - .) + 3
	.long	81269088
	.long	(.L667 - .) + 0
	.long	97008920
	.align	4
.L558:
	.long	(.L667 - .) + 0
	.long	98602440
	.align	4
.L543:
	.long	(.L673 - .) + 0
	.long	114862552
	.align	4
.L565:
	.long	(.L663 - .) + 0
	.long	93332056
	.align	4
.L533:
	.long	(.L681 - .) + 1
	.long	5253248
	.long	(.L682 - .) + 1
	.long	12647992
	.long	(.L673 - .) + 0
	.long	116400384
	.align	4
.L529:
	.long	(.L673 - .) + 0
	.long	117477800
	.align	4
.L506:
	.long	(.L674 - .) + 1
	.long	51936840
	.long	(.L688 - .) + 0
	.long	149439864
	.align	4
.L601:
	.long	(.L658 - .) + 0
	.long	48249008
	.align	4
.L592:
	.long	(.L701 - .) + 1
	.long	819466672
	.long	(.L703 - .) + 1
	.long	10488312
	.long	(.L704 - .) + 1
	.long	14177624
	.long	(.L705 - .) + 1
	.long	16270616
	.long	(.L657 - .) + 0
	.long	71309936
	.align	4
.L550:
	.long	(.L667 - .) + 0
	.long	101222080
	.align	4
.L624:
	.long	(.L666 - .) + 0
	.long	13637712
	.align	4
.L539:
	.long	(.L673 - .) + 0
	.long	115388904
	.align	4
.L524:
	.long	(.L661 - .) + 3
	.long	81269088
	.long	(.L662 - .) + 0
	.long	121652512
	.align	4
.L509:
	.long	(.L687 - .) + -1677721599
	.long	57816264
	.long	(.L694 - .) + -1879048192
	.long	137629793
	.align	4
.L528:
	.long	(.L681 - .) + 1
	.long	5253248
	.long	(.L682 - .) + 1
	.long	12647992
	.long	(.L673 - .) + 0
	.long	117469616
	.align	4
.L540:
	.long	(.L682 - .) + 1
	.long	12637752
	.long	(.L673 - .) + 0
	.long	114855384
	.align	4
.L613:
	.long	(.L697 - .) + 0
	.long	31994208
	.align	4
.L556:
	.long	(.L667 - .) + 0
	.long	99112560
	.align	4
.L532:
	.long	(.L681 - .) + 1
	.long	5253248
	.long	(.L682 - .) + 1
	.long	12637672
	.long	(.L673 - .) + 0
	.long	116400384
	.align	4
.L491:
	.long	(.L707 - .) + 1
	.long	97031616
	.long	(.L643 - .) + 1
	.long	127947088
	.long	(.L645 - .) + 1
	.long	5276024
	.long	(.L656 - .) + 1
	.long	11014816
	.long	(.L649 - .) + 0
	.long	150998040
	.align	4
.L583:
	.long	(.L676 - .) + 1
	.long	46143656
	.long	(.L677 - .) + 1
	.long	28352024
	.long	(.L678 - .) + 0
	.long	78123400
	.align	4
.L609:
	.long	(.L708 - .) + 3
	.long	15222024
	.long	(.L709 - .) + 0
	.long	42478904
	.align	4
.L641:
	.long	(.L695 - .) + 1
	.long	143161688
	.long	(.L687 - .) + 0
	.long	58732664
	.align	4
.L622:
	.long	(.L665 - .) + 1
	.long	17848760
	.long	(.L666 - .) + 0
	.long	13113424
	.align	4
.L577:
	.long	(.L674 - .) + 1
	.long	51936840
	.long	(.L684 - .) + 0
	.long	85474664
	.align	4
.L530:
	.long	(.L673 - .) + 0
	.long	116935024
	.align	4
.L503:
	.long	(.L671 - .) + 1
	.long	187740640
	.long	(.L672 - .) + 1
	.long	188765496
	.long	(.L647 - .) + 738197505
	.long	5511259
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L585:
	.long	(.L676 - .) + 1
	.long	46147752
	.long	(.L677 - .) + 1
	.long	28352024
	.long	(.L678 - .) + 0
	.long	78123400
	.align	4
.L501:
	.long	(.L671 - .) + 1
	.long	187714880
	.long	(.L672 - .) + 1
	.long	188765496
	.long	(.L647 - .) + 738197505
	.long	5511259
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L542:
	.long	(.L681 - .) + 1
	.long	5253248
	.long	(.L682 - .) + 1
	.long	12647992
	.long	(.L673 - .) + 0
	.long	114855384
	.align	4
.L535:
	.long	(.L673 - .) + 0
	.long	115886448
	.align	4
.L493:
	.long	(.L655 - .) + 3
	.long	4740392
	.long	(.L645 - .) + 1
	.long	5269880
	.long	(.L647 - .) + 1543503873
	.long	5050459
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L492:
	.long	(.L708 - .) + 3
	.long	15222024
	.long	(.L711 - .) + -1744830463
	.long	329919961
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L496:
	.long	(.L643 - .) + 1
	.long	127958352
	.long	(.L645 - .) + 1
	.long	5276024
	.long	(.L647 - .) + 1543503873
	.long	5050459
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L507:
	.long	(.L688 - .) + 0
	.long	148904160
	.align	4
.L572:
	.long	(.L660 - .) + 1
	.long	126360048
	.long	(.L661 - .) + 1
	.long	81793256
	.long	(.L663 - .) + 0
	.long	89144600
	.align	4
.L494:
	.long	(.L655 - .) + 1
	.long	4746536
	.long	(.L645 - .) + 1
	.long	5269880
	.long	(.L647 - .) + 1543503873
	.long	5050459
	.long	(.L649 - .) + 0
	.long	524288
	.align	4
.L569:
	.long	(.L663 - .) + 0
	.long	90182088
	.align	4
.L619:
	.long	(.L665 - .) + 1
	.long	17848760
	.long	(.L666 - .) + 0
	.long	12589136
	.align	4
.L584:
	.long	(.L676 - .) + 1
	.long	46151848
	.long	(.L677 - .) + 1
	.long	28352024
	.long	(.L678 - .) + 0
	.long	78123400
	.align	4
.L566:
	.long	(.L663 - .) + 0
	.long	91768352
	.align	4
.L551:
	.long	(.L712 - .) + 0
	.long	-2146693120
	.align	4
.L628:
	.long	(.L665 - .) + 1
	.long	17848760
	.long	(.L666 - .) + 0
	.long	14162000
	.align	4
.L518:
	.long	(.L662 - .) + 0
	.long	130573712
	.align	4
.L637:
	.long	(.L665 - .) + 1
	.long	17853880
	.long	(.L680 - .) + 0
	.long	5259544
	.align	4
.L591:
	.long	(.L657 - .) + 0
	.long	71309936
	.align	4
.L531:
	.long	(.L682 - .) + 1
	.long	12637752
	.long	(.L673 - .) + 0
	.long	116400384
	.align	4
.L520:
	.long	(.L681 - .) + 1
	.long	5253248
	.long	(.L662 - .) + 0
	.long	128478480
	.align	4
.L490:
	.long	(.L655 - .) + 1
	.long	4746536
	.long	(.L645 - .) + 1
	.long	5269880
	.long	(.L656 - .) + 1
	.long	11014816
	.long	(.L649 - .) + 0
	.long	150998040
	.align	4
.L598:
	.long	(.L657 - .) + 0
	.long	70816120
	.align	4
.L574:
	.long	(.L661 - .) + 3
	.long	81269088
	.long	(.L663 - .) + 0
	.long	89144600
	.align	4
.L616:
	.long	(.L681 - .) + 1
	.long	5253248
	.long	(.L713 - .) + 0
	.long	18381352
	.align	4
.L575:
	.long	(.L684 - .) + 0
	.long	86511720
	.align	4
.L512:
	.long	(.L662 - .) + 0
	.long	123785696
.L689:
	.ascii	"stdlib.ml\0"
.L659:
	.ascii	"dynarray.ml\0"
.L675:
	.ascii	"list.ml\0"
.L664:
	.ascii	"src/sexp_conv.ml\0"
.L650:
	.ascii	"src/owl/maths/owl_maths.ml\0"
.L702:
	.ascii	"printf.ml\0"
.L700:
	.ascii	"camlinternalFormat.ml\0"
.L646:
	.ascii	"runtime/current_file.ml\0"
.L642:
	.ascii	"src/info.ml\0"
.L670:
	.ascii	"src/sexp.ml\0"
.L692:
	.ascii	"runtime/ppx_module_timer_runtime.ml\0"
.L710:
	.ascii	"runtime-lib/ppx_inline_test_lib.ml\0"
.L652:
	.ascii	"nbody/nbody.ml\0"
.L648:
	.ascii	"lqtree/lqtree.ml\0"
.L644:
	.ascii	"src/error.ml\0"
	.align	4
.L662:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Qtree.insert.insert_aux\0"
	.align	4
.L643:
	.long	(.L642 - .) + 0
	.ascii	"Base__Info.create_s\0"
	.align	4
.L713:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Bbox.midx\0"
	.align	4
.L676:
	.long	(.L675 - .) + 0
	.ascii	"Stdlib__List.map\0"
	.align	4
.L685:
	.long	(.L648 - .) + 0
	.word	23
	.word	42
	.long	1076
	.ascii	"Lqtree.Qtree.insert.insert_aux\0"
	.align	4
.L707:
	.long	(.L642 - .) + 0
	.ascii	"Base__Info.Computed.of_message\0"
	.align	4
.L672:
	.long	(.L670 - .) + 0
	.ascii	"Sexplib0__Sexp.message\0"
	.align	4
.L655:
	.long	(.L644 - .) + 0
	.ascii	"Base__Error.raise\0"
	.align	4
.L706:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Bbox.midy\0"
	.align	4
.L688:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Qtree.clear\0"
	.align	4
.L682:
	.long	(.L652 - .) + 0
	.ascii	"Nbody.(++)\0"
	.align	4
.L671:
	.long	(.L670 - .) + 0
	.ascii	"Sexplib0__Sexp.message.conv_fields\0"
	.align	4
.L703:
	.long	(.L702 - .) + 0
	.ascii	"Stdlib__Printf.kfprintf\0"
	.align	4
.L696:
	.long	(.L692 - .) + 0
	.ascii	"Ppx_module_timer_runtime.record_until\0"
	.align	4
.L695:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Qtree.populate.(fun)\0"
	.align	4
.L691:
	.long	(.L664 - .) + 0
	.ascii	"Sexplib0__Sexp_conv.sexp_of_int\0"
	.align	4
.L678:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Qtree.sexp_of_t\0"
	.align	4
.L668:
	.long	(.L650 - .) + 0
	.ascii	"Owl_maths.sub\0"
	.align	4
.L647:
	.long	(.L646 - .) + 0
	.ascii	"Ppx_expect_runtime__Current_file.set\0"
	.align	4
.L680:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.sexp_of_centroid\0"
	.align	4
.L694:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Qtree.build_qtree_in\0"
	.align	4
.L686:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Qtree.build_qtree_in.(fun)\0"
	.align	4
.L666:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Bbox.sexp_of_t\0"
	.align	4
.L711:
	.long	(.L710 - .) + 0
	.ascii	"Ppx_inline_test_lib.set_lib_and_partition\0"
	.align	4
.L679:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Qtree.node_check\0"
	.align	4
.L708:
	.long	(.L689 - .) + 0
	.ascii	"Stdlib.failwith\0"
	.align	4
.L687:
	.long	(.L675 - .) + 0
	.ascii	"Stdlib__List.iter\0"
	.align	4
.L673:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Qtree.acc_by_qtree.acc_aux\0"
	.align	4
.L699:
	.long	(.L664 - .) + 0
	.ascii	"Sexplib0__Sexp_conv.sexp_of_string\0"
	.align	4
.L667:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Qtree.subdivide_leaf\0"
	.align	4
.L657:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Node.equal\0"
	.align	4
.L698:
	.long	(.L659 - .) + 0
	.ascii	"Stdlib__Dynarray.create\0"
	.align	4
.L693:
	.long	(.L692 - .) + 0
	.ascii	"Ppx_module_timer_runtime.record_start\0"
	.align	4
.L684:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Qtree.new_t\0"
	.align	4
.L683:
	.long	(.L648 - .) + 0
	.word	20
	.word	43
	.long	630
	.ascii	"Lqtree.Qtree.acc_by_qtree.acc_aux\0"
	.align	4
.L654:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.centroid_sum\0"
	.align	4
.L661:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Qtree.get_node\0"
	.align	4
.L653:
	.long	(.L652 - .) + 0
	.ascii	"Nbody.(*$)\0"
	.align	4
.L656:
	.long	(.L646 - .) + 0
	.ascii	"Ppx_expect_runtime__Current_file.unset\0"
	.align	4
.L705:
	.long	(.L702 - .) + 0
	.ascii	"Stdlib__Printf.printf\0"
	.align	4
.L704:
	.long	(.L702 - .) + 0
	.ascii	"Stdlib__Printf.fprintf\0"
	.align	4
.L697:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Quadrant.to_bbox\0"
	.align	4
.L645:
	.long	(.L644 - .) + 0
	.ascii	"Base__Error.raise_s\0"
	.align	4
.L712:
	.long	(.L648 - .) + 0
	.word	66
	.word	80
	.long	80
	.ascii	"Lqtree.Qtree.subdivide_leaf\0"
	.align	4
.L709:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Quadrant.of_index\0"
	.align	4
.L681:
	.long	(.L650 - .) + 0
	.ascii	"Owl_maths.add\0"
	.align	4
.L658:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Node.sexp_of_t\0"
	.align	4
.L690:
	.long	(.L689 - .) + 0
	.ascii	"Stdlib.string_of_int\0"
	.align	4
.L674:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Node.new_node\0"
	.align	4
.L660:
	.long	(.L659 - .) + 0
	.ascii	"Stdlib__Dynarray.get\0"
	.align	4
.L649:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree\0"
	.align	4
.L701:
	.long	(.L700 - .) + 0
	.ascii	"CamlinternalFormat.make_printf\0"
	.align	4
.L677:
	.long	(.L664 - .) + 0
	.ascii	"Sexplib0__Sexp_conv.sexp_of_list\0"
	.align	4
.L663:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Qtree.subdivide\0"
	.align	4
.L669:
	.long	(.L648 - .) + 0
	.ascii	"Lqtree.Bbox.size\0"
	.align	4
.L665:
	.long	(.L664 - .) + 0
	.ascii	"Sexplib0__Sexp_conv.sexp_of_float\0"
	.align	4
.L651:
	.long	(.L650 - .) + 0
	.ascii	"Owl_maths.mul\0"
	.align	8
	.size camlLqtree.frametable,. - camlLqtree.frametable
	.section .note.GNU-stack,"",%progbits

  |}
;;

let callback buffer ~run_in_background:_ ~client ~original_window ~window ~pos_map =
  let open Deferred.Or_error.Let_syntax in
  let%bind cursor_pos =
    Window.get_cursor [%here] client (Window.Or_current.Id original_window)
  in
  let cursor_pos : Asm.pos = cursor_pos.row, cursor_pos.col in
  (*   lookup cursor, if not found do nothing *)
  match Asm.find_pos cursor_pos pos_map with
  | None -> return ()
  | Some (start, end_) ->
    (* Set the current line *)
    let%bind () =
      let%bind () = Nvim.set_current_win [%here] client window in
      let%bind () =
        Window.set_cursor
          [%here]
          client
          (Window.Or_current.Id window)
          Position.One_indexed_row.{ row = start + 1; col = 0 }
      in
      let%bind () = Window.Option.set_for_current_buffer_in_window [%here] client (Window.Or_current.Id window) Window.Option.Per_buffer.Scrolloff 999 in
      let%bind () = Nvim.set_current_win [%here] client original_window in
      return ()
    in
    (* Highlight text *)
    let%bind namespace = Namespace.create [%here] client ~name:"mentasm" () in
    let hl_group : string = "Search" in
    let start_inclusive = Position.{ row = start; col = 0 } in
    let end_exclusive = Position.{ row = end_; col = 10 } in
    let buffer = Buffer.Or_current.Id buffer in
    let%bind () =
      Buffer.Untested.clear_namespace
        [%here]
        client
        buffer
        ~namespace
        ~line_start:0
        ~line_end:(-1)
    in
    let%bind _ =
      Buffer.Untested.create_extmark
        [%here]
        client
        buffer
        ~namespace
        ~start_inclusive
        ~end_exclusive
        ~hl_group
        ~strict:false
        ()
    in
    return ()
;;

let set_buffer_asm buffer client lines =
  Buffer.set_lines [%here] client (Id buffer) ~start:0 ~end_:1 ~strict_indexing:true lines
;;

let on_startup client =
  let open Deferred.Or_error.Let_syntax in
  let lines, file_map =
    let file_map, lines = Asm.filter_file_direcs (asm |> String.split_lines) in
    let chunks = Asm.parse_lines file_map lines |> Asm.filter_chunks_file "list.ml" in
    let lines, file_map = Asm.lines_map_of_chunks chunks in
    lines, file_map
  in
  let state, _, _ =
    match Option.is_some (Unix.getenv "INSIDE_DUNE") with
    | false -> Prod, Time_source.wall_clock (), force Time_ns_unix.Zone.local
    | true ->
      let time_source = Time_source.create ~now:Time_ns.epoch () in
      Test { time_source }, Time_source.read_only time_source, Time_ns_unix.Zone.utc
  in
  let%bind buffer, original_window, window =
    let%bind buffer = Buffer.create [%here] client ~listed:false ~scratch:true in
    let%bind () = Buffer.Option.set [%here] client (Id buffer) Bufhidden "wipe" in
    (* We block Neovim for this sequence of commands so that they are not interleaved by
       unrelated logic. *)
    block_nvim [%here] client ~f:(fun client ->
      let%bind original_window = Nvim.get_current_win [%here] client in
      let%bind () = Command.exec [%here] client "vsplit" in
      let%bind () = Nvim.set_current_buf [%here] client buffer in
      let%bind () = set_buffer_asm buffer client lines in
      let%bind () = Buffer.Option.set [%here] client (Id buffer) Readonly true in
      let%bind window = Nvim.get_current_win [%here] client in
      let%bind () = Nvim.set_current_win [%here] client original_window in
      return (buffer, original_window, window))
  in
  let%bind (_ : Autocmd.Id.t) =
    register_callback_to_auto_command
      client
      (callback buffer ~original_window ~window ~pos_map:file_map)
  in
  return state
;;

let command =
  Vcaml_plugin.Persistent.create
    ~name:"buffer-clock"
    ~description:"Opens a window that displays a clock"
    ~on_startup
    ~notify_fn:(`Lua "buffer_clock_setup")
    []
;;
