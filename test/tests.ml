open Core

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

let%expect_test "asm_filter_file_direcs" =
  let file_map, lines = Mentasm.Asm.filter_file_direcs (asm |> String.split_lines) in
  printf "%s" (Hashtbl.sexp_of_t Int.sexp_of_t String.sexp_of_t file_map |> Sexp.to_string);
  [%expect {| ((1 list.ml)(2 lqtree/lqtree.ml)(3 src/sexp_conv.ml)(4 src/owl/maths/owl_maths.ml)(5 nbody/nbody.ml)(6 stdlib.ml)(7 camlinternalFormat.ml)(8 dynarray.ml)(9 runtime/ppx_module_timer_runtime.ml)(10 runtime-lib/benchmark_accumulator.ml)(11 runtime/current_file.ml)(12 src/sexp.ml)(13 src/info.ml)(14 src/error.ml)(15 runtime-lib/ppx_inline_test_lib.ml)) |}];
  printf "%s" (String.concat ~sep:"\n" lines);
  [%expect
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
    .loc	4	10	10
    movsd	(%rsi), %xmm0
    movapd	%xmm0, %xmm1
    .loc	4	10	10
    addsd	(%rdi), %xmm1
    .loc	2	15	6
    movq	8(%rbx), %rbx
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
    .loc	9	135	31
    call	camlPpx_module_timer_runtime.record_start_186@PLT
    .L476:
    movq	camlLqtree__const_immstring_1471@GOTPCREL(%rip), %rsi
    movq	camlPpx_bench_lib__Benchmark_accumulator__libname_ref_511@GOTPCREL(%rip), %rax
    movq	(%rax), %rdi
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
    .loc	13	244	31
    leaq	-16(%rbx), %rax
    movq	$1027, -8(%rax)
    movq	%rbx, (%rax)
    .loc	13	244	20
    call	camlBase__Info.of_message_684@PLT
    .L480:
    .loc	14	9	27
    call	camlBase__Info.to_exn_1288@PLT
    .L481:
    .loc	14	9	21
    call	caml_raise_exn@PLT
    .L482:
    .L471:
    movq	camlPpx_inline_test_lib__Pmakeblock_3573@GOTPCREL(%rip), %rax
    movq	(%rax), %rax
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
    |}]
;;

let%expect_test "asm_parse_lines" =
  let file_map, lines = Mentasm.Asm.filter_file_direcs (asm |> String.split_lines) in
  let chunks = Mentasm.Asm.parse_lines file_map lines in
  printf "%s" (Sexp.to_string_hum (sexp_of_list Mentasm.Asm.sexp_of_chunk chunks));
  [%expect
    {|
    (((file "") (line_start 0) (line_end 110) (col_start ()) (col_end (13))
      (lines
       ("" "\t.file \"\"" "\t.section .rodata.cst16,\"aM\",@progbits,16"
        "\t.align\t16" caml_negf_mask: "\t.quad\t0x8000000000000000" "\t.quad\t0"
        "\t.align\t16" caml_absf_mask: "\t.quad\t0x7fffffffffffffff"
        "\t.quad\t-1" "\t.data" "\t.globl\tcamlLqtree.data_begin"
        camlLqtree.data_begin: "\t.text" "\t.globl\tcamlLqtree.code_begin"
        camlLqtree.code_begin: "\t.data" "\t.align\t8" "\t.data" "\t.align\t8"
        "\t.quad\t3063" "\t.globl\tcamlLqtree__to_index_1517"
        camlLqtree__to_index_1517: "\t.globl\tcamlLqtree.to_index_442_closure"
        camlLqtree.to_index_442_closure: "\t.quad\tcamlLqtree.to_index_442"
        "\t.quad\t0x100000000000005" "\t.data" "\t.align\t8" "\t.quad\t4087"
        "\t.globl\tcamlLqtree__to_bbox_2529" camlLqtree__to_bbox_2529:
        "\t.globl\tcamlLqtree.to_bbox_407_closure"
        camlLqtree.to_bbox_407_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.to_bbox_407" "\t.data"
        "\t.align\t8" "\t.quad\t4087" "\t.globl\tcamlLqtree__subdivide_leaf_2545"
        camlLqtree__subdivide_leaf_2545:
        "\t.globl\tcamlLqtree.subdivide_leaf_962_closure"
        camlLqtree.subdivide_leaf_962_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.subdivide_leaf_962"
        "\t.data" "\t.align\t8" "\t.quad\t4087"
        "\t.globl\tcamlLqtree__subdivide_2542" camlLqtree__subdivide_2542:
        "\t.globl\tcamlLqtree.subdivide_859_closure"
        camlLqtree.subdivide_859_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.subdivide_859"
        "\t.data" "\t.align\t8" "\t.quad\t3063" "\t.globl\tcamlLqtree__size_1516"
        camlLqtree__size_1516: "\t.globl\tcamlLqtree.size_360_closure"
        camlLqtree.size_360_closure: "\t.quad\tcamlLqtree.size_360"
        "\t.quad\t0x100000000000005" "\t.data" "\t.align\t8" "\t.quad\t3063"
        "\t.globl\tcamlLqtree__sexp_of_t_2538" camlLqtree__sexp_of_t_2538:
        "\t.globl\tcamlLqtree.sexp_of_t_766_closure"
        camlLqtree.sexp_of_t_766_closure: "\t.quad\tcamlLqtree.sexp_of_t_766"
        "\t.quad\t0x100000000000005" "\t.data" "\t.align\t8" "\t.quad\t3063"
        "\t.globl\tcamlLqtree__sexp_of_t_2530" camlLqtree__sexp_of_t_2530:
        "\t.globl\tcamlLqtree.sexp_of_t_485_closure"
        camlLqtree.sexp_of_t_485_closure: "\t.quad\tcamlLqtree.sexp_of_t_485"
        "\t.quad\t0x100000000000005" "\t.data" "\t.align\t8" "\t.quad\t3063"
        "\t.globl\tcamlLqtree__sexp_of_t_1511" camlLqtree__sexp_of_t_1511:
        "\t.globl\tcamlLqtree.sexp_of_t_178_closure"
        camlLqtree.sexp_of_t_178_closure: "\t.quad\tcamlLqtree.sexp_of_t_178"
        "\t.quad\t0x100000000000005" "\t.data" "\t.align\t8" "\t.quad\t7159"
        "\t.globl\tcamlLqtree__sexp_of_centroid_1507"
        camlLqtree__sexp_of_centroid_1507:
        "\t.globl\tcamlLqtree.sexp_of_centroid_88_closure"
        camlLqtree.sexp_of_centroid_88_closure:
        "\t.quad\tcamlLqtree.sexp_of_centroid_88" "\t.quad\t0x10000000000000d"
        "\t.quad\t3321" "\t.globl\tcamlLqtree.sexp_of_centroid_110_closure"
        camlLqtree.sexp_of_centroid_110_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.sexp_of_centroid_110"
        "\t.data" "\t.align\t8" "\t.quad\t4087"
        "\t.globl\tcamlLqtree__populate_2554" camlLqtree__populate_2554:
        "\t.globl\tcamlLqtree.populate_1388_closure"
        camlLqtree.populate_1388_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.populate_1388"
        "\t.data" "\t.align\t8" "\t.quad\t3063"
        "\t.globl\tcamlLqtree__of_index_1518" camlLqtree__of_index_1518:
        "\t.globl\tcamlLqtree.of_index_453_closure"
        camlLqtree.of_index_453_closure: "\t.quad\tcamlLqtree.of_index_453"
        "\t.quad\t0x100000000000005" "\t.data" "\t.align\t8" "\t.quad\t3063"
        "\t.globl\tcamlLqtree__node_type_1521" camlLqtree__node_type_1521:
        "\t.globl\tcamlLqtree.node_type_591_closure"
        camlLqtree.node_type_591_closure: "\t.quad\tcamlLqtree.node_type_591"
        "\t.quad\t0x100000000000005" "\t.data" "\t.align\t8" "\t.quad\t4087"
        "\t.globl\tcamlLqtree__node_check_2548" camlLqtree__node_check_2548:
        "\t.globl\tcamlLqtree.node_check_1076_closure"
        camlLqtree.node_check_1076_closure: "\t.quad\tcaml_curry3"
        "\t.quad\t0x300000000000007" "\t.quad\tcamlLqtree.node_check_1076"
        "\t.data" "\t.align\t8" "\t.quad\t3063"
        "\t.globl\tcamlLqtree__new_t_2539" camlLqtree__new_t_2539:
        "\t.globl\tcamlLqtree.new_t_821_closure" camlLqtree.new_t_821_closure:
        "\t.quad\tcamlLqtree.new_t_821" "\t.quad\t0x100000000000005" "\t.data"
        "\t.align\t8" "\t.quad\t4087" "\t.globl\tcamlLqtree__new_node_1520"
        camlLqtree__new_node_1520: "\t.globl\tcamlLqtree.new_node_579_closure"
        camlLqtree.new_node_579_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.new_node_579" "\t.data"
        "\t.align\t8" "\t.quad\t3063" "\t.globl\tcamlLqtree__midy_1515"
        camlLqtree__midy_1515: "\t.globl\tcamlLqtree.midy_331_closure"
        camlLqtree.midy_331_closure: "\t.quad\tcamlLqtree.midy_331"
        "\t.quad\t0x100000000000005" "\t.data" "\t.align\t8" "\t.quad\t3063"
        "\t.globl\tcamlLqtree__midx_1514" camlLqtree__midx_1514:
        "\t.globl\tcamlLqtree.midx_302_closure" camlLqtree.midx_302_closure:
        "\t.quad\tcamlLqtree.midx_302" "\t.quad\t0x100000000000005" "\t.data"
        "\t.align\t8" "\t.quad\t4087" "\t.globl\tcamlLqtree__insert_2551"
        camlLqtree__insert_2551: "\t.globl\tcamlLqtree.insert_1233_closure"
        camlLqtree.insert_1233_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.insert_1233" "\t.data"
        "\t.align\t8" "\t.quad\t4087" "\t.globl\tcamlLqtree__get_node_1522"
        camlLqtree__get_node_1522: "\t.globl\tcamlLqtree.get_node_788_closure"
        camlLqtree.get_node_788_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.get_node_788" "\t.data"
        "\t.align\t8" "\t.quad\t4087" "\t.globl\tcamlLqtree__equal_2531"
        camlLqtree__equal_2531: "\t.globl\tcamlLqtree.equal_615_closure"
        camlLqtree.equal_615_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.equal_615" "\t.data"
        "\t.align\t8" "\t.quad\t4087" "\t.globl\tcamlLqtree__contains_point_1513"
        camlLqtree__contains_point_1513:
        "\t.globl\tcamlLqtree.contains_point_273_closure"
        camlLqtree.contains_point_273_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.contains_point_273"
        "\t.data" "\t.align\t8" "\t.quad\t4087"
        "\t.globl\tcamlLqtree__contains_2528" camlLqtree__contains_2528:
        "\t.globl\tcamlLqtree.contains_378_closure"
        camlLqtree.contains_378_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.contains_378" "\t.data"
        "\t.align\t8" "\t.quad\t3063" "\t.globl\tcamlLqtree__clear_2555"
        camlLqtree__clear_2555: "\t.globl\tcamlLqtree.clear_1415_closure"
        camlLqtree.clear_1415_closure: "\t.quad\tcamlLqtree.clear_1415"
        "\t.quad\t0x100000000000005" "\t.data" "\t.align\t8" "\t.quad\t4087"
        "\t.globl\tcamlLqtree__centroid_sum_1509" camlLqtree__centroid_sum_1509:
        "\t.globl\tcamlLqtree.centroid_sum_120_closure"
        camlLqtree.centroid_sum_120_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.centroid_sum_120"
        "\t.data" "\t.align\t8" "\t.quad\t4087"
        "\t.globl\tcamlLqtree__build_qtree_in_2553"
        camlLqtree__build_qtree_in_2553:
        "\t.globl\tcamlLqtree.build_qtree_in_1357_closure"
        camlLqtree.build_qtree_in_1357_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.build_qtree_in_1357"
        "\t.data" "\t.align\t8" "\t.quad\t4087"
        "\t.globl\tcamlLqtree__acc_by_qtree_2550" camlLqtree__acc_by_qtree_2550:
        "\t.globl\tcamlLqtree.acc_by_qtree_1116_closure"
        camlLqtree.acc_by_qtree_1116_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.acc_by_qtree_1116"
        "\t.data" "\t.align\t8" "\t.quad\t4087" camlLqtree.2:
        camlLqtree.iter_4713_closure: "\t.quad\tcaml_curry2"
        "\t.quad\t0x200000000000007" "\t.quad\tcamlLqtree.iter_4713" "\t.data"
        "\t.align\t8" "\t.quad\t4087" camlLqtree.1: camlLqtree.iter_5243_closure:
        "\t.quad\tcaml_curry2" "\t.quad\t0x200000000000007"
        "\t.quad\tcamlLqtree.iter_5243" "\t.data" "\t.align\t8" "\t.quad\t1792"
        "\t.globl\tcamlLqtree__cond_2562" camlLqtree__cond_2562: "\t.quad\t1"
        "\t.data" "\t.align\t8" "\t.quad\t1792"
        "\t.globl\tcamlLqtree__simplify_fv_2563" camlLqtree__simplify_fv_2563:
        "\t.quad\t1" "\t.data" "\t.align\t8" "\t.quad\t1792"
        "\t.globl\tcamlLqtree__cond_3598" camlLqtree__cond_3598: "\t.quad\t1"
        "\t.data" "\t.align\t8" "\t.quad\t1792"
        "\t.globl\tcamlLqtree__simplify_fv_3599" camlLqtree__simplify_fv_3599:
        "\t.quad\t1" "\t.data" "\t.align\t8" "\t.quad\t14080"
        "\t.globl\tcamlLqtree__Pmakeblock_1597" camlLqtree__Pmakeblock_1597:
        "\t.quad\tcamlLqtree__prim_5912"
        "\t.quad\tcamlLqtree.sexp_of_t_766_closure" "\t.quad\t2001"
        "\t.quad\tcamlLqtree.get_node_788_closure"
        "\t.quad\tcamlLqtree.new_t_821_closure"
        "\t.quad\tcamlLqtree.subdivide_859_closure"
        "\t.quad\tcamlLqtree.subdivide_leaf_962_closure"
        "\t.quad\tcamlLqtree.node_check_1076_closure"
        "\t.quad\tcamlLqtree.acc_by_qtree_1116_closure"
        "\t.quad\tcamlLqtree.insert_1233_closure"
        "\t.quad\tcamlLqtree.build_qtree_in_1357_closure"
        "\t.quad\tcamlLqtree.populate_1388_closure"
        "\t.quad\tcamlLqtree.clear_1415_closure" "\t.data" "\t.align\t8"
        "\t.globl\tcamlLqtree.gc_roots" camlLqtree.gc_roots:
        "\t.quad\tcamlLqtree__Pmakeblock_1597"
        "\t.quad\tcamlLqtree__simplify_fv_3599" "\t.quad\tcamlLqtree__cond_3598"
        "\t.quad\tcamlLqtree__simplify_fv_2563" "\t.quad\tcamlLqtree__cond_2562"
        "\t.quad\t0" "\t.text" "\t.align\t16"
        "\t.globl\tcamlLqtree.sexp_of_centroid_88"
        camlLqtree.sexp_of_centroid_88: "\t.cfi_startproc" .L100:
        "\tcmpq\t(%r14), %r15" "\tjbe\t.L101" .L102: "\tmovq\t8(%rax), %rbx"
        "\tmovq\t(%rax), %rax" "\tjmp\tcamlLqtree.sexp_of_centroid_110@PLT"
        .L101: "\tcall\tcaml_call_gc@PLT" .L103: "\tjmp\t.L102" "\t.cfi_endproc"
        "\t.type camlLqtree.sexp_of_centroid_88,@function"
        "\t.size camlLqtree.sexp_of_centroid_88,. - camlLqtree.sexp_of_centroid_88"
        "\t.text" "\t.align\t16" "\t.globl\tcamlLqtree.iter_4713"
        camlLqtree.iter_4713:)))
     ((file list.ml) (line_start 110) (line_end 112) (col_start (13))
      (col_end (4))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-344(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L106" .L107: "\tsubq\t$24, %rsp" "\t.cfi_adjust_cfa_offset 24"
        .L105: "\ttestb\t$1, %al" "\tje\t.L104" "\tmovl\t$1, %eax"
        "\taddq\t$24, %rsp" "\t.cfi_adjust_cfa_offset -24" "\tret"
        "\t.cfi_adjust_cfa_offset 24" "\t.align\t4" .L104:
        "\tmovq\t%rdi, 16(%rsp)" "\tmovq\t%rbx, 8(%rsp)" "\tmovq\t%rax, (%rsp)")))
     ((file list.ml) (line_start 112) (line_end 273) (col_start (4))
      (col_end (38)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 273) (line_end 273) (col_start (38))
      (col_end (30)) (lines ("\tmovq\t8(%rax), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 273) (line_end 273) (col_start (30))
      (col_end (30))
      (lines
       ("\tsubq\t$24, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L108" .L110:
        "\tleaq\t8(%r15), %rsi" "\tmovq\t$2048, -8(%rsi)")))
     ((file lqtree/lqtree.ml) (line_start 273) (line_end 274) (col_start (30))
      (col_end (9))
      (lines
       ("\tmovq\t(%rax), %rax" "\tmovq\t%rax, (%rsi)" "\tmovq\t%rdi, 8(%rsi)"
        "\tmovq\t%rbx, %rax" "\tmovq\t%rsi, %rbx")))
     ((file lqtree/lqtree.ml) (line_start 274) (line_end 112) (col_start (9))
      (col_end (4))
      (lines
       ("\tcall\tcamlLqtree.insert_1233@PLT" .L111: "\tmovq\t(%rsp), %rax")))
     ((file list.ml) (line_start 112) (line_end 110) (col_start (4))
      (col_end (13))
      (lines
       ("\tmovq\t8(%rax), %rax" "\tmovq\t8(%rsp), %rbx" "\tmovq\t16(%rsp), %rdi")))
     ((file list.ml) (line_start 110) (line_end 110) (col_start (13))
      (col_end (13))
      (lines
       ("\tjmp\t.L105" .L108: "\tcall\tcaml_call_gc@PLT" .L109: "\tjmp\t.L110"
        .L106: "\tpush\t$36" "\t.cfi_adjust_cfa_offset 8"
        "\tcall\tcaml_call_realloc_stack@PLT" "\tpopq\t%r10"
        "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L107"
        "\t.cfi_adjust_cfa_offset -24" "\t.cfi_endproc"
        "\t.type camlLqtree.iter_4713,@function"
        "\t.size camlLqtree.iter_4713,. - camlLqtree.iter_4713" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.iter_5243" camlLqtree.iter_5243:)))
     ((file list.ml) (line_start 110) (line_end 112) (col_start (13))
      (col_end (4))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-344(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L114" .L115: "\tsubq\t$24, %rsp" "\t.cfi_adjust_cfa_offset 24"
        .L113: "\ttestb\t$1, %al" "\tje\t.L112" "\tmovl\t$1, %eax"
        "\taddq\t$24, %rsp" "\t.cfi_adjust_cfa_offset -24" "\tret"
        "\t.cfi_adjust_cfa_offset 24" "\t.align\t4" .L112:
        "\tmovq\t%rdi, 16(%rsp)" "\tmovq\t%rbx, 8(%rsp)" "\tmovq\t%rax, (%rsp)")))
     ((file list.ml) (line_start 112) (line_end 264) (col_start (4))
      (col_end (38)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 264) (line_end 264) (col_start (38))
      (col_end (30)) (lines ("\tmovq\t8(%rax), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 264) (line_end 264) (col_start (30))
      (col_end (30))
      (lines
       ("\tsubq\t$24, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L116" .L118:
        "\tleaq\t8(%r15), %rsi" "\tmovq\t$2048, -8(%rsi)")))
     ((file lqtree/lqtree.ml) (line_start 264) (line_end 265) (col_start (30))
      (col_end (9))
      (lines
       ("\tmovq\t(%rax), %rax" "\tmovq\t%rax, (%rsi)" "\tmovq\t%rdi, 8(%rsi)"
        "\tmovq\t%rbx, %rax" "\tmovq\t%rsi, %rbx")))
     ((file lqtree/lqtree.ml) (line_start 265) (line_end 112) (col_start (9))
      (col_end (4))
      (lines
       ("\tcall\tcamlLqtree.insert_1233@PLT" .L119: "\tmovq\t(%rsp), %rax")))
     ((file list.ml) (line_start 112) (line_end 110) (col_start (4))
      (col_end (13))
      (lines
       ("\tmovq\t8(%rax), %rax" "\tmovq\t8(%rsp), %rbx" "\tmovq\t16(%rsp), %rdi")))
     ((file list.ml) (line_start 110) (line_end 10) (col_start (13))
      (col_end (0))
      (lines
       ("\tjmp\t.L113" .L116: "\tcall\tcaml_call_gc@PLT" .L117: "\tjmp\t.L118"
        .L114: "\tpush\t$36" "\t.cfi_adjust_cfa_offset 8"
        "\tcall\tcaml_call_realloc_stack@PLT" "\tpopq\t%r10"
        "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L115"
        "\t.cfi_adjust_cfa_offset -24" "\t.cfi_endproc"
        "\t.type camlLqtree.iter_5243,@function"
        "\t.size camlLqtree.iter_5243,. - camlLqtree.iter_5243" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.sexp_of_centroid_110"
        camlLqtree.sexp_of_centroid_110:)))
     ((file lqtree/lqtree.ml) (line_start 10) (line_end 34) (col_start (0))
      (col_end (28))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-336(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L121" .L122: "\tsubq\t$16, %rsp" "\t.cfi_adjust_cfa_offset 16"
        .L120: "\tmovq\t%rbx, (%rsp)"
        "\tmovq\tcamlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rbx"
        "\tmovq\t(%rbx), %rbx")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (28))
      (col_end (27)) (lines ("\tmovq\t(%rbx), %rbx")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (27))
      (col_end (27)) (lines ("\tmovq\t(%rbx), %rdi")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (27))
      (col_end (22)) (lines ("\tcall\t*%rdi" .L123:)))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 10) (col_start (22))
      (col_end (16))
      (lines
       ("\tsubq\t$16, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L124" .L126:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t%rbx, 8(%rsp)" "\tmovq\t$1024, -8(%rbx)"
        "\tmovq\t%rax, (%rbx)" "\tmovq\t(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 10) (line_end 10) (col_start (16))
      (col_end (16)) (lines ("\tmovq\t8(%rax), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 10) (line_end 10) (col_start (16))
      (col_end (16)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 10) (line_end 10) (col_start (16))
      (col_end (16)) (lines ("\tcall\tcamlNbody.sexp_of_point_216@PLT" .L127:)))
     ((file lqtree/lqtree.ml) (line_start 10) (line_end 10) (col_start (16))
      (col_end (16))
      (lines
       ("\tsubq\t$64, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L128" .L130:
        "\tleaq\t8(%r15), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 10) (line_end 10) (col_start (16))
      (col_end (16))
      (lines
       ("\taddq\t$40, %rbx" "\tmovq\t$2048, -8(%rbx)" "\tmovq\t%rax, (%rbx)"
        "\tmovq\t$1, 8(%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 10) (line_end 10) (col_start (16))
      (col_end (16))
      (lines
       ("\tleaq\t-24(%rbx), %rdi" "\tmovq\t$2048, -8(%rdi)"
        "\tmovq\t8(%rsp), %rax" "\tmovq\t%rax, (%rdi)" "\tmovq\t%rbx, 8(%rdi)")))
     ((file lqtree/lqtree.ml) (line_start 10) (line_end 12) (col_start (16))
      (col_end (17))
      (lines
       ("\tleaq\t-16(%rdi), %rax" "\tmovq\t$1025, -8(%rax)"
        "\tmovq\t%rdi, (%rax)" "\taddq\t$16, %rsp" "\t.cfi_adjust_cfa_offset -16"
        "\tret" "\t.cfi_adjust_cfa_offset 16" .L128: "\tcall\tcaml_call_gc@PLT"
        .L129: "\tjmp\t.L130" .L124: "\tcall\tcaml_call_gc@PLT" .L125:
        "\tjmp\t.L126" .L121: "\tpush\t$35" "\t.cfi_adjust_cfa_offset 8"
        "\tcall\tcaml_call_realloc_stack@PLT" "\tpopq\t%r10"
        "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L122"
        "\t.cfi_adjust_cfa_offset -16" "\t.cfi_endproc"
        "\t.type camlLqtree.sexp_of_centroid_110,@function"
        "\t.size camlLqtree.sexp_of_centroid_110,. - camlLqtree.sexp_of_centroid_110"
        "\t.text" "\t.align\t16" "\t.globl\tcamlLqtree.centroid_sum_120"
        camlLqtree.centroid_sum_120:)))
     ((file lqtree/lqtree.ml) (line_start 12) (line_end 15) (col_start (17))
      (col_end (6)) (lines ("\t.cfi_startproc")))
     ((file lqtree/lqtree.ml) (line_start 15) (line_end 15) (col_start (6))
      (col_end (6)) (lines ()))
     ((file lqtree/lqtree.ml) (line_start 15) (line_end 15) (col_start (6))
      (col_end (6)) (lines (.L131:)))
     ((file lqtree/lqtree.ml) (line_start 15) (line_end 14) (col_start (6))
      (col_end (6)) (lines ("\tmovq\t(%rbx), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 14) (line_end 10) (col_start (6))
      (col_end (10)) (lines ("\tmovq\t(%rax), %rsi")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10))
      (lines ("\tmovsd\t(%rsi), %xmm0" "\tmovapd\t%xmm0, %xmm1")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 15)
      (col_start (10)) (col_end (6)) (lines ("\taddsd\t(%rdi), %xmm1")))
     ((file lqtree/lqtree.ml) (line_start 15) (line_end 21) (col_start (6))
      (col_end (24)) (lines ("\tmovq\t8(%rbx), %rbx")))
     ((file nbody/nbody.ml) (line_start 21) (line_end 21) (col_start (24))
      (col_end (24)) (lines ("\tmovq\t8(%rbx), %rsi")))
     ((file nbody/nbody.ml) (line_start 21) (line_end 14) (col_start (24))
      (col_end (6)) (lines ("\tmovq\t(%rbx), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 14) (line_end 21) (col_start (6))
      (col_end (24)) (lines ("\tmovq\t8(%rax), %rax")))
     ((file nbody/nbody.ml) (line_start 21) (line_end 21) (col_start (24))
      (col_end (24)) (lines ("\tmovq\t8(%rax), %rdx")))
     ((file nbody/nbody.ml) (line_start 21) (line_end 16) (col_start (24))
      (col_end (10))
      (lines ("\tmovq\t(%rax), %rax" "\tmovsd\t.L132(%rip), %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 16) (line_end 14)
      (col_start (10)) (col_end (10)) (lines ("\tdivsd\t%xmm1, %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 14) (line_end 14)
      (col_start (10)) (col_end (10))
      (lines
       ("\tsubq\t$96, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L133" .L135:
        "\tleaq\t8(%r15), %rcx")))
     ((file src/owl/maths/owl_maths.ml) (line_start 14) (line_end 14)
      (col_start (10)) (col_end (10))
      (lines ("\taddq\t$80, %rcx" "\tmovq\t$1277, -8(%rcx)")))
     ((file src/owl/maths/owl_maths.ml) (line_start 14) (line_end 14)
      (col_start (10)) (col_end (10))
      (lines ("\tmovsd\t(%rdi), %xmm3" "\tmovapd\t%xmm3, %xmm4")))
     ((file src/owl/maths/owl_maths.ml) (line_start 14) (line_end 14)
      (col_start (10)) (col_end (10))
      (lines ("\tmulsd\t(%rsi), %xmm4" "\tmovapd\t%xmm0, %xmm5")))
     ((file src/owl/maths/owl_maths.ml) (line_start 14) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tmulsd\t(%rdx), %xmm5")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 14)
      (col_start (10)) (col_end (10))
      (lines ("\taddsd\t%xmm4, %xmm5" "\tmovapd\t%xmm2, %xmm4")))
     ((file src/owl/maths/owl_maths.ml) (line_start 14) (line_end 14)
      (col_start (10)) (col_end (10))
      (lines ("\tmulsd\t%xmm5, %xmm4" "\tmovsd\t%xmm4, (%rcx)")))
     ((file src/owl/maths/owl_maths.ml) (line_start 14) (line_end 14)
      (col_start (10)) (col_end (10))
      (lines ("\tleaq\t-16(%rcx), %rdi" "\tmovq\t$1277, -8(%rdi)")))
     ((file src/owl/maths/owl_maths.ml) (line_start 14) (line_end 14)
      (col_start (10)) (col_end (10)) (lines ("\tmulsd\t(%rbx), %xmm3")))
     ((file src/owl/maths/owl_maths.ml) (line_start 14) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tmulsd\t(%rax), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 14)
      (col_start (10)) (col_end (10)) (lines ("\taddsd\t%xmm3, %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 14) (line_end 21)
      (col_start (10)) (col_end (48))
      (lines ("\tmulsd\t%xmm0, %xmm2" "\tmovsd\t%xmm2, (%rdi)")))
     ((file nbody/nbody.ml) (line_start 21) (line_end 10) (col_start (48))
      (col_end (10))
      (lines
       ("\tleaq\t-24(%rdi), %rbx" "\tmovq\t$2048, -8(%rbx)"
        "\tmovq\t%rdi, (%rbx)" "\tmovq\t%rcx, 8(%rbx)")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 17)
      (col_start (10)) (col_end (2))
      (lines
       ("\tleaq\t-16(%rbx), %rdi" "\tmovq\t$1277, -8(%rdi)"
        "\tmovsd\t%xmm1, (%rdi)")))
     ((file lqtree/lqtree.ml) (line_start 17) (line_end 23) (col_start (2))
      (col_end (2))
      (lines
       ("\tleaq\t-24(%rdi), %rax" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\t%rdi, (%rax)" "\tmovq\t%rbx, 8(%rax)" "\tret" .L133:
        "\tcall\tcaml_call_gc@PLT" .L134: "\tjmp\t.L135" "\t.cfi_endproc"
        "\t.type camlLqtree.centroid_sum_120,@function"
        "\t.size camlLqtree.centroid_sum_120,. - camlLqtree.centroid_sum_120"
        "\t.text" "\t.align\t16" "\t.globl\tcamlLqtree.sexp_of_t_178"
        camlLqtree.sexp_of_t_178:)))
     ((file lqtree/lqtree.ml) (line_start 23) (line_end 23) (col_start (2))
      (col_end (2))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-344(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L137" .L138: "\tsubq\t$24, %rsp" "\t.cfi_adjust_cfa_offset 24"
        .L136: "\tmovq\t%rax, 16(%rsp)")))
     ((file lqtree/lqtree.ml) (line_start 23) (line_end 34) (col_start (2))
      (col_end (28))
      (lines
       ("\tmovsd\t24(%rax), %xmm0"
        "\tmovq\tcamlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 23) (col_start (28))
      (col_end (2)) (lines ("\tmovq\t(%rax), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 23) (line_end 34) (col_start (2))
      (col_end (27))
      (lines
       ("\tsubq\t$16, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L139" .L141:
        "\tleaq\t8(%r15), %rax" "\tmovq\t$1277, -8(%rax)"
        "\tmovsd\t%xmm0, (%rax)")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (27))
      (col_end (27)) (lines ("\tmovq\t(%rbx), %rdi")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (27))
      (col_end (22)) (lines ("\tcall\t*%rdi" .L142:)))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (22))
      (col_end (22))
      (lines
       ("\tsubq\t$120, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L143" .L145:
        "\tleaq\t8(%r15), %rbx")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 27) (col_start (22))
      (col_end (6))
      (lines
       ("\taddq\t$104, %rbx" "\tmovq\t$1024, -8(%rbx)" "\tmovq\t%rax, (%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 27) (line_end 27) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-24(%rbx), %rax" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\t%rbx, (%rax)" "\tmovq\t$1, 8(%rax)")))
     ((file lqtree/lqtree.ml) (line_start 27) (line_end 27) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-24(%rax), %rbx" "\tmovq\t$2048, -8(%rbx)"
        "\tmovq\tcamlLqtree__const_block_193@GOTPCREL(%rip), %rdi"
        "\tmovq\t%rdi, (%rbx)" "\tmovq\t%rax, 8(%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 27) (line_end 27) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-16(%rbx), %rax" "\tmovq\t$1025, -8(%rax)"
        "\tmovq\t%rbx, (%rax)")))
     ((file lqtree/lqtree.ml) (line_start 27) (line_end 23) (col_start (6))
      (col_end (2))
      (lines
       ("\tleaq\t-24(%rax), %rdi" "\tmovq\t%rdi, (%rsp)"
        "\tmovq\t$2048, -8(%rdi)" "\tmovq\t%rax, (%rdi)" "\tmovq\t$1, 8(%rdi)"
        "\tmovq\t16(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 23) (line_end 34) (col_start (2))
      (col_end (28))
      (lines
       ("\tmovsd\t16(%rax), %xmm0"
        "\tmovq\tcamlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 23) (col_start (28))
      (col_end (2)) (lines ("\tmovq\t(%rax), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 23) (line_end 34) (col_start (2))
      (col_end (27))
      (lines
       ("\tleaq\t-16(%rdi), %rax" "\tmovq\t$1277, -8(%rax)"
        "\tmovsd\t%xmm0, (%rax)")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (27))
      (col_end (27)) (lines ("\tmovq\t(%rbx), %rdi")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (27))
      (col_end (22)) (lines ("\tcall\t*%rdi" .L146:)))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (22))
      (col_end (22))
      (lines
       ("\tsubq\t$120, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L147" .L149:
        "\tleaq\t8(%r15), %rbx")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 26) (col_start (22))
      (col_end (6))
      (lines
       ("\taddq\t$104, %rbx" "\tmovq\t$1024, -8(%rbx)" "\tmovq\t%rax, (%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 26) (line_end 26) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-24(%rbx), %rax" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\t%rbx, (%rax)" "\tmovq\t$1, 8(%rax)")))
     ((file lqtree/lqtree.ml) (line_start 26) (line_end 26) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-24(%rax), %rbx" "\tmovq\t$2048, -8(%rbx)"
        "\tmovq\tcamlLqtree__const_block_214@GOTPCREL(%rip), %rdi"
        "\tmovq\t%rdi, (%rbx)" "\tmovq\t%rax, 8(%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 26) (line_end 26) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-16(%rbx), %rax" "\tmovq\t$1025, -8(%rax)"
        "\tmovq\t%rbx, (%rax)")))
     ((file lqtree/lqtree.ml) (line_start 26) (line_end 23) (col_start (6))
      (col_end (2))
      (lines
       ("\tleaq\t-24(%rax), %rdi" "\tmovq\t%rdi, 8(%rsp)"
        "\tmovq\t$2048, -8(%rdi)" "\tmovq\t%rax, (%rdi)" "\tmovq\t(%rsp), %rax"
        "\tmovq\t%rax, 8(%rdi)" "\tmovq\t16(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 23) (line_end 34) (col_start (2))
      (col_end (28))
      (lines
       ("\tmovsd\t8(%rax), %xmm0"
        "\tmovq\tcamlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 23) (col_start (28))
      (col_end (2)) (lines ("\tmovq\t(%rax), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 23) (line_end 34) (col_start (2))
      (col_end (27))
      (lines
       ("\tleaq\t-16(%rdi), %rax" "\tmovq\t$1277, -8(%rax)"
        "\tmovsd\t%xmm0, (%rax)")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (27))
      (col_end (27)) (lines ("\tmovq\t(%rbx), %rdi")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (27))
      (col_end (22)) (lines ("\tcall\t*%rdi" .L150:)))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (22))
      (col_end (22))
      (lines
       ("\tsubq\t$120, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L151" .L153:
        "\tleaq\t8(%r15), %rbx")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 25) (col_start (22))
      (col_end (6))
      (lines
       ("\taddq\t$104, %rbx" "\tmovq\t$1024, -8(%rbx)" "\tmovq\t%rax, (%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 25) (line_end 25) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-24(%rbx), %rax" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\t%rbx, (%rax)" "\tmovq\t$1, 8(%rax)")))
     ((file lqtree/lqtree.ml) (line_start 25) (line_end 25) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-24(%rax), %rbx" "\tmovq\t$2048, -8(%rbx)"
        "\tmovq\tcamlLqtree__const_block_235@GOTPCREL(%rip), %rdi"
        "\tmovq\t%rdi, (%rbx)" "\tmovq\t%rax, 8(%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 25) (line_end 25) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-16(%rbx), %rax" "\tmovq\t$1025, -8(%rax)"
        "\tmovq\t%rbx, (%rax)")))
     ((file lqtree/lqtree.ml) (line_start 25) (line_end 23) (col_start (6))
      (col_end (2))
      (lines
       ("\tleaq\t-24(%rax), %rdi" "\tmovq\t%rdi, (%rsp)"
        "\tmovq\t$2048, -8(%rdi)" "\tmovq\t%rax, (%rdi)" "\tmovq\t8(%rsp), %rax"
        "\tmovq\t%rax, 8(%rdi)" "\tmovq\t16(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 23) (line_end 34) (col_start (2))
      (col_end (28))
      (lines
       ("\tmovsd\t(%rax), %xmm0"
        "\tmovq\tcamlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 23) (col_start (28))
      (col_end (2)) (lines ("\tmovq\t(%rax), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 23) (line_end 34) (col_start (2))
      (col_end (27))
      (lines
       ("\tleaq\t-16(%rdi), %rax" "\tmovq\t$1277, -8(%rax)"
        "\tmovsd\t%xmm0, (%rax)")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (27))
      (col_end (27)) (lines ("\tmovq\t(%rbx), %rdi")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (27))
      (col_end (22)) (lines ("\tcall\t*%rdi" .L154:)))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 34) (col_start (22))
      (col_end (22))
      (lines
       ("\tsubq\t$120, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L155" .L157:
        "\tleaq\t8(%r15), %rbx")))
     ((file src/sexp_conv.ml) (line_start 34) (line_end 24) (col_start (22))
      (col_end (6))
      (lines
       ("\taddq\t$104, %rbx" "\tmovq\t$1024, -8(%rbx)" "\tmovq\t%rax, (%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 24) (line_end 24) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-24(%rbx), %rax" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\t%rbx, (%rax)" "\tmovq\t$1, 8(%rax)")))
     ((file lqtree/lqtree.ml) (line_start 24) (line_end 24) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-24(%rax), %rbx" "\tmovq\t$2048, -8(%rbx)"
        "\tmovq\tcamlLqtree__const_block_256@GOTPCREL(%rip), %rdi"
        "\tmovq\t%rdi, (%rbx)" "\tmovq\t%rax, 8(%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 24) (line_end 24) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-16(%rbx), %rax" "\tmovq\t$1025, -8(%rax)"
        "\tmovq\t%rbx, (%rax)")))
     ((file lqtree/lqtree.ml) (line_start 24) (line_end 23) (col_start (6))
      (col_end (2))
      (lines
       ("\tleaq\t-24(%rax), %rbx" "\tmovq\t$2048, -8(%rbx)"
        "\tmovq\t%rax, (%rbx)" "\tmovq\t(%rsp), %rax" "\tmovq\t%rax, 8(%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 23) (line_end 31) (col_start (2))
      (col_end (21))
      (lines
       ("\tleaq\t-16(%rbx), %rax" "\tmovq\t$1025, -8(%rax)"
        "\tmovq\t%rbx, (%rax)" "\taddq\t$24, %rsp" "\t.cfi_adjust_cfa_offset -24"
        "\tret" "\t.cfi_adjust_cfa_offset 24" .L155: "\tcall\tcaml_call_gc@PLT"
        .L156: "\tjmp\t.L157" .L151: "\tcall\tcaml_call_gc@PLT" .L152:
        "\tjmp\t.L153" .L147: "\tcall\tcaml_call_gc@PLT" .L148: "\tjmp\t.L149"
        .L143: "\tcall\tcaml_call_gc@PLT" .L144: "\tjmp\t.L145" .L139:
        "\tcall\tcaml_call_gc@PLT" .L140: "\tjmp\t.L141" .L137: "\tpush\t$36"
        "\t.cfi_adjust_cfa_offset 8" "\tcall\tcaml_call_realloc_stack@PLT"
        "\tpopq\t%r10" "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L138"
        "\t.cfi_adjust_cfa_offset -24" "\t.cfi_endproc"
        "\t.type camlLqtree.sexp_of_t_178,@function"
        "\t.size camlLqtree.sexp_of_t_178,. - camlLqtree.sexp_of_t_178" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.contains_point_273"
        camlLqtree.contains_point_273:)))
     ((file lqtree/lqtree.ml) (line_start 31) (line_end 31) (col_start (21))
      (col_end (22)) (lines ("\t.cfi_startproc")))
     ((file lqtree/lqtree.ml) (line_start 31) (line_end 31) (col_start (22))
      (col_end (22)) (lines (.L161:)))
     ((file lqtree/lqtree.ml) (line_start 31) (line_end 31) (col_start (22))
      (col_end (22)) (lines ("\tmovq\t8(%rax), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 31) (line_end 32) (col_start (22))
      (col_end (4)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 32) (line_end 32) (col_start (4))
      (col_end (4)) (lines ("\tmovsd\t(%rax), %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 32) (line_end 32) (col_start (4))
      (col_end (25))
      (lines ("\tmovsd\t(%rbx), %xmm1" "\tcomisd\t%xmm1, %xmm0" "\tjb\t.L158")))
     ((file lqtree/lqtree.ml) (line_start 32) (line_end 32) (col_start (25))
      (col_end (36))
      (lines ("\tmovsd\t16(%rbx), %xmm1" "\tcomisd\t%xmm0, %xmm1" "\tjb\t.L159")))
     ((file lqtree/lqtree.ml) (line_start 32) (line_end 32) (col_start (36))
      (col_end (36)) (lines ("\tmovsd\t(%rdi), %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 32) (line_end 32) (col_start (36))
      (col_end (57))
      (lines ("\tmovsd\t8(%rbx), %xmm1" "\tcomisd\t%xmm1, %xmm0" "\tjb\t.L160")))
     ((file lqtree/lqtree.ml) (line_start 32) (line_end 32) (col_start (57))
      (col_end (52)) (lines ("\tmovsd\t24(%rbx), %xmm1")))
     ((file lqtree/lqtree.ml) (line_start 32) (line_end 32) (col_start (52))
      (col_end (52))
      (lines ("\tcmplesd\t%xmm1, %xmm0" "\tmovd\t%xmm0, %rax" "\tneg\t%rax")))
     ((file lqtree/lqtree.ml) (line_start 32) (line_end 35) (col_start (52))
      (col_end (11))
      (lines
       ("\tleaq\t1(%rax,%rax), %rax" "\tret" "\t.align\t4" .L160:
        "\tmovl\t$1, %eax" "\tret" "\t.align\t4" .L159: "\tmovl\t$1, %eax"
        "\tret" "\t.align\t4" .L158: "\tmovl\t$1, %eax" "\tret" "\t.cfi_endproc"
        "\t.type camlLqtree.contains_point_273,@function"
        "\t.size camlLqtree.contains_point_273,. - camlLqtree.contains_point_273"
        "\t.text" "\t.align\t16" "\t.globl\tcamlLqtree.midx_302"
        camlLqtree.midx_302:)))
     ((file lqtree/lqtree.ml) (line_start 35) (line_end 35) (col_start (11))
      (col_end (54)) (lines ("\t.cfi_startproc")))
     ((file lqtree/lqtree.ml) (line_start 35) (line_end 35) (col_start (54))
      (col_end (54)) (lines ()))
     ((file lqtree/lqtree.ml) (line_start 35) (line_end 35) (col_start (54))
      (col_end (54)) (lines (.L162:)))
     ((file lqtree/lqtree.ml) (line_start 35) (line_end 35) (col_start (54))
      (col_end (43))
      (lines ("\tmovsd\t(%rax), %xmm0" "\tmovsd\t.L163(%rip), %xmm1")))
     ((file lqtree/lqtree.ml) (line_start 35) (line_end 12) (col_start (43))
      (col_end (10)) (lines ("\tmovsd\t16(%rax), %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 16)
      (col_start (10)) (col_end (10)) (lines ("\tsubsd\t%xmm0, %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 16) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tdivsd\t%xmm1, %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10))
      (lines
       ("\tsubq\t$16, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L164" .L166:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t$1277, -8(%rbx)")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 36)
      (col_start (10)) (col_end (11))
      (lines
       ("\taddsd\t(%rax), %xmm2" "\tmovsd\t%xmm2, (%rbx)" "\tmovq\t%rbx, %rax"
        "\tret" .L164: "\tcall\tcaml_call_gc@PLT" .L165: "\tjmp\t.L166"
        "\t.cfi_endproc" "\t.type camlLqtree.midx_302,@function"
        "\t.size camlLqtree.midx_302,. - camlLqtree.midx_302" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.midy_331" camlLqtree.midy_331:)))
     ((file lqtree/lqtree.ml) (line_start 36) (line_end 36) (col_start (11))
      (col_end (54)) (lines ("\t.cfi_startproc")))
     ((file lqtree/lqtree.ml) (line_start 36) (line_end 36) (col_start (54))
      (col_end (54)) (lines ()))
     ((file lqtree/lqtree.ml) (line_start 36) (line_end 36) (col_start (54))
      (col_end (54)) (lines (.L167:)))
     ((file lqtree/lqtree.ml) (line_start 36) (line_end 36) (col_start (54))
      (col_end (43))
      (lines ("\tmovsd\t8(%rax), %xmm0" "\tmovsd\t.L163(%rip), %xmm1")))
     ((file lqtree/lqtree.ml) (line_start 36) (line_end 12) (col_start (43))
      (col_end (10)) (lines ("\tmovsd\t24(%rax), %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 16)
      (col_start (10)) (col_end (10)) (lines ("\tsubsd\t%xmm0, %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 16) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tdivsd\t%xmm1, %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10))
      (lines
       ("\tsubq\t$16, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L168" .L170:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t$1277, -8(%rbx)")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 37)
      (col_start (10)) (col_end (11))
      (lines
       ("\taddsd\t8(%rax), %xmm2" "\tmovsd\t%xmm2, (%rbx)" "\tmovq\t%rbx, %rax"
        "\tret" .L168: "\tcall\tcaml_call_gc@PLT" .L169: "\tjmp\t.L170"
        "\t.cfi_endproc" "\t.type camlLqtree.midy_331,@function"
        "\t.size camlLqtree.midy_331,. - camlLqtree.midy_331" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.size_360" camlLqtree.size_360:)))
     ((file lqtree/lqtree.ml) (line_start 37) (line_end 37) (col_start (11))
      (col_end (41)) (lines ("\t.cfi_startproc")))
     ((file lqtree/lqtree.ml) (line_start 37) (line_end 37) (col_start (41))
      (col_end (41)) (lines ()))
     ((file lqtree/lqtree.ml) (line_start 37) (line_end 37) (col_start (41))
      (col_end (41)) (lines (.L171:)))
     ((file lqtree/lqtree.ml) (line_start 37) (line_end 12) (col_start (41))
      (col_end (10)) (lines ("\tmovsd\t(%rax), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 37)
      (col_start (10)) (col_end (30))
      (lines
       ("\tsubq\t$16, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L172" .L174:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t$1277, -8(%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 37) (line_end 12) (col_start (30))
      (col_end (10)) (lines ("\tmovsd\t16(%rax), %xmm1")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 49)
      (col_start (10)) (col_end (15))
      (lines
       ("\tsubsd\t%xmm0, %xmm1" "\tmovsd\t%xmm1, (%rbx)" "\tmovq\t%rbx, %rax"
        "\tret" .L172: "\tcall\tcaml_call_gc@PLT" .L173: "\tjmp\t.L174"
        "\t.cfi_endproc" "\t.type camlLqtree.size_360,@function"
        "\t.size camlLqtree.size_360,. - camlLqtree.size_360" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.contains_378"
        camlLqtree.contains_378:)))
     ((file lqtree/lqtree.ml) (line_start 49) (line_end 35) (col_start (15))
      (col_end (54)) (lines ("\t.cfi_startproc")))
     ((file lqtree/lqtree.ml) (line_start 35) (line_end 35) (col_start (54))
      (col_end (54)) (lines (.L178:)))
     ((file lqtree/lqtree.ml) (line_start 35) (line_end 35) (col_start (54))
      (col_end (43))
      (lines ("\tmovsd\t(%rbx), %xmm0" "\tmovsd\t.L163(%rip), %xmm1")))
     ((file lqtree/lqtree.ml) (line_start 35) (line_end 12) (col_start (43))
      (col_end (10)) (lines ("\tmovsd\t16(%rbx), %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 16)
      (col_start (10)) (col_end (10)) (lines ("\tsubsd\t%xmm0, %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 16) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tdivsd\t%xmm1, %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 49)
      (col_start (10)) (col_end (16)) (lines ("\taddsd\t(%rbx), %xmm2")))
     ((file lqtree/lqtree.ml) (line_start 49) (line_end 50) (col_start (16))
      (col_end (10)) (lines ("\tmovq\t(%rax), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 50) (line_end 50) (col_start (10))
      (col_end (10)) (lines ("\tmovsd\t(%rdi), %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 50) (line_end 50) (col_start (10))
      (col_end (10))
      (lines ("\tcmplesd\t%xmm2, %xmm0" "\tmovd\t%xmm0, %rdi" "\tneg\t%rdi")))
     ((file lqtree/lqtree.ml) (line_start 50) (line_end 36) (col_start (10))
      (col_end (54)) (lines ("\tleaq\t1(%rdi,%rdi), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 36) (line_end 36) (col_start (54))
      (col_end (43)) (lines ("\tmovsd\t8(%rbx), %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 36) (line_end 12) (col_start (43))
      (col_end (10)) (lines ("\tmovsd\t24(%rbx), %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 16)
      (col_start (10)) (col_end (10)) (lines ("\tsubsd\t%xmm0, %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 16) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tdivsd\t%xmm1, %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 49)
      (col_start (10)) (col_end (16)) (lines ("\taddsd\t8(%rbx), %xmm2")))
     ((file lqtree/lqtree.ml) (line_start 49) (line_end 50) (col_start (16))
      (col_end (29)) (lines ("\tmovq\t8(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 50) (line_end 50) (col_start (29))
      (col_end (29)) (lines ("\tmovsd\t(%rax), %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 50) (line_end 50) (col_start (29))
      (col_end (29))
      (lines ("\tcmplesd\t%xmm2, %xmm0" "\tmovd\t%xmm0, %rax" "\tneg\t%rax")))
     ((file lqtree/lqtree.ml) (line_start 50) (line_end 57) (col_start (29))
      (col_end (14))
      (lines
       ("\tleaq\t1(%rax,%rax), %rax" "\tcmpq\t$1, %rdi" "\tje\t.L176"
        "\tcmpq\t$1, %rax" "\tje\t.L177" "\tmovl\t$5, %eax" "\tret" "\t.align\t4"
        .L177: "\tmovl\t$1, %eax" "\tret" "\t.align\t4" .L176: "\tcmpq\t$1, %rax"
        "\tje\t.L175" "\tmovl\t$7, %eax" "\tret" "\t.align\t4" .L175:
        "\tmovl\t$3, %eax" "\tret" "\t.cfi_endproc"
        "\t.type camlLqtree.contains_378,@function"
        "\t.size camlLqtree.contains_378,. - camlLqtree.contains_378" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.to_bbox_407"
        camlLqtree.to_bbox_407:)))
     ((file lqtree/lqtree.ml) (line_start 57) (line_end 35) (col_start (14))
      (col_end (54)) (lines ("\t.cfi_startproc")))
     ((file lqtree/lqtree.ml) (line_start 35) (line_end 35) (col_start (54))
      (col_end (54)) (lines ()))
     ((file lqtree/lqtree.ml) (line_start 35) (line_end 35) (col_start (54))
      (col_end (54)) (lines (.L183:)))
     ((file lqtree/lqtree.ml) (line_start 35) (line_end 35) (col_start (54))
      (col_end (43))
      (lines ("\tmovsd\t(%rbx), %xmm1" "\tmovsd\t.L163(%rip), %xmm2")))
     ((file lqtree/lqtree.ml) (line_start 35) (line_end 12) (col_start (43))
      (col_end (10))
      (lines ("\tmovsd\t16(%rbx), %xmm3" "\tmovapd\t%xmm3, %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 16)
      (col_start (10)) (col_end (10)) (lines ("\tsubsd\t%xmm1, %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 16) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tdivsd\t%xmm2, %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 36)
      (col_start (10)) (col_end (54)) (lines ("\taddsd\t(%rbx), %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 36) (line_end 36) (col_start (54))
      (col_end (43)) (lines ("\tmovsd\t8(%rbx), %xmm1")))
     ((file lqtree/lqtree.ml) (line_start 36) (line_end 12) (col_start (43))
      (col_end (10))
      (lines ("\tmovsd\t24(%rbx), %xmm4" "\tmovapd\t%xmm4, %xmm5")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 16)
      (col_start (10)) (col_end (10)) (lines ("\tsubsd\t%xmm1, %xmm5")))
     ((file src/owl/maths/owl_maths.ml) (line_start 16) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tdivsd\t%xmm2, %xmm5")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 61)
      (col_start (10)) (col_end (12))
      (lines
       ("\taddsd\t8(%rbx), %xmm5" "\tsarq\t$1, %rax" "\tleaq\t.L184(%rip), %rdx"
        "\tmovslq\t(%rdx,%rax,4), %rax" "\taddq\t%rax, %rdx" "\tjmp\t*%rdx"
        "\t.section .rodata" "\t.align\t4" .L184: "\t.long\t.L182 - .L184"
        "\t.long\t.L181 - .L184" "\t.long\t.L180 - .L184"
        "\t.long\t.L179 - .L184" "\t.text" "\t.align\t4" .L182:)))
     ((file lqtree/lqtree.ml) (line_start 61) (line_end 61) (col_start (12))
      (col_end (12))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L185" .L187:
        "\tleaq\t8(%r15), %rax" "\tmovq\t$4350, -8(%rax)")))
     ((file lqtree/lqtree.ml) (line_start 61) (line_end 62) (col_start (12))
      (col_end (12))
      (lines
       ("\tmovsd\t(%rbx), %xmm1" "\tmovsd\t%xmm1, (%rax)"
        "\tmovsd\t%xmm5, 8(%rax)" "\tmovsd\t%xmm0, 16(%rax)"
        "\tmovsd\t%xmm4, 24(%rax)" "\tret" "\t.align\t4" .L181:)))
     ((file lqtree/lqtree.ml) (line_start 62) (line_end 63) (col_start (12))
      (col_end (12))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L188" .L190:
        "\tleaq\t8(%r15), %rax" "\tmovq\t$4350, -8(%rax)"
        "\tmovsd\t%xmm0, (%rax)" "\tmovsd\t%xmm5, 8(%rax)"
        "\tmovsd\t%xmm3, 16(%rax)" "\tmovsd\t%xmm4, 24(%rax)" "\tret"
        "\t.align\t4" .L180:)))
     ((file lqtree/lqtree.ml) (line_start 63) (line_end 63) (col_start (12))
      (col_end (12))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L191" .L193:
        "\tleaq\t8(%r15), %rax" "\tmovq\t$4350, -8(%rax)")))
     ((file lqtree/lqtree.ml) (line_start 63) (line_end 64) (col_start (12))
      (col_end (12))
      (lines
       ("\tmovsd\t(%rbx), %xmm2" "\tmovsd\t%xmm2, (%rax)"
        "\tmovsd\t%xmm1, 8(%rax)" "\tmovsd\t%xmm0, 16(%rax)"
        "\tmovsd\t%xmm5, 24(%rax)" "\tret" "\t.align\t4" .L179:)))
     ((file lqtree/lqtree.ml) (line_start 64) (line_end 67) (col_start (12))
      (col_end (15))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L194" .L196:
        "\tleaq\t8(%r15), %rax" "\tmovq\t$4350, -8(%rax)"
        "\tmovsd\t%xmm0, (%rax)" "\tmovsd\t%xmm1, 8(%rax)"
        "\tmovsd\t%xmm3, 16(%rax)" "\tmovsd\t%xmm5, 24(%rax)" "\tret" .L194:
        "\tcall\tcaml_call_gc@PLT" .L195: "\tjmp\t.L196" .L191:
        "\tcall\tcaml_call_gc@PLT" .L192: "\tjmp\t.L193" .L188:
        "\tcall\tcaml_call_gc@PLT" .L189: "\tjmp\t.L190" .L185:
        "\tcall\tcaml_call_gc@PLT" .L186: "\tjmp\t.L187" "\t.cfi_endproc"
        "\t.type camlLqtree.to_bbox_407,@function"
        "\t.size camlLqtree.to_bbox_407,. - camlLqtree.to_bbox_407" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.to_index_442"
        camlLqtree.to_index_442:)))
     ((file lqtree/lqtree.ml) (line_start 67) (line_end 75) (col_start (15))
      (col_end (15))
      (lines
       ("\t.cfi_startproc" .L197: "\tsarq\t$1, %rax" "\tleaq\t1(%rax,%rax), %rax"
        "\tret" "\t.cfi_endproc" "\t.type camlLqtree.to_index_442,@function"
        "\t.size camlLqtree.to_index_442,. - camlLqtree.to_index_442" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.of_index_453"
        camlLqtree.of_index_453:)))
     ((file lqtree/lqtree.ml) (line_start 75) (line_end 29) (col_start (15))
      (col_end (17))
      (lines
       ("\t.cfi_startproc" .L199: "\tcmpq\t$7, %rax" "\tjbe\t.L198"
        "\tmovq\tcamlLqtree__Pmakeblock_3583@GOTPCREL(%rip), %rax")))
     ((file stdlib.ml) (line_start 29) (line_end 91) (col_start (17))
      (col_end (2))
      (lines
       ("\tcall\tcaml_raise_exn@PLT" .L200: "\t.align\t4" .L198:
        "\tsarq\t$1, %rax" "\tleaq\t1(%rax,%rax), %rax" "\tret" "\t.cfi_endproc"
        "\t.type camlLqtree.of_index_453,@function"
        "\t.size camlLqtree.of_index_453,. - camlLqtree.of_index_453" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.sexp_of_t_485"
        camlLqtree.sexp_of_t_485:)))
     ((file lqtree/lqtree.ml) (line_start 91) (line_end 91) (col_start (2))
      (col_end (2))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-352(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L202" .L203:)))
     ((file lqtree/lqtree.ml) (line_start 91) (line_end 91) (col_start (2))
      (col_end (2)) (lines ("\tsubq\t$32, %rsp" "\t.cfi_adjust_cfa_offset 32")))
     ((file lqtree/lqtree.ml) (line_start 91) (line_end 91) (col_start (2))
      (col_end (2)) (lines (.L201:)))
     ((file lqtree/lqtree.ml) (line_start 91) (line_end 91) (col_start (2))
      (col_end (2)) (lines ("\tmovq\t(%rax), %rbx" "\tmovq\t%rbx, 24(%rsp)")))
     ((file lqtree/lqtree.ml) (line_start 91) (line_end 91) (col_start (2))
      (col_end (2)) (lines ("\tmovq\t8(%rax), %rbx" "\tmovq\t%rbx, 16(%rsp)")))
     ((file lqtree/lqtree.ml) (line_start 91) (line_end 91) (col_start (2))
      (col_end (2)) (lines ("\tmovq\t16(%rax), %rbx" "\tmovq\t%rbx, (%rsp)")))
     ((file lqtree/lqtree.ml) (line_start 91) (line_end 95) (col_start (2))
      (col_end (6)) (lines ("\tmovq\t24(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 95) (line_end 95) (col_start (6))
      (col_end (6)) (lines ("\tcall\tcamlLqtree.sexp_of_t_178@PLT" .L204:)))
     ((file lqtree/lqtree.ml) (line_start 95) (line_end 95) (col_start (6))
      (col_end (6))
      (lines
       ("\tsubq\t$88, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L205" .L207:
        "\tleaq\t8(%r15), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 95) (line_end 95) (col_start (6))
      (col_end (6))
      (lines
       ("\taddq\t$64, %rbx" "\tmovq\t$2048, -8(%rbx)" "\tmovq\t%rax, (%rbx)"
        "\tmovq\t$1, 8(%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 95) (line_end 95) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-24(%rbx), %rax" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\tcamlLqtree__const_block_506@GOTPCREL(%rip), %rdi"
        "\tmovq\t%rdi, (%rax)" "\tmovq\t%rbx, 8(%rax)")))
     ((file lqtree/lqtree.ml) (line_start 95) (line_end 95) (col_start (6))
      (col_end (6))
      (lines
       ("\tleaq\t-16(%rax), %rbx" "\tmovq\t$1025, -8(%rbx)"
        "\tmovq\t%rax, (%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 95) (line_end 266) (col_start (6))
      (col_end (2))
      (lines
       ("\tleaq\t-24(%rbx), %rax" "\tmovq\t%rax, 8(%rsp)"
        "\tmovq\t$2048, -8(%rax)" "\tmovq\t%rbx, (%rax)" "\tmovq\t$1, 8(%rax)"
        "\tmovq\tcamlStdlib__const_immstring_545@GOTPCREL(%rip), %rdi"
        "\tmovq\t(%rsp), %rsi")))
     ((file stdlib.ml) (line_start 266) (line_end 33) (col_start (2))
      (col_end (20))
      (lines
       ("\tmovq\tcaml_format_int@GOTPCREL(%rip), %rax" "\tcall\tcaml_c_call@PLT"
        .L208:)))
     ((file src/sexp_conv.ml) (line_start 33) (line_end 33) (col_start (20))
      (col_end (20))
      (lines
       ("\tsubq\t$104, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L209" .L211:
        "\tleaq\t8(%r15), %rbx")))
     ((file src/sexp_conv.ml) (line_start 33) (line_end 94) (col_start (20))
      (col_end (14))
      (lines
       ("\taddq\t$88, %rbx" "\tmovq\t$1024, -8(%rbx)" "\tmovq\t%rax, (%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 94) (line_end 94) (col_start (14))
      (col_end (14))
      (lines
       ("\tleaq\t-24(%rbx), %rax" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\t%rbx, (%rax)" "\tmovq\t$1, 8(%rax)")))
     ((file lqtree/lqtree.ml) (line_start 94) (line_end 94) (col_start (14))
      (col_end (14))
      (lines
       ("\tleaq\t-24(%rax), %rbx" "\tmovq\t$2048, -8(%rbx)"
        "\tmovq\tcamlLqtree__const_block_525@GOTPCREL(%rip), %rdi"
        "\tmovq\t%rdi, (%rbx)" "\tmovq\t%rax, 8(%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 94) (line_end 94) (col_start (14))
      (col_end (14))
      (lines
       ("\tleaq\t-16(%rbx), %rax" "\tmovq\t$1025, -8(%rax)"
        "\tmovq\t%rbx, (%rax)")))
     ((file lqtree/lqtree.ml) (line_start 94) (line_end 266) (col_start (14))
      (col_end (2))
      (lines
       ("\tleaq\t-24(%rax), %rbx" "\tmovq\t%rbx, (%rsp)"
        "\tmovq\t$2048, -8(%rbx)" "\tmovq\t%rax, (%rbx)" "\tmovq\t8(%rsp), %rax"
        "\tmovq\t%rax, 8(%rbx)"
        "\tmovq\tcamlStdlib__const_immstring_545@GOTPCREL(%rip), %rdi"
        "\tmovq\t16(%rsp), %rsi")))
     ((file stdlib.ml) (line_start 266) (line_end 33) (col_start (2))
      (col_end (20))
      (lines
       ("\tmovq\tcaml_format_int@GOTPCREL(%rip), %rax" "\tcall\tcaml_c_call@PLT"
        .L212:)))
     ((file src/sexp_conv.ml) (line_start 33) (line_end 33) (col_start (20))
      (col_end (20))
      (lines
       ("\tsubq\t$104, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L213" .L215:
        "\tleaq\t8(%r15), %rbx")))
     ((file src/sexp_conv.ml) (line_start 33) (line_end 93) (col_start (20))
      (col_end (14))
      (lines
       ("\taddq\t$88, %rbx" "\tmovq\t$1024, -8(%rbx)" "\tmovq\t%rax, (%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 93) (line_end 93) (col_start (14))
      (col_end (14))
      (lines
       ("\tleaq\t-24(%rbx), %rax" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\t%rbx, (%rax)" "\tmovq\t$1, 8(%rax)")))
     ((file lqtree/lqtree.ml) (line_start 93) (line_end 93) (col_start (14))
      (col_end (14))
      (lines
       ("\tleaq\t-24(%rax), %rbx" "\tmovq\t$2048, -8(%rbx)"
        "\tmovq\tcamlLqtree__const_block_544@GOTPCREL(%rip), %rdi"
        "\tmovq\t%rdi, (%rbx)" "\tmovq\t%rax, 8(%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 93) (line_end 93) (col_start (14))
      (col_end (14))
      (lines
       ("\tleaq\t-16(%rbx), %rax" "\tmovq\t$1025, -8(%rax)"
        "\tmovq\t%rbx, (%rax)")))
     ((file lqtree/lqtree.ml) (line_start 93) (line_end 92) (col_start (14))
      (col_end (14))
      (lines
       ("\tleaq\t-24(%rax), %rbx" "\tmovq\t%rbx, 8(%rsp)"
        "\tmovq\t$2048, -8(%rbx)" "\tmovq\t%rax, (%rbx)" "\tmovq\t(%rsp), %rax"
        "\tmovq\t%rax, 8(%rbx)" "\tmovq\t24(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 92) (line_end 92) (col_start (14))
      (col_end (14)) (lines ("\tmovq\t8(%rax), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 92) (line_end 92) (col_start (14))
      (col_end (14)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 92) (line_end 92) (col_start (14))
      (col_end (14))
      (lines ("\tcall\tcamlLqtree.sexp_of_centroid_110@PLT" .L216:)))
     ((file lqtree/lqtree.ml) (line_start 92) (line_end 92) (col_start (14))
      (col_end (14))
      (lines
       ("\tsubq\t$104, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L217" .L219:
        "\tleaq\t8(%r15), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 92) (line_end 92) (col_start (14))
      (col_end (14))
      (lines
       ("\taddq\t$80, %rbx" "\tmovq\t$2048, -8(%rbx)" "\tmovq\t%rax, (%rbx)"
        "\tmovq\t$1, 8(%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 92) (line_end 92) (col_start (14))
      (col_end (14))
      (lines
       ("\tleaq\t-24(%rbx), %rax" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\tcamlLqtree__const_block_560@GOTPCREL(%rip), %rdi"
        "\tmovq\t%rdi, (%rax)" "\tmovq\t%rbx, 8(%rax)")))
     ((file lqtree/lqtree.ml) (line_start 92) (line_end 92) (col_start (14))
      (col_end (14))
      (lines
       ("\tleaq\t-16(%rax), %rbx" "\tmovq\t$1025, -8(%rbx)"
        "\tmovq\t%rax, (%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 92) (line_end 91) (col_start (14))
      (col_end (2))
      (lines
       ("\tleaq\t-24(%rbx), %rdi" "\tmovq\t$2048, -8(%rdi)"
        "\tmovq\t%rbx, (%rdi)" "\tmovq\t8(%rsp), %rax" "\tmovq\t%rax, 8(%rdi)")))
     ((file lqtree/lqtree.ml) (line_start 91) (line_end 99) (col_start (2))
      (col_end (15))
      (lines
       ("\tleaq\t-16(%rdi), %rax" "\tmovq\t$1025, -8(%rax)"
        "\tmovq\t%rdi, (%rax)" "\taddq\t$32, %rsp" "\t.cfi_adjust_cfa_offset -32"
        "\tret" "\t.cfi_adjust_cfa_offset 32" .L217: "\tcall\tcaml_call_gc@PLT"
        .L218: "\tjmp\t.L219" .L213: "\tcall\tcaml_call_gc@PLT" .L214:
        "\tjmp\t.L215" .L209: "\tcall\tcaml_call_gc@PLT" .L210: "\tjmp\t.L211"
        .L205: "\tcall\tcaml_call_gc@PLT" .L206: "\tjmp\t.L207" .L202:
        "\tpush\t$37" "\t.cfi_adjust_cfa_offset 8"
        "\tcall\tcaml_call_realloc_stack@PLT" "\tpopq\t%r10"
        "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L203"
        "\t.cfi_adjust_cfa_offset -32" "\t.cfi_endproc"
        "\t.type camlLqtree.sexp_of_t_485,@function"
        "\t.size camlLqtree.sexp_of_t_485,. - camlLqtree.sexp_of_t_485" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.new_node_579"
        camlLqtree.new_node_579:)))
     ((file lqtree/lqtree.ml) (line_start 99) (line_end 99) (col_start (15))
      (col_end (31)) (lines ("\t.cfi_startproc")))
     ((file lqtree/lqtree.ml) (line_start 99) (line_end 99) (col_start (31))
      (col_end (31)) (lines ()))
     ((file lqtree/lqtree.ml) (line_start 99) (line_end 99) (col_start (31))
      (col_end (31)) (lines (.L220:)))
     ((file lqtree/lqtree.ml) (line_start 99) (line_end 107) (col_start (31))
      (col_end (16))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L221" .L223:
        "\tleaq\t8(%r15), %rdi" "\tmovq\t$4096, -8(%rdi)" "\tmovq\t%rax, (%rdi)"
        "\tmovq\t$1, 8(%rdi)" "\tmovq\t$1, 16(%rdi)" "\tmovq\t%rbx, 24(%rdi)"
        "\tmovq\t%rdi, %rax" "\tret" .L221: "\tcall\tcaml_call_gc@PLT" .L222:
        "\tjmp\t.L223" "\t.cfi_endproc"
        "\t.type camlLqtree.new_node_579,@function"
        "\t.size camlLqtree.new_node_579,. - camlLqtree.new_node_579" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.node_type_591"
        camlLqtree.node_type_591:)))
     ((file lqtree/lqtree.ml) (line_start 107) (line_end 108) (col_start (16))
      (col_end (7)) (lines ("\t.cfi_startproc")))
     ((file lqtree/lqtree.ml) (line_start 108) (line_end 108) (col_start (7))
      (col_end (7)) (lines (.L225:)))
     ((file lqtree/lqtree.ml) (line_start 108) (line_end 110) (col_start (7))
      (col_end (17))
      (lines
       ("\tmovq\t8(%rax), %rbx" "\tcmpq\t$1, %rbx" "\tjne\t.L224"
        "\txorpd\t%xmm0, %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 110) (line_end 110) (col_start (17))
      (col_end (10)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 110) (line_end 111) (col_start (10))
      (col_end (9)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 111) (col_start (9))
      (col_end (9)) (lines ("\tmovsd\t(%rax), %xmm1")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 111) (col_start (9))
      (col_end (9))
      (lines ("\tcmpneqsd\t%xmm0, %xmm1" "\tmovd\t%xmm1, %rax" "\tneg\t%rax")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 115) (col_start (9))
      (col_end (12))
      (lines
       ("\tleaq\t1(%rax,%rax), %rax" "\tret" "\t.align\t4" .L224:
        "\tmovl\t$5, %eax" "\tret" "\t.cfi_endproc"
        "\t.type camlLqtree.node_type_591,@function"
        "\t.size camlLqtree.node_type_591,. - camlLqtree.node_type_591" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.equal_615" camlLqtree.equal_615:)))
     ((file lqtree/lqtree.ml) (line_start 115) (line_end 125) (col_start (12))
      (col_end (39))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-344(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L231" .L232: "\tsubq\t$24, %rsp" "\t.cfi_adjust_cfa_offset 24"
        .L230: "\tmovq\t%rax, %rsi")))
     ((file lqtree/lqtree.ml) (line_start 125) (line_end 125) (col_start (39))
      (col_end (27)) (lines ("\tmovq\t8(%rbx), %rax" "\tmovq\t%rax, (%rsp)")))
     ((file lqtree/lqtree.ml) (line_start 125) (line_end 126) (col_start (27))
      (col_end (33)) (lines ("\tmovq\t8(%rsi), %r9")))
     ((file lqtree/lqtree.ml) (line_start 126) (line_end 126) (col_start (33))
      (col_end (25)) (lines ("\tmovq\t16(%rbx), %r12")))
     ((file lqtree/lqtree.ml) (line_start 126) (line_end 127) (col_start (25))
      (col_end (33)) (lines ("\tmovq\t16(%rsi), %r13")))
     ((file lqtree/lqtree.ml) (line_start 127) (line_end 127) (col_start (33))
      (col_end (25)) (lines ("\tmovq\t24(%rbx), %rax")))
     ((file lqtree/lqtree.ml) (line_start 127) (line_end 129) (col_start (25))
      (col_end (32)) (lines ("\tmovq\t24(%rsi), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 129) (line_end 129) (col_start (32))
      (col_end (21)) (lines ("\tmovq\t(%rbx), %rcx")))
     ((file lqtree/lqtree.ml) (line_start 129) (line_end 116) (col_start (21))
      (col_end (35)) (lines ("\tmovq\t(%rsi), %r8")))
     ((file lqtree/lqtree.ml) (line_start 116) (line_end 116) (col_start (35))
      (col_end (22)) (lines ("\tmovq\t8(%rcx), %rdx")))
     ((file lqtree/lqtree.ml) (line_start 116) (line_end 23) (col_start (22))
      (col_end (13)) (lines ("\tmovq\t8(%r8), %r10")))
     ((file nbody/nbody.ml) (line_start 23) (line_end 23) (col_start (13))
      (col_end (32)) (lines ("\tmovq\t8(%r10), %r11")))
     ((file nbody/nbody.ml) (line_start 23) (line_end 12) (col_start (32))
      (col_end (10)) (lines ("\tmovq\t8(%rdx), %rbp")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 12)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rbp), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 23)
      (col_start (10)) (col_end (13)) (lines ("\tsubsd\t(%r11), %xmm0")))
     ((file nbody/nbody.ml) (line_start 23) (line_end 23) (col_start (13))
      (col_end (32)) (lines ("\tmovq\t(%r10), %r10")))
     ((file nbody/nbody.ml) (line_start 23) (line_end 12) (col_start (32))
      (col_end (10)) (lines ("\tmovq\t(%rdx), %rdx")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 12)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rdx), %xmm1")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 58)
      (col_start (10)) (col_end (12))
      (lines ("\tsubsd\t(%r10), %xmm1" "\tmovsd\t.L233(%rip), %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 58) (line_end 58)
      (col_start (12)) (col_end (12)) (lines ("\tmulsd\t%xmm0, %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 58) (line_end 10)
      (col_start (12)) (col_end (10)) (lines ("\tmulsd\t%xmm1, %xmm1")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 116)
      (col_start (10)) (col_end (35))
      (lines ("\taddsd\t%xmm0, %xmm1" "\tcomisd\t%xmm1, %xmm2" "\tjbe\t.L228")))
     ((file lqtree/lqtree.ml) (line_start 116) (line_end 116) (col_start (35))
      (col_end (22)) (lines ("\tmovq\t(%rcx), %rdx")))
     ((file lqtree/lqtree.ml) (line_start 116) (line_end 12) (col_start (22))
      (col_end (10)) (lines ("\tmovq\t(%r8), %rcx")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 12)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rcx), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 120)
      (col_start (10)) (col_end (21))
      (lines ("\tsubsd\t(%rdx), %xmm0" "\tcomisd\t%xmm0, %xmm2" "\tjbe\t.L228")))
     ((file lqtree/lqtree.ml) (line_start 120) (line_end 120) (col_start (21))
      (col_end (6)) (lines ("\tmovsd\t8(%rax), %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 120) (line_end 12) (col_start (6))
      (col_end (10)) (lines ("\tmovsd\t8(%rdi), %xmm1")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 121)
      (col_start (10)) (col_end (24))
      (lines ("\tsubsd\t%xmm0, %xmm1" "\tcomisd\t%xmm1, %xmm2" "\tjbe\t.L228")))
     ((file lqtree/lqtree.ml) (line_start 121) (line_end 121) (col_start (24))
      (col_end (9)) (lines ("\tmovsd\t24(%rax), %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 121) (line_end 12) (col_start (9))
      (col_end (10)) (lines ("\tmovsd\t24(%rdi), %xmm1")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 122)
      (col_start (10)) (col_end (24))
      (lines ("\tsubsd\t%xmm0, %xmm1" "\tcomisd\t%xmm1, %xmm2" "\tjbe\t.L228")))
     ((file lqtree/lqtree.ml) (line_start 122) (line_end 122) (col_start (24))
      (col_end (9)) (lines ("\tmovsd\t(%rax), %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 122) (line_end 12) (col_start (9))
      (col_end (10)) (lines ("\tmovsd\t(%rdi), %xmm1")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 123)
      (col_start (10)) (col_end (24))
      (lines ("\tsubsd\t%xmm0, %xmm1" "\tcomisd\t%xmm1, %xmm2" "\tjbe\t.L228")))
     ((file lqtree/lqtree.ml) (line_start 123) (line_end 123) (col_start (24))
      (col_end (9)) (lines ("\tmovsd\t16(%rax), %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 123) (line_end 12) (col_start (9))
      (col_end (10)) (lines ("\tmovsd\t16(%rdi), %xmm1")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 131)
      (col_start (10)) (col_end (9))
      (lines
       ("\tsubsd\t%xmm0, %xmm1" "\tcomisd\t%xmm1, %xmm2" "\tjbe\t.L228"
        "\tmovq\t(%rsp), %rax" "\tcmpq\t%rax, %r9" "\tjne\t.L229")))
     ((file lqtree/lqtree.ml) (line_start 131) (line_end 131) (col_start (9))
      (col_end (9))
      (lines ("\tcmpq\t%r12, %r13" "\tsete\t%al" "\tmovzbq\t%al, %rax")))
     ((file lqtree/lqtree.ml) (line_start 131) (line_end 135) (col_start (9))
      (col_end (36))
      (lines
       ("\tleaq\t1(%rax,%rax), %rax" "\tjmp\t.L227" "\t.align\t4" .L229:
        "\tmovl\t$1, %eax" "\tjmp\t.L227" "\t.align\t4" .L228: "\tmovl\t$1, %eax"
        .L227: "\tcmpq\t$1, %rax" "\tje\t.L226" "\taddq\t$24, %rsp"
        "\t.cfi_adjust_cfa_offset -24" "\tret" "\t.cfi_adjust_cfa_offset 24"
        "\t.align\t4" .L226: "\tmovq\t%rax, 16(%rsp)" "\tmovq\t%rbx, 8(%rsp)"
        "\tmovq\t%rsi, %rax")))
     ((file lqtree/lqtree.ml) (line_start 135) (line_end 135) (col_start (36))
      (col_end (35))
      (lines
       ("\tcall\tcamlLqtree.sexp_of_t_485@PLT" .L234: "\tmovq\t%rax, %rbx"
        "\tmovl\t$1, %eax")))
     ((file lqtree/lqtree.ml) (line_start 135) (line_end 1563) (col_start (35))
      (col_end (4))
      (lines
       ("\tcall\tcamlSexplib0__Sexp.to_string_hum_1283@PLT" .L235:
        "\tmovq\t%rax, (%rsp)"
        "\tmovq\tcamlLqtree__const_block_740@GOTPCREL(%rip), %rdi"
        "\tmovq\tcamlLqtree__Pmakeblock_5933@GOTPCREL(%rip), %rbx"
        "\tmovq\tcamlStdlib__Printf.anon_fn$5bprintf.ml$3a20$2c14$2d$2d48$5d_445_closure@GOTPCREL(%rip), %rax")))
     ((file camlinternalFormat.ml) (line_start 1563) (line_end 135)
      (col_start (4)) (col_end (6))
      (lines
       ("\tcall\tcamlCamlinternalFormat.make_printf_5097@PLT" .L236:
        "\tmovq\t%rax, %rbx")))
     ((file lqtree/lqtree.ml) (line_start 135) (line_end 135) (col_start (6))
      (col_end (6)) (lines ("\tmovq\t(%rbx), %rdi" "\tmovq\t(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 135) (line_end 136) (col_start (6))
      (col_end (36)) (lines ("\tcall\t*%rdi" .L237: "\tmovq\t8(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 136) (line_end 136) (col_start (36))
      (col_end (35))
      (lines
       ("\tcall\tcamlLqtree.sexp_of_t_485@PLT" .L238: "\tmovq\t%rax, %rbx"
        "\tmovl\t$1, %eax")))
     ((file lqtree/lqtree.ml) (line_start 136) (line_end 1563) (col_start (35))
      (col_end (4))
      (lines
       ("\tcall\tcamlSexplib0__Sexp.to_string_hum_1283@PLT" .L239:
        "\tmovq\t%rax, (%rsp)"
        "\tmovq\tcamlLqtree__const_block_740@GOTPCREL(%rip), %rdi"
        "\tmovq\tcamlLqtree__Pmakeblock_5934@GOTPCREL(%rip), %rbx"
        "\tmovq\tcamlStdlib__Printf.anon_fn$5bprintf.ml$3a20$2c14$2d$2d48$5d_445_closure@GOTPCREL(%rip), %rax")))
     ((file camlinternalFormat.ml) (line_start 1563) (line_end 136)
      (col_start (4)) (col_end (6))
      (lines
       ("\tcall\tcamlCamlinternalFormat.make_printf_5097@PLT" .L240:
        "\tmovq\t%rax, %rbx")))
     ((file lqtree/lqtree.ml) (line_start 136) (line_end 136) (col_start (6))
      (col_end (6)) (lines ("\tmovq\t(%rbx), %rdi" "\tmovq\t(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 136) (line_end 147) (col_start (6))
      (col_end (16))
      (lines
       ("\tcall\t*%rdi" .L241: "\tmovq\t16(%rsp), %rax" "\taddq\t$24, %rsp"
        "\t.cfi_adjust_cfa_offset -24" "\tret" "\t.cfi_adjust_cfa_offset 24"
        .L231: "\tpush\t$36" "\t.cfi_adjust_cfa_offset 8"
        "\tcall\tcaml_call_realloc_stack@PLT" "\tpopq\t%r10"
        "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L232"
        "\t.cfi_adjust_cfa_offset -24" "\t.cfi_endproc"
        "\t.type camlLqtree.equal_615,@function"
        "\t.size camlLqtree.equal_615,. - camlLqtree.equal_615" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.sexp_of_t_766"
        camlLqtree.sexp_of_t_766:)))
     ((file lqtree/lqtree.ml) (line_start 147) (line_end 148) (col_start (16))
      (col_end (33))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-344(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L246" .L247:)))
     ((file lqtree/lqtree.ml) (line_start 148) (line_end 148) (col_start (33))
      (col_end (33)) (lines ("\tsubq\t$24, %rsp" "\t.cfi_adjust_cfa_offset 24")))
     ((file lqtree/lqtree.ml) (line_start 148) (line_end 148) (col_start (33))
      (col_end (33)) (lines (.L245:)))
     ((file lqtree/lqtree.ml) (line_start 148) (line_end 148) (col_start (33))
      (col_end (16)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 148) (line_end 85) (col_start (16))
      (col_end (4))
      (lines
       ("\tcall\tcamlStdlib__Dynarray.to_list_1837@PLT" .L248: "\ttestb\t$1, %al"
        "\tje\t.L244" "\tmovl\t$1, %eax" "\tmovq\t%rax, %rbx" "\tjmp\t.L242"
        "\t.align\t4" .L244:)))
     ((file list.ml) (line_start 85) (line_end 85) (col_start (4)) (col_end (4))
      (lines ("\tmovq\t8(%rax), %rbx")))
     ((file list.ml) (line_start 85) (line_end 83) (col_start (4)) (col_end (15))
      (lines ("\tmovq\t(%rax), %rax" "\ttestb\t$1, %bl" "\tje\t.L243")))
     ((file list.ml) (line_start 83) (line_end 84) (col_start (15)) (col_end (6))
      (lines ("\tcall\tcamlLqtree.sexp_of_t_485@PLT" .L249:)))
     ((file list.ml) (line_start 84) (line_end 86) (col_start (6)) (col_end (15))
      (lines
       ("\tsubq\t$24, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L250" .L252:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t$2048, -8(%rbx)" "\tmovq\t%rax, (%rbx)"
        "\tmovq\t$1, 8(%rbx)" "\tjmp\t.L242" "\t.align\t4" .L243:
        "\tmovq\t%rbx, (%rsp)")))
     ((file list.ml) (line_start 86) (line_end 85) (col_start (15)) (col_end (8))
      (lines
       ("\tcall\tcamlLqtree.sexp_of_t_485@PLT" .L253: "\tmovq\t%rax, 8(%rsp)"
        "\tmovq\t(%rsp), %rax")))
     ((file list.ml) (line_start 85) (line_end 87) (col_start (8)) (col_end (15))
      (lines ("\tmovq\t(%rax), %rax")))
     ((file list.ml) (line_start 87) (line_end 88) (col_start (15))
      (col_end (10)) (lines ("\tcall\tcamlLqtree.sexp_of_t_485@PLT" .L254:)))
     ((file list.ml) (line_start 88) (line_end 85) (col_start (10)) (col_end (8))
      (lines
       ("\tsubq\t$24, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L255" .L257:
        "\tleaq\t8(%r15), %rdx" "\tmovq\t%rdx, 16(%rsp)"
        "\tmovq\t$2048, -8(%rdx)" "\tmovq\t%rax, (%rdx)"
        "\tmovq\t$48059, 8(%rdx)" "\tmovq\t(%rsp), %rax")))
     ((file list.ml) (line_start 85) (line_end 88) (col_start (8)) (col_end (14))
      (lines
       ("\tmovq\t8(%rax), %rsi"
        "\tmovq\tcamlLqtree.sexp_of_t_485_closure@GOTPCREL(%rip), %rdi"
        "\tmovl\t$3, %ebx" "\tmovq\t%rdx, %rax")))
     ((file list.ml) (line_start 88) (line_end 88) (col_start (14)) (col_end (6))
      (lines ("\tcall\tcamlStdlib__List.map_dps_509@PLT" .L258:)))
     ((file list.ml) (line_start 88) (line_end 54) (col_start (6)) (col_end (34))
      (lines
       ("\tsubq\t$24, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L259" .L261:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t$2048, -8(%rbx)" "\tmovq\t8(%rsp), %rax"
        "\tmovq\t%rax, (%rbx)" "\tmovq\t16(%rsp), %rax" "\tmovq\t%rax, 8(%rbx)"
        .L242:)))
     ((file src/sexp_conv.ml) (line_start 54) (line_end 154) (col_start (34))
      (col_end (15))
      (lines
       ("\tsubq\t$16, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L262" .L264:
        "\tleaq\t8(%r15), %rax" "\tmovq\t$1025, -8(%rax)" "\tmovq\t%rbx, (%rax)"
        "\taddq\t$24, %rsp" "\t.cfi_adjust_cfa_offset -24" "\tret"
        "\t.cfi_adjust_cfa_offset 24" .L262: "\tcall\tcaml_call_gc@PLT" .L263:
        "\tjmp\t.L264" .L259: "\tcall\tcaml_call_gc@PLT" .L260: "\tjmp\t.L261"
        .L255: "\tcall\tcaml_call_gc@PLT" .L256: "\tjmp\t.L257" .L250:
        "\tcall\tcaml_call_gc@PLT" .L251: "\tjmp\t.L252" .L246: "\tpush\t$36"
        "\t.cfi_adjust_cfa_offset 8" "\tcall\tcaml_call_realloc_stack@PLT"
        "\tpopq\t%r10" "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L247"
        "\t.cfi_adjust_cfa_offset -24" "\t.cfi_endproc"
        "\t.type camlLqtree.sexp_of_t_766,@function"
        "\t.size camlLqtree.sexp_of_t_766,. - camlLqtree.sexp_of_t_766" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.get_node_788"
        camlLqtree.get_node_788:)))
     ((file lqtree/lqtree.ml) (line_start 154) (line_end 155) (col_start (15))
      (col_end (35)) (lines ("\t.cfi_startproc")))
     ((file lqtree/lqtree.ml) (line_start 155) (line_end 155) (col_start (35))
      (col_end (35)) (lines ()))
     ((file lqtree/lqtree.ml) (line_start 155) (line_end 155) (col_start (35))
      (col_end (35)) (lines (.L267:)))
     ((file lqtree/lqtree.ml) (line_start 155) (line_end 251) (col_start (35))
      (col_end (15)) (lines ("\tmovq\t(%rax), %rdi")))
     ((file dynarray.ml) (line_start 251) (line_end 155) (col_start (15))
      (col_end (4))
      (lines
       ("\tmovq\t(%rdi), %rdi" "\tcmpq\t%rdi, %rbx" "\tjle\t.L266"
        "\tmovq\tcamlLqtree__Pmakeblock_1523@GOTPCREL(%rip), %rax")))
     ((file lqtree/lqtree.ml) (line_start 155) (line_end 156) (col_start (4))
      (col_end (17))
      (lines ("\tcall\tcaml_raise_exn@PLT" .L268: "\t.align\t4" .L266:)))
     ((file lqtree/lqtree.ml) (line_start 156) (line_end 238) (col_start (17))
      (col_end (8)) (lines ("\tmovq\t(%rax), %rax")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tmovq\t8(%rax), %rdi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tmovq\t-8(%rdi), %rsi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tshrq\t$9, %rsi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tcmpq\t%rbx, %rsi" "\tjbe\t.L269")))
     ((file dynarray.ml) (line_start 238) (line_end 241) (col_start (8))
      (col_end (54))
      (lines ("\tmovq\t-4(%rdi,%rbx,4), %rdi" "\ttestb\t$1, %dil" "\tje\t.L265")))
     ((file dynarray.ml) (line_start 241) (line_end 241) (col_start (54))
      (col_end (6))
      (lines
       ("\tmovq\t(%rax), %rdi"
        "\tmovq\tcamlStdlib__Dynarray__const_immstring_551@GOTPCREL(%rip), %rax")))
     ((file dynarray.ml) (line_start 241) (line_end 239) (col_start (6))
      (col_end (14))
      (lines
       ("\tjmp\tcamlStdlib__Dynarray.unexpected_empty_element_374@PLT"
        "\t.align\t4" .L265:)))
     ((file dynarray.ml) (line_start 239) (line_end 160) (col_start (14))
      (col_end (12))
      (lines
       ("\tmovq\t(%rdi), %rax" "\tret" .L269:
        "\tcall\tcaml_ml_array_bound_error@PLT" .L270: "\t.cfi_endproc"
        "\t.type camlLqtree.get_node_788,@function"
        "\t.size camlLqtree.get_node_788,. - camlLqtree.get_node_788" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.new_t_821" camlLqtree.new_t_821:)))
     ((file lqtree/lqtree.ml) (line_start 160) (line_end 213) (col_start (12))
      (col_end (16))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-336(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L272" .L273: "\tsubq\t$16, %rsp" "\t.cfi_adjust_cfa_offset 16"
        .L271: "\tmovq\t%rax, (%rsp)")))
     ((file dynarray.ml) (line_start 213) (line_end 162) (col_start (16))
      (col_end (4))
      (lines
       ("\tsubq\t$24, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L274" .L276:
        "\tleaq\t8(%r15), %rax" "\tmovq\t%rax, 8(%rsp)" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\t$1, (%rax)"
        "\tmovq\tcamlStdlib__Dynarray__Pmakeblock_arg_3221@GOTPCREL(%rip), %rbx"
        "\tmovq\t%rbx, 8(%rax)" "\tmovl\t$2001, %ebx")))
     ((file lqtree/lqtree.ml) (line_start 162) (line_end 99) (col_start (4))
      (col_end (31))
      (lines ("\tcall\tcamlStdlib__Dynarray.set_capacity_1003@PLT" .L277:)))
     ((file lqtree/lqtree.ml) (line_start 99) (line_end 164) (col_start (31))
      (col_end (4))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L278" .L280:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t$4096, -8(%rbx)"
        "\tmovq\tcamlLqtree__Pmakeblock_2547@GOTPCREL(%rip), %rax"
        "\tmovq\t%rax, (%rbx)" "\tmovq\t$1, 8(%rbx)" "\tmovq\t$1, 16(%rbx)"
        "\tmovq\t(%rsp), %rax" "\tmovq\t%rax, 24(%rbx)" "\tmovq\t8(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 164) (line_end 165) (col_start (4))
      (col_end (4))
      (lines ("\tcall\tcamlStdlib__Dynarray.add_last_1102@PLT" .L281:)))
     ((file lqtree/lqtree.ml) (line_start 165) (line_end 168) (col_start (4))
      (col_end (16))
      (lines
       ("\tsubq\t$16, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L282" .L284:
        "\tleaq\t8(%r15), %rax" "\tmovq\t$1024, -8(%rax)" "\tmovq\t8(%rsp), %rbx"
        "\tmovq\t%rbx, (%rax)" "\taddq\t$16, %rsp" "\t.cfi_adjust_cfa_offset -16"
        "\tret" "\t.cfi_adjust_cfa_offset 16" .L282: "\tcall\tcaml_call_gc@PLT"
        .L283: "\tjmp\t.L284" .L278: "\tcall\tcaml_call_gc@PLT" .L279:
        "\tjmp\t.L280" .L274: "\tcall\tcaml_call_gc@PLT" .L275: "\tjmp\t.L276"
        .L272: "\tpush\t$35" "\t.cfi_adjust_cfa_offset 8"
        "\tcall\tcaml_call_realloc_stack@PLT" "\tpopq\t%r10"
        "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L273"
        "\t.cfi_adjust_cfa_offset -16" "\t.cfi_endproc"
        "\t.type camlLqtree.new_t_821,@function"
        "\t.size camlLqtree.new_t_821,. - camlLqtree.new_t_821" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.subdivide_859"
        camlLqtree.subdivide_859:)))
     ((file lqtree/lqtree.ml) (line_start 168) (line_end 169) (col_start (16))
      (col_end (19))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-368(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L296" .L297:)))
     ((file lqtree/lqtree.ml) (line_start 169) (line_end 169) (col_start (19))
      (col_end (19)) (lines ("\tsubq\t$48, %rsp" "\t.cfi_adjust_cfa_offset 48")))
     ((file lqtree/lqtree.ml) (line_start 169) (line_end 169) (col_start (19))
      (col_end (19)) (lines (.L295:)))
     ((file lqtree/lqtree.ml) (line_start 169) (line_end 251) (col_start (19))
      (col_end (15)) (lines ("\tmovq\t(%rax), %rdi")))
     ((file dynarray.ml) (line_start 251) (line_end 155) (col_start (15))
      (col_end (4))
      (lines
       ("\tmovq\t(%rdi), %rdi" "\tcmpq\t%rdi, %rbx" "\tjg\t.L294"
        "\tmovq\t%rdi, 8(%rsp)" "\tmovq\t%rbx, (%rsp)" "\tmovq\t%rax, 32(%rsp)"
        "\tjmp\t.L293" "\t.align\t4" .L294:
        "\tmovq\tcamlLqtree__Pmakeblock_1523@GOTPCREL(%rip), %rax")))
     ((file lqtree/lqtree.ml) (line_start 155) (line_end 156) (col_start (4))
      (col_end (17))
      (lines ("\tcall\tcaml_raise_exn@PLT" .L298: "\t.align\t4" .L293:)))
     ((file lqtree/lqtree.ml) (line_start 156) (line_end 238) (col_start (17))
      (col_end (8)) (lines ("\tmovq\t(%rax), %rax")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tmovq\t8(%rax), %rdi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tmovq\t-8(%rdi), %rsi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tshrq\t$9, %rsi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tcmpq\t%rbx, %rsi" "\tjbe\t.L299")))
     ((file dynarray.ml) (line_start 238) (line_end 241) (col_start (8))
      (col_end (54))
      (lines ("\tmovq\t-4(%rdi,%rbx,4), %rdi" "\ttestb\t$1, %dil" "\tje\t.L292")))
     ((file dynarray.ml) (line_start 241) (line_end 241) (col_start (54))
      (col_end (6))
      (lines
       ("\tmovq\t(%rax), %rdi"
        "\tmovq\tcamlStdlib__Dynarray__const_immstring_551@GOTPCREL(%rip), %rax")))
     ((file dynarray.ml) (line_start 241) (line_end 239) (col_start (6))
      (col_end (14))
      (lines
       ("\tcall\tcamlStdlib__Dynarray.unexpected_empty_element_374@PLT" .L301:
        "\tjmp\t.L291" "\t.align\t4" .L292:)))
     ((file dynarray.ml) (line_start 239) (line_end 108) (col_start (14))
      (col_end (7)) (lines ("\tmovq\t(%rdi), %rax" .L291:)))
     ((file lqtree/lqtree.ml) (line_start 108) (line_end 110) (col_start (7))
      (col_end (17))
      (lines
       ("\tmovq\t8(%rax), %rbx" "\tcmpq\t$1, %rbx" "\tjne\t.L290"
        "\txorpd\t%xmm0, %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 110) (line_end 110) (col_start (17))
      (col_end (10)) (lines ("\tmovq\t(%rax), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 110) (line_end 111) (col_start (10))
      (col_end (9)) (lines ("\tmovq\t(%rbx), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 111) (col_start (9))
      (col_end (9)) (lines ("\tmovsd\t(%rbx), %xmm1")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 111) (col_start (9))
      (col_end (9))
      (lines ("\tcmpneqsd\t%xmm0, %xmm1" "\tmovd\t%xmm1, %rbx" "\tneg\t%rbx")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 171) (col_start (9))
      (col_end (4))
      (lines
       ("\tleaq\t1(%rbx,%rbx), %rbx" "\tjmp\t.L289" "\t.align\t4" .L290:
        "\tmovl\t$5, %ebx" .L289: "\tcmpq\t$5, %rbx" "\tje\t.L288"
        "\tmovq\t%rax, 16(%rsp)" "\tjmp\t.L287" "\t.align\t4" .L288:
        "\tmovq\tcamlLqtree__Pmakeblock_1524@GOTPCREL(%rip), %rax")))
     ((file lqtree/lqtree.ml) (line_start 171) (line_end 172) (col_start (4))
      (col_end (35))
      (lines ("\tcall\tcaml_raise_exn@PLT" .L302: "\t.align\t4" .L287:)))
     ((file lqtree/lqtree.ml) (line_start 172) (line_end 172) (col_start (35))
      (col_end (35)) (lines ("\tmovq\t24(%rax), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 172) (line_end 172) (col_start (35))
      (col_end (35)) (lines ("\tmovq\t16(%rax), %rsi")))
     ((file lqtree/lqtree.ml) (line_start 172) (line_end 172) (col_start (35))
      (col_end (35))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L303" .L305:
        "\tleaq\t8(%r15), %rdi" "\tmovq\t$4096, -8(%rdi)")))
     ((file lqtree/lqtree.ml) (line_start 172) (line_end 172) (col_start (35))
      (col_end (17))
      (lines
       ("\tmovq\t(%rax), %rax" "\tmovq\t%rax, (%rdi)" "\tmovq\t8(%rsp), %rax"
        "\tmovq\t%rax, 8(%rdi)" "\tmovq\t%rsi, 16(%rdi)" "\tmovq\t%rbx, 24(%rdi)"
        "\tmovq\t32(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 172) (line_end 172) (col_start (17))
      (col_end (4)) (lines ("\tmovq\t(%rax), %rax" "\tmovq\t(%rsp), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 172) (line_end 173) (col_start (4))
      (col_end (66))
      (lines
       ("\tcall\tcamlStdlib__Dynarray.set_560@PLT" .L306:
        "\tmovq\t16(%rsp), %rdx")))
     ((file lqtree/lqtree.ml) (line_start 173) (line_end 173) (col_start (66))
      (col_end (21)) (lines ("\tmovq\t16(%rdx), %rax")))
     ((file lqtree/lqtree.ml) (line_start 173) (line_end 173) (col_start (21))
      (col_end (24))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L307" .L309:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t$4096, -8(%rbx)" "\tmovq\t8(%rsp), %rsi"
        "\tmovq\t%rsi, %rdi")))
     ((file lqtree/lqtree.ml) (line_start 173) (line_end 173) (col_start (24))
      (col_end (38))
      (lines ("\taddq\t$2, %rdi" "\tmovq\t%rdi, (%rbx)" "\tmovq\t%rsi, %rdi")))
     ((file lqtree/lqtree.ml) (line_start 173) (line_end 173) (col_start (38))
      (col_end (52)) (lines ("\taddq\t$4, %rdi" "\tmovq\t%rdi, 8(%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 173) (line_end 175) (col_start (52))
      (col_end (17))
      (lines
       ("\taddq\t$6, %rsi" "\tmovq\t%rsi, 16(%rbx)" "\tmovq\t%rax, 24(%rbx)"
        "\tmovl\t$1, %eax" "\tcmpq\t$7, %rax" "\tjg\t.L285"
        "\tmovq\t%rax, 40(%rsp)" "\tmovq\t%rbx, 24(%rsp)"
        "\tmovq\t%rdx, 16(%rsp)" .L286: "\tmovq\t16(%rsp), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 175) (line_end 175) (col_start (17))
      (col_end (47)) (lines ("\tmovq\t24(%rbx), %rbx" "\tmovq\t%rbx, (%rsp)")))
     ((file lqtree/lqtree.ml) (line_start 175) (line_end 175) (col_start (47))
      (col_end (17))
      (lines
       ("\tcall\tcamlLqtree.of_index_453@PLT" .L310: "\tmovq\t(%rsp), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 175) (line_end 178) (col_start (17))
      (col_end (8)) (lines ("\tcall\tcamlLqtree.to_bbox_407@PLT" .L311:)))
     ((file lqtree/lqtree.ml) (line_start 178) (line_end 178) (col_start (8))
      (col_end (53))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L312" .L314:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t$4096, -8(%rbx)"
        "\tmovq\tcamlLqtree__Pmakeblock_2547@GOTPCREL(%rip), %rdi"
        "\tmovq\t%rdi, (%rbx)" "\tmovq\t$1, 8(%rbx)" "\tmovq\t24(%rsp), %rsi")))
     ((file lqtree/lqtree.ml) (line_start 178) (line_end 178) (col_start (53))
      (col_end (53)) (lines ("\tmovq\t-8(%rsi), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 178) (line_end 178) (col_start (53))
      (col_end (53)) (lines ("\tshrq\t$9, %rdi" "\tmovq\t40(%rsp), %rdx")))
     ((file lqtree/lqtree.ml) (line_start 178) (line_end 178) (col_start (53))
      (col_end (53)) (lines ("\tcmpq\t%rdx, %rdi" "\tjbe\t.L315")))
     ((file lqtree/lqtree.ml) (line_start 178) (line_end 177) (col_start (53))
      (col_end (8))
      (lines
       ("\tmovq\t-4(%rsi,%rdx,4), %rdi" "\tmovq\t%rdi, 16(%rbx)"
        "\tmovq\t%rax, 24(%rbx)" "\tmovq\t32(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 177) (line_end 176) (col_start (8))
      (col_end (6)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 176) (line_end 183) (col_start (6))
      (col_end (21))
      (lines
       ("\tcall\tcamlStdlib__Dynarray.add_last_1102@PLT" .L317:
        "\tmovq\t40(%rsp), %rax" "\tmovq\t%rax, %rbx" "\taddq\t$2, %rax"
        "\tmovq\t%rax, 40(%rsp)" "\tcmpq\t$7, %rbx" "\tjne\t.L286" .L285:
        "\tmovq\t8(%rsp), %rax" "\taddq\t$48, %rsp"
        "\t.cfi_adjust_cfa_offset -48" "\tret" "\t.cfi_adjust_cfa_offset 48"
        .L312: "\tcall\tcaml_call_gc@PLT" .L313: "\tjmp\t.L314" .L307:
        "\tcall\tcaml_call_gc@PLT" .L308: "\tjmp\t.L309" .L303:
        "\tcall\tcaml_call_gc@PLT" .L304: "\tjmp\t.L305" .L315:
        "\tcall\tcaml_ml_array_bound_error@PLT" .L316: .L299:
        "\tcall\tcaml_ml_array_bound_error@PLT" .L300: .L296: "\tpush\t$39"
        "\t.cfi_adjust_cfa_offset 8" "\tcall\tcaml_call_realloc_stack@PLT"
        "\tpopq\t%r10" "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L297"
        "\t.cfi_adjust_cfa_offset -48" "\t.cfi_endproc"
        "\t.type camlLqtree.subdivide_859,@function"
        "\t.size camlLqtree.subdivide_859,. - camlLqtree.subdivide_859" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.subdivide_leaf_962"
        camlLqtree.subdivide_leaf_962:)))
     ((file lqtree/lqtree.ml) (line_start 183) (line_end 184) (col_start (21))
      (col_end (19))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-384(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L331" .L332:)))
     ((file lqtree/lqtree.ml) (line_start 184) (line_end 184) (col_start (19))
      (col_end (19)) (lines ("\tsubq\t$64, %rsp" "\t.cfi_adjust_cfa_offset 64")))
     ((file lqtree/lqtree.ml) (line_start 184) (line_end 184) (col_start (19))
      (col_end (19)) (lines (.L330:)))
     ((file lqtree/lqtree.ml) (line_start 184) (line_end 251) (col_start (19))
      (col_end (15)) (lines ("\tmovq\t(%rax), %rdi")))
     ((file dynarray.ml) (line_start 251) (line_end 155) (col_start (15))
      (col_end (4))
      (lines
       ("\tmovq\t(%rdi), %rdi" "\tcmpq\t%rdi, %rbx" "\tjg\t.L329"
        "\tmovq\t%rdi, 8(%rsp)" "\tmovq\t%rbx, (%rsp)" "\tmovq\t%rax, 32(%rsp)"
        "\tjmp\t.L328" "\t.align\t4" .L329:
        "\tmovq\tcamlLqtree__Pmakeblock_1523@GOTPCREL(%rip), %rax")))
     ((file lqtree/lqtree.ml) (line_start 155) (line_end 156) (col_start (4))
      (col_end (17))
      (lines ("\tcall\tcaml_raise_exn@PLT" .L333: "\t.align\t4" .L328:)))
     ((file lqtree/lqtree.ml) (line_start 156) (line_end 238) (col_start (17))
      (col_end (8)) (lines ("\tmovq\t(%rax), %rax")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tmovq\t8(%rax), %rdi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tmovq\t-8(%rdi), %rsi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tshrq\t$9, %rsi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tcmpq\t%rbx, %rsi" "\tjbe\t.L334")))
     ((file dynarray.ml) (line_start 238) (line_end 241) (col_start (8))
      (col_end (54))
      (lines ("\tmovq\t-4(%rdi,%rbx,4), %rdi" "\ttestb\t$1, %dil" "\tje\t.L327")))
     ((file dynarray.ml) (line_start 241) (line_end 241) (col_start (54))
      (col_end (6))
      (lines
       ("\tmovq\t(%rax), %rdi"
        "\tmovq\tcamlStdlib__Dynarray__const_immstring_551@GOTPCREL(%rip), %rax")))
     ((file dynarray.ml) (line_start 241) (line_end 239) (col_start (6))
      (col_end (14))
      (lines
       ("\tcall\tcamlStdlib__Dynarray.unexpected_empty_element_374@PLT" .L336:
        "\tjmp\t.L326" "\t.align\t4" .L327:)))
     ((file dynarray.ml) (line_start 239) (line_end 108) (col_start (14))
      (col_end (7)) (lines ("\tmovq\t(%rdi), %rax" .L326:)))
     ((file lqtree/lqtree.ml) (line_start 108) (line_end 110) (col_start (7))
      (col_end (17))
      (lines
       ("\tmovq\t8(%rax), %rbx" "\tcmpq\t$1, %rbx" "\tjne\t.L325"
        "\txorpd\t%xmm0, %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 110) (line_end 110) (col_start (17))
      (col_end (10)) (lines ("\tmovq\t(%rax), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 110) (line_end 111) (col_start (10))
      (col_end (9)) (lines ("\tmovq\t(%rbx), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 111) (col_start (9))
      (col_end (9)) (lines ("\tmovsd\t(%rbx), %xmm1")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 111) (col_start (9))
      (col_end (9))
      (lines ("\tcmpneqsd\t%xmm0, %xmm1" "\tmovd\t%xmm1, %rbx" "\tneg\t%rbx")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 186) (col_start (9))
      (col_end (4))
      (lines
       ("\tleaq\t1(%rbx,%rbx), %rbx" "\tjmp\t.L324" "\t.align\t4" .L325:
        "\tmovl\t$5, %ebx" .L324: "\tcmpq\t$3, %rbx" "\tjne\t.L323"
        "\tmovq\t%rax, 16(%rsp)" "\tjmp\t.L322" "\t.align\t4" .L323:
        "\tmovq\tcamlLqtree__Pmakeblock_1525@GOTPCREL(%rip), %rax")))
     ((file lqtree/lqtree.ml) (line_start 186) (line_end 187) (col_start (4))
      (col_end (17))
      (lines ("\tcall\tcaml_raise_exn@PLT" .L337: "\t.align\t4" .L322:)))
     ((file lqtree/lqtree.ml) (line_start 187) (line_end 187) (col_start (17))
      (col_end (8)) (lines ("\tmovq\t(%rax), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 187) (line_end 187) (col_start (8))
      (col_end (8)) (lines ("\tmovq\t8(%rbx), %rdi" "\tmovq\t%rdi, 56(%rsp)")))
     ((file lqtree/lqtree.ml) (line_start 187) (line_end 188) (col_start (8))
      (col_end (35)) (lines ("\tmovq\t(%rbx), %rbx" "\tmovq\t%rbx, 48(%rsp)")))
     ((file lqtree/lqtree.ml) (line_start 188) (line_end 188) (col_start (35))
      (col_end (35)) (lines ("\tmovq\t24(%rax), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 188) (line_end 188) (col_start (35))
      (col_end (35)) (lines ("\tmovq\t16(%rax), %rsi")))
     ((file lqtree/lqtree.ml) (line_start 188) (line_end 188) (col_start (35))
      (col_end (35))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L338" .L340:
        "\tleaq\t8(%r15), %rdi" "\tmovq\t$4096, -8(%rdi)")))
     ((file lqtree/lqtree.ml) (line_start 188) (line_end 188) (col_start (35))
      (col_end (17))
      (lines
       ("\tmovq\t(%rax), %rax" "\tmovq\t%rax, (%rdi)" "\tmovq\t8(%rsp), %rax"
        "\tmovq\t%rax, 8(%rdi)" "\tmovq\t%rsi, 16(%rdi)" "\tmovq\t%rbx, 24(%rdi)"
        "\tmovq\t32(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 188) (line_end 188) (col_start (17))
      (col_end (4)) (lines ("\tmovq\t(%rax), %rax" "\tmovq\t(%rsp), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 188) (line_end 189) (col_start (4))
      (col_end (66))
      (lines
       ("\tcall\tcamlStdlib__Dynarray.set_560@PLT" .L341:
        "\tmovq\t16(%rsp), %rdx")))
     ((file lqtree/lqtree.ml) (line_start 189) (line_end 189) (col_start (66))
      (col_end (21)) (lines ("\tmovq\t16(%rdx), %rax")))
     ((file lqtree/lqtree.ml) (line_start 189) (line_end 189) (col_start (21))
      (col_end (24))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L342" .L344:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t$4096, -8(%rbx)" "\tmovq\t8(%rsp), %rsi"
        "\tmovq\t%rsi, %rdi")))
     ((file lqtree/lqtree.ml) (line_start 189) (line_end 189) (col_start (24))
      (col_end (38))
      (lines ("\taddq\t$2, %rdi" "\tmovq\t%rdi, (%rbx)" "\tmovq\t%rsi, %rdi")))
     ((file lqtree/lqtree.ml) (line_start 189) (line_end 189) (col_start (38))
      (col_end (52)) (lines ("\taddq\t$4, %rdi" "\tmovq\t%rdi, 8(%rbx)")))
     ((file lqtree/lqtree.ml) (line_start 189) (line_end 191) (col_start (52))
      (col_end (17))
      (lines
       ("\taddq\t$6, %rsi" "\tmovq\t%rsi, 16(%rbx)" "\tmovq\t%rax, 24(%rbx)"
        "\tmovl\t$1, %eax" "\tcmpq\t$7, %rax" "\tjg\t.L318"
        "\tmovq\t%rax, 40(%rsp)" "\tmovq\t%rbx, 24(%rsp)"
        "\tmovq\t%rdx, 16(%rsp)" .L319: "\tmovq\t16(%rsp), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 191) (line_end 191) (col_start (17))
      (col_end (47)) (lines ("\tmovq\t24(%rbx), %rbx" "\tmovq\t%rbx, (%rsp)")))
     ((file lqtree/lqtree.ml) (line_start 191) (line_end 191) (col_start (47))
      (col_end (17))
      (lines
       ("\tcall\tcamlLqtree.of_index_453@PLT" .L345: "\tmovq\t(%rsp), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 191) (line_end 192) (col_start (17))
      (col_end (24))
      (lines
       ("\tcall\tcamlLqtree.to_bbox_407@PLT" .L346: "\tmovq\t%rax, %rbx"
        "\tmovq\t%rbx, (%rsp)" "\tmovq\t56(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 192) (line_end 192) (col_start (24))
      (col_end (57))
      (lines
       ("\tcall\tcamlLqtree.contains_point_273@PLT" .L347: "\tcmpq\t$1, %rax"
        "\tje\t.L321")))
     ((file lqtree/lqtree.ml) (line_start 192) (line_end 193) (col_start (57))
      (col_end (66))
      (lines
       ("\tsubq\t$24, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L348" .L350:
        "\tleaq\t8(%r15), %rax" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\t48(%rsp), %rbx" "\tmovq\t%rbx, (%rax)" "\tmovq\t56(%rsp), %rbx"
        "\tmovq\t%rbx, 8(%rax)" "\tjmp\t.L320" "\t.align\t4" .L321:
        "\tmovq\tcamlLqtree__Pmakeblock_2547@GOTPCREL(%rip), %rax" .L320:
        "\tmovq\t24(%rsp), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 193) (line_end 193) (col_start (66))
      (col_end (66)) (lines ("\tmovq\t-8(%rdi), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 193) (line_end 193) (col_start (66))
      (col_end (66)) (lines ("\tshrq\t$9, %rbx" "\tmovq\t40(%rsp), %rsi")))
     ((file lqtree/lqtree.ml) (line_start 193) (line_end 193) (col_start (66))
      (col_end (66)) (lines ("\tcmpq\t%rsi, %rbx" "\tjbe\t.L351")))
     ((file lqtree/lqtree.ml) (line_start 193) (line_end 193) (col_start (66))
      (col_end (33)) (lines ("\tmovq\t-4(%rdi,%rsi,4), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 193) (line_end 193) (col_start (33))
      (col_end (24))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L353" .L355:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t$4096, -8(%rbx)" "\tmovq\t%rax, (%rbx)"
        "\tmovq\t$1, 8(%rbx)" "\tmovq\t%rdi, 16(%rbx)" "\tmovq\t(%rsp), %rax"
        "\tmovq\t%rax, 24(%rbx)" "\tmovq\t32(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 193) (line_end 193) (col_start (24))
      (col_end (6)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 193) (line_end 198) (col_start (6))
      (col_end (17))
      (lines
       ("\tcall\tcamlStdlib__Dynarray.add_last_1102@PLT" .L356:
        "\tmovq\t40(%rsp), %rax" "\tmovq\t%rax, %rbx" "\taddq\t$2, %rax"
        "\tmovq\t%rax, 40(%rsp)" "\tcmpq\t$7, %rbx" "\tjne\t.L319" .L318:
        "\tmovq\t8(%rsp), %rax" "\taddq\t$64, %rsp"
        "\t.cfi_adjust_cfa_offset -64" "\tret" "\t.cfi_adjust_cfa_offset 64"
        .L353: "\tcall\tcaml_call_gc@PLT" .L354: "\tjmp\t.L355" .L348:
        "\tcall\tcaml_call_gc@PLT" .L349: "\tjmp\t.L350" .L342:
        "\tcall\tcaml_call_gc@PLT" .L343: "\tjmp\t.L344" .L338:
        "\tcall\tcaml_call_gc@PLT" .L339: "\tjmp\t.L340" .L351:
        "\tcall\tcaml_ml_array_bound_error@PLT" .L352: .L334:
        "\tcall\tcaml_ml_array_bound_error@PLT" .L335: .L331: "\tpush\t$41"
        "\t.cfi_adjust_cfa_offset 8" "\tcall\tcaml_call_realloc_stack@PLT"
        "\tpopq\t%r10" "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L332"
        "\t.cfi_adjust_cfa_offset -64" "\t.cfi_endproc"
        "\t.type camlLqtree.subdivide_leaf_962,@function"
        "\t.size camlLqtree.subdivide_leaf_962,. - camlLqtree.subdivide_leaf_962"
        "\t.text" "\t.align\t16" "\t.globl\tcamlLqtree.node_check_1076"
        camlLqtree.node_check_1076:)))
     ((file lqtree/lqtree.ml) (line_start 198) (line_end 23) (col_start (17))
      (col_end (13))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-344(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L359" .L360: "\tsubq\t$24, %rsp" "\t.cfi_adjust_cfa_offset 24"
        .L358: "\tmovq\t%rdi, (%rsp)")))
     ((file nbody/nbody.ml) (line_start 23) (line_end 23) (col_start (13))
      (col_end (32)) (lines ("\tmovq\t8(%rax), %rsi")))
     ((file nbody/nbody.ml) (line_start 23) (line_end 12) (col_start (32))
      (col_end (10)) (lines ("\tmovq\t8(%rbx), %rdx")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 12)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rdx), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 23)
      (col_start (10)) (col_end (13))
      (lines ("\tsubsd\t(%rsi), %xmm0" "\tmovsd\t%xmm0, 8(%rsp)")))
     ((file nbody/nbody.ml) (line_start 23) (line_end 23) (col_start (13))
      (col_end (32)) (lines ("\tmovq\t(%rax), %rsi")))
     ((file nbody/nbody.ml) (line_start 23) (line_end 12) (col_start (32))
      (col_end (10)) (lines ("\tmovq\t(%rbx), %rbx")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 12)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rbx), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 200)
      (col_start (10)) (col_end (22))
      (lines
       ("\tsubsd\t(%rsi), %xmm0" "\tmovsd\t%xmm0, 16(%rsp)" "\tmovq\t%rdi, %rbx")))
     ((file lqtree/lqtree.ml) (line_start 200) (line_end 37) (col_start (22))
      (col_end (41))
      (lines
       ("\tcall\tcamlLqtree.contains_point_273@PLT" .L361: "\tmovq\t%rax, %rbx"
        "\tmovq\t(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 37) (line_end 37) (col_start (41))
      (col_end (30)) (lines ("\tmovsd\t(%rax), %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 37) (line_end 12) (col_start (30))
      (col_end (10)) (lines ("\tmovsd\t16(%rax), %xmm1")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 58)
      (col_start (10)) (col_end (12)) (lines ("\tsubsd\t%xmm0, %xmm1")))
     ((file src/owl/maths/owl_maths.ml) (line_start 58) (line_end 58)
      (col_start (12)) (col_end (12))
      (lines
       ("\tmulsd\t%xmm1, %xmm1" "\tmovsd\t.L362(%rip), %xmm0"
        "\tmovsd\t8(%rsp), %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 58) (line_end 58)
      (col_start (12)) (col_end (12))
      (lines ("\tmulsd\t%xmm2, %xmm2" "\tmovsd\t16(%rsp), %xmm3")))
     ((file src/owl/maths/owl_maths.ml) (line_start 58) (line_end 10)
      (col_start (12)) (col_end (10)) (lines ("\tmulsd\t%xmm3, %xmm3")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 14)
      (col_start (10)) (col_end (10)) (lines ("\taddsd\t%xmm2, %xmm3")))
     ((file src/owl/maths/owl_maths.ml) (line_start 14) (line_end 202)
      (col_start (10)) (col_end (48))
      (lines
       ("\tmulsd\t%xmm0, %xmm3" "\tcomisd\t%xmm1, %xmm3" "\tjbe\t.L357"
        "\tmovl\t$4, %eax")))
     ((file lqtree/lqtree.ml) (line_start 202) (line_end 212) (col_start (48))
      (col_end (19))
      (lines
       ("\tsubq\t%rbx, %rax" "\taddq\t$24, %rsp" "\t.cfi_adjust_cfa_offset -24"
        "\tret" "\t.cfi_adjust_cfa_offset 24" "\t.align\t4" .L357:
        "\tmovl\t$1, %eax" "\taddq\t$24, %rsp" "\t.cfi_adjust_cfa_offset -24"
        "\tret" "\t.cfi_adjust_cfa_offset 24" .L359: "\tpush\t$36"
        "\t.cfi_adjust_cfa_offset 8" "\tcall\tcaml_call_realloc_stack@PLT"
        "\tpopq\t%r10" "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L360"
        "\t.cfi_adjust_cfa_offset -24" "\t.cfi_endproc"
        "\t.type camlLqtree.node_check_1076,@function"
        "\t.size camlLqtree.node_check_1076,. - camlLqtree.node_check_1076"
        "\t.text" "\t.align\t16" "\t.globl\tcamlLqtree.acc_by_qtree_1116"
        camlLqtree.acc_by_qtree_1116:)))
     ((file lqtree/lqtree.ml) (line_start 212) (line_end 213) (col_start (19))
      (col_end (20)) (lines ("\t.cfi_startproc")))
     ((file lqtree/lqtree.ml) (line_start 213) (line_end 213) (col_start (20))
      (col_end (20)) (lines ()))
     ((file lqtree/lqtree.ml) (line_start 213) (line_end 213) (col_start (20))
      (col_end (20)) (lines (.L363:)))
     ((file lqtree/lqtree.ml) (line_start 213) (line_end 227) (col_start (20))
      (col_end (4))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L364" .L366:
        "\tleaq\t8(%r15), %rsi" "\tmovq\t$4343, -8(%rsi)"
        "\tmovq\tcaml_curry3@GOTPCREL(%rip), %rdi" "\tmovq\t%rdi, (%rsi)"
        "\tmovabsq\t$216172782113783815, %rdi" "\tmovq\t%rdi, 8(%rsi)"
        "\tmovq\tcamlLqtree.acc_aux_1125@GOTPCREL(%rip), %rdi"
        "\tmovq\t%rdi, 16(%rsi)" "\tmovq\t%rax, 24(%rsi)"
        "\tmovq\tcamlNbody__const_block_522@GOTPCREL(%rip), %rdi"
        "\tmovl\t$1, %edx" "\tmovq\t%rbx, %rax" "\tmovq\t%rdx, %rbx")))
     ((file lqtree/lqtree.ml) (line_start 227) (line_end 213) (col_start (4))
      (col_end (20))
      (lines
       ("\tjmp\tcamlLqtree.acc_aux_1125@PLT" .L364: "\tcall\tcaml_call_gc@PLT"
        .L365: "\tjmp\t.L366" "\t.cfi_endproc"
        "\t.type camlLqtree.acc_by_qtree_1116,@function"
        "\t.size camlLqtree.acc_by_qtree_1116,. - camlLqtree.acc_by_qtree_1116"
        "\t.text" "\t.align\t16" "\t.globl\tcamlLqtree.acc_aux_1125"
        camlLqtree.acc_aux_1125:)))
     ((file lqtree/lqtree.ml) (line_start 213) (line_end 213) (col_start (20))
      (col_end (20))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-368(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L381" .L382:)))
     ((file lqtree/lqtree.ml) (line_start 213) (line_end 213) (col_start (20))
      (col_end (20)) (lines ("\tsubq\t$48, %rsp" "\t.cfi_adjust_cfa_offset 48")))
     ((file lqtree/lqtree.ml) (line_start 213) (line_end 213) (col_start (20))
      (col_end (20)) (lines (.L380:)))
     ((file lqtree/lqtree.ml) (line_start 213) (line_end 155) (col_start (20))
      (col_end (35)) (lines ("\tcmpq\t(%r14), %r15" "\tjbe\t.L383" .L384:)))
     ((file lqtree/lqtree.ml) (line_start 155) (line_end 251) (col_start (35))
      (col_end (15)) (lines ("\tmovq\t(%rax), %rdx")))
     ((file dynarray.ml) (line_start 251) (line_end 155) (col_start (15))
      (col_end (4))
      (lines
       ("\tmovq\t(%rdx), %rdx" "\tcmpq\t%rdx, %rbx" "\tjg\t.L379"
        "\tmovq\t%rsi, 32(%rsp)" "\tmovq\t%rdi, 40(%rsp)"
        "\tmovq\t%rax, 24(%rsp)" "\tjmp\t.L378" "\t.align\t4" .L379:
        "\tmovq\tcamlLqtree__Pmakeblock_1523@GOTPCREL(%rip), %rax")))
     ((file lqtree/lqtree.ml) (line_start 155) (line_end 156) (col_start (4))
      (col_end (17))
      (lines ("\tcall\tcaml_raise_exn@PLT" .L386: "\t.align\t4" .L378:)))
     ((file lqtree/lqtree.ml) (line_start 156) (line_end 238) (col_start (17))
      (col_end (8)) (lines ("\tmovq\t(%rax), %rax")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tmovq\t8(%rax), %rdi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tmovq\t-8(%rdi), %rsi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tshrq\t$9, %rsi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tcmpq\t%rbx, %rsi" "\tjbe\t.L387")))
     ((file dynarray.ml) (line_start 238) (line_end 241) (col_start (8))
      (col_end (54))
      (lines ("\tmovq\t-4(%rdi,%rbx,4), %rdi" "\ttestb\t$1, %dil" "\tje\t.L377")))
     ((file dynarray.ml) (line_start 241) (line_end 241) (col_start (54))
      (col_end (6))
      (lines
       ("\tmovq\t(%rax), %rdi"
        "\tmovq\tcamlStdlib__Dynarray__const_immstring_551@GOTPCREL(%rip), %rax")))
     ((file dynarray.ml) (line_start 241) (line_end 239) (col_start (6))
      (col_end (14))
      (lines
       ("\tcall\tcamlStdlib__Dynarray.unexpected_empty_element_374@PLT" .L389:
        "\tmovq\t%rax, %rsi" "\tmovq\t%rsi, 16(%rsp)" "\tjmp\t.L376"
        "\t.align\t4" .L377:)))
     ((file dynarray.ml) (line_start 239) (line_end 215) (col_start (14))
      (col_end (19))
      (lines ("\tmovq\t(%rdi), %rsi" "\tmovq\t%rsi, 16(%rsp)" .L376:)))
     ((file lqtree/lqtree.ml) (line_start 215) (line_end 215) (col_start (19))
      (col_end (10)) (lines ("\tmovq\t(%rsi), %rax")))
     ((file lqtree/lqtree.ml) (line_start 215) (line_end 215) (col_start (10))
      (col_end (10)) (lines ("\tmovq\t8(%rax), %rdi" "\tmovq\t%rdi, 8(%rsp)")))
     ((file lqtree/lqtree.ml) (line_start 215) (line_end 108) (col_start (10))
      (col_end (7)) (lines ("\tmovq\t(%rax), %rbx" "\tmovq\t%rbx, (%rsp)")))
     ((file lqtree/lqtree.ml) (line_start 108) (line_end 111) (col_start (7))
      (col_end (9))
      (lines
       ("\tmovq\t8(%rsi), %rax" "\tcmpq\t$1, %rax" "\tjne\t.L375"
        "\txorpd\t%xmm0, %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 111) (col_start (9))
      (col_end (9)) (lines ("\tmovsd\t(%rbx), %xmm1")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 111) (col_start (9))
      (col_end (9))
      (lines ("\tcmpneqsd\t%xmm0, %xmm1" "\tmovd\t%xmm1, %rax" "\tneg\t%rax")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 217) (col_start (9))
      (col_end (19))
      (lines
       ("\tleaq\t1(%rax,%rax), %rax" "\tjmp\t.L374" "\t.align\t4" .L375:
        "\tmovl\t$5, %eax" .L374: "\tsarq\t$1, %rax" "\tcmpq\t$1, %rax"
        "\tje\t.L371" "\tja\t.L369" .L373:)))
     ((file lqtree/lqtree.ml) (line_start 217) (line_end 218) (col_start (19))
      (col_end (17))
      (lines
       ("\tmovq\t16(%rsi), %rbx" "\tcmpq\t$1, %rbx" "\tjne\t.L372"
        "\tmovq\t40(%rsp), %rax" "\taddq\t$48, %rsp"
        "\t.cfi_adjust_cfa_offset -48" "\tret" "\t.cfi_adjust_cfa_offset 48"
        "\t.align\t4" .L372: "\tmovq\t24(%rsp), %rax" "\tmovq\t40(%rsp), %rdi"
        "\tmovq\t32(%rsp), %rsi")))
     ((file lqtree/lqtree.ml) (line_start 218) (line_end 219) (col_start (17))
      (col_end (18)) (lines ("\tjmp\t.L380" "\t.align\t4" .L371:)))
     ((file lqtree/lqtree.ml) (line_start 219) (line_end 219) (col_start (18))
      (col_end (42))
      (lines
       ("\tmovq\t16(%rsi), %rax" "\tcmpq\t$1, %rax" "\tjne\t.L370"
        "\tmovq\t32(%rsp), %rax" "\tmovq\t24(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 219) (line_end 24) (col_start (42))
      (col_end (29)) (lines ("\tcall\tcamlNbody.acc_on_439@PLT" .L390:)))
     ((file nbody/nbody.ml) (line_start 24) (line_end 24) (col_start (29))
      (col_end (12)) (lines ("\tmovq\t8(%rax), %rbx" "\tmovq\t40(%rsp), %rsi")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 10) (col_start (12))
      (col_end (10)) (lines ("\tmovq\t8(%rsi), %rdi")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rdi), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 24)
      (col_start (10)) (col_end (29)) (lines ("\taddsd\t(%rbx), %xmm0")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 10) (col_start (29))
      (col_end (10)) (lines ("\tmovq\t(%rax), %rax")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10))
      (lines
       ("\tsubq\t$56, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L391" .L393:
        "\tleaq\t8(%r15), %rbx")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10))
      (lines
       ("\taddq\t$40, %rbx" "\tmovq\t$1277, -8(%rbx)" "\tmovsd\t%xmm0, (%rbx)")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 24)
      (col_start (10)) (col_end (12))
      (lines ("\tleaq\t-16(%rbx), %rdi" "\tmovq\t$1277, -8(%rdi)")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 10) (col_start (12))
      (col_end (10)) (lines ("\tmovq\t(%rsi), %rsi")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rsi), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 24)
      (col_start (10)) (col_end (53))
      (lines ("\taddsd\t(%rax), %xmm0" "\tmovsd\t%xmm0, (%rdi)")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 220) (col_start (53))
      (col_end (44))
      (lines
       ("\tleaq\t-24(%rdi), %rax" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\t%rdi, (%rax)" "\tmovq\t%rbx, 8(%rax)" "\taddq\t$48, %rsp"
        "\t.cfi_adjust_cfa_offset -48" "\tret" "\t.cfi_adjust_cfa_offset 48"
        "\t.align\t4" .L370: "\tmovq\t32(%rsp), %rax" "\tmovq\t24(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 220) (line_end 24) (col_start (44))
      (col_end (29)) (lines ("\tcall\tcamlNbody.acc_on_439@PLT" .L394:)))
     ((file nbody/nbody.ml) (line_start 24) (line_end 24) (col_start (29))
      (col_end (12)) (lines ("\tmovq\t8(%rax), %rbx" "\tmovq\t40(%rsp), %rdx")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 10) (col_start (12))
      (col_end (10)) (lines ("\tmovq\t8(%rdx), %rdi")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rdi), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 24)
      (col_start (10)) (col_end (29)) (lines ("\taddsd\t(%rbx), %xmm0")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 10) (col_start (29))
      (col_end (10)) (lines ("\tmovq\t(%rax), %rax")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10))
      (lines
       ("\tsubq\t$56, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L395" .L397:
        "\tleaq\t8(%r15), %rbx")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10))
      (lines
       ("\taddq\t$40, %rbx" "\tmovq\t$1277, -8(%rbx)" "\tmovsd\t%xmm0, (%rbx)")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 24)
      (col_start (10)) (col_end (12))
      (lines ("\tleaq\t-16(%rbx), %rsi" "\tmovq\t$1277, -8(%rsi)")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 10) (col_start (12))
      (col_end (10)) (lines ("\tmovq\t(%rdx), %rdi")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rdi), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 24)
      (col_start (10)) (col_end (53))
      (lines ("\taddsd\t(%rax), %xmm0" "\tmovsd\t%xmm0, (%rsi)")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 220) (col_start (53))
      (col_end (26))
      (lines
       ("\tleaq\t-24(%rsi), %rdi" "\tmovq\t$2048, -8(%rdi)"
        "\tmovq\t%rsi, (%rdi)" "\tmovq\t%rbx, 8(%rdi)" "\tmovq\t16(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 220) (line_end 220) (col_start (26))
      (col_end (16))
      (lines
       ("\tmovq\t16(%rax), %rbx" "\tmovq\t24(%rsp), %rax"
        "\tmovq\t32(%rsp), %rsi")))
     ((file lqtree/lqtree.ml) (line_start 220) (line_end 221) (col_start (16))
      (col_end (37)) (lines ("\tjmp\t.L380" "\t.align\t4" .L369:)))
     ((file lqtree/lqtree.ml) (line_start 221) (line_end 221) (col_start (37))
      (col_end (18))
      (lines
       ("\tmovq\t24(%rsi), %rsi" "\tmovq\t32(%rsp), %rax"
        "\tmovq\t24(%rax), %rax" "\tmovq\t%rdi, %rbx" "\tmovq\t%rsi, %rdi")))
     ((file lqtree/lqtree.ml) (line_start 221) (line_end 221) (col_start (18))
      (col_end (50))
      (lines
       ("\tcall\tcamlLqtree.node_check_1076@PLT" .L398: "\tcmpq\t$1, %rax"
        "\tje\t.L367" "\tmovq\t16(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 221) (line_end 222) (col_start (50))
      (col_end (15))
      (lines
       ("\tmovq\t16(%rax), %rax" "\tcmpq\t$1, %rax" "\tjne\t.L367"
        "\tmovq\t32(%rsp), %rax" "\tmovq\t24(%rax), %rax" "\tmovq\t(%rsp), %rbx"
        "\tmovq\t8(%rsp), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 222) (line_end 24) (col_start (15))
      (col_end (29)) (lines ("\tcall\tcamlNbody.acc_on_439@PLT" .L399:)))
     ((file nbody/nbody.ml) (line_start 24) (line_end 24) (col_start (29))
      (col_end (12)) (lines ("\tmovq\t8(%rax), %rbx" "\tmovq\t40(%rsp), %rsi")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 10) (col_start (12))
      (col_end (10)) (lines ("\tmovq\t8(%rsi), %rdi")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rdi), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 24)
      (col_start (10)) (col_end (29)) (lines ("\taddsd\t(%rbx), %xmm0")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 10) (col_start (29))
      (col_end (10)) (lines ("\tmovq\t(%rax), %rax")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10))
      (lines
       ("\tsubq\t$56, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L400" .L402:
        "\tleaq\t8(%r15), %rbx")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10))
      (lines
       ("\taddq\t$40, %rbx" "\tmovq\t$1277, -8(%rbx)" "\tmovsd\t%xmm0, (%rbx)")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 24)
      (col_start (10)) (col_end (12))
      (lines ("\tleaq\t-16(%rbx), %rdi" "\tmovq\t$1277, -8(%rdi)")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 10) (col_start (12))
      (col_end (10)) (lines ("\tmovq\t(%rsi), %rsi")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rsi), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 24)
      (col_start (10)) (col_end (53))
      (lines ("\taddsd\t(%rax), %xmm0" "\tmovsd\t%xmm0, (%rdi)")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 223) (col_start (53))
      (col_end (37))
      (lines
       ("\tleaq\t-24(%rdi), %rax" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\t%rdi, (%rax)" "\tmovq\t%rbx, 8(%rax)" "\taddq\t$48, %rsp"
        "\t.cfi_adjust_cfa_offset -48" "\tret" "\t.cfi_adjust_cfa_offset 48"
        "\t.align\t4" .L367: "\tmovq\t16(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 223) (line_end 223) (col_start (37))
      (col_end (18))
      (lines
       ("\tmovq\t24(%rax), %rdi" "\tmovq\t32(%rsp), %rax"
        "\tmovq\t24(%rax), %rax" "\tmovq\t8(%rsp), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 223) (line_end 224) (col_start (18))
      (col_end (36))
      (lines
       ("\tcall\tcamlLqtree.node_check_1076@PLT" .L403: "\tcmpq\t$1, %rax"
        "\tje\t.L368" "\tmovq\t32(%rsp), %rax" "\tmovq\t24(%rax), %rax"
        "\tmovq\t(%rsp), %rbx" "\tmovq\t8(%rsp), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 224) (line_end 24) (col_start (36))
      (col_end (29)) (lines ("\tcall\tcamlNbody.acc_on_439@PLT" .L404:)))
     ((file nbody/nbody.ml) (line_start 24) (line_end 24) (col_start (29))
      (col_end (12)) (lines ("\tmovq\t8(%rax), %rbx" "\tmovq\t40(%rsp), %rdx")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 10) (col_start (12))
      (col_end (10)) (lines ("\tmovq\t8(%rdx), %rdi")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rdi), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 24)
      (col_start (10)) (col_end (29)) (lines ("\taddsd\t(%rbx), %xmm0")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 10) (col_start (29))
      (col_end (10)) (lines ("\tmovq\t(%rax), %rax")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10))
      (lines
       ("\tsubq\t$56, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L405" .L407:
        "\tleaq\t8(%r15), %rbx")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10))
      (lines
       ("\taddq\t$40, %rbx" "\tmovq\t$1277, -8(%rbx)" "\tmovsd\t%xmm0, (%rbx)")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 24)
      (col_start (10)) (col_end (12))
      (lines ("\tleaq\t-16(%rbx), %rsi" "\tmovq\t$1277, -8(%rsi)")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 10) (col_start (12))
      (col_end (10)) (lines ("\tmovq\t(%rdx), %rdi")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rdi), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 24)
      (col_start (10)) (col_end (53))
      (lines ("\taddsd\t(%rax), %xmm0" "\tmovsd\t%xmm0, (%rsi)")))
     ((file nbody/nbody.ml) (line_start 24) (line_end 224) (col_start (53))
      (col_end (18))
      (lines
       ("\tleaq\t-24(%rsi), %rdi" "\tmovq\t$2048, -8(%rdi)"
        "\tmovq\t%rsi, (%rdi)" "\tmovq\t%rbx, 8(%rdi)" "\tmovq\t16(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 224) (line_end 224) (col_start (18))
      (col_end (8))
      (lines
       ("\tmovq\t16(%rax), %rbx" "\tmovq\t24(%rsp), %rax"
        "\tmovq\t32(%rsp), %rsi")))
     ((file lqtree/lqtree.ml) (line_start 224) (line_end 225) (col_start (8))
      (col_end (26))
      (lines ("\tjmp\t.L380" "\t.align\t4" .L368: "\tmovq\t16(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 225) (line_end 225) (col_start (26))
      (col_end (16))
      (lines
       ("\tmovq\t8(%rax), %rbx" "\tmovq\t24(%rsp), %rax" "\tmovq\t40(%rsp), %rdi"
        "\tmovq\t32(%rsp), %rsi")))
     ((file lqtree/lqtree.ml) (line_start 225) (line_end 230) (col_start (16))
      (col_end (13))
      (lines
       ("\tjmp\t.L380" .L405: "\tcall\tcaml_call_gc@PLT" .L406: "\tjmp\t.L407"
        .L400: "\tcall\tcaml_call_gc@PLT" .L401: "\tjmp\t.L402" .L395:
        "\tcall\tcaml_call_gc@PLT" .L396: "\tjmp\t.L397" .L391:
        "\tcall\tcaml_call_gc@PLT" .L392: "\tjmp\t.L393" .L383:
        "\tcall\tcaml_call_gc@PLT" .L385: "\tjmp\t.L384" .L387:
        "\tcall\tcaml_ml_array_bound_error@PLT" .L388: .L381: "\tpush\t$39"
        "\t.cfi_adjust_cfa_offset 8" "\tcall\tcaml_call_realloc_stack@PLT"
        "\tpopq\t%r10" "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L382"
        "\t.cfi_adjust_cfa_offset -48" "\t.cfi_endproc"
        "\t.type camlLqtree.acc_aux_1125,@function"
        "\t.size camlLqtree.acc_aux_1125,. - camlLqtree.acc_aux_1125" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.insert_1233"
        camlLqtree.insert_1233:)))
     ((file lqtree/lqtree.ml) (line_start 230) (line_end 230) (col_start (13))
      (col_end (23)) (lines ("\t.cfi_startproc")))
     ((file lqtree/lqtree.ml) (line_start 230) (line_end 230) (col_start (23))
      (col_end (23)) (lines ()))
     ((file lqtree/lqtree.ml) (line_start 230) (line_end 230) (col_start (23))
      (col_end (23)) (lines (.L408:)))
     ((file lqtree/lqtree.ml) (line_start 230) (line_end 230) (col_start (23))
      (col_end (23)) (lines ("\tmovq\t8(%rbx), %rsi")))
     ((file lqtree/lqtree.ml) (line_start 230) (line_end 231) (col_start (23))
      (col_end (23)) (lines ("\tmovq\t(%rbx), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 231) (line_end 257) (col_start (23))
      (col_end (4))
      (lines
       ("\tsubq\t$48, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L409" .L411:
        "\tleaq\t8(%r15), %rdi" "\tmovq\t$5367, -8(%rdi)"
        "\tmovq\tcaml_curry2@GOTPCREL(%rip), %rdx" "\tmovq\t%rdx, (%rdi)"
        "\tmovabsq\t$144115188075855879, %rdx" "\tmovq\t%rdx, 8(%rdi)"
        "\tmovq\tcamlLqtree.insert_aux_1249@GOTPCREL(%rip), %rdx"
        "\tmovq\t%rdx, 16(%rdi)" "\tmovq\t%rbx, 24(%rdi)"
        "\tmovq\t%rsi, 32(%rdi)" "\tmovl\t$1, %ebx")))
     ((file lqtree/lqtree.ml) (line_start 257) (line_end 231) (col_start (4))
      (col_end (23))
      (lines
       ("\tjmp\tcamlLqtree.insert_aux_1249@PLT" .L409: "\tcall\tcaml_call_gc@PLT"
        .L410: "\tjmp\t.L411" "\t.cfi_endproc"
        "\t.type camlLqtree.insert_1233,@function"
        "\t.size camlLqtree.insert_1233,. - camlLqtree.insert_1233" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.insert_aux_1249"
        camlLqtree.insert_aux_1249:)))
     ((file lqtree/lqtree.ml) (line_start 231) (line_end 155) (col_start (23))
      (col_end (35))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-360(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L423" .L424:)))
     ((file lqtree/lqtree.ml) (line_start 155) (line_end 155) (col_start (35))
      (col_end (35)) (lines ("\tsubq\t$40, %rsp" "\t.cfi_adjust_cfa_offset 40")))
     ((file lqtree/lqtree.ml) (line_start 155) (line_end 155) (col_start (35))
      (col_end (35)) (lines (.L422:)))
     ((file lqtree/lqtree.ml) (line_start 155) (line_end 251) (col_start (35))
      (col_end (15)) (lines ("\tmovq\t(%rax), %rsi")))
     ((file dynarray.ml) (line_start 251) (line_end 155) (col_start (15))
      (col_end (4))
      (lines
       ("\tmovq\t(%rsi), %rsi" "\tcmpq\t%rsi, %rbx" "\tjg\t.L421"
        "\tmovq\t%rdi, 16(%rsp)" "\tmovq\t%rbx, 32(%rsp)"
        "\tmovq\t%rax, 24(%rsp)" "\tjmp\t.L420" "\t.align\t4" .L421:
        "\tmovq\tcamlLqtree__Pmakeblock_1523@GOTPCREL(%rip), %rax")))
     ((file lqtree/lqtree.ml) (line_start 155) (line_end 156) (col_start (4))
      (col_end (17))
      (lines ("\tcall\tcaml_raise_exn@PLT" .L425: "\t.align\t4" .L420:)))
     ((file lqtree/lqtree.ml) (line_start 156) (line_end 238) (col_start (17))
      (col_end (8)) (lines ("\tmovq\t(%rax), %rax")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tmovq\t8(%rax), %rdi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tmovq\t-8(%rdi), %rsi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tshrq\t$9, %rsi")))
     ((file dynarray.ml) (line_start 238) (line_end 238) (col_start (8))
      (col_end (8)) (lines ("\tcmpq\t%rbx, %rsi" "\tjbe\t.L426")))
     ((file dynarray.ml) (line_start 238) (line_end 241) (col_start (8))
      (col_end (54))
      (lines ("\tmovq\t-4(%rdi,%rbx,4), %rdi" "\ttestb\t$1, %dil" "\tje\t.L419")))
     ((file dynarray.ml) (line_start 241) (line_end 241) (col_start (54))
      (col_end (6))
      (lines
       ("\tmovq\t(%rax), %rdi"
        "\tmovq\tcamlStdlib__Dynarray__const_immstring_551@GOTPCREL(%rip), %rax")))
     ((file dynarray.ml) (line_start 241) (line_end 239) (col_start (6))
      (col_end (14))
      (lines
       ("\tcall\tcamlStdlib__Dynarray.unexpected_empty_element_374@PLT" .L428:
        "\tmovq\t%rax, %r12" "\tmovq\t%r12, 8(%rsp)" "\tjmp\t.L418" "\t.align\t4"
        .L419:)))
     ((file dynarray.ml) (line_start 239) (line_end 108) (col_start (14))
      (col_end (7))
      (lines ("\tmovq\t(%rdi), %r12" "\tmovq\t%r12, 8(%rsp)" .L418:)))
     ((file lqtree/lqtree.ml) (line_start 108) (line_end 110) (col_start (7))
      (col_end (17))
      (lines
       ("\tmovq\t8(%r12), %rax" "\tcmpq\t$1, %rax" "\tjne\t.L417"
        "\txorpd\t%xmm0, %xmm0")))
     ((file lqtree/lqtree.ml) (line_start 110) (line_end 110) (col_start (17))
      (col_end (10)) (lines ("\tmovq\t(%r12), %rax")))
     ((file lqtree/lqtree.ml) (line_start 110) (line_end 111) (col_start (10))
      (col_end (9)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 111) (col_start (9))
      (col_end (9)) (lines ("\tmovsd\t(%rax), %xmm1")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 111) (col_start (9))
      (col_end (9))
      (lines ("\tcmpneqsd\t%xmm0, %xmm1" "\tmovd\t%xmm1, %rax" "\tneg\t%rax")))
     ((file lqtree/lqtree.ml) (line_start 111) (line_end 239) (col_start (9))
      (col_end (25))
      (lines
       ("\tleaq\t1(%rax,%rax), %rax" "\tjmp\t.L416" "\t.align\t4" .L417:
        "\tmovl\t$5, %eax" .L416: "\tsarq\t$1, %rax" "\tcmpq\t$1, %rax"
        "\tje\t.L414" "\tja\t.L412" .L415:)))
     ((file lqtree/lqtree.ml) (line_start 239) (line_end 239) (col_start (25))
      (col_end (8))
      (lines
       ("\tsubq\t$24, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L429" .L431:
        "\tleaq\t8(%r15), %rsi" "\tmovq\t$2048, -8(%rsi)"
        "\tmovq\t16(%rsp), %rbx" "\tmovq\t24(%rbx), %rax" "\tmovq\t%rax, (%rsi)"
        "\tmovq\t32(%rbx), %rax" "\tmovq\t%rax, 8(%rsi)" "\tmovq\t%r12, %rdi")))
     ((file lqtree/lqtree.ml) (line_start 239) (line_end 240) (col_start (8))
      (col_end (21))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_modify@PLT" "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        "\tmovq\t24(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 240) (line_end 240) (col_start (21))
      (col_end (8))
      (lines
       ("\tmovq\t(%rax), %rax" "\tmovq\t32(%rsp), %rbx" "\tmovq\t%r12, %rdi")))
     ((file lqtree/lqtree.ml) (line_start 240) (line_end 242) (col_start (8))
      (col_end (21))
      (lines
       ("\taddq\t$40, %rsp" "\t.cfi_adjust_cfa_offset -40"
        "\tjmp\tcamlStdlib__Dynarray.set_560@PLT" "\t.cfi_adjust_cfa_offset 40"
        "\t.align\t4" .L414:)))
     ((file lqtree/lqtree.ml) (line_start 242) (line_end 242) (col_start (21))
      (col_end (12)) (lines ("\tmovq\t(%r12), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 242) (line_end 23) (col_start (12))
      (col_end (13)) (lines ("\tmovq\t8(%rbx), %rdi")))
     ((file nbody/nbody.ml) (line_start 23) (line_end 23) (col_start (13))
      (col_end (32))
      (lines
       ("\tmovq\t8(%rdi), %rsi" "\tmovq\t16(%rsp), %rax"
        "\tmovq\t32(%rax), %rdx")))
     ((file nbody/nbody.ml) (line_start 23) (line_end 12) (col_start (32))
      (col_end (10)) (lines ("\tmovq\t8(%rdx), %rcx")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 12)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rcx), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 23)
      (col_start (10)) (col_end (13)) (lines ("\tsubsd\t(%rsi), %xmm0")))
     ((file nbody/nbody.ml) (line_start 23) (line_end 23) (col_start (13))
      (col_end (32)) (lines ("\tmovq\t(%rdi), %rdi")))
     ((file nbody/nbody.ml) (line_start 23) (line_end 12) (col_start (32))
      (col_end (10)) (lines ("\tmovq\t(%rdx), %rsi")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 12)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rsi), %xmm1")))
     ((file src/owl/maths/owl_maths.ml) (line_start 12) (line_end 58)
      (col_start (10)) (col_end (12))
      (lines ("\tsubsd\t(%rdi), %xmm1" "\tmovsd\t.L233(%rip), %xmm2")))
     ((file src/owl/maths/owl_maths.ml) (line_start 58) (line_end 58)
      (col_start (12)) (col_end (12)) (lines ("\tmulsd\t%xmm0, %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 58) (line_end 10)
      (col_start (12)) (col_end (10)) (lines ("\tmulsd\t%xmm1, %xmm1")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 242)
      (col_start (10)) (col_end (12))
      (lines ("\taddsd\t%xmm0, %xmm1" "\tcomisd\t%xmm1, %xmm2" "\tjbe\t.L413")))
     ((file lqtree/lqtree.ml) (line_start 242) (line_end 10) (col_start (12))
      (col_end (10)) (lines ("\tmovq\t(%rbx), %rbx")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L432" .L434:
        "\tleaq\t8(%r15), %rdi")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10))
      (lines
       ("\taddq\t$24, %rdi" "\tmovq\t$1277, -8(%rdi)" "\tmovq\t24(%rax), %rax")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 10)
      (col_start (10)) (col_end (10)) (lines ("\tmovsd\t(%rax), %xmm0")))
     ((file src/owl/maths/owl_maths.ml) (line_start 10) (line_end 245)
      (col_start (10)) (col_end (27))
      (lines ("\taddsd\t(%rbx), %xmm0" "\tmovsd\t%xmm0, (%rdi)")))
     ((file lqtree/lqtree.ml) (line_start 245) (line_end 245) (col_start (27))
      (col_end (10))
      (lines
       ("\tleaq\t-24(%rdi), %rsi" "\tmovq\t$2048, -8(%rsi)"
        "\tmovq\t%rdi, (%rsi)" "\tmovq\t%rdx, 8(%rsi)" "\tmovq\t%r12, %rdi")))
     ((file lqtree/lqtree.ml) (line_start 245) (line_end 246) (col_start (10))
      (col_end (23))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_modify@PLT" "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        "\tmovq\t24(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 246) (line_end 246) (col_start (23))
      (col_end (10))
      (lines
       ("\tmovq\t(%rax), %rax" "\tmovq\t32(%rsp), %rbx" "\tmovq\t%r12, %rdi")))
     ((file lqtree/lqtree.ml) (line_start 246) (line_end 249) (col_start (10))
      (col_end (25))
      (lines
       ("\taddq\t$40, %rsp" "\t.cfi_adjust_cfa_offset -40"
        "\tjmp\tcamlStdlib__Dynarray.set_560@PLT" "\t.cfi_adjust_cfa_offset 40"
        "\t.align\t4" .L413: "\tmovq\t24(%rsp), %rax" "\tmovq\t32(%rsp), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 249) (line_end 250) (col_start (25))
      (col_end (56))
      (lines
       ("\tcall\tcamlLqtree.subdivide_leaf_962@PLT" .L435:
        "\tmovq\t%rax, (%rsp)")))
     ((file lqtree/lqtree.ml) (line_start 250) (line_end 250) (col_start (56))
      (col_end (42))
      (lines
       ("\tsubq\t$24, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L436" .L438:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t$2048, -8(%rbx)"
        "\tmovq\t16(%rsp), %rdi" "\tmovq\t24(%rdi), %rax" "\tmovq\t%rax, (%rbx)"
        "\tmovq\t32(%rdi), %rax" "\tmovq\t%rax, 8(%rbx)" "\tmovq\t8(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 250) (line_end 250) (col_start (42))
      (col_end (29)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 250) (line_end 251) (col_start (29))
      (col_end (10))
      (lines
       ("\tcall\tcamlLqtree.centroid_sum_120@PLT" .L439: "\tmovq\t8(%rsp), %r12"
        "\tmovq\t%r12, %rdi" "\tmovq\t%rax, %rsi")))
     ((file lqtree/lqtree.ml) (line_start 251) (line_end 252) (col_start (10))
      (col_end (10))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_modify@PLT" "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        "\tmovq\t(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 252) (line_end 253) (col_start (10))
      (col_end (23)) (lines ("\tmovq\t%rax, 8(%r12)" "\tmovq\t24(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 253) (line_end 253) (col_start (23))
      (col_end (10))
      (lines
       ("\tmovq\t(%rax), %rax" "\tmovq\t32(%rsp), %rbx" "\tmovq\t%r12, %rdi")))
     ((file lqtree/lqtree.ml) (line_start 253) (line_end 254) (col_start (10))
      (col_end (44))
      (lines
       ("\tcall\tcamlStdlib__Dynarray.set_560@PLT" .L440:
        "\tmovq\t8(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 254) (line_end 254) (col_start (44))
      (col_end (22))
      (lines
       ("\tmovq\t24(%rax), %rbx" "\tmovq\t16(%rsp), %rax"
        "\tmovq\t32(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 254) (line_end 255) (col_start (22))
      (col_end (23))
      (lines
       ("\tcall\tcamlLqtree.contains_378@PLT" .L441: "\tsarq\t$1, %rax"
        "\tsalq\t$1, %rax" "\tincq\t%rax" "\tmovq\t(%rsp), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 255) (line_end 255) (col_start (23))
      (col_end (10))
      (lines
       ("\tleaq\t-1(%rbx,%rax), %rbx" "\tmovq\t24(%rsp), %rax"
        "\tmovq\t16(%rsp), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 255) (line_end 235) (col_start (10))
      (col_end (38)) (lines ("\tjmp\t.L422" "\t.align\t4" .L412:)))
     ((file lqtree/lqtree.ml) (line_start 235) (line_end 235) (col_start (38))
      (col_end (16))
      (lines
       ("\tmovq\t24(%r12), %rbx" "\tmovq\t16(%rsp), %rax"
        "\tmovq\t32(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 235) (line_end 236) (col_start (16))
      (col_end (52))
      (lines
       ("\tcall\tcamlLqtree.contains_378@PLT" .L442: "\tsarq\t$1, %rax"
        "\tsalq\t$1, %rax" "\tincq\t%rax" "\tmovq\t%rax, (%rsp)")))
     ((file lqtree/lqtree.ml) (line_start 236) (line_end 236) (col_start (52))
      (col_end (38))
      (lines
       ("\tsubq\t$24, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L443" .L445:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t$2048, -8(%rbx)"
        "\tmovq\t16(%rsp), %rdi" "\tmovq\t24(%rdi), %rax" "\tmovq\t%rax, (%rbx)"
        "\tmovq\t32(%rdi), %rax" "\tmovq\t%rax, 8(%rbx)" "\tmovq\t8(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 236) (line_end 236) (col_start (38))
      (col_end (25)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 236) (line_end 236) (col_start (25))
      (col_end (8))
      (lines
       ("\tcall\tcamlLqtree.centroid_sum_120@PLT" .L446: "\tmovq\t8(%rsp), %r12"
        "\tmovq\t%r12, %rdi" "\tmovq\t%rax, %rsi")))
     ((file lqtree/lqtree.ml) (line_start 236) (line_end 237) (col_start (8))
      (col_end (22))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_modify@PLT" "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state")))
     ((file lqtree/lqtree.ml) (line_start 237) (line_end 237) (col_start (22))
      (col_end (21)) (lines ("\tmovq\t8(%r12), %rax" "\tmovq\t(%rsp), %rbx")))
     ((file lqtree/lqtree.ml) (line_start 237) (line_end 237) (col_start (21))
      (col_end (8))
      (lines
       ("\tleaq\t-1(%rax,%rbx), %rbx" "\tmovq\t24(%rsp), %rax"
        "\tmovq\t16(%rsp), %rdi")))
     ((file lqtree/lqtree.ml) (line_start 237) (line_end 260) (col_start (8))
      (col_end (21))
      (lines
       ("\tjmp\t.L422" .L443: "\tcall\tcaml_call_gc@PLT" .L444: "\tjmp\t.L445"
        .L436: "\tcall\tcaml_call_gc@PLT" .L437: "\tjmp\t.L438" .L432:
        "\tcall\tcaml_call_gc@PLT" .L433: "\tjmp\t.L434" .L429:
        "\tcall\tcaml_call_gc@PLT" .L430: "\tjmp\t.L431" .L426:
        "\tcall\tcaml_ml_array_bound_error@PLT" .L427: .L423: "\tpush\t$38"
        "\t.cfi_adjust_cfa_offset 8" "\tcall\tcaml_call_realloc_stack@PLT"
        "\tpopq\t%r10" "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L424"
        "\t.cfi_adjust_cfa_offset -40" "\t.cfi_endproc"
        "\t.type camlLqtree.insert_aux_1249,@function"
        "\t.size camlLqtree.insert_aux_1249,. - camlLqtree.insert_aux_1249"
        "\t.text" "\t.align\t16" "\t.globl\tcamlLqtree.build_qtree_in_1357"
        camlLqtree.build_qtree_in_1357:)))
     ((file lqtree/lqtree.ml) (line_start 260) (line_end 261) (col_start (21))
      (col_end (12))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-336(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L448" .L449: "\tsubq\t$16, %rsp" "\t.cfi_adjust_cfa_offset 16"
        .L447: "\tmovq\t%rax, (%rsp)" "\tmovq\t%rbx, %rax")))
     ((file lqtree/lqtree.ml) (line_start 261) (line_end 110) (col_start (12))
      (col_end (13))
      (lines
       ("\tcall\tcamlLqtree.new_t_821@PLT" .L450: "\tmovq\t%rax, %rbx"
        "\tmovq\t%rbx, 8(%rsp)" "\tmovq\tcamlLqtree.1@GOTPCREL(%rip), %rdi"
        "\tmovq\t(%rsp), %rax")))
     ((file list.ml) (line_start 110) (line_end 270) (col_start (13))
      (col_end (15))
      (lines
       ("\tcall\tcamlLqtree.iter_5243@PLT" .L451: "\tmovq\t8(%rsp), %rax"
        "\taddq\t$16, %rsp" "\t.cfi_adjust_cfa_offset -16" "\tret"
        "\t.cfi_adjust_cfa_offset 16" .L448: "\tpush\t$35"
        "\t.cfi_adjust_cfa_offset 8" "\tcall\tcaml_call_realloc_stack@PLT"
        "\tpopq\t%r10" "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L449"
        "\t.cfi_adjust_cfa_offset -16" "\t.cfi_endproc"
        "\t.type camlLqtree.build_qtree_in_1357,@function"
        "\t.size camlLqtree.build_qtree_in_1357,. - camlLqtree.build_qtree_in_1357"
        "\t.text" "\t.align\t16" "\t.globl\tcamlLqtree.populate_1388"
        camlLqtree.populate_1388:)))
     ((file lqtree/lqtree.ml) (line_start 270) (line_end 110) (col_start (15))
      (col_end (13))
      (lines
       ("\t.cfi_startproc" .L452: "\tmovq\t%rax, %rsi" "\tmovq\t%rbx, %rax"
        "\tmovq\tcamlLqtree.2@GOTPCREL(%rip), %rdi" "\tmovq\t%rsi, %rbx")))
     ((file list.ml) (line_start 110) (line_end 278) (col_start (13))
      (col_end (12))
      (lines
       ("\tjmp\tcamlLqtree.iter_4713@PLT" "\t.cfi_endproc"
        "\t.type camlLqtree.populate_1388,@function"
        "\t.size camlLqtree.populate_1388,. - camlLqtree.populate_1388" "\t.text"
        "\t.align\t16" "\t.globl\tcamlLqtree.clear_1415" camlLqtree.clear_1415:)))
     ((file lqtree/lqtree.ml) (line_start 278) (line_end 279) (col_start (12))
      (col_end (23))
      (lines
       ("\t.cfi_startproc" "\tleaq\t-336(%rsp), %r10" "\tcmpq\t40(%r14), %r10"
        "\tjb\t.L455" .L456:)))
     ((file lqtree/lqtree.ml) (line_start 279) (line_end 279) (col_start (23))
      (col_end (23)) (lines ("\tsubq\t$16, %rsp" "\t.cfi_adjust_cfa_offset 16")))
     ((file lqtree/lqtree.ml) (line_start 279) (line_end 279) (col_start (23))
      (col_end (23)) (lines (.L454:)))
     ((file lqtree/lqtree.ml) (line_start 279) (line_end 251) (col_start (23))
      (col_end (15)) (lines ("\tmovq\t(%rax), %rdi")))
     ((file dynarray.ml) (line_start 251) (line_end 282) (col_start (15))
      (col_end (17))
      (lines
       ("\tmovq\t(%rdi), %rbx" "\tcmpq\t$1, %rbx" "\tjne\t.L453"
        "\tmovl\t$1, %eax" "\taddq\t$16, %rsp" "\t.cfi_adjust_cfa_offset -16"
        "\tret" "\t.cfi_adjust_cfa_offset 16" "\t.align\t4" .L453:
        "\tmovq\t%rax, 8(%rsp)" "\tmovl\t$1, %ebx" "\tmovq\t%rdi, %rax")))
     ((file lqtree/lqtree.ml) (line_start 282) (line_end 283) (col_start (17))
      (col_end (17)) (lines ("\tcall\tcamlStdlib__Dynarray.get_538@PLT" .L457:)))
     ((file lqtree/lqtree.ml) (line_start 283) (line_end 283) (col_start (17))
      (col_end (17)) (lines ("\taddq\t$24, %rax")))
     ((file lqtree/lqtree.ml) (line_start 283) (line_end 284) (col_start (17))
      (col_end (21))
      (lines
       ("\tmovq\t(%rax), %rax" "\tmovq\t%rax, (%rsp)" "\tmovq\t8(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 284) (line_end 284) (col_start (21))
      (col_end (6)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 284) (line_end 99) (col_start (6))
      (col_end (31))
      (lines ("\tcall\tcamlStdlib__Dynarray.clear_814@PLT" .L458:)))
     ((file lqtree/lqtree.ml) (line_start 99) (line_end 286) (col_start (31))
      (col_end (24))
      (lines
       ("\tsubq\t$40, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L459" .L461:
        "\tleaq\t8(%r15), %rbx" "\tmovq\t$4096, -8(%rbx)"
        "\tmovq\tcamlLqtree__Pmakeblock_2547@GOTPCREL(%rip), %rax"
        "\tmovq\t%rax, (%rbx)" "\tmovq\t$1, 8(%rbx)" "\tmovq\t$1, 16(%rbx)"
        "\tmovq\t(%rsp), %rax" "\tmovq\t%rax, 24(%rbx)" "\tmovq\t8(%rsp), %rax")))
     ((file lqtree/lqtree.ml) (line_start 286) (line_end 286) (col_start (24))
      (col_end (6)) (lines ("\tmovq\t(%rax), %rax")))
     ((file lqtree/lqtree.ml) (line_start 286) (line_end 135) (col_start (6))
      (col_end (31))
      (lines
       ("\taddq\t$16, %rsp" "\t.cfi_adjust_cfa_offset -16"
        "\tjmp\tcamlStdlib__Dynarray.add_last_1102@PLT"
        "\t.cfi_adjust_cfa_offset 16" .L459: "\tcall\tcaml_call_gc@PLT" .L460:
        "\tjmp\t.L461" .L455: "\tpush\t$35" "\t.cfi_adjust_cfa_offset 8"
        "\tcall\tcaml_call_realloc_stack@PLT" "\tpopq\t%r10"
        "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L456"
        "\t.cfi_adjust_cfa_offset -16" "\t.cfi_endproc"
        "\t.type camlLqtree.clear_1415,@function"
        "\t.size camlLqtree.clear_1415,. - camlLqtree.clear_1415" "\t.data"
        "\t.align\t8" "\t.quad\t9984" "\t.globl\tcamlLqtree" camlLqtree:
        "\t.quad\tcamlOwl_maths.add_455_closure"
        "\t.quad\tcamlOwl_maths.sub_463_closure"
        "\t.quad\tcamlOwl_maths.div_479_closure"
        "\t.quad\tcamlLqtree.sexp_of_centroid_88_closure"
        "\t.quad\tcamlLqtree.centroid_sum_120_closure"
        "\t.quad\tcamlLqtree__Pmakeblock_1630"
        "\t.quad\tcamlLqtree__Pmakeblock_1625"
        "\t.quad\tcamlLqtree__Pmakeblock_1618"
        "\t.quad\tcamlLqtree__Pmakeblock_1597" "\t.data" "\t.align\t8"
        "\t.quad\t1793" "\t.globl\tcamlLqtree__Pmakeblock_arg_5939"
        camlLqtree__Pmakeblock_arg_5939: "\t.quad\tcamlLqtree__apply_arg_5938"
        "\t.data" "\t.align\t8" "\t.quad\t1795"
        "\t.globl\tcamlLqtree__apply_arg_5938" camlLqtree__apply_arg_5938:
        "\t.quad\tcamlLqtree__Pmakeblock_5937" "\t.data" "\t.align\t8"
        "\t.quad\t1793" "\t.globl\tcamlLqtree__Pmakeblock_5937"
        camlLqtree__Pmakeblock_5937: "\t.quad\tcamlLqtree__Pmakeblock_5936"
        "\t.data" "\t.align\t8" "\t.quad\t2816"
        "\t.globl\tcamlLqtree__Pmakeblock_5936" camlLqtree__Pmakeblock_5936:
        "\t.quad\tcamlLqtree__Pmakeblock_arg_5935" "\t.quad\t1" "\t.data"
        "\t.align\t8" "\t.quad\t1792" "\t.globl\tcamlLqtree__Pmakeblock_arg_5935"
        camlLqtree__Pmakeblock_arg_5935:
        "\t.quad\tcamlPpx_expect_runtime__Current_file__const_immstring_92"
        "\t.data" "\t.align\t8" "\t.quad\t2818"
        "\t.globl\tcamlLqtree__Pmakeblock_5934" camlLqtree__Pmakeblock_5934:
        "\t.quad\t1" "\t.quad\tcamlLqtree__const_immstring_738" "\t.data"
        "\t.align\t8" "\t.quad\t2818" "\t.globl\tcamlLqtree__Pmakeblock_5933"
        camlLqtree__Pmakeblock_5933: "\t.quad\t1"
        "\t.quad\tcamlLqtree__const_immstring_716" "\t.data" "\t.align\t8"
        "\t.quad\t2816" "\t.globl\tcamlLqtree__Pmakeblock_5925"
        camlLqtree__Pmakeblock_5925: "\t.quad\tcaml_exn_Failure"
        "\t.quad\tcamlPpx_inline_test_lib__const_immstring_2517" "\t.data"
        "\t.align\t8" "\t.quad\t1792" "\t.globl\tcamlLqtree__Psetfield_arg_5924"
        camlLqtree__Psetfield_arg_5924:
        "\t.quad\tcamlLqtree__const_immstring_1471" "\t.data" "\t.align\t8"
        "\t.quad\t1792" "\t.globl\tcamlLqtree__Pmakeblock_arg_5923"
        camlLqtree__Pmakeblock_arg_5923:
        "\t.quad\tcamlPpx_expect_runtime__Current_file__const_immstring_33"
        "\t.data" "\t.align\t8" "\t.quad\t1792"
        "\t.globl\tcamlLqtree__Pmakeblock_arg_5922"
        camlLqtree__Pmakeblock_arg_5922:
        "\t.quad\tcamlPpx_expect_runtime__Current_file__const_immstring_35"
        "\t.data" "\t.align\t8" "\t.quad\t2816"
        "\t.globl\tcamlLqtree__Pmakeblock_5921" camlLqtree__Pmakeblock_5921:
        "\t.quad\tcamlLqtree__Pmakeblock_5920" "\t.quad\t1" "\t.data"
        "\t.align\t8" "\t.quad\t2816" "\t.globl\tcamlLqtree__Pmakeblock_5920"
        camlLqtree__Pmakeblock_5920:
        "\t.quad\tcamlPpx_expect_runtime__Current_file__const_immstring_46"
        "\t.quad\tcamlLqtree__Pmakeblock_5919" "\t.data" "\t.align\t8"
        "\t.quad\t1792" "\t.globl\tcamlLqtree__Pmakeblock_5919"
        camlLqtree__Pmakeblock_5919: "\t.quad\tcamlLqtree__const_immstring_806"
        "\t.data" "\t.align\t8" "\t.quad\t2045"
        "\t.globl\tcamlLqtree__Pfloatcomp_arg_5917"
        camlLqtree__Pfloatcomp_arg_5917: "\t.quad\t0x3ee4f8b588e368f1" "\t.data"
        "\t.align\t8" "\t.quad\t2045" "\t.globl\tcamlLqtree__prim_5912"
        camlLqtree__prim_5912: "\t.quad\t0x4008000000000000" "\t.data"
        "\t.align\t8" "\t.quad\t2045" "\t.globl\tcamlLqtree__Pfloatcomp_arg_5907"
        camlLqtree__Pfloatcomp_arg_5907: "\t.quad\t0" "\t.data" "\t.align\t8"
        "\t.quad\t2045" "\t.globl\tcamlLqtree__prim_5905" camlLqtree__prim_5905:
        "\t.quad\t0x4000000000000000" "\t.data" "\t.align\t8" "\t.quad\t2045"
        "\t.globl\tcamlLqtree__prim_5904" camlLqtree__prim_5904:
        "\t.quad\t0x3ff0000000000000" "\t.data" "\t.align\t8" "\t.quad\t2816"
        "\t.globl\tcamlLqtree__Pmakeblock_3583" camlLqtree__Pmakeblock_3583:
        "\t.quad\tcaml_exn_Failure" "\t.quad\tcamlLqtree__const_immstring_466"
        "\t.data" "\t.align\t8" "\t.data" "\t.align\t8" "\t.data" "\t.align\t8"
        "\t.data" "\t.align\t8" "\t.data" "\t.align\t8" "\t.data" "\t.align\t8"
        "\t.data" "\t.align\t8" "\t.quad\t2816"
        "\t.globl\tcamlLqtree__Pmakeblock_2547" camlLqtree__Pmakeblock_2547:
        "\t.quad\tcamlLqtree__Pfloatcomp_arg_5907"
        "\t.quad\tcamlNbody__const_block_522" "\t.data" "\t.align\t8" "\t.data"
        "\t.align\t8" "\t.data" "\t.align\t8" "\t.data" "\t.align\t8" "\t.data"
        "\t.align\t8" "\t.data" "\t.align\t8" "\t.data" "\t.align\t8" "\t.data"
        "\t.align\t8" "\t.data" "\t.align\t8" "\t.quad\t5888"
        "\t.globl\tcamlLqtree__Pmakeblock_1630" camlLqtree__Pmakeblock_1630:
        "\t.quad\tcamlLqtree.sexp_of_t_178_closure"
        "\t.quad\tcamlLqtree.contains_point_273_closure"
        "\t.quad\tcamlLqtree.midx_302_closure"
        "\t.quad\tcamlLqtree.midy_331_closure"
        "\t.quad\tcamlLqtree.size_360_closure" "\t.data" "\t.align\t8"
        "\t.quad\t4864" "\t.globl\tcamlLqtree__Pmakeblock_1625"
        camlLqtree__Pmakeblock_1625: "\t.quad\tcamlLqtree.contains_378_closure"
        "\t.quad\tcamlLqtree.to_bbox_407_closure"
        "\t.quad\tcamlLqtree.to_index_442_closure"
        "\t.quad\tcamlLqtree.of_index_453_closure" "\t.data" "\t.align\t8"
        "\t.quad\t4864" "\t.globl\tcamlLqtree__Pmakeblock_1618"
        camlLqtree__Pmakeblock_1618: "\t.quad\tcamlLqtree.sexp_of_t_485_closure"
        "\t.quad\tcamlLqtree.new_node_579_closure"
        "\t.quad\tcamlLqtree.node_type_591_closure"
        "\t.quad\tcamlLqtree.equal_615_closure" "\t.data" "\t.align\t8"
        "\t.quad\t2816" "\t.globl\tcamlLqtree__Pmakeblock_1525"
        camlLqtree__Pmakeblock_1525: "\t.quad\tcaml_exn_Assert_failure"
        "\t.quad\tcamlLqtree__const_block_992" "\t.data" "\t.align\t8"
        "\t.quad\t2816" "\t.globl\tcamlLqtree__Pmakeblock_1524"
        camlLqtree__Pmakeblock_1524: "\t.quad\tcaml_exn_Assert_failure"
        "\t.quad\tcamlLqtree__const_block_888" "\t.data" "\t.align\t8"
        "\t.quad\t2816" "\t.globl\tcamlLqtree__Pmakeblock_1523"
        camlLqtree__Pmakeblock_1523: "\t.quad\tcaml_exn_Assert_failure"
        "\t.quad\tcamlLqtree__const_block_807" "\t.data" "\t.align\t8" "\t.data"
        "\t.align\t8" "\t.data" "\t.align\t8" "\t.data" "\t.align\t8" "\t.data"
        "\t.align\t8" "\t.data" "\t.align\t8" "\t.data" "\t.align\t8" "\t.data"
        "\t.align\t8" "\t.data" "\t.align\t8" "\t.data" "\t.align\t8" "\t.data"
        "\t.align\t8" "\t.data" "\t.align\t8" "\t.data" "\t.align\t8"
        "\t.quad\t2044" "\t.globl\tcamlLqtree__const_immstring_1497"
        camlLqtree__const_immstring_1497: "\t.ascii\t\"Lqtree\"" "\t.space\t1"
        "\t.byte\t1" "\t.data" "\t.align\t8" "\t.quad\t2044"
        "\t.globl\tcamlLqtree__const_immstring_1471"
        camlLqtree__const_immstring_1471: "\t.ascii\t\"lqtree\"" "\t.space\t1"
        "\t.byte\t1" "\t.data" "\t.align\t8" "\t.quad\t3840"
        "\t.globl\tcamlLqtree__const_block_992" camlLqtree__const_block_992:
        "\t.quad\tcamlLqtree__const_immstring_806" "\t.quad\t373" "\t.quad\t9"
        "\t.data" "\t.align\t8" "\t.quad\t3840"
        "\t.globl\tcamlLqtree__const_block_888" camlLqtree__const_block_888:
        "\t.quad\tcamlLqtree__const_immstring_806" "\t.quad\t343" "\t.quad\t9"
        "\t.data" "\t.align\t8" "\t.quad\t3840"
        "\t.globl\tcamlLqtree__const_block_807" camlLqtree__const_block_807:
        "\t.quad\tcamlLqtree__const_immstring_806" "\t.quad\t311" "\t.quad\t9"
        "\t.data" "\t.align\t8" "\t.quad\t4092"
        "\t.globl\tcamlLqtree__const_immstring_806"
        camlLqtree__const_immstring_806: "\t.ascii\t\"lqtree/lqtree.ml\""
        "\t.space\t7" "\t.byte\t7" "\t.data" "\t.align\t8" "\t.quad\t2818"
        "\t.globl\tcamlLqtree__const_block_740" camlLqtree__const_block_740:
        "\t.quad\t1" "\t.quad\tcamlLqtree__const_block_739" "\t.data"
        "\t.align\t8" "\t.quad\t2828" "\t.globl\tcamlLqtree__const_block_739"
        camlLqtree__const_block_739: "\t.quad\t21" "\t.quad\t1" "\t.data"
        "\t.align\t8" "\t.quad\t3068" "\t.globl\tcamlLqtree__const_immstring_738"
        camlLqtree__const_immstring_738: "\t.ascii\t\"Node B: \"" "\t.space\t7"
        "\t.byte\t7" "\t.data" "\t.align\t8" "\t.quad\t3068"
        "\t.globl\tcamlLqtree__const_immstring_716"
        camlLqtree__const_immstring_716: "\t.ascii\t\"Node A: \"" "\t.space\t7"
        "\t.byte\t7" "\t.data" "\t.align\t8" "\t.quad\t1792"
        "\t.globl\tcamlLqtree__const_block_560" camlLqtree__const_block_560:
        "\t.quad\tcamlLqtree__const_immstring_559" "\t.data" "\t.align\t8"
        "\t.quad\t3068" "\t.globl\tcamlLqtree__const_immstring_559"
        camlLqtree__const_immstring_559: "\t.ascii\t\"centroid\"" "\t.space\t7"
        "\t.byte\t7" "\t.data" "\t.align\t8" "\t.quad\t1792"
        "\t.globl\tcamlLqtree__const_block_544" camlLqtree__const_block_544:
        "\t.quad\tcamlLqtree__const_immstring_543" "\t.data" "\t.align\t8"
        "\t.quad\t3068" "\t.globl\tcamlLqtree__const_immstring_543"
        camlLqtree__const_immstring_543: "\t.ascii\t\"children\"" "\t.space\t7"
        "\t.byte\t7" "\t.data" "\t.align\t8" "\t.quad\t1792"
        "\t.globl\tcamlLqtree__const_block_525" camlLqtree__const_block_525:
        "\t.quad\tcamlLqtree__const_immstring_524" "\t.data" "\t.align\t8"
        "\t.quad\t2044" "\t.globl\tcamlLqtree__const_immstring_524"
        camlLqtree__const_immstring_524: "\t.ascii\t\"next\"" "\t.space\t3"
        "\t.byte\t3" "\t.data" "\t.align\t8" "\t.quad\t1792"
        "\t.globl\tcamlLqtree__const_block_506" camlLqtree__const_block_506:
        "\t.quad\tcamlLqtree__const_immstring_505" "\t.data" "\t.align\t8"
        "\t.quad\t2044" "\t.globl\tcamlLqtree__const_immstring_505"
        camlLqtree__const_immstring_505: "\t.ascii\t\"bbox\"" "\t.space\t3"
        "\t.byte\t3" "\t.data" "\t.align\t8" "\t.quad\t4092"
        "\t.globl\tcamlLqtree__const_immstring_466"
        camlLqtree__const_immstring_466: "\t.ascii\t\"Quadrant.of_index\""
        "\t.space\t6" "\t.byte\t6" "\t.data" "\t.align\t8" "\t.quad\t1792"
        "\t.globl\tcamlLqtree__const_block_256" camlLqtree__const_block_256:
        "\t.quad\tcamlLqtree__const_immstring_255" "\t.data" "\t.align\t8"
        "\t.quad\t2044" "\t.globl\tcamlLqtree__const_immstring_255"
        camlLqtree__const_immstring_255: "\t.ascii\t\"minx\"" "\t.space\t3"
        "\t.byte\t3" "\t.data" "\t.align\t8" "\t.quad\t1792"
        "\t.globl\tcamlLqtree__const_block_235" camlLqtree__const_block_235:
        "\t.quad\tcamlLqtree__const_immstring_234" "\t.data" "\t.align\t8"
        "\t.quad\t2044" "\t.globl\tcamlLqtree__const_immstring_234"
        camlLqtree__const_immstring_234: "\t.ascii\t\"miny\"" "\t.space\t3"
        "\t.byte\t3" "\t.data" "\t.align\t8" "\t.quad\t1792"
        "\t.globl\tcamlLqtree__const_block_214" camlLqtree__const_block_214:
        "\t.quad\tcamlLqtree__const_immstring_213" "\t.data" "\t.align\t8"
        "\t.quad\t2044" "\t.globl\tcamlLqtree__const_immstring_213"
        camlLqtree__const_immstring_213: "\t.ascii\t\"maxx\"" "\t.space\t3"
        "\t.byte\t3" "\t.data" "\t.align\t8" "\t.quad\t1792"
        "\t.globl\tcamlLqtree__const_block_193" camlLqtree__const_block_193:
        "\t.quad\tcamlLqtree__const_immstring_192" "\t.data" "\t.align\t8"
        "\t.quad\t2044" "\t.globl\tcamlLqtree__const_immstring_192"
        camlLqtree__const_immstring_192: "\t.ascii\t\"maxy\"" "\t.space\t3"
        "\t.byte\t3" "\t.data" "\t.align\t8" "\t.quad\t3068"
        "\t.globl\tcamlLqtree__const_immstring_59"
        camlLqtree__const_immstring_59: "\t.ascii\t\"lqtree.ml\"" "\t.space\t6"
        "\t.byte\t6" "\t.text" "\t.align\t16" "\t.globl\tcamlLqtree.entry"
        camlLqtree.entry: "\t.cfi_startproc" "\tleaq\t-328(%rsp), %r10"
        "\tcmpq\t40(%r14), %r10" "\tjb\t.L474" .L475: "\tsubq\t$8, %rsp"
        "\t.cfi_adjust_cfa_offset 8" .L473:
        "\tmovq\tcamlLqtree__const_immstring_1497@GOTPCREL(%rip), %rbx"
        "\tmovq\tcamlPpx_module_timer_runtime__module_timer_1085@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file runtime/ppx_module_timer_runtime.ml) (line_start 135) (line_end 13)
      (col_start (31)) (col_end (16))
      (lines
       ("\tcall\tcamlPpx_module_timer_runtime.record_start_186@PLT" .L476:
        "\tmovq\tcamlLqtree__const_immstring_1471@GOTPCREL(%rip), %rsi"
        "\tmovq\tcamlPpx_bench_lib__Benchmark_accumulator__libname_ref_511@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rdi")))
     ((file runtime-lib/benchmark_accumulator.ml) (line_start 13) (line_end 6)
      (col_start (16)) (col_end (8))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_modify@PLT" "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        "\tmovq\tcamlPpx_expect_runtime__Current_file__Pmakeblock_274@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file runtime/current_file.ml) (line_start 6) (line_end 7) (col_start (8))
      (col_end (12))
      (lines
       ("\tmovq\t(%rax), %rax" "\ttestb\t$1, %al" "\tje\t.L472"
        "\tmovq\tcamlLqtree__Pmakeblock_5919@GOTPCREL(%rip), %rsi"
        "\tmovq\tcamlPpx_expect_runtime__Current_file__Pmakeblock_274@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rdi")))
     ((file runtime/current_file.ml) (line_start 7) (line_end 30)
      (col_start (12)) (col_end (25))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_modify@PLT" "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        "\tjmp\t.L471" .L472:)))
     ((file src/sexp_conv.ml) (line_start 30) (line_end 8) (col_start (25))
      (col_end (4))
      (lines
       ("\tcall\tcaml_alloc1@PLT" .L477: "\tleaq\t8(%r15), %rbx"
        "\tmovq\t%rbx, (%rsp)" "\tmovq\t$1024, -8(%rbx)")))
     ((file runtime/current_file.ml) (line_start 8) (line_end 358)
      (col_start (4)) (col_end (44))
      (lines
       ("\tmovq\t(%rax), %rax" "\tmovq\t%rax, (%rbx)"
        "\tmovq\tcamlLqtree__Pmakeblock_5921@GOTPCREL(%rip), %rax")))
     ((file src/sexp.ml) (line_start 358) (line_end 358) (col_start (44))
      (col_end (33))
      (lines ("\tcall\tcamlSexplib0__Sexp.conv_fields_1409@PLT" .L478:)))
     ((file src/sexp.ml) (line_start 358) (line_end 358) (col_start (33))
      (col_end (33))
      (lines
       ("\tsubq\t$144, %r15" "\tcall\tcaml_allocN@PLT" .L479:
        "\tleaq\t8(%r15), %rbx")))
     ((file src/sexp.ml) (line_start 358) (line_end 358) (col_start (33))
      (col_end (19))
      (lines
       ("\taddq\t$120, %rbx" "\tmovq\t$2048, -8(%rbx)" "\tmovq\t(%rsp), %rdi"
        "\tmovq\t%rdi, (%rbx)" "\tmovq\t$1, 8(%rbx)")))
     ((file src/sexp.ml) (line_start 358) (line_end 358) (col_start (19))
      (col_end (14))
      (lines
       ("\tleaq\t-24(%rbx), %rdi" "\tmovq\t$2048, -8(%rdi)"
        "\tmovq\tcamlLqtree__Pmakeblock_arg_5922@GOTPCREL(%rip), %rsi"
        "\tmovq\t%rsi, (%rdi)" "\tmovq\t%rbx, 8(%rdi)")))
     ((file src/sexp.ml) (line_start 358) (line_end 358) (col_start (14))
      (col_end (14))
      (lines
       ("\tleaq\t-16(%rdi), %rbx" "\tmovq\t$1025, -8(%rbx)"
        "\tmovq\t%rdi, (%rbx)")))
     ((file src/sexp.ml) (line_start 358) (line_end 360) (col_start (14))
      (col_end (7))
      (lines
       ("\tleaq\t-24(%rbx), %rdi" "\tmovq\t$2048, -8(%rdi)"
        "\tmovq\t%rbx, (%rdi)" "\tmovq\t%rax, 8(%rdi)")))
     ((file src/sexp.ml) (line_start 360) (line_end 360) (col_start (7))
      (col_end (2))
      (lines
       ("\tleaq\t-24(%rdi), %rax" "\tmovq\t$2048, -8(%rax)"
        "\tmovq\tcamlLqtree__Pmakeblock_arg_5923@GOTPCREL(%rip), %rbx"
        "\tmovq\t%rbx, (%rax)" "\tmovq\t%rdi, 8(%rax)")))
     ((file src/sexp.ml) (line_start 360) (line_end 244) (col_start (2))
      (col_end (31))
      (lines
       ("\tleaq\t-16(%rax), %rbx" "\tmovq\t$1025, -8(%rbx)"
        "\tmovq\t%rax, (%rbx)")))
     ((file src/info.ml) (line_start 244) (line_end 244) (col_start (31))
      (col_end (20))
      (lines
       ("\tleaq\t-16(%rbx), %rax" "\tmovq\t$1027, -8(%rax)"
        "\tmovq\t%rbx, (%rax)")))
     ((file src/info.ml) (line_start 244) (line_end 9) (col_start (20))
      (col_end (27))
      (lines ("\tcall\tcamlBase__Info.of_message_684@PLT" .L480:)))
     ((file src/error.ml) (line_start 9) (line_end 9) (col_start (27))
      (col_end (21)) (lines ("\tcall\tcamlBase__Info.to_exn_1288@PLT" .L481:)))
     ((file src/error.ml) (line_start 9) (line_end 610) (col_start (21))
      (col_end (8))
      (lines
       ("\tcall\tcaml_raise_exn@PLT" .L482: .L471:
        "\tmovq\tcamlPpx_inline_test_lib__Pmakeblock_3573@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 610) (line_end 616)
      (col_start (8)) (col_end (4))
      (lines
       ("\tmovq\t(%rax), %rax" "\ttestb\t$1, %al" "\tje\t.L465"
        "\tmovq\tcamlLqtree__Psetfield_arg_5924@GOTPCREL(%rip), %rsi"
        "\tmovq\tcamlPpx_inline_test_lib__Pmakeblock_3573@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rdi")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 616) (line_end 132)
      (col_start (4)) (col_end (36))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_modify@PLT" "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        "\tmovq\tcamlPpx_inline_test_lib__force_drop_3571@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax" "\tcmpq\t$1, %rax" "\tje\t.L470"
        "\tmovq\t$-1900389787, %rax" "\tjmp\t.L469" .L470:
        "\tmovq\tcamlPpx_inline_test_lib__Pmakeblock_3572@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 132) (line_end 619)
      (col_start (36)) (col_end (7))
      (lines ("\tmovq\t(%rax), %rax" .L469: "\ttestb\t$1, %al" "\tjne\t.L465")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 619) (line_end 619)
      (col_start (7)) (col_end (18))
      (lines
       ("\tmovq\t8(%rax), %r12"
        "\tmovq\tcamlLqtree__const_immstring_1471@GOTPCREL(%rip), %rsi")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 619) (line_end 620)
      (col_start (18)) (col_end (10)) (lines ("\tmovq\t(%r12), %rax")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 620) (line_end 620)
      (col_start (10)) (col_end (10)) (lines ("\tmovq\t(%rax), %rdi")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 620) (line_end 619)
      (col_start (10)) (col_end (18))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_string_equal@PLT" "\tmovq\t%rbx, %rsp"
        "\t.cfi_restore_state" "\tcmpq\t$1, %rax" "\tje\t.L465")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 619) (line_end 625)
      (col_start (18)) (col_end (13)) (lines ("\tmovq\t8(%r12), %rbx")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 625) (line_end 1)
      (col_start (13)) (col_end (0)) (lines ("\tmovq\t(%rbx), %rax")))
     ((file lqtree/lqtree.ml) (line_start 1) (line_end 1) (col_start (0))
      (col_end (0))
      (lines ("\tcmpq\t$2050162989, %rax" "\tsetge\t%al" "\tmovzbq\t%al, %rax")))
     ((file lqtree/lqtree.ml) (line_start 1) (line_end 624) (col_start (0))
      (col_end (34))
      (lines ("\tleaq\t1(%rax,%rax), %rax" "\tcmpq\t$1, %rax" "\tje\t.L468")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 624) (line_end 627)
      (col_start (34)) (col_end (12))
      (lines
       ("\tmovq\t8(%rbx), %rax" "\ttestb\t$1, %al" "\tje\t.L468"
        "\tmovl\t$1, %r12d" "\tjmp\t.L467" .L468: "\tmovl\t$3, %r12d" .L467:
        "\tmovq\tcamlPpx_inline_test_lib__const_immstring_618@GOTPCREL(%rip), %rsi"
        "\tmovq\tcamlLqtree__const_immstring_59@GOTPCREL(%rip), %rdi")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 627) (line_end 29)
      (col_start (12)) (col_end (17))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_string_equal@PLT" "\tmovq\t%rbx, %rsp"
        "\t.cfi_restore_state" "\tcmpq\t$1, %rax" "\tje\t.L466"
        "\tcmpq\t$1, %r12" "\tje\t.L466"
        "\tmovq\tcamlLqtree__Pmakeblock_5925@GOTPCREL(%rip), %rax")))
     ((file stdlib.ml) (line_start 29) (line_end 146) (col_start (17))
      (col_end (22))
      (lines
       ("\tcall\tcaml_raise_exn@PLT" .L483: .L466:
        "\tmovq\tcamlLqtree__const_immstring_59@GOTPCREL(%rip), %rsi"
        "\tmovq\tcamlPpx_inline_test_lib__Pmakeblock_3563@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rdi")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 146) (line_end 636)
      (col_start (22)) (col_end (8))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_modify@PLT" "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        .L465:
        "\tmovq\tcamlPpx_inline_test_lib__Pmakeblock_3573@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 636) (line_end 637)
      (col_start (8)) (col_end (4))
      (lines
       ("\tmovq\t(%rax), %rsi"
        "\tmovq\tcamlLqtree__simplify_fv_3599@GOTPCREL(%rip), %rdi"
        "\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_initialize@PLT" "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        "\tmovq\tcamlLqtree__simplify_fv_3599@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 637) (line_end 637)
      (col_start (4)) (col_end (4)) (lines ("\tandq\t$1, %rax")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 637) (line_end 642)
      (col_start (4)) (col_end (4))
      (lines
       ("\tleaq\t1(%rax,%rax), %rsi"
        "\tmovq\tcamlLqtree__cond_3598@GOTPCREL(%rip), %rdi" "\tmovq\t%rsp, %rbx"
        "\t.cfi_remember_state" "\t.cfi_def_cfa_register %rbx"
        "\tmovq\t64(%r14), %rsp" "\tcall\tcaml_initialize@PLT"
        "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        "\tmovq\tcamlLqtree__cond_3598@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax" "\tcmpq\t$1, %rax" "\tjne\t.L464"
        "\tmovq\tcamlLqtree__const_immstring_1471@GOTPCREL(%rip), %rsi"
        "\tmovq\tcamlLqtree__simplify_fv_3599@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 642) (line_end 642)
      (col_start (4)) (col_end (19)) (lines ("\tmovq\t(%rax), %rdi")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 642) (line_end 642)
      (col_start (19)) (col_end (41))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_string_equal@PLT" "\tmovq\t%rbx, %rsp"
        "\t.cfi_restore_state" "\tcmpq\t$1, %rax" "\tje\t.L464"
        "\tmovl\t$1, %esi"
        "\tmovq\tcamlPpx_inline_test_lib__Pmakeblock_3573@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rdi")))
     ((file runtime-lib/ppx_inline_test_lib.ml) (line_start 642) (line_end 18)
      (col_start (41)) (col_end (8))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_modify@PLT" "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        .L464:
        "\tmovq\tcamlPpx_expect_runtime__Current_file__Pmakeblock_274@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file runtime/current_file.ml) (line_start 18) (line_end 19)
      (col_start (8)) (col_end (4))
      (lines
       ("\tmovq\t(%rax), %rsi"
        "\tmovq\tcamlLqtree__simplify_fv_2563@GOTPCREL(%rip), %rdi"
        "\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_initialize@PLT" "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        "\tmovq\tcamlLqtree__simplify_fv_2563@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file runtime/current_file.ml) (line_start 19) (line_end 19)
      (col_start (4)) (col_end (4)) (lines ("\tandq\t$1, %rax")))
     ((file runtime/current_file.ml) (line_start 19) (line_end 185)
      (col_start (4)) (col_end (37))
      (lines
       ("\tleaq\t1(%rax,%rax), %rsi"
        "\tmovq\tcamlLqtree__cond_2562@GOTPCREL(%rip), %rdi" "\tmovq\t%rsp, %rbx"
        "\t.cfi_remember_state" "\t.cfi_def_cfa_register %rbx"
        "\tmovq\t64(%r14), %rsp" "\tcall\tcaml_initialize@PLT"
        "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        "\tmovq\tcamlLqtree__cond_2562@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax" "\tcmpq\t$1, %rax" "\tje\t.L463")))
     ((file src/info.ml) (line_start 185) (line_end 9) (col_start (37))
      (col_end (27))
      (lines
       ("\tcall\tcaml_alloc1@PLT" .L484: "\tleaq\t8(%r15), %rax"
        "\tmovq\t$1024, -8(%rax)"
        "\tmovq\tcamlLqtree__Pmakeblock_arg_5939@GOTPCREL(%rip), %rbx"
        "\tmovq\t%rbx, (%rax)")))
     ((file src/error.ml) (line_start 9) (line_end 9) (col_start (27))
      (col_end (21)) (lines ("\tcall\tcamlBase__Info.to_exn_1288@PLT" .L485:)))
     ((file src/error.ml) (line_start 9) (line_end 19) (col_start (21))
      (col_end (14))
      (lines
       ("\tcall\tcaml_raise_exn@PLT" .L486: .L463: "\tmovl\t$1, %esi"
        "\tmovq\tcamlPpx_expect_runtime__Current_file__Pmakeblock_274@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rdi")))
     ((file runtime/current_file.ml) (line_start 19) (line_end 14)
      (col_start (14)) (col_end (17))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_modify@PLT" "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        .L462:
        "\tmovq\tcamlPpx_bench_lib__Benchmark_accumulator__const_immstring_35@GOTPCREL(%rip), %rsi"
        "\tmovq\tcamlPpx_bench_lib__Benchmark_accumulator__libname_ref_511@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rdi")))
     ((file runtime-lib/benchmark_accumulator.ml) (line_start 14) (line_end 136)
      (col_start (17)) (col_end (31))
      (lines
       ("\tmovq\t%rsp, %rbx" "\t.cfi_remember_state"
        "\t.cfi_def_cfa_register %rbx" "\tmovq\t64(%r14), %rsp"
        "\tcall\tcaml_modify@PLT" "\tmovq\t%rbx, %rsp" "\t.cfi_restore_state"
        "\tmovq\tcamlLqtree__const_immstring_1497@GOTPCREL(%rip), %rbx"
        "\tmovq\tcamlPpx_module_timer_runtime__module_timer_1085@GOTPCREL(%rip), %rax"
        "\tmovq\t(%rax), %rax")))
     ((file runtime/ppx_module_timer_runtime.ml) (line_start 136) (line_end 2673)
      (col_start (31)) (col_end ())
      (lines
       ("\tcall\tcamlPpx_module_timer_runtime.record_until_230@PLT" .L487:
        "\tmovl\t$1, %eax" "\taddq\t$8, %rsp" "\t.cfi_adjust_cfa_offset -8"
        "\tret" "\t.cfi_adjust_cfa_offset 8" .L474: "\tpush\t$34"
        "\t.cfi_adjust_cfa_offset 8" "\tcall\tcaml_call_realloc_stack@PLT"
        "\tpopq\t%r10" "\t.cfi_adjust_cfa_offset -8" "\tjmp\t.L475"
        "\t.cfi_adjust_cfa_offset -8" "\t.cfi_endproc"
        "\t.type camlLqtree.entry,@function"
        "\t.size camlLqtree.entry,. - camlLqtree.entry" "\t.data" "\t.align\t8"
        "\t.section .rodata.cst8,\"aM\",@progbits,8" "\t.align\t8" .L362:
        "\t.quad\t0x4008000000000000" .L233: "\t.quad\t0x3ee4f8b588e368f1" .L163:
        "\t.quad\t0x4000000000000000" .L132: "\t.quad\t0x3ff0000000000000"
        "\t.text" "\t.globl\tcamlLqtree.code_end" camlLqtree.code_end: "\t.data"
        "\t\t\t\t/* relocation table start */" "\t.align\t8"
        "\t\t\t\t/* relocation table end */" "\t.data" "\t.quad\t0"
        "\t.globl\tcamlLqtree.data_end" camlLqtree.data_end: "\t.quad\t0"
        "\t.align\t8" "\t.globl\tcamlLqtree.frametable" camlLqtree.frametable:
        "\t.quad\t133" "\t.quad\t.L487" "\t.word\t17" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L488 - .) + 0" "\t.align\t8" "\t.quad\t.L486" "\t.word\t17"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L489 - .) + 0" "\t.align\t8"
        "\t.quad\t.L485" "\t.word\t17" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L490 - .) + 0" "\t.align\t8" "\t.quad\t.L484" "\t.word\t19"
        "\t.word\t0" "\t.byte\t1" "\t.byte\t0" "\t.align\t4"
        "\t.long\t(.L491 - .) + 0" "\t.align\t8" "\t.quad\t.L483" "\t.word\t17"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L492 - .) + 0" "\t.align\t8"
        "\t.quad\t.L482" "\t.word\t17" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L493 - .) + 0" "\t.align\t8" "\t.quad\t.L481" "\t.word\t17"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L494 - .) + 0" "\t.align\t8"
        "\t.quad\t.L480" "\t.word\t17" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L495 - .) + 0" "\t.align\t8" "\t.quad\t.L479" "\t.word\t19"
        "\t.word\t2" "\t.word\t0" "\t.word\t1" "\t.byte\t7" "\t.byte\t0"
        "\t.byte\t0" "\t.byte\t1" "\t.byte\t1" "\t.byte\t0" "\t.byte\t1"
        "\t.byte\t1" "\t.align\t4" "\t.long\t(.L496 - .) + 0"
        "\t.long\t(.L497 - .) + 0" "\t.long\t(.L498 - .) + 0"
        "\t.long\t(.L499 - .) + 0" "\t.long\t(.L500 - .) + 0"
        "\t.long\t(.L501 - .) + 0" "\t.long\t(.L502 - .) + 0" "\t.align\t8"
        "\t.quad\t.L478" "\t.word\t17" "\t.word\t1" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L503 - .) + 0" "\t.align\t8" "\t.quad\t.L477" "\t.word\t19"
        "\t.word\t1" "\t.word\t1" "\t.byte\t1" "\t.byte\t0" "\t.align\t4"
        "\t.long\t(.L504 - .) + 0" "\t.align\t8" "\t.quad\t.L476" "\t.word\t17"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L505 - .) + 0" "\t.align\t8"
        "\t.quad\t.L460" "\t.word\t27" "\t.word\t2" "\t.word\t0" "\t.word\t8"
        "\t.byte\t1" "\t.byte\t3" "\t.align\t4" "\t.long\t(.L506 - .) + 0"
        "\t.align\t8" "\t.quad\t.L458" "\t.word\t25" "\t.word\t2" "\t.word\t0"
        "\t.word\t8" "\t.align\t4" "\t.long\t(.L507 - .) + 0" "\t.align\t8"
        "\t.quad\t.L457" "\t.word\t25" "\t.word\t1" "\t.word\t8" "\t.align\t4"
        "\t.long\t(.L508 - .) + 0" "\t.align\t8" "\t.quad\t.L451" "\t.word\t25"
        "\t.word\t1" "\t.word\t8" "\t.align\t4" "\t.long\t(.L509 - .) + 0"
        "\t.align\t8" "\t.quad\t.L450" "\t.word\t25" "\t.word\t1" "\t.word\t0"
        "\t.align\t4" "\t.long\t(.L510 - .) + 0" "\t.align\t8" "\t.quad\t.L446"
        "\t.word\t49" "\t.word\t3" "\t.word\t8" "\t.word\t16" "\t.word\t24"
        "\t.align\t4" "\t.long\t(.L511 - .) + 0" "\t.align\t8" "\t.quad\t.L444"
        "\t.word\t51" "\t.word\t3" "\t.word\t8" "\t.word\t16" "\t.word\t24"
        "\t.byte\t1" "\t.byte\t1" "\t.align\t4" "\t.long\t(.L512 - .) + 0"
        "\t.align\t8" "\t.quad\t.L442" "\t.word\t49" "\t.word\t3" "\t.word\t8"
        "\t.word\t16" "\t.word\t24" "\t.align\t4" "\t.long\t(.L513 - .) + 0"
        "\t.align\t8" "\t.quad\t.L441" "\t.word\t49" "\t.word\t3" "\t.word\t0"
        "\t.word\t16" "\t.word\t24" "\t.align\t4" "\t.long\t(.L514 - .) + 0"
        "\t.align\t8" "\t.quad\t.L440" "\t.word\t49" "\t.word\t4" "\t.word\t0"
        "\t.word\t8" "\t.word\t16" "\t.word\t24" "\t.align\t4"
        "\t.long\t(.L515 - .) + 0" "\t.align\t8" "\t.quad\t.L439" "\t.word\t49"
        "\t.word\t5" "\t.word\t0" "\t.word\t8" "\t.word\t16" "\t.word\t24"
        "\t.word\t32" "\t.align\t4" "\t.long\t(.L516 - .) + 0" "\t.align\t8"
        "\t.quad\t.L437" "\t.word\t51" "\t.word\t5" "\t.word\t0" "\t.word\t8"
        "\t.word\t16" "\t.word\t24" "\t.word\t32" "\t.byte\t1" "\t.byte\t1"
        "\t.align\t4" "\t.long\t(.L517 - .) + 0" "\t.align\t8" "\t.quad\t.L435"
        "\t.word\t49" "\t.word\t4" "\t.word\t8" "\t.word\t16" "\t.word\t24"
        "\t.word\t32" "\t.align\t4" "\t.long\t(.L518 - .) + 0" "\t.align\t8"
        "\t.quad\t.L433" "\t.word\t51" "\t.word\t6" "\t.word\t1" "\t.word\t3"
        "\t.word\t9" "\t.word\t17" "\t.word\t24" "\t.word\t32" "\t.byte\t2"
        "\t.byte\t1" "\t.byte\t0" "\t.align\t4" "\t.long\t(.L519 - .) + 0"
        "\t.long\t(.L520 - .) + 0" "\t.align\t8" "\t.quad\t.L430" "\t.word\t51"
        "\t.word\t4" "\t.word\t16" "\t.word\t17" "\t.word\t24" "\t.word\t32"
        "\t.byte\t1" "\t.byte\t1" "\t.align\t4" "\t.long\t(.L521 - .) + 0"
        "\t.align\t8" "\t.quad\t.L428" "\t.word\t49" "\t.word\t3" "\t.word\t16"
        "\t.word\t24" "\t.word\t32" "\t.align\t4" "\t.long\t(.L522 - .) + 0"
        "\t.align\t8" "\t.quad\t.L427" "\t.word\t49" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L523 - .) + 0" "\t.align\t8" "\t.quad\t.L425" "\t.word\t49"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L524 - .) + 0" "\t.align\t8"
        "\t.quad\t.L410" "\t.word\t11" "\t.word\t3" "\t.word\t1" "\t.word\t3"
        "\t.word\t7" "\t.byte\t1" "\t.byte\t4" "\t.align\t4"
        "\t.long\t(.L525 - .) + 0" "\t.align\t8" "\t.quad\t.L406" "\t.word\t59"
        "\t.word\t5" "\t.word\t1" "\t.word\t9" "\t.word\t16" "\t.word\t24"
        "\t.word\t32" "\t.byte\t3" "\t.byte\t1" "\t.byte\t0" "\t.byte\t0"
        "\t.align\t4" "\t.long\t(.L526 - .) + 0" "\t.long\t(.L527 - .) + 0"
        "\t.long\t(.L528 - .) + 0" "\t.align\t8" "\t.quad\t.L404" "\t.word\t57"
        "\t.word\t4" "\t.word\t16" "\t.word\t24" "\t.word\t32" "\t.word\t40"
        "\t.align\t4" "\t.long\t(.L529 - .) + 0" "\t.align\t8" "\t.quad\t.L403"
        "\t.word\t57" "\t.word\t6" "\t.word\t0" "\t.word\t8" "\t.word\t16"
        "\t.word\t24" "\t.word\t32" "\t.word\t40" "\t.align\t4"
        "\t.long\t(.L530 - .) + 0" "\t.align\t8" "\t.quad\t.L401" "\t.word\t59"
        "\t.word\t2" "\t.word\t1" "\t.word\t7" "\t.byte\t3" "\t.byte\t1"
        "\t.byte\t0" "\t.byte\t0" "\t.align\t4" "\t.long\t(.L531 - .) + 0"
        "\t.long\t(.L532 - .) + 0" "\t.long\t(.L533 - .) + 0" "\t.align\t8"
        "\t.quad\t.L399" "\t.word\t57" "\t.word\t1" "\t.word\t40" "\t.align\t4"
        "\t.long\t(.L534 - .) + 0" "\t.align\t8" "\t.quad\t.L398" "\t.word\t57"
        "\t.word\t6" "\t.word\t0" "\t.word\t8" "\t.word\t16" "\t.word\t24"
        "\t.word\t32" "\t.word\t40" "\t.align\t4" "\t.long\t(.L535 - .) + 0"
        "\t.align\t8" "\t.quad\t.L396" "\t.word\t59" "\t.word\t5" "\t.word\t1"
        "\t.word\t9" "\t.word\t16" "\t.word\t24" "\t.word\t32" "\t.byte\t3"
        "\t.byte\t1" "\t.byte\t0" "\t.byte\t0" "\t.align\t4"
        "\t.long\t(.L536 - .) + 0" "\t.long\t(.L537 - .) + 0"
        "\t.long\t(.L538 - .) + 0" "\t.align\t8" "\t.quad\t.L394" "\t.word\t57"
        "\t.word\t4" "\t.word\t16" "\t.word\t24" "\t.word\t32" "\t.word\t40"
        "\t.align\t4" "\t.long\t(.L539 - .) + 0" "\t.align\t8" "\t.quad\t.L392"
        "\t.word\t59" "\t.word\t2" "\t.word\t1" "\t.word\t7" "\t.byte\t3"
        "\t.byte\t1" "\t.byte\t0" "\t.byte\t0" "\t.align\t4"
        "\t.long\t(.L540 - .) + 0" "\t.long\t(.L541 - .) + 0"
        "\t.long\t(.L542 - .) + 0" "\t.align\t8" "\t.quad\t.L390" "\t.word\t57"
        "\t.word\t1" "\t.word\t40" "\t.align\t4" "\t.long\t(.L543 - .) + 0"
        "\t.align\t8" "\t.quad\t.L389" "\t.word\t57" "\t.word\t3" "\t.word\t24"
        "\t.word\t32" "\t.word\t40" "\t.align\t4" "\t.long\t(.L544 - .) + 0"
        "\t.align\t8" "\t.quad\t.L388" "\t.word\t57" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L545 - .) + 0" "\t.align\t8" "\t.quad\t.L386" "\t.word\t57"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L546 - .) + 0" "\t.align\t8"
        "\t.quad\t.L385" "\t.word\t58" "\t.word\t4" "\t.word\t1" "\t.word\t3"
        "\t.word\t5" "\t.word\t7" "\t.byte\t0" "\t.align\t8" "\t.quad\t.L365"
        "\t.word\t11" "\t.word\t2" "\t.word\t1" "\t.word\t3" "\t.byte\t1"
        "\t.byte\t3" "\t.align\t4" "\t.long\t(.L547 - .) + 0" "\t.align\t8"
        "\t.quad\t.L361" "\t.word\t33" "\t.word\t1" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L548 - .) + 0" "\t.align\t8" "\t.quad\t.L356" "\t.word\t73"
        "\t.word\t6" "\t.word\t8" "\t.word\t16" "\t.word\t24" "\t.word\t32"
        "\t.word\t48" "\t.word\t56" "\t.align\t4" "\t.long\t(.L549 - .) + 0"
        "\t.align\t8" "\t.quad\t.L354" "\t.word\t75" "\t.word\t8" "\t.word\t0"
        "\t.word\t1" "\t.word\t8" "\t.word\t16" "\t.word\t24" "\t.word\t32"
        "\t.word\t48" "\t.word\t56" "\t.byte\t1" "\t.byte\t3" "\t.align\t4"
        "\t.long\t(.L550 - .) + 0" "\t.align\t8" "\t.quad\t.L352" "\t.word\t73"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L551 - .) + 0" "\t.align\t8"
        "\t.quad\t.L349" "\t.word\t75" "\t.word\t7" "\t.word\t0" "\t.word\t8"
        "\t.word\t16" "\t.word\t24" "\t.word\t32" "\t.word\t48" "\t.word\t56"
        "\t.byte\t1" "\t.byte\t1" "\t.align\t4" "\t.long\t(.L552 - .) + 0"
        "\t.align\t8" "\t.quad\t.L347" "\t.word\t73" "\t.word\t7" "\t.word\t0"
        "\t.word\t8" "\t.word\t16" "\t.word\t24" "\t.word\t32" "\t.word\t48"
        "\t.word\t56" "\t.align\t4" "\t.long\t(.L553 - .) + 0" "\t.align\t8"
        "\t.quad\t.L346" "\t.word\t73" "\t.word\t6" "\t.word\t8" "\t.word\t16"
        "\t.word\t24" "\t.word\t32" "\t.word\t48" "\t.word\t56" "\t.align\t4"
        "\t.long\t(.L554 - .) + 0" "\t.align\t8" "\t.quad\t.L345" "\t.word\t73"
        "\t.word\t7" "\t.word\t0" "\t.word\t8" "\t.word\t16" "\t.word\t24"
        "\t.word\t32" "\t.word\t48" "\t.word\t56" "\t.align\t4"
        "\t.long\t(.L555 - .) + 0" "\t.align\t8" "\t.quad\t.L343" "\t.word\t75"
        "\t.word\t6" "\t.word\t1" "\t.word\t8" "\t.word\t9" "\t.word\t32"
        "\t.word\t48" "\t.word\t56" "\t.byte\t1" "\t.byte\t3" "\t.align\t4"
        "\t.long\t(.L556 - .) + 0" "\t.align\t8" "\t.quad\t.L341" "\t.word\t73"
        "\t.word\t5" "\t.word\t8" "\t.word\t16" "\t.word\t32" "\t.word\t48"
        "\t.word\t56" "\t.align\t4" "\t.long\t(.L557 - .) + 0" "\t.align\t8"
        "\t.quad\t.L339" "\t.word\t75" "\t.word\t9" "\t.word\t0" "\t.word\t1"
        "\t.word\t3" "\t.word\t7" "\t.word\t8" "\t.word\t16" "\t.word\t32"
        "\t.word\t48" "\t.word\t56" "\t.byte\t1" "\t.byte\t3" "\t.align\t4"
        "\t.long\t(.L558 - .) + 0" "\t.align\t8" "\t.quad\t.L337" "\t.word\t73"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L559 - .) + 0" "\t.align\t8"
        "\t.quad\t.L336" "\t.word\t73" "\t.word\t3" "\t.word\t0" "\t.word\t8"
        "\t.word\t32" "\t.align\t4" "\t.long\t(.L560 - .) + 0" "\t.align\t8"
        "\t.quad\t.L335" "\t.word\t73" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L561 - .) + 0" "\t.align\t8" "\t.quad\t.L333" "\t.word\t73"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L562 - .) + 0" "\t.align\t8"
        "\t.quad\t.L317" "\t.word\t57" "\t.word\t4" "\t.word\t8" "\t.word\t16"
        "\t.word\t24" "\t.word\t32" "\t.align\t4" "\t.long\t(.L563 - .) + 0"
        "\t.align\t8" "\t.quad\t.L316" "\t.word\t57" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L564 - .) + 0" "\t.align\t8" "\t.quad\t.L313" "\t.word\t59"
        "\t.word\t5" "\t.word\t1" "\t.word\t8" "\t.word\t16" "\t.word\t24"
        "\t.word\t32" "\t.byte\t1" "\t.byte\t3" "\t.align\t4"
        "\t.long\t(.L565 - .) + 0" "\t.align\t8" "\t.quad\t.L311" "\t.word\t57"
        "\t.word\t4" "\t.word\t8" "\t.word\t16" "\t.word\t24" "\t.word\t32"
        "\t.align\t4" "\t.long\t(.L566 - .) + 0" "\t.align\t8" "\t.quad\t.L310"
        "\t.word\t57" "\t.word\t5" "\t.word\t0" "\t.word\t8" "\t.word\t16"
        "\t.word\t24" "\t.word\t32" "\t.align\t4" "\t.long\t(.L567 - .) + 0"
        "\t.align\t8" "\t.quad\t.L308" "\t.word\t59" "\t.word\t4" "\t.word\t1"
        "\t.word\t8" "\t.word\t9" "\t.word\t32" "\t.byte\t1" "\t.byte\t3"
        "\t.align\t4" "\t.long\t(.L568 - .) + 0" "\t.align\t8" "\t.quad\t.L306"
        "\t.word\t57" "\t.word\t3" "\t.word\t8" "\t.word\t16" "\t.word\t32"
        "\t.align\t4" "\t.long\t(.L569 - .) + 0" "\t.align\t8" "\t.quad\t.L304"
        "\t.word\t59" "\t.word\t7" "\t.word\t0" "\t.word\t1" "\t.word\t3"
        "\t.word\t7" "\t.word\t8" "\t.word\t16" "\t.word\t32" "\t.byte\t1"
        "\t.byte\t3" "\t.align\t4" "\t.long\t(.L570 - .) + 0" "\t.align\t8"
        "\t.quad\t.L302" "\t.word\t57" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L571 - .) + 0" "\t.align\t8" "\t.quad\t.L301" "\t.word\t57"
        "\t.word\t3" "\t.word\t0" "\t.word\t8" "\t.word\t32" "\t.align\t4"
        "\t.long\t(.L572 - .) + 0" "\t.align\t8" "\t.quad\t.L300" "\t.word\t57"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L573 - .) + 0" "\t.align\t8"
        "\t.quad\t.L298" "\t.word\t57" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L574 - .) + 0" "\t.align\t8" "\t.quad\t.L283" "\t.word\t27"
        "\t.word\t1" "\t.word\t8" "\t.byte\t1" "\t.byte\t0" "\t.align\t4"
        "\t.long\t(.L575 - .) + 0" "\t.align\t8" "\t.quad\t.L281" "\t.word\t25"
        "\t.word\t1" "\t.word\t8" "\t.align\t4" "\t.long\t(.L576 - .) + 0"
        "\t.align\t8" "\t.quad\t.L279" "\t.word\t27" "\t.word\t2" "\t.word\t0"
        "\t.word\t8" "\t.byte\t1" "\t.byte\t3" "\t.align\t4"
        "\t.long\t(.L577 - .) + 0" "\t.align\t8" "\t.quad\t.L277" "\t.word\t25"
        "\t.word\t2" "\t.word\t0" "\t.word\t8" "\t.align\t4"
        "\t.long\t(.L578 - .) + 0" "\t.align\t8" "\t.quad\t.L275" "\t.word\t27"
        "\t.word\t1" "\t.word\t0" "\t.byte\t1" "\t.byte\t1" "\t.align\t4"
        "\t.long\t(.L579 - .) + 0" "\t.align\t8" "\t.quad\t.L270" "\t.word\t9"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L580 - .) + 0" "\t.align\t8"
        "\t.quad\t.L268" "\t.word\t9" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L581 - .) + 0" "\t.align\t8" "\t.quad\t.L263" "\t.word\t35"
        "\t.word\t1" "\t.word\t3" "\t.byte\t1" "\t.byte\t0" "\t.align\t4"
        "\t.long\t(.L582 - .) + 0" "\t.align\t8" "\t.quad\t.L260" "\t.word\t35"
        "\t.word\t2" "\t.word\t8" "\t.word\t16" "\t.byte\t1" "\t.byte\t1"
        "\t.align\t4" "\t.long\t(.L583 - .) + 0" "\t.align\t8" "\t.quad\t.L258"
        "\t.word\t33" "\t.word\t2" "\t.word\t8" "\t.word\t16" "\t.align\t4"
        "\t.long\t(.L584 - .) + 0" "\t.align\t8" "\t.quad\t.L256" "\t.word\t35"
        "\t.word\t3" "\t.word\t0" "\t.word\t1" "\t.word\t8" "\t.byte\t1"
        "\t.byte\t1" "\t.align\t4" "\t.long\t(.L585 - .) + 0" "\t.align\t8"
        "\t.quad\t.L254" "\t.word\t33" "\t.word\t2" "\t.word\t0" "\t.word\t8"
        "\t.align\t4" "\t.long\t(.L586 - .) + 0" "\t.align\t8" "\t.quad\t.L253"
        "\t.word\t33" "\t.word\t1" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L587 - .) + 0" "\t.align\t8" "\t.quad\t.L251" "\t.word\t35"
        "\t.word\t1" "\t.word\t1" "\t.byte\t1" "\t.byte\t1" "\t.align\t4"
        "\t.long\t(.L588 - .) + 0" "\t.align\t8" "\t.quad\t.L249" "\t.word\t33"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L589 - .) + 0" "\t.align\t8"
        "\t.quad\t.L248" "\t.word\t33" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L590 - .) + 0" "\t.align\t8" "\t.quad\t.L241" "\t.word\t33"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L591 - .) + 0" "\t.align\t8"
        "\t.quad\t.L240" "\t.word\t33" "\t.word\t1" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L592 - .) + 0" "\t.align\t8" "\t.quad\t.L239" "\t.word\t33"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L593 - .) + 0" "\t.align\t8"
        "\t.quad\t.L238" "\t.word\t33" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L594 - .) + 0" "\t.align\t8" "\t.quad\t.L237" "\t.word\t33"
        "\t.word\t1" "\t.word\t8" "\t.align\t4" "\t.long\t(.L595 - .) + 0"
        "\t.align\t8" "\t.quad\t.L236" "\t.word\t33" "\t.word\t2" "\t.word\t0"
        "\t.word\t8" "\t.align\t4" "\t.long\t(.L596 - .) + 0" "\t.align\t8"
        "\t.quad\t.L235" "\t.word\t33" "\t.word\t1" "\t.word\t8" "\t.align\t4"
        "\t.long\t(.L597 - .) + 0" "\t.align\t8" "\t.quad\t.L234" "\t.word\t33"
        "\t.word\t1" "\t.word\t8" "\t.align\t4" "\t.long\t(.L598 - .) + 0"
        "\t.align\t8" "\t.quad\t.L222" "\t.word\t11" "\t.word\t2" "\t.word\t1"
        "\t.word\t3" "\t.byte\t1" "\t.byte\t3" "\t.align\t4"
        "\t.long\t(.L599 - .) + 0" "\t.align\t8" "\t.quad\t.L218" "\t.word\t43"
        "\t.word\t2" "\t.word\t1" "\t.word\t8" "\t.byte\t5" "\t.byte\t0"
        "\t.byte\t1" "\t.byte\t0" "\t.byte\t1" "\t.byte\t1" "\t.align\t4"
        "\t.long\t(.L600 - .) + 0" "\t.long\t(.L601 - .) + 0"
        "\t.long\t(.L601 - .) + 0" "\t.long\t(.L601 - .) + 0"
        "\t.long\t(.L601 - .) + 0" "\t.align\t8" "\t.quad\t.L216" "\t.word\t41"
        "\t.word\t1" "\t.word\t8" "\t.align\t4" "\t.long\t(.L601 - .) + 0"
        "\t.align\t8" "\t.quad\t.L214" "\t.word\t43" "\t.word\t3" "\t.word\t0"
        "\t.word\t1" "\t.word\t24" "\t.byte\t5" "\t.byte\t1" "\t.byte\t0"
        "\t.byte\t1" "\t.byte\t1" "\t.byte\t0" "\t.align\t4"
        "\t.long\t(.L602 - .) + 0" "\t.long\t(.L602 - .) + 0"
        "\t.long\t(.L602 - .) + 0" "\t.long\t(.L602 - .) + 0"
        "\t.long\t(.L603 - .) + 0" "\t.align\t8" "\t.quad\t.L212" "\t.word\t41"
        "\t.word\t2" "\t.word\t0" "\t.word\t24" "\t.align\t4"
        "\t.long\t(.L604 - .) + 0" "\t.align\t8" "\t.quad\t.L210" "\t.word\t43"
        "\t.word\t4" "\t.word\t1" "\t.word\t8" "\t.word\t16" "\t.word\t24"
        "\t.byte\t5" "\t.byte\t1" "\t.byte\t0" "\t.byte\t1" "\t.byte\t1"
        "\t.byte\t0" "\t.align\t4" "\t.long\t(.L605 - .) + 0"
        "\t.long\t(.L605 - .) + 0" "\t.long\t(.L605 - .) + 0"
        "\t.long\t(.L605 - .) + 0" "\t.long\t(.L606 - .) + 0" "\t.align\t8"
        "\t.quad\t.L208" "\t.word\t41" "\t.word\t3" "\t.word\t8" "\t.word\t16"
        "\t.word\t24" "\t.align\t4" "\t.long\t(.L607 - .) + 0" "\t.align\t8"
        "\t.quad\t.L206" "\t.word\t43" "\t.word\t4" "\t.word\t0" "\t.word\t1"
        "\t.word\t16" "\t.word\t24" "\t.byte\t4" "\t.byte\t1" "\t.byte\t0"
        "\t.byte\t1" "\t.byte\t1" "\t.align\t4" "\t.long\t(.L608 - .) + 0"
        "\t.long\t(.L608 - .) + 0" "\t.long\t(.L608 - .) + 0"
        "\t.long\t(.L608 - .) + 0" "\t.align\t8" "\t.quad\t.L204" "\t.word\t41"
        "\t.word\t3" "\t.word\t0" "\t.word\t16" "\t.word\t24" "\t.align\t4"
        "\t.long\t(.L608 - .) + 0" "\t.align\t8" "\t.quad\t.L200" "\t.word\t9"
        "\t.word\t0" "\t.align\t4" "\t.long\t(.L609 - .) + 0" "\t.align\t8"
        "\t.quad\t.L195" "\t.word\t11" "\t.word\t0" "\t.byte\t1" "\t.byte\t3"
        "\t.align\t4" "\t.long\t(.L610 - .) + 0" "\t.align\t8" "\t.quad\t.L192"
        "\t.word\t11" "\t.word\t1" "\t.word\t3" "\t.byte\t1" "\t.byte\t3"
        "\t.align\t4" "\t.long\t(.L611 - .) + 0" "\t.align\t8" "\t.quad\t.L189"
        "\t.word\t11" "\t.word\t0" "\t.byte\t1" "\t.byte\t3" "\t.align\t4"
        "\t.long\t(.L612 - .) + 0" "\t.align\t8" "\t.quad\t.L186" "\t.word\t11"
        "\t.word\t1" "\t.word\t3" "\t.byte\t1" "\t.byte\t3" "\t.align\t4"
        "\t.long\t(.L613 - .) + 0" "\t.align\t8" "\t.quad\t.L173" "\t.word\t11"
        "\t.word\t1" "\t.word\t1" "\t.byte\t1" "\t.byte\t0" "\t.align\t4"
        "\t.long\t(.L614 - .) + 0" "\t.align\t8" "\t.quad\t.L169" "\t.word\t11"
        "\t.word\t1" "\t.word\t1" "\t.byte\t1" "\t.byte\t0" "\t.align\t4"
        "\t.long\t(.L615 - .) + 0" "\t.align\t8" "\t.quad\t.L165" "\t.word\t11"
        "\t.word\t1" "\t.word\t1" "\t.byte\t1" "\t.byte\t0" "\t.align\t4"
        "\t.long\t(.L616 - .) + 0" "\t.align\t8" "\t.quad\t.L156" "\t.word\t35"
        "\t.word\t2" "\t.word\t0" "\t.word\t1" "\t.byte\t6" "\t.byte\t0"
        "\t.byte\t1" "\t.byte\t0" "\t.byte\t1" "\t.byte\t1" "\t.byte\t0"
        "\t.align\t4" "\t.long\t(.L617 - .) + 0" "\t.long\t(.L618 - .) + 0"
        "\t.long\t(.L618 - .) + 0" "\t.long\t(.L618 - .) + 0"
        "\t.long\t(.L618 - .) + 0" "\t.long\t(.L619 - .) + 0" "\t.align\t8"
        "\t.quad\t.L154" "\t.word\t33" "\t.word\t1" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L620 - .) + 0" "\t.align\t8" "\t.quad\t.L152" "\t.word\t35"
        "\t.word\t3" "\t.word\t1" "\t.word\t8" "\t.word\t16" "\t.byte\t6"
        "\t.byte\t0" "\t.byte\t1" "\t.byte\t0" "\t.byte\t1" "\t.byte\t1"
        "\t.byte\t0" "\t.align\t4" "\t.long\t(.L617 - .) + 0"
        "\t.long\t(.L621 - .) + 0" "\t.long\t(.L621 - .) + 0"
        "\t.long\t(.L621 - .) + 0" "\t.long\t(.L621 - .) + 0"
        "\t.long\t(.L622 - .) + 0" "\t.align\t8" "\t.quad\t.L150" "\t.word\t33"
        "\t.word\t2" "\t.word\t8" "\t.word\t16" "\t.align\t4"
        "\t.long\t(.L623 - .) + 0" "\t.align\t8" "\t.quad\t.L148" "\t.word\t35"
        "\t.word\t3" "\t.word\t0" "\t.word\t1" "\t.word\t16" "\t.byte\t6"
        "\t.byte\t0" "\t.byte\t1" "\t.byte\t0" "\t.byte\t1" "\t.byte\t1"
        "\t.byte\t0" "\t.align\t4" "\t.long\t(.L617 - .) + 0"
        "\t.long\t(.L624 - .) + 0" "\t.long\t(.L624 - .) + 0"
        "\t.long\t(.L624 - .) + 0" "\t.long\t(.L624 - .) + 0"
        "\t.long\t(.L625 - .) + 0" "\t.align\t8" "\t.quad\t.L146" "\t.word\t33"
        "\t.word\t2" "\t.word\t0" "\t.word\t16" "\t.align\t4"
        "\t.long\t(.L626 - .) + 0" "\t.align\t8" "\t.quad\t.L144" "\t.word\t35"
        "\t.word\t2" "\t.word\t1" "\t.word\t16" "\t.byte\t6" "\t.byte\t0"
        "\t.byte\t1" "\t.byte\t0" "\t.byte\t1" "\t.byte\t1" "\t.byte\t0"
        "\t.align\t4" "\t.long\t(.L617 - .) + 0" "\t.long\t(.L627 - .) + 0"
        "\t.long\t(.L627 - .) + 0" "\t.long\t(.L627 - .) + 0"
        "\t.long\t(.L627 - .) + 0" "\t.long\t(.L628 - .) + 0" "\t.align\t8"
        "\t.quad\t.L142" "\t.word\t33" "\t.word\t1" "\t.word\t16" "\t.align\t4"
        "\t.long\t(.L629 - .) + 0" "\t.align\t8" "\t.quad\t.L140" "\t.word\t35"
        "\t.word\t2" "\t.word\t3" "\t.word\t16" "\t.byte\t1" "\t.byte\t0"
        "\t.align\t4" "\t.long\t(.L617 - .) + 0" "\t.align\t8" "\t.quad\t.L134"
        "\t.word\t11" "\t.word\t5" "\t.word\t1" "\t.word\t3" "\t.word\t5"
        "\t.word\t7" "\t.word\t9" "\t.byte\t5" "\t.byte\t1" "\t.byte\t0"
        "\t.byte\t1" "\t.byte\t0" "\t.byte\t0" "\t.align\t4"
        "\t.long\t(.L630 - .) + 0" "\t.long\t(.L631 - .) + 0"
        "\t.long\t(.L632 - .) + 0" "\t.long\t(.L633 - .) + 0"
        "\t.long\t(.L634 - .) + 0" "\t.align\t8" "\t.quad\t.L129" "\t.word\t27"
        "\t.word\t2" "\t.word\t1" "\t.word\t8" "\t.byte\t3" "\t.byte\t0"
        "\t.byte\t1" "\t.byte\t1" "\t.align\t4" "\t.long\t(.L635 - .) + 0"
        "\t.long\t(.L635 - .) + 0" "\t.long\t(.L635 - .) + 0" "\t.align\t8"
        "\t.quad\t.L127" "\t.word\t25" "\t.word\t1" "\t.word\t8" "\t.align\t4"
        "\t.long\t(.L635 - .) + 0" "\t.align\t8" "\t.quad\t.L125" "\t.word\t27"
        "\t.word\t2" "\t.word\t0" "\t.word\t1" "\t.byte\t1" "\t.byte\t0"
        "\t.align\t4" "\t.long\t(.L636 - .) + 0" "\t.align\t8" "\t.quad\t.L123"
        "\t.word\t25" "\t.word\t1" "\t.word\t0" "\t.align\t4"
        "\t.long\t(.L637 - .) + 0" "\t.align\t8" "\t.quad\t.L119" "\t.word\t33"
        "\t.word\t3" "\t.word\t0" "\t.word\t8" "\t.word\t16" "\t.align\t4"
        "\t.long\t(.L638 - .) + 0" "\t.align\t8" "\t.quad\t.L117" "\t.word\t35"
        "\t.word\t6" "\t.word\t0" "\t.word\t1" "\t.word\t3" "\t.word\t5"
        "\t.word\t8" "\t.word\t16" "\t.byte\t1" "\t.byte\t1" "\t.align\t4"
        "\t.long\t(.L639 - .) + 0" "\t.align\t8" "\t.quad\t.L111" "\t.word\t33"
        "\t.word\t3" "\t.word\t0" "\t.word\t8" "\t.word\t16" "\t.align\t4"
        "\t.long\t(.L640 - .) + 0" "\t.align\t8" "\t.quad\t.L109" "\t.word\t35"
        "\t.word\t6" "\t.word\t0" "\t.word\t1" "\t.word\t3" "\t.word\t5"
        "\t.word\t8" "\t.word\t16" "\t.byte\t1" "\t.byte\t1" "\t.align\t4"
        "\t.long\t(.L641 - .) + 0" "\t.align\t8" "\t.quad\t.L103" "\t.word\t10"
        "\t.word\t1" "\t.word\t1" "\t.byte\t0" "\t.align\t8" "\t.align\t4" .L495:
        "\t.long\t(.L643 - .) + 1" "\t.long\t127947088"
        "\t.long\t(.L645 - .) + 1" "\t.long\t5276024"
        "\t.long\t(.L647 - .) + 1543503873" "\t.long\t5050459"
        "\t.long\t(.L649 - .) + 0" "\t.long\t524288" "\t.align\t4" .L633:
        "\t.long\t(.L651 - .) + 1" "\t.long\t7350400" "\t.long\t(.L653 - .) + 1"
        "\t.long\t11059640" "\t.long\t(.L654 - .) + 0" "\t.long\t8921480"
        "\t.align\t4" .L489: "\t.long\t(.L655 - .) + 3" "\t.long\t4740392"
        "\t.long\t(.L645 - .) + 1" "\t.long\t5269880" "\t.long\t(.L656 - .) + 1"
        "\t.long\t11014816" "\t.long\t(.L649 - .) + 0" "\t.long\t150998040"
        "\t.align\t4" .L593: "\t.long\t(.L657 - .) + 0" "\t.long\t71339632"
        "\t.align\t4" .L605: "\t.long\t(.L658 - .) + 0" "\t.long\t49297552"
        "\t.align\t4" .L600: "\t.long\t(.L658 - .) + -201326592"
        "\t.long\t48105649" "\t.align\t4" .L595: "\t.long\t(.L657 - .) + 0"
        "\t.long\t70785648" "\t.align\t4" .L522: "\t.long\t(.L660 - .) + 1"
        "\t.long\t126360048" "\t.long\t(.L661 - .) + 1" "\t.long\t81793256"
        "\t.long\t(.L662 - .) + 0" "\t.long\t121652512" "\t.align\t4" .L564:
        "\t.long\t(.L663 - .) + 0" "\t.long\t93378072" "\t.align\t4" .L594:
        "\t.long\t(.L657 - .) + 0" "\t.long\t71340408" "\t.align\t4" .L625:
        "\t.long\t(.L665 - .) + 1" "\t.long\t17848760" "\t.long\t(.L666 - .) + 0"
        "\t.long\t13637712" "\t.align\t4" .L554: "\t.long\t(.L667 - .) + 0"
        "\t.long\t100156960" "\t.align\t4" .L614: "\t.long\t(.L668 - .) + 1"
        "\t.long\t6301824" "\t.long\t(.L669 - .) + 0" "\t.long\t19429760"
        "\t.align\t4" .L500: "\t.long\t(.L671 - .) + 1" "\t.long\t187709760"
        "\t.long\t(.L672 - .) + 1" "\t.long\t188765496"
        "\t.long\t(.L647 - .) + 738197505" "\t.long\t5511259"
        "\t.long\t(.L649 - .) + 0" "\t.long\t524288" "\t.align\t4" .L546:
        "\t.long\t(.L661 - .) + 3" "\t.long\t81269088" "\t.long\t(.L673 - .) + 0"
        "\t.long\t112215328" "\t.align\t4" .L632: "\t.long\t(.L653 - .) + 1"
        "\t.long\t11059712" "\t.long\t(.L654 - .) + 0" "\t.long\t8921480"
        "\t.align\t4" .L599: "\t.long\t(.L674 - .) + 0" "\t.long\t51936840"
        "\t.align\t4" .L587: "\t.long\t(.L676 - .) + 1" "\t.long\t45104280"
        "\t.long\t(.L677 - .) + 1" "\t.long\t28352024" "\t.long\t(.L678 - .) + 0"
        "\t.long\t78123400" "\t.align\t4" .L618: "\t.long\t(.L666 - .) + 0"
        "\t.long\t12589136" "\t.align\t4" .L560: "\t.long\t(.L660 - .) + 1"
        "\t.long\t126360048" "\t.long\t(.L661 - .) + 1" "\t.long\t81793256"
        "\t.long\t(.L667 - .) + 0" "\t.long\t97008920" "\t.align\t4" .L513:
        "\t.long\t(.L662 - .) + 0" "\t.long\t123224440" "\t.align\t4" .L548:
        "\t.long\t(.L679 - .) + 0" "\t.long\t104880536" "\t.align\t4" .L635:
        "\t.long\t(.L680 - .) + 0" "\t.long\t5259544" "\t.align\t4" .L571:
        "\t.long\t(.L663 - .) + 2" "\t.long\t89657680" "\t.align\t4" .L515:
        "\t.long\t(.L662 - .) + 0" "\t.long\t132655456" "\t.align\t4" .L516:
        "\t.long\t(.L662 - .) + 0" "\t.long\t131102208" "\t.align\t4" .L590:
        "\t.long\t(.L678 - .) + 0" "\t.long\t77611336" "\t.align\t4" .L559:
        "\t.long\t(.L667 - .) + 2" "\t.long\t97521992" "\t.align\t4" .L538:
        "\t.long\t(.L681 - .) + 1" "\t.long\t5253248" "\t.long\t(.L682 - .) + 1"
        "\t.long\t12647992" "\t.long\t(.L673 - .) + 0" "\t.long\t115380720"
        "\t.align\t4" .L547: "\t.long\t(.L683 - .) + 805306368"
        "\t.long\t-2146611200" "\t.align\t4" .L578: "\t.long\t(.L684 - .) + 0"
        "\t.long\t84939072" "\t.align\t4" .L589: "\t.long\t(.L676 - .) + 1"
        "\t.long\t43531416" "\t.long\t(.L677 - .) + 1" "\t.long\t28352024"
        "\t.long\t(.L678 - .) + 0" "\t.long\t78123400" "\t.align\t4" .L582:
        "\t.long\t(.L677 - .) + 1" "\t.long\t28346904" "\t.long\t(.L678 - .) + 0"
        "\t.long\t78123400" "\t.align\t4" .L568: "\t.long\t(.L663 - .) + 0"
        "\t.long\t90723952" "\t.align\t4" .L525:
        "\t.long\t(.L685 - .) + 1610612736" "\t.long\t-2146537472" "\t.align\t4"
        .L634: "\t.long\t(.L651 - .) + 1" "\t.long\t7350400"
        "\t.long\t(.L653 - .) + 1" "\t.long\t11068928" "\t.long\t(.L654 - .) + 0"
        "\t.long\t8921480" "\t.align\t4" .L638: "\t.long\t(.L686 - .) + 1"
        "\t.long\t138945704" "\t.long\t(.L687 - .) + 0" "\t.long\t58732664"
        "\t.align\t4" .L555: "\t.long\t(.L667 - .) + 0" "\t.long\t100187680"
        "\t.align\t4" .L521: "\t.long\t(.L662 - .) + 0" "\t.long\t125330680"
        "\t.align\t4" .L508: "\t.long\t(.L688 - .) + 0" "\t.long\t147866936"
        "\t.align\t4" .L523: "\t.long\t(.L660 - .) + 1" "\t.long\t124788872"
        "\t.long\t(.L661 - .) + 1" "\t.long\t81793256" "\t.long\t(.L662 - .) + 0"
        "\t.long\t121652512" "\t.align\t4" .L549: "\t.long\t(.L667 - .) + 0"
        "\t.long\t101194432" "\t.align\t4" .L576: "\t.long\t(.L684 - .) + 0"
        "\t.long\t85987584" "\t.align\t4" .L553: "\t.long\t(.L667 - .) + 0"
        "\t.long\t100688280" "\t.align\t4" .L623: "\t.long\t(.L665 - .) + 1"
        "\t.long\t17853880" "\t.long\t(.L666 - .) + 0" "\t.long\t13113424"
        "\t.align\t4" .L567: "\t.long\t(.L663 - .) + 0" "\t.long\t91799072"
        "\t.align\t4" .L602: "\t.long\t(.L658 - .) + 0" "\t.long\t48773296"
        "\t.align\t4" .L631: "\t.long\t(.L681 - .) + 1" "\t.long\t5253248"
        "\t.long\t(.L654 - .) + 0" "\t.long\t8402088" "\t.align\t4" .L636:
        "\t.long\t(.L665 - .) + 1" "\t.long\t17848760" "\t.long\t(.L680 - .) + 0"
        "\t.long\t5259544" "\t.align\t4" .L604: "\t.long\t(.L690 - .) + 1"
        "\t.long\t139462808" "\t.long\t(.L691 - .) + 1" "\t.long\t17327440"
        "\t.long\t(.L658 - .) + 0" "\t.long\t48773296" "\t.align\t4" .L526:
        "\t.long\t(.L682 - .) + 1" "\t.long\t12637752" "\t.long\t(.L673 - .) + 0"
        "\t.long\t117469616" "\t.align\t4" .L511: "\t.long\t(.L662 - .) + 0"
        "\t.long\t123758048" "\t.align\t4" .L497: "\t.long\t(.L672 - .) + 1"
        "\t.long\t188746048" "\t.long\t(.L647 - .) + 738197505"
        "\t.long\t5511259" "\t.long\t(.L649 - .) + 0" "\t.long\t524288"
        "\t.align\t4" .L588: "\t.long\t(.L676 - .) + 1" "\t.long\t44046416"
        "\t.long\t(.L677 - .) + 1" "\t.long\t28352024" "\t.long\t(.L678 - .) + 0"
        "\t.long\t78123400" "\t.align\t4" .L580: "\t.long\t(.L660 - .) + 1"
        "\t.long\t124788872" "\t.long\t(.L661 - .) + 0" "\t.long\t81793256"
        "\t.align\t4" .L617: "\t.long\t(.L666 - .) + 1946157056"
        "\t.long\t12454065" "\t.align\t4" .L517: "\t.long\t(.L662 - .) + 0"
        "\t.long\t131129856" "\t.align\t4" .L498: "\t.long\t(.L672 - .) + 1"
        "\t.long\t188751168" "\t.long\t(.L647 - .) + 738197505"
        "\t.long\t5511259" "\t.long\t(.L649 - .) + 0" "\t.long\t524288"
        "\t.align\t4" .L621: "\t.long\t(.L666 - .) + 0" "\t.long\t13113424"
        "\t.align\t4" .L541: "\t.long\t(.L681 - .) + 1" "\t.long\t5253248"
        "\t.long\t(.L682 - .) + 1" "\t.long\t12637672" "\t.long\t(.L673 - .) + 0"
        "\t.long\t114855384" "\t.align\t4" .L505: "\t.long\t(.L693 - .) + 1"
        "\t.long\t70811216" "\t.long\t(.L649 - .) + 0" "\t.long\t524288"
        "\t.align\t4" .L510: "\t.long\t(.L694 - .) + 0" "\t.long\t136851616"
        "\t.align\t4" .L606: "\t.long\t(.L691 - .) + 1" "\t.long\t17322320"
        "\t.long\t(.L658 - .) + 0" "\t.long\t49297552" "\t.align\t4" .L527:
        "\t.long\t(.L681 - .) + 1" "\t.long\t5253248" "\t.long\t(.L682 - .) + 1"
        "\t.long\t12637672" "\t.long\t(.L673 - .) + 0" "\t.long\t117469616"
        "\t.align\t4" .L581: "\t.long\t(.L661 - .) + 2" "\t.long\t81269088"
        "\t.align\t4" .L640: "\t.long\t(.L695 - .) + 1" "\t.long\t143664304"
        "\t.long\t(.L687 - .) + 0" "\t.long\t58732664" "\t.align\t4" .L514:
        "\t.long\t(.L662 - .) + 0" "\t.long\t133192104" "\t.align\t4" .L488:
        "\t.long\t(.L696 - .) + 1" "\t.long\t71335504" "\t.long\t(.L649 - .) + 0"
        "\t.long\t150998040" "\t.align\t4" .L502: "\t.long\t(.L671 - .) + 1"
        "\t.long\t187729216" "\t.long\t(.L672 - .) + 1" "\t.long\t188765496"
        "\t.long\t(.L647 - .) + 738197505" "\t.long\t5511259"
        "\t.long\t(.L649 - .) + 0" "\t.long\t524288" "\t.align\t4" .L586:
        "\t.long\t(.L676 - .) + 1" "\t.long\t45628568" "\t.long\t(.L677 - .) + 1"
        "\t.long\t28352024" "\t.long\t(.L678 - .) + 0" "\t.long\t78123400"
        "\t.align\t4" .L545: "\t.long\t(.L660 - .) + 1" "\t.long\t124788872"
        "\t.long\t(.L661 - .) + 1" "\t.long\t81793256" "\t.long\t(.L673 - .) + 0"
        "\t.long\t112215328" "\t.align\t4" .L611: "\t.long\t(.L697 - .) + 0"
        "\t.long\t33042784" "\t.align\t4" .L610: "\t.long\t(.L697 - .) + 0"
        "\t.long\t33567072" "\t.align\t4" .L607: "\t.long\t(.L690 - .) + 1"
        "\t.long\t139462808" "\t.long\t(.L691 - .) + 1" "\t.long\t17327440"
        "\t.long\t(.L658 - .) + 0" "\t.long\t49297552" "\t.align\t4" .L579:
        "\t.long\t(.L698 - .) + -1140850687" "\t.long\t111886344"
        "\t.long\t(.L684 - .) + 0" "\t.long\t84427024" "\t.align\t4" .L563:
        "\t.long\t(.L663 - .) + -1543503872" "\t.long\t92412504" "\t.align\t4"
        .L552: "\t.long\t(.L667 - .) + 0" "\t.long\t100722168" "\t.align\t4"
        .L597: "\t.long\t(.L657 - .) + 0" "\t.long\t70815344" "\t.align\t4"
        .L573: "\t.long\t(.L660 - .) + 1" "\t.long\t124788872"
        "\t.long\t(.L661 - .) + 1" "\t.long\t81793256" "\t.long\t(.L663 - .) + 0"
        "\t.long\t89144600" "\t.align\t4" .L639: "\t.long\t(.L686 - .) + 1"
        "\t.long\t138443096" "\t.long\t(.L687 - .) + 0" "\t.long\t58732664"
        "\t.align\t4" .L630: "\t.long\t(.L654 - .) + 0" "\t.long\t8915336"
        "\t.align\t4" .L627: "\t.long\t(.L666 - .) + 0" "\t.long\t14162000"
        "\t.align\t4" .L504: "\t.long\t(.L699 - .) + 1" "\t.long\t15754504"
        "\t.long\t(.L647 - .) + 1" "\t.long\t6315368" "\t.long\t(.L649 - .) + 0"
        "\t.long\t524288" "\t.align\t4" .L603: "\t.long\t(.L691 - .) + 1"
        "\t.long\t17322320" "\t.long\t(.L658 - .) + 0" "\t.long\t48773296"
        "\t.align\t4" .L499: "\t.long\t(.L671 - .) + 1" "\t.long\t187709920"
        "\t.long\t(.L672 - .) + 1" "\t.long\t188765496"
        "\t.long\t(.L647 - .) + 738197505" "\t.long\t5511259"
        "\t.long\t(.L649 - .) + 0" "\t.long\t524288" "\t.align\t4" .L620:
        "\t.long\t(.L665 - .) + 1" "\t.long\t17853880" "\t.long\t(.L666 - .) + 0"
        "\t.long\t12589136" "\t.align\t4" .L519: "\t.long\t(.L662 - .) + 0"
        "\t.long\t128478520" "\t.align\t4" .L626: "\t.long\t(.L665 - .) + 1"
        "\t.long\t17853880" "\t.long\t(.L666 - .) + 0" "\t.long\t13637712"
        "\t.align\t4" .L629: "\t.long\t(.L665 - .) + 1" "\t.long\t17853880"
        "\t.long\t(.L666 - .) + 0" "\t.long\t14162000" "\t.align\t4" .L596:
        "\t.long\t(.L701 - .) + 1" "\t.long\t819466672"
        "\t.long\t(.L703 - .) + 1" "\t.long\t10488312" "\t.long\t(.L704 - .) + 1"
        "\t.long\t14177624" "\t.long\t(.L705 - .) + 1" "\t.long\t16270616"
        "\t.long\t(.L657 - .) + 0" "\t.long\t70785648" "\t.align\t4" .L570:
        "\t.long\t(.L663 - .) + 0" "\t.long\t90213832" "\t.align\t4" .L536:
        "\t.long\t(.L682 - .) + 1" "\t.long\t12637752" "\t.long\t(.L673 - .) + 0"
        "\t.long\t115380720" "\t.align\t4" .L557: "\t.long\t(.L667 - .) + 0"
        "\t.long\t98570696" "\t.align\t4" .L544: "\t.long\t(.L660 - .) + 1"
        "\t.long\t126360048" "\t.long\t(.L661 - .) + 1" "\t.long\t81793256"
        "\t.long\t(.L673 - .) + 0" "\t.long\t112215328" "\t.align\t4" .L608:
        "\t.long\t(.L658 - .) + 0" "\t.long\t49813584" "\t.align\t4" .L561:
        "\t.long\t(.L660 - .) + 1" "\t.long\t124788872"
        "\t.long\t(.L661 - .) + 1" "\t.long\t81793256" "\t.long\t(.L667 - .) + 0"
        "\t.long\t97008920" "\t.align\t4" .L534: "\t.long\t(.L673 - .) + 0"
        "\t.long\t116407552" "\t.align\t4" .L615: "\t.long\t(.L681 - .) + 1"
        "\t.long\t5253248" "\t.long\t(.L706 - .) + 0" "\t.long\t18905640"
        "\t.align\t4" .L612: "\t.long\t(.L697 - .) + 0" "\t.long\t32518496"
        "\t.align\t4" .L537: "\t.long\t(.L681 - .) + 1" "\t.long\t5253248"
        "\t.long\t(.L682 - .) + 1" "\t.long\t12637672" "\t.long\t(.L673 - .) + 0"
        "\t.long\t115380720" "\t.align\t4" .L562: "\t.long\t(.L661 - .) + 3"
        "\t.long\t81269088" "\t.long\t(.L667 - .) + 0" "\t.long\t97008920"
        "\t.align\t4" .L558: "\t.long\t(.L667 - .) + 0" "\t.long\t98602440"
        "\t.align\t4" .L543: "\t.long\t(.L673 - .) + 0" "\t.long\t114862552"
        "\t.align\t4" .L565: "\t.long\t(.L663 - .) + 0" "\t.long\t93332056"
        "\t.align\t4" .L533: "\t.long\t(.L681 - .) + 1" "\t.long\t5253248"
        "\t.long\t(.L682 - .) + 1" "\t.long\t12647992" "\t.long\t(.L673 - .) + 0"
        "\t.long\t116400384" "\t.align\t4" .L529: "\t.long\t(.L673 - .) + 0"
        "\t.long\t117477800" "\t.align\t4" .L506: "\t.long\t(.L674 - .) + 1"
        "\t.long\t51936840" "\t.long\t(.L688 - .) + 0" "\t.long\t149439864"
        "\t.align\t4" .L601: "\t.long\t(.L658 - .) + 0" "\t.long\t48249008"
        "\t.align\t4" .L592: "\t.long\t(.L701 - .) + 1" "\t.long\t819466672"
        "\t.long\t(.L703 - .) + 1" "\t.long\t10488312" "\t.long\t(.L704 - .) + 1"
        "\t.long\t14177624" "\t.long\t(.L705 - .) + 1" "\t.long\t16270616"
        "\t.long\t(.L657 - .) + 0" "\t.long\t71309936" "\t.align\t4" .L550:
        "\t.long\t(.L667 - .) + 0" "\t.long\t101222080" "\t.align\t4" .L624:
        "\t.long\t(.L666 - .) + 0" "\t.long\t13637712" "\t.align\t4" .L539:
        "\t.long\t(.L673 - .) + 0" "\t.long\t115388904" "\t.align\t4" .L524:
        "\t.long\t(.L661 - .) + 3" "\t.long\t81269088" "\t.long\t(.L662 - .) + 0"
        "\t.long\t121652512" "\t.align\t4" .L509:
        "\t.long\t(.L687 - .) + -1677721599" "\t.long\t57816264"
        "\t.long\t(.L694 - .) + -1879048192" "\t.long\t137629793" "\t.align\t4"
        .L528: "\t.long\t(.L681 - .) + 1" "\t.long\t5253248"
        "\t.long\t(.L682 - .) + 1" "\t.long\t12647992" "\t.long\t(.L673 - .) + 0"
        "\t.long\t117469616" "\t.align\t4" .L540: "\t.long\t(.L682 - .) + 1"
        "\t.long\t12637752" "\t.long\t(.L673 - .) + 0" "\t.long\t114855384"
        "\t.align\t4" .L613: "\t.long\t(.L697 - .) + 0" "\t.long\t31994208"
        "\t.align\t4" .L556: "\t.long\t(.L667 - .) + 0" "\t.long\t99112560"
        "\t.align\t4" .L532: "\t.long\t(.L681 - .) + 1" "\t.long\t5253248"
        "\t.long\t(.L682 - .) + 1" "\t.long\t12637672" "\t.long\t(.L673 - .) + 0"
        "\t.long\t116400384" "\t.align\t4" .L491: "\t.long\t(.L707 - .) + 1"
        "\t.long\t97031616" "\t.long\t(.L643 - .) + 1" "\t.long\t127947088"
        "\t.long\t(.L645 - .) + 1" "\t.long\t5276024" "\t.long\t(.L656 - .) + 1"
        "\t.long\t11014816" "\t.long\t(.L649 - .) + 0" "\t.long\t150998040"
        "\t.align\t4" .L583: "\t.long\t(.L676 - .) + 1" "\t.long\t46143656"
        "\t.long\t(.L677 - .) + 1" "\t.long\t28352024" "\t.long\t(.L678 - .) + 0"
        "\t.long\t78123400" "\t.align\t4" .L609: "\t.long\t(.L708 - .) + 3"
        "\t.long\t15222024" "\t.long\t(.L709 - .) + 0" "\t.long\t42478904"
        "\t.align\t4" .L641: "\t.long\t(.L695 - .) + 1" "\t.long\t143161688"
        "\t.long\t(.L687 - .) + 0" "\t.long\t58732664" "\t.align\t4" .L622:
        "\t.long\t(.L665 - .) + 1" "\t.long\t17848760" "\t.long\t(.L666 - .) + 0"
        "\t.long\t13113424" "\t.align\t4" .L577: "\t.long\t(.L674 - .) + 1"
        "\t.long\t51936840" "\t.long\t(.L684 - .) + 0" "\t.long\t85474664"
        "\t.align\t4" .L530: "\t.long\t(.L673 - .) + 0" "\t.long\t116935024"
        "\t.align\t4" .L503: "\t.long\t(.L671 - .) + 1" "\t.long\t187740640"
        "\t.long\t(.L672 - .) + 1" "\t.long\t188765496"
        "\t.long\t(.L647 - .) + 738197505" "\t.long\t5511259"
        "\t.long\t(.L649 - .) + 0" "\t.long\t524288" "\t.align\t4" .L585:
        "\t.long\t(.L676 - .) + 1" "\t.long\t46147752" "\t.long\t(.L677 - .) + 1"
        "\t.long\t28352024" "\t.long\t(.L678 - .) + 0" "\t.long\t78123400"
        "\t.align\t4" .L501: "\t.long\t(.L671 - .) + 1" "\t.long\t187714880"
        "\t.long\t(.L672 - .) + 1" "\t.long\t188765496"
        "\t.long\t(.L647 - .) + 738197505" "\t.long\t5511259"
        "\t.long\t(.L649 - .) + 0" "\t.long\t524288" "\t.align\t4" .L542:
        "\t.long\t(.L681 - .) + 1" "\t.long\t5253248" "\t.long\t(.L682 - .) + 1"
        "\t.long\t12647992" "\t.long\t(.L673 - .) + 0" "\t.long\t114855384"
        "\t.align\t4" .L535: "\t.long\t(.L673 - .) + 0" "\t.long\t115886448"
        "\t.align\t4" .L493: "\t.long\t(.L655 - .) + 3" "\t.long\t4740392"
        "\t.long\t(.L645 - .) + 1" "\t.long\t5269880"
        "\t.long\t(.L647 - .) + 1543503873" "\t.long\t5050459"
        "\t.long\t(.L649 - .) + 0" "\t.long\t524288" "\t.align\t4" .L492:
        "\t.long\t(.L708 - .) + 3" "\t.long\t15222024"
        "\t.long\t(.L711 - .) + -1744830463" "\t.long\t329919961"
        "\t.long\t(.L649 - .) + 0" "\t.long\t524288" "\t.align\t4" .L496:
        "\t.long\t(.L643 - .) + 1" "\t.long\t127958352"
        "\t.long\t(.L645 - .) + 1" "\t.long\t5276024"
        "\t.long\t(.L647 - .) + 1543503873" "\t.long\t5050459"
        "\t.long\t(.L649 - .) + 0" "\t.long\t524288" "\t.align\t4" .L507:
        "\t.long\t(.L688 - .) + 0" "\t.long\t148904160" "\t.align\t4" .L572:
        "\t.long\t(.L660 - .) + 1" "\t.long\t126360048"
        "\t.long\t(.L661 - .) + 1" "\t.long\t81793256" "\t.long\t(.L663 - .) + 0"
        "\t.long\t89144600" "\t.align\t4" .L494: "\t.long\t(.L655 - .) + 1"
        "\t.long\t4746536" "\t.long\t(.L645 - .) + 1" "\t.long\t5269880"
        "\t.long\t(.L647 - .) + 1543503873" "\t.long\t5050459"
        "\t.long\t(.L649 - .) + 0" "\t.long\t524288" "\t.align\t4" .L569:
        "\t.long\t(.L663 - .) + 0" "\t.long\t90182088" "\t.align\t4" .L619:
        "\t.long\t(.L665 - .) + 1" "\t.long\t17848760" "\t.long\t(.L666 - .) + 0"
        "\t.long\t12589136" "\t.align\t4" .L584: "\t.long\t(.L676 - .) + 1"
        "\t.long\t46151848" "\t.long\t(.L677 - .) + 1" "\t.long\t28352024"
        "\t.long\t(.L678 - .) + 0" "\t.long\t78123400" "\t.align\t4" .L566:
        "\t.long\t(.L663 - .) + 0" "\t.long\t91768352" "\t.align\t4" .L551:
        "\t.long\t(.L712 - .) + 0" "\t.long\t-2146693120" "\t.align\t4" .L628:
        "\t.long\t(.L665 - .) + 1" "\t.long\t17848760" "\t.long\t(.L666 - .) + 0"
        "\t.long\t14162000" "\t.align\t4" .L518: "\t.long\t(.L662 - .) + 0"
        "\t.long\t130573712" "\t.align\t4" .L637: "\t.long\t(.L665 - .) + 1"
        "\t.long\t17853880" "\t.long\t(.L680 - .) + 0" "\t.long\t5259544"
        "\t.align\t4" .L591: "\t.long\t(.L657 - .) + 0" "\t.long\t71309936"
        "\t.align\t4" .L531: "\t.long\t(.L682 - .) + 1" "\t.long\t12637752"
        "\t.long\t(.L673 - .) + 0" "\t.long\t116400384" "\t.align\t4" .L520:
        "\t.long\t(.L681 - .) + 1" "\t.long\t5253248" "\t.long\t(.L662 - .) + 0"
        "\t.long\t128478480" "\t.align\t4" .L490: "\t.long\t(.L655 - .) + 1"
        "\t.long\t4746536" "\t.long\t(.L645 - .) + 1" "\t.long\t5269880"
        "\t.long\t(.L656 - .) + 1" "\t.long\t11014816" "\t.long\t(.L649 - .) + 0"
        "\t.long\t150998040" "\t.align\t4" .L598: "\t.long\t(.L657 - .) + 0"
        "\t.long\t70816120" "\t.align\t4" .L574: "\t.long\t(.L661 - .) + 3"
        "\t.long\t81269088" "\t.long\t(.L663 - .) + 0" "\t.long\t89144600"
        "\t.align\t4" .L616: "\t.long\t(.L681 - .) + 1" "\t.long\t5253248"
        "\t.long\t(.L713 - .) + 0" "\t.long\t18381352" "\t.align\t4" .L575:
        "\t.long\t(.L684 - .) + 0" "\t.long\t86511720" "\t.align\t4" .L512:
        "\t.long\t(.L662 - .) + 0" "\t.long\t123785696" .L689:
        "\t.ascii\t\"stdlib.ml\\0\"" .L659: "\t.ascii\t\"dynarray.ml\\0\"" .L675:
        "\t.ascii\t\"list.ml\\0\"" .L664: "\t.ascii\t\"src/sexp_conv.ml\\0\""
        .L650: "\t.ascii\t\"src/owl/maths/owl_maths.ml\\0\"" .L702:
        "\t.ascii\t\"printf.ml\\0\"" .L700:
        "\t.ascii\t\"camlinternalFormat.ml\\0\"" .L646:
        "\t.ascii\t\"runtime/current_file.ml\\0\"" .L642:
        "\t.ascii\t\"src/info.ml\\0\"" .L670: "\t.ascii\t\"src/sexp.ml\\0\""
        .L692: "\t.ascii\t\"runtime/ppx_module_timer_runtime.ml\\0\"" .L710:
        "\t.ascii\t\"runtime-lib/ppx_inline_test_lib.ml\\0\"" .L652:
        "\t.ascii\t\"nbody/nbody.ml\\0\"" .L648:
        "\t.ascii\t\"lqtree/lqtree.ml\\0\"" .L644:
        "\t.ascii\t\"src/error.ml\\0\"" "\t.align\t4" .L662:
        "\t.long\t(.L648 - .) + 0"
        "\t.ascii\t\"Lqtree.Qtree.insert.insert_aux\\0\"" "\t.align\t4" .L643:
        "\t.long\t(.L642 - .) + 0" "\t.ascii\t\"Base__Info.create_s\\0\""
        "\t.align\t4" .L713: "\t.long\t(.L648 - .) + 0"
        "\t.ascii\t\"Lqtree.Bbox.midx\\0\"" "\t.align\t4" .L676:
        "\t.long\t(.L675 - .) + 0" "\t.ascii\t\"Stdlib__List.map\\0\""
        "\t.align\t4" .L685: "\t.long\t(.L648 - .) + 0" "\t.word\t23"
        "\t.word\t42" "\t.long\t1076"
        "\t.ascii\t\"Lqtree.Qtree.insert.insert_aux\\0\"" "\t.align\t4" .L707:
        "\t.long\t(.L642 - .) + 0"
        "\t.ascii\t\"Base__Info.Computed.of_message\\0\"" "\t.align\t4" .L672:
        "\t.long\t(.L670 - .) + 0" "\t.ascii\t\"Sexplib0__Sexp.message\\0\""
        "\t.align\t4" .L655: "\t.long\t(.L644 - .) + 0"
        "\t.ascii\t\"Base__Error.raise\\0\"" "\t.align\t4" .L706:
        "\t.long\t(.L648 - .) + 0" "\t.ascii\t\"Lqtree.Bbox.midy\\0\""
        "\t.align\t4" .L688: "\t.long\t(.L648 - .) + 0"
        "\t.ascii\t\"Lqtree.Qtree.clear\\0\"" "\t.align\t4" .L682:
        "\t.long\t(.L652 - .) + 0" "\t.ascii\t\"Nbody.(++)\\0\"" "\t.align\t4"
        .L671: "\t.long\t(.L670 - .) + 0"
        "\t.ascii\t\"Sexplib0__Sexp.message.conv_fields\\0\"" "\t.align\t4"
        .L703: "\t.long\t(.L702 - .) + 0"
        "\t.ascii\t\"Stdlib__Printf.kfprintf\\0\"" "\t.align\t4" .L696:
        "\t.long\t(.L692 - .) + 0"
        "\t.ascii\t\"Ppx_module_timer_runtime.record_until\\0\"" "\t.align\t4"
        .L695: "\t.long\t(.L648 - .) + 0"
        "\t.ascii\t\"Lqtree.Qtree.populate.(fun)\\0\"" "\t.align\t4" .L691:
        "\t.long\t(.L664 - .) + 0"
        "\t.ascii\t\"Sexplib0__Sexp_conv.sexp_of_int\\0\"" "\t.align\t4" .L678:
        "\t.long\t(.L648 - .) + 0" "\t.ascii\t\"Lqtree.Qtree.sexp_of_t\\0\""
        "\t.align\t4" .L668: "\t.long\t(.L650 - .) + 0"
        "\t.ascii\t\"Owl_maths.sub\\0\"" "\t.align\t4" .L647:
        "\t.long\t(.L646 - .) + 0"
        "\t.ascii\t\"Ppx_expect_runtime__Current_file.set\\0\"" "\t.align\t4"
        .L680: "\t.long\t(.L648 - .) + 0"
        "\t.ascii\t\"Lqtree.sexp_of_centroid\\0\"" "\t.align\t4" .L694:
        "\t.long\t(.L648 - .) + 0" "\t.ascii\t\"Lqtree.Qtree.build_qtree_in\\0\""
        "\t.align\t4" .L686: "\t.long\t(.L648 - .) + 0"
        "\t.ascii\t\"Lqtree.Qtree.build_qtree_in.(fun)\\0\"" "\t.align\t4" .L666:
        "\t.long\t(.L648 - .) + 0" "\t.ascii\t\"Lqtree.Bbox.sexp_of_t\\0\""
        "\t.align\t4" .L711: "\t.long\t(.L710 - .) + 0"
        "\t.ascii\t\"Ppx_inline_test_lib.set_lib_and_partition\\0\""
        "\t.align\t4" .L679: "\t.long\t(.L648 - .) + 0"
        "\t.ascii\t\"Lqtree.Qtree.node_check\\0\"" "\t.align\t4" .L708:
        "\t.long\t(.L689 - .) + 0" "\t.ascii\t\"Stdlib.failwith\\0\""
        "\t.align\t4" .L687: "\t.long\t(.L675 - .) + 0"
        "\t.ascii\t\"Stdlib__List.iter\\0\"" "\t.align\t4" .L673:
        "\t.long\t(.L648 - .) + 0"
        "\t.ascii\t\"Lqtree.Qtree.acc_by_qtree.acc_aux\\0\"" "\t.align\t4" .L699:
        "\t.long\t(.L664 - .) + 0"
        "\t.ascii\t\"Sexplib0__Sexp_conv.sexp_of_string\\0\"" "\t.align\t4"
        .L667: "\t.long\t(.L648 - .) + 0"
        "\t.ascii\t\"Lqtree.Qtree.subdivide_leaf\\0\"" "\t.align\t4" .L657:
        "\t.long\t(.L648 - .) + 0" "\t.ascii\t\"Lqtree.Node.equal\\0\""
        "\t.align\t4" .L698: "\t.long\t(.L659 - .) + 0"
        "\t.ascii\t\"Stdlib__Dynarray.create\\0\"" "\t.align\t4" .L693:
        "\t.long\t(.L692 - .) + 0"
        "\t.ascii\t\"Ppx_module_timer_runtime.record_start\\0\"" "\t.align\t4"
        .L684: "\t.long\t(.L648 - .) + 0" "\t.ascii\t\"Lqtree.Qtree.new_t\\0\""
        "\t.align\t4" .L683: "\t.long\t(.L648 - .) + 0" "\t.word\t20"
        "\t.word\t43" "\t.long\t630"
        "\t.ascii\t\"Lqtree.Qtree.acc_by_qtree.acc_aux\\0\"" "\t.align\t4" .L654:
        "\t.long\t(.L648 - .) + 0" "\t.ascii\t\"Lqtree.centroid_sum\\0\""
        "\t.align\t4" .L661: "\t.long\t(.L648 - .) + 0"
        "\t.ascii\t\"Lqtree.Qtree.get_node\\0\"" "\t.align\t4" .L653:
        "\t.long\t(.L652 - .) + 0" "\t.ascii\t\"Nbody.(*$)\\0\"" "\t.align\t4"
        .L656: "\t.long\t(.L646 - .) + 0"
        "\t.ascii\t\"Ppx_expect_runtime__Current_file.unset\\0\"" "\t.align\t4"
        .L705: "\t.long\t(.L702 - .) + 0"
        "\t.ascii\t\"Stdlib__Printf.printf\\0\"" "\t.align\t4" .L704:
        "\t.long\t(.L702 - .) + 0" "\t.ascii\t\"Stdlib__Printf.fprintf\\0\""
        "\t.align\t4" .L697: "\t.long\t(.L648 - .) + 0"
        "\t.ascii\t\"Lqtree.Quadrant.to_bbox\\0\"" "\t.align\t4" .L645:
        "\t.long\t(.L644 - .) + 0" "\t.ascii\t\"Base__Error.raise_s\\0\""
        "\t.align\t4" .L712: "\t.long\t(.L648 - .) + 0" "\t.word\t66"
        "\t.word\t80" "\t.long\t80"
        "\t.ascii\t\"Lqtree.Qtree.subdivide_leaf\\0\"" "\t.align\t4" .L709:
        "\t.long\t(.L648 - .) + 0" "\t.ascii\t\"Lqtree.Quadrant.of_index\\0\""
        "\t.align\t4" .L681: "\t.long\t(.L650 - .) + 0"
        "\t.ascii\t\"Owl_maths.add\\0\"" "\t.align\t4" .L658:
        "\t.long\t(.L648 - .) + 0" "\t.ascii\t\"Lqtree.Node.sexp_of_t\\0\""
        "\t.align\t4" .L690: "\t.long\t(.L689 - .) + 0"
        "\t.ascii\t\"Stdlib.string_of_int\\0\"" "\t.align\t4" .L674:
        "\t.long\t(.L648 - .) + 0" "\t.ascii\t\"Lqtree.Node.new_node\\0\""
        "\t.align\t4" .L660: "\t.long\t(.L659 - .) + 0"
        "\t.ascii\t\"Stdlib__Dynarray.get\\0\"" "\t.align\t4" .L649:
        "\t.long\t(.L648 - .) + 0" "\t.ascii\t\"Lqtree\\0\"" "\t.align\t4" .L701:
        "\t.long\t(.L700 - .) + 0"
        "\t.ascii\t\"CamlinternalFormat.make_printf\\0\"" "\t.align\t4" .L677:
        "\t.long\t(.L664 - .) + 0"
        "\t.ascii\t\"Sexplib0__Sexp_conv.sexp_of_list\\0\"" "\t.align\t4" .L663:
        "\t.long\t(.L648 - .) + 0" "\t.ascii\t\"Lqtree.Qtree.subdivide\\0\""
        "\t.align\t4" .L669: "\t.long\t(.L648 - .) + 0"
        "\t.ascii\t\"Lqtree.Bbox.size\\0\"" "\t.align\t4" .L665:
        "\t.long\t(.L664 - .) + 0"
        "\t.ascii\t\"Sexplib0__Sexp_conv.sexp_of_float\\0\"" "\t.align\t4" .L651:
        "\t.long\t(.L650 - .) + 0" "\t.ascii\t\"Owl_maths.mul\\0\"" "\t.align\t8"
        "\t.size camlLqtree.frametable,. - camlLqtree.frametable"
        "\t.section .note.GNU-stack,\"\",%progbits" "" "  "))))
    |}]
;;

let%expect_test "amp of chunks" =
  let file_map, lines = Mentasm.Asm.filter_file_direcs (asm |> String.split_lines) in
  let chunks =
    Mentasm.Asm.parse_lines file_map lines |> Mentasm.Asm.filter_chunks_file "lqtree.ml"
  in
  let lines, map = Mentasm.Asm.lines_map_of_chunks chunks in
  printf "%s" (String.concat ~sep:"\n" lines);
  printf "%s" (Sexp.to_string_hum (Mentasm.Asm.sexp_of_pos_map map));
  [%expect
    {|
    movq	8(%rax), %rdi
    subq	$24, %r15
    cmpq	(%r14), %r15
    jb	.L108
    .L110:
    leaq	8(%r15), %rsi
    movq	$2048, -8(%rsi)
    movq	(%rax), %rax
    movq	%rax, (%rsi)
    movq	%rdi, 8(%rsi)
    movq	%rbx, %rax
    movq	%rsi, %rbx
    call	camlLqtree.insert_1233@PLT
    .L111:
    movq	(%rsp), %rax
    movq	8(%rax), %rdi
    subq	$24, %r15
    cmpq	(%r14), %r15
    jb	.L116
    .L118:
    leaq	8(%r15), %rsi
    movq	$2048, -8(%rsi)
    movq	(%rax), %rax
    movq	%rax, (%rsi)
    movq	%rdi, 8(%rsi)
    movq	%rbx, %rax
    movq	%rsi, %rbx
    call	camlLqtree.insert_1233@PLT
    .L119:
    movq	(%rsp), %rax
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
    movq	8(%rax), %rbx
    movq	(%rax), %rax
    call	camlNbody.sexp_of_point_216@PLT
    .L127:
    subq	$64, %r15
    cmpq	(%r14), %r15
    jb	.L128
    .L130:
    leaq	8(%r15), %rbx
    addq	$40, %rbx
    movq	$2048, -8(%rbx)
    movq	%rax, (%rbx)
    movq	$1, 8(%rbx)
    leaq	-24(%rbx), %rdi
    movq	$2048, -8(%rdi)
    movq	8(%rsp), %rax
    movq	%rax, (%rdi)
    movq	%rbx, 8(%rdi)
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
    .cfi_startproc
    .L131:
    movq	(%rbx), %rdi
    movq	(%rax), %rsi
    movq	8(%rbx), %rbx
    movq	8(%rax), %rax
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
    .cfi_startproc
    leaq	-344(%rsp), %r10
    cmpq	40(%r14), %r10
    jb	.L137
    .L138:
    subq	$24, %rsp
    .cfi_adjust_cfa_offset 24
    .L136:
    movq	%rax, 16(%rsp)
    movsd	24(%rax), %xmm0
    movq	camlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rax
    movq	(%rax), %rax
    subq	$16, %r15
    cmpq	(%r14), %r15
    jb	.L139
    .L141:
    leaq	8(%r15), %rax
    movq	$1277, -8(%rax)
    movsd	%xmm0, (%rax)
    leaq	-24(%rbx), %rax
    movq	$2048, -8(%rax)
    movq	%rbx, (%rax)
    movq	$1, 8(%rax)
    leaq	-24(%rax), %rbx
    movq	$2048, -8(%rbx)
    movq	camlLqtree__const_block_193@GOTPCREL(%rip), %rdi
    movq	%rdi, (%rbx)
    movq	%rax, 8(%rbx)
    leaq	-16(%rbx), %rax
    movq	$1025, -8(%rax)
    movq	%rbx, (%rax)
    leaq	-24(%rax), %rdi
    movq	%rdi, (%rsp)
    movq	$2048, -8(%rdi)
    movq	%rax, (%rdi)
    movq	$1, 8(%rdi)
    movq	16(%rsp), %rax
    movsd	16(%rax), %xmm0
    movq	camlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rax
    movq	(%rax), %rax
    leaq	-16(%rdi), %rax
    movq	$1277, -8(%rax)
    movsd	%xmm0, (%rax)
    leaq	-24(%rbx), %rax
    movq	$2048, -8(%rax)
    movq	%rbx, (%rax)
    movq	$1, 8(%rax)
    leaq	-24(%rax), %rbx
    movq	$2048, -8(%rbx)
    movq	camlLqtree__const_block_214@GOTPCREL(%rip), %rdi
    movq	%rdi, (%rbx)
    movq	%rax, 8(%rbx)
    leaq	-16(%rbx), %rax
    movq	$1025, -8(%rax)
    movq	%rbx, (%rax)
    leaq	-24(%rax), %rdi
    movq	%rdi, 8(%rsp)
    movq	$2048, -8(%rdi)
    movq	%rax, (%rdi)
    movq	(%rsp), %rax
    movq	%rax, 8(%rdi)
    movq	16(%rsp), %rax
    movsd	8(%rax), %xmm0
    movq	camlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rax
    movq	(%rax), %rax
    leaq	-16(%rdi), %rax
    movq	$1277, -8(%rax)
    movsd	%xmm0, (%rax)
    leaq	-24(%rbx), %rax
    movq	$2048, -8(%rax)
    movq	%rbx, (%rax)
    movq	$1, 8(%rax)
    leaq	-24(%rax), %rbx
    movq	$2048, -8(%rbx)
    movq	camlLqtree__const_block_235@GOTPCREL(%rip), %rdi
    movq	%rdi, (%rbx)
    movq	%rax, 8(%rbx)
    leaq	-16(%rbx), %rax
    movq	$1025, -8(%rax)
    movq	%rbx, (%rax)
    leaq	-24(%rax), %rdi
    movq	%rdi, (%rsp)
    movq	$2048, -8(%rdi)
    movq	%rax, (%rdi)
    movq	8(%rsp), %rax
    movq	%rax, 8(%rdi)
    movq	16(%rsp), %rax
    movsd	(%rax), %xmm0
    movq	camlSexplib0__Sexp_conv__Pmakeblock_2700@GOTPCREL(%rip), %rax
    movq	(%rax), %rax
    leaq	-16(%rdi), %rax
    movq	$1277, -8(%rax)
    movsd	%xmm0, (%rax)
    leaq	-24(%rbx), %rax
    movq	$2048, -8(%rax)
    movq	%rbx, (%rax)
    movq	$1, 8(%rax)
    leaq	-24(%rax), %rbx
    movq	$2048, -8(%rbx)
    movq	camlLqtree__const_block_256@GOTPCREL(%rip), %rdi
    movq	%rdi, (%rbx)
    movq	%rax, 8(%rbx)
    leaq	-16(%rbx), %rax
    movq	$1025, -8(%rax)
    movq	%rbx, (%rax)
    leaq	-24(%rax), %rbx
    movq	$2048, -8(%rbx)
    movq	%rax, (%rbx)
    movq	(%rsp), %rax
    movq	%rax, 8(%rbx)
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
    .cfi_startproc
    .L161:
    movq	8(%rax), %rdi
    movq	(%rax), %rax
    movsd	(%rax), %xmm0
    movsd	(%rbx), %xmm1
    comisd	%xmm1, %xmm0
    jb	.L158
    movsd	16(%rbx), %xmm1
    comisd	%xmm0, %xmm1
    jb	.L159
    movsd	(%rdi), %xmm0
    movsd	8(%rbx), %xmm1
    comisd	%xmm1, %xmm0
    jb	.L160
    movsd	24(%rbx), %xmm1
    cmplesd	%xmm1, %xmm0
    movd	%xmm0, %rax
    neg	%rax
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
    .cfi_startproc
    .L162:
    movsd	(%rax), %xmm0
    movsd	.L163(%rip), %xmm1
    movsd	16(%rax), %xmm2
    .cfi_startproc
    .L167:
    movsd	8(%rax), %xmm0
    movsd	.L163(%rip), %xmm1
    movsd	24(%rax), %xmm2
    .cfi_startproc
    .L171:
    movsd	(%rax), %xmm0
    movsd	16(%rax), %xmm1
    .cfi_startproc
    .L178:
    movsd	(%rbx), %xmm0
    movsd	.L163(%rip), %xmm1
    movsd	16(%rbx), %xmm2
    movq	(%rax), %rdi
    movsd	(%rdi), %xmm0
    cmplesd	%xmm2, %xmm0
    movd	%xmm0, %rdi
    neg	%rdi
    leaq	1(%rdi,%rdi), %rdi
    movsd	8(%rbx), %xmm0
    movsd	24(%rbx), %xmm2
    movq	8(%rax), %rax
    movsd	(%rax), %xmm0
    cmplesd	%xmm2, %xmm0
    movd	%xmm0, %rax
    neg	%rax
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
    .cfi_startproc
    .L183:
    movsd	(%rbx), %xmm1
    movsd	.L163(%rip), %xmm2
    movsd	16(%rbx), %xmm3
    movapd	%xmm3, %xmm0
    movsd	8(%rbx), %xmm1
    movsd	24(%rbx), %xmm4
    movapd	%xmm4, %xmm5
    subq	$40, %r15
    cmpq	(%r14), %r15
    jb	.L185
    .L187:
    leaq	8(%r15), %rax
    movq	$4350, -8(%rax)
    movsd	(%rbx), %xmm1
    movsd	%xmm1, (%rax)
    movsd	%xmm5, 8(%rax)
    movsd	%xmm0, 16(%rax)
    movsd	%xmm4, 24(%rax)
    ret
    .align	4
    .L181:
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
    subq	$40, %r15
    cmpq	(%r14), %r15
    jb	.L191
    .L193:
    leaq	8(%r15), %rax
    movq	$4350, -8(%rax)
    movsd	(%rbx), %xmm2
    movsd	%xmm2, (%rax)
    movsd	%xmm1, 8(%rax)
    movsd	%xmm0, 16(%rax)
    movsd	%xmm5, 24(%rax)
    ret
    .align	4
    .L179:
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
    .cfi_startproc
    .L199:
    cmpq	$7, %rax
    jbe	.L198
    movq	camlLqtree__Pmakeblock_3583@GOTPCREL(%rip), %rax
    .cfi_startproc
    leaq	-352(%rsp), %r10
    cmpq	40(%r14), %r10
    jb	.L202
    .L203:
    subq	$32, %rsp
    .cfi_adjust_cfa_offset 32
    .L201:
    movq	(%rax), %rbx
    movq	%rbx, 24(%rsp)
    movq	8(%rax), %rbx
    movq	%rbx, 16(%rsp)
    movq	16(%rax), %rbx
    movq	%rbx, (%rsp)
    movq	24(%rax), %rax
    call	camlLqtree.sexp_of_t_178@PLT
    .L204:
    subq	$88, %r15
    cmpq	(%r14), %r15
    jb	.L205
    .L207:
    leaq	8(%r15), %rbx
    addq	$64, %rbx
    movq	$2048, -8(%rbx)
    movq	%rax, (%rbx)
    movq	$1, 8(%rbx)
    leaq	-24(%rbx), %rax
    movq	$2048, -8(%rax)
    movq	camlLqtree__const_block_506@GOTPCREL(%rip), %rdi
    movq	%rdi, (%rax)
    movq	%rbx, 8(%rax)
    leaq	-16(%rax), %rbx
    movq	$1025, -8(%rbx)
    movq	%rax, (%rbx)
    leaq	-24(%rbx), %rax
    movq	%rax, 8(%rsp)
    movq	$2048, -8(%rax)
    movq	%rbx, (%rax)
    movq	$1, 8(%rax)
    movq	camlStdlib__const_immstring_545@GOTPCREL(%rip), %rdi
    movq	(%rsp), %rsi
    leaq	-24(%rbx), %rax
    movq	$2048, -8(%rax)
    movq	%rbx, (%rax)
    movq	$1, 8(%rax)
    leaq	-24(%rax), %rbx
    movq	$2048, -8(%rbx)
    movq	camlLqtree__const_block_525@GOTPCREL(%rip), %rdi
    movq	%rdi, (%rbx)
    movq	%rax, 8(%rbx)
    leaq	-16(%rbx), %rax
    movq	$1025, -8(%rax)
    movq	%rbx, (%rax)
    leaq	-24(%rax), %rbx
    movq	%rbx, (%rsp)
    movq	$2048, -8(%rbx)
    movq	%rax, (%rbx)
    movq	8(%rsp), %rax
    movq	%rax, 8(%rbx)
    movq	camlStdlib__const_immstring_545@GOTPCREL(%rip), %rdi
    movq	16(%rsp), %rsi
    leaq	-24(%rbx), %rax
    movq	$2048, -8(%rax)
    movq	%rbx, (%rax)
    movq	$1, 8(%rax)
    leaq	-24(%rax), %rbx
    movq	$2048, -8(%rbx)
    movq	camlLqtree__const_block_544@GOTPCREL(%rip), %rdi
    movq	%rdi, (%rbx)
    movq	%rax, 8(%rbx)
    leaq	-16(%rbx), %rax
    movq	$1025, -8(%rax)
    movq	%rbx, (%rax)
    leaq	-24(%rax), %rbx
    movq	%rbx, 8(%rsp)
    movq	$2048, -8(%rbx)
    movq	%rax, (%rbx)
    movq	(%rsp), %rax
    movq	%rax, 8(%rbx)
    movq	24(%rsp), %rax
    movq	8(%rax), %rbx
    movq	(%rax), %rax
    call	camlLqtree.sexp_of_centroid_110@PLT
    .L216:
    subq	$104, %r15
    cmpq	(%r14), %r15
    jb	.L217
    .L219:
    leaq	8(%r15), %rbx
    addq	$80, %rbx
    movq	$2048, -8(%rbx)
    movq	%rax, (%rbx)
    movq	$1, 8(%rbx)
    leaq	-24(%rbx), %rax
    movq	$2048, -8(%rax)
    movq	camlLqtree__const_block_560@GOTPCREL(%rip), %rdi
    movq	%rdi, (%rax)
    movq	%rbx, 8(%rax)
    leaq	-16(%rax), %rbx
    movq	$1025, -8(%rbx)
    movq	%rax, (%rbx)
    leaq	-24(%rbx), %rdi
    movq	$2048, -8(%rdi)
    movq	%rbx, (%rdi)
    movq	8(%rsp), %rax
    movq	%rax, 8(%rdi)
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
    .cfi_startproc
    .L220:
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
    .cfi_startproc
    .L225:
    movq	8(%rax), %rbx
    cmpq	$1, %rbx
    jne	.L224
    xorpd	%xmm0, %xmm0
    movq	(%rax), %rax
    movq	(%rax), %rax
    movsd	(%rax), %xmm1
    cmpneqsd	%xmm0, %xmm1
    movd	%xmm1, %rax
    neg	%rax
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
    .cfi_startproc
    leaq	-344(%rsp), %r10
    cmpq	40(%r14), %r10
    jb	.L231
    .L232:
    subq	$24, %rsp
    .cfi_adjust_cfa_offset 24
    .L230:
    movq	%rax, %rsi
    movq	8(%rbx), %rax
    movq	%rax, (%rsp)
    movq	8(%rsi), %r9
    movq	16(%rbx), %r12
    movq	16(%rsi), %r13
    movq	24(%rbx), %rax
    movq	24(%rsi), %rdi
    movq	(%rbx), %rcx
    movq	(%rsi), %r8
    movq	8(%rcx), %rdx
    movq	8(%r8), %r10
    movq	(%rcx), %rdx
    movq	(%r8), %rcx
    movsd	8(%rax), %xmm0
    movsd	8(%rdi), %xmm1
    movsd	24(%rax), %xmm0
    movsd	24(%rdi), %xmm1
    movsd	(%rax), %xmm0
    movsd	(%rdi), %xmm1
    movsd	16(%rax), %xmm0
    movsd	16(%rdi), %xmm1
    cmpq	%r12, %r13
    sete	%al
    movzbq	%al, %rax
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
    call	camlLqtree.sexp_of_t_485@PLT
    .L234:
    movq	%rax, %rbx
    movl	$1, %eax
    call	camlSexplib0__Sexp.to_string_hum_1283@PLT
    .L235:
    movq	%rax, (%rsp)
    movq	camlLqtree__const_block_740@GOTPCREL(%rip), %rdi
    movq	camlLqtree__Pmakeblock_5933@GOTPCREL(%rip), %rbx
    movq	camlStdlib__Printf.anon_fn$5bprintf.ml$3a20$2c14$2d$2d48$5d_445_closure@GOTPCREL(%rip), %rax
    movq	(%rbx), %rdi
    movq	(%rsp), %rax
    call	*%rdi
    .L237:
    movq	8(%rsp), %rax
    call	camlLqtree.sexp_of_t_485@PLT
    .L238:
    movq	%rax, %rbx
    movl	$1, %eax
    call	camlSexplib0__Sexp.to_string_hum_1283@PLT
    .L239:
    movq	%rax, (%rsp)
    movq	camlLqtree__const_block_740@GOTPCREL(%rip), %rdi
    movq	camlLqtree__Pmakeblock_5934@GOTPCREL(%rip), %rbx
    movq	camlStdlib__Printf.anon_fn$5bprintf.ml$3a20$2c14$2d$2d48$5d_445_closure@GOTPCREL(%rip), %rax
    movq	(%rbx), %rdi
    movq	(%rsp), %rax
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
    .cfi_startproc
    leaq	-344(%rsp), %r10
    cmpq	40(%r14), %r10
    jb	.L246
    .L247:
    subq	$24, %rsp
    .cfi_adjust_cfa_offset 24
    .L245:
    movq	(%rax), %rax
    call	camlStdlib__Dynarray.to_list_1837@PLT
    .L248:
    testb	$1, %al
    je	.L244
    movl	$1, %eax
    movq	%rax, %rbx
    jmp	.L242
    .align	4
    .L244:
    .cfi_startproc
    .L267:
    movq	(%rax), %rdi
    call	caml_raise_exn@PLT
    .L268:
    .align	4
    .L266:
    movq	(%rax), %rax
    .cfi_startproc
    leaq	-336(%rsp), %r10
    cmpq	40(%r14), %r10
    jb	.L272
    .L273:
    subq	$16, %rsp
    .cfi_adjust_cfa_offset 16
    .L271:
    movq	%rax, (%rsp)
    call	camlStdlib__Dynarray.set_capacity_1003@PLT
    .L277:
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
    call	camlStdlib__Dynarray.add_last_1102@PLT
    .L281:
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
    .cfi_startproc
    leaq	-368(%rsp), %r10
    cmpq	40(%r14), %r10
    jb	.L296
    .L297:
    subq	$48, %rsp
    .cfi_adjust_cfa_offset 48
    .L295:
    movq	(%rax), %rdi
    call	caml_raise_exn@PLT
    .L298:
    .align	4
    .L293:
    movq	(%rax), %rax
    movq	8(%rax), %rbx
    cmpq	$1, %rbx
    jne	.L290
    xorpd	%xmm0, %xmm0
    movq	(%rax), %rbx
    movq	(%rbx), %rbx
    movsd	(%rbx), %xmm1
    cmpneqsd	%xmm0, %xmm1
    movd	%xmm1, %rbx
    neg	%rbx
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
    call	caml_raise_exn@PLT
    .L302:
    .align	4
    .L287:
    movq	24(%rax), %rbx
    movq	16(%rax), %rsi
    subq	$40, %r15
    cmpq	(%r14), %r15
    jb	.L303
    .L305:
    leaq	8(%r15), %rdi
    movq	$4096, -8(%rdi)
    movq	(%rax), %rax
    movq	%rax, (%rdi)
    movq	8(%rsp), %rax
    movq	%rax, 8(%rdi)
    movq	%rsi, 16(%rdi)
    movq	%rbx, 24(%rdi)
    movq	32(%rsp), %rax
    movq	(%rax), %rax
    movq	(%rsp), %rbx
    call	camlStdlib__Dynarray.set_560@PLT
    .L306:
    movq	16(%rsp), %rdx
    movq	16(%rdx), %rax
    subq	$40, %r15
    cmpq	(%r14), %r15
    jb	.L307
    .L309:
    leaq	8(%r15), %rbx
    movq	$4096, -8(%rbx)
    movq	8(%rsp), %rsi
    movq	%rsi, %rdi
    addq	$2, %rdi
    movq	%rdi, (%rbx)
    movq	%rsi, %rdi
    addq	$4, %rdi
    movq	%rdi, 8(%rbx)
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
    movq	24(%rbx), %rbx
    movq	%rbx, (%rsp)
    call	camlLqtree.of_index_453@PLT
    .L310:
    movq	(%rsp), %rbx
    call	camlLqtree.to_bbox_407@PLT
    .L311:
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
    movq	-8(%rsi), %rdi
    shrq	$9, %rdi
    movq	40(%rsp), %rdx
    cmpq	%rdx, %rdi
    jbe	.L315
    movq	-4(%rsi,%rdx,4), %rdi
    movq	%rdi, 16(%rbx)
    movq	%rax, 24(%rbx)
    movq	32(%rsp), %rax
    movq	(%rax), %rax
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
    .cfi_startproc
    leaq	-384(%rsp), %r10
    cmpq	40(%r14), %r10
    jb	.L331
    .L332:
    subq	$64, %rsp
    .cfi_adjust_cfa_offset 64
    .L330:
    movq	(%rax), %rdi
    call	caml_raise_exn@PLT
    .L333:
    .align	4
    .L328:
    movq	(%rax), %rax
    movq	8(%rax), %rbx
    cmpq	$1, %rbx
    jne	.L325
    xorpd	%xmm0, %xmm0
    movq	(%rax), %rbx
    movq	(%rbx), %rbx
    movsd	(%rbx), %xmm1
    cmpneqsd	%xmm0, %xmm1
    movd	%xmm1, %rbx
    neg	%rbx
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
    call	caml_raise_exn@PLT
    .L337:
    .align	4
    .L322:
    movq	(%rax), %rbx
    movq	8(%rbx), %rdi
    movq	%rdi, 56(%rsp)
    movq	(%rbx), %rbx
    movq	%rbx, 48(%rsp)
    movq	24(%rax), %rbx
    movq	16(%rax), %rsi
    subq	$40, %r15
    cmpq	(%r14), %r15
    jb	.L338
    .L340:
    leaq	8(%r15), %rdi
    movq	$4096, -8(%rdi)
    movq	(%rax), %rax
    movq	%rax, (%rdi)
    movq	8(%rsp), %rax
    movq	%rax, 8(%rdi)
    movq	%rsi, 16(%rdi)
    movq	%rbx, 24(%rdi)
    movq	32(%rsp), %rax
    movq	(%rax), %rax
    movq	(%rsp), %rbx
    call	camlStdlib__Dynarray.set_560@PLT
    .L341:
    movq	16(%rsp), %rdx
    movq	16(%rdx), %rax
    subq	$40, %r15
    cmpq	(%r14), %r15
    jb	.L342
    .L344:
    leaq	8(%r15), %rbx
    movq	$4096, -8(%rbx)
    movq	8(%rsp), %rsi
    movq	%rsi, %rdi
    addq	$2, %rdi
    movq	%rdi, (%rbx)
    movq	%rsi, %rdi
    addq	$4, %rdi
    movq	%rdi, 8(%rbx)
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
    movq	24(%rbx), %rbx
    movq	%rbx, (%rsp)
    call	camlLqtree.of_index_453@PLT
    .L345:
    movq	(%rsp), %rbx
    call	camlLqtree.to_bbox_407@PLT
    .L346:
    movq	%rax, %rbx
    movq	%rbx, (%rsp)
    movq	56(%rsp), %rax
    call	camlLqtree.contains_point_273@PLT
    .L347:
    cmpq	$1, %rax
    je	.L321
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
    movq	-8(%rdi), %rbx
    shrq	$9, %rbx
    movq	40(%rsp), %rsi
    cmpq	%rsi, %rbx
    jbe	.L351
    movq	-4(%rdi,%rsi,4), %rdi
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
    movq	(%rax), %rax
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
    .cfi_startproc
    leaq	-344(%rsp), %r10
    cmpq	40(%r14), %r10
    jb	.L359
    .L360:
    subq	$24, %rsp
    .cfi_adjust_cfa_offset 24
    .L358:
    movq	%rdi, (%rsp)
    call	camlLqtree.contains_point_273@PLT
    .L361:
    movq	%rax, %rbx
    movq	(%rsp), %rax
    movsd	(%rax), %xmm0
    movsd	16(%rax), %xmm1
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
    .cfi_startproc
    .L363:
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
    .cfi_startproc
    leaq	-368(%rsp), %r10
    cmpq	40(%r14), %r10
    jb	.L381
    .L382:
    subq	$48, %rsp
    .cfi_adjust_cfa_offset 48
    .L380:
    cmpq	(%r14), %r15
    jbe	.L383
    .L384:
    movq	(%rax), %rdx
    call	caml_raise_exn@PLT
    .L386:
    .align	4
    .L378:
    movq	(%rax), %rax
    movq	(%rsi), %rax
    movq	8(%rax), %rdi
    movq	%rdi, 8(%rsp)
    movq	(%rax), %rbx
    movq	%rbx, (%rsp)
    movq	8(%rsi), %rax
    cmpq	$1, %rax
    jne	.L375
    xorpd	%xmm0, %xmm0
    movsd	(%rbx), %xmm1
    cmpneqsd	%xmm0, %xmm1
    movd	%xmm1, %rax
    neg	%rax
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
    jmp	.L380
    .align	4
    .L371:
    movq	16(%rsi), %rax
    cmpq	$1, %rax
    jne	.L370
    movq	32(%rsp), %rax
    movq	24(%rax), %rax
    call	camlNbody.acc_on_439@PLT
    .L390:
    call	camlNbody.acc_on_439@PLT
    .L394:
    movq	16(%rax), %rbx
    movq	24(%rsp), %rax
    movq	32(%rsp), %rsi
    jmp	.L380
    .align	4
    .L369:
    movq	24(%rsi), %rsi
    movq	32(%rsp), %rax
    movq	24(%rax), %rax
    movq	%rdi, %rbx
    movq	%rsi, %rdi
    call	camlLqtree.node_check_1076@PLT
    .L398:
    cmpq	$1, %rax
    je	.L367
    movq	16(%rsp), %rax
    movq	16(%rax), %rax
    cmpq	$1, %rax
    jne	.L367
    movq	32(%rsp), %rax
    movq	24(%rax), %rax
    movq	(%rsp), %rbx
    movq	8(%rsp), %rdi
    call	camlNbody.acc_on_439@PLT
    .L399:
    movq	24(%rax), %rdi
    movq	32(%rsp), %rax
    movq	24(%rax), %rax
    movq	8(%rsp), %rbx
    call	camlLqtree.node_check_1076@PLT
    .L403:
    cmpq	$1, %rax
    je	.L368
    movq	32(%rsp), %rax
    movq	24(%rax), %rax
    movq	(%rsp), %rbx
    movq	8(%rsp), %rdi
    call	camlNbody.acc_on_439@PLT
    .L404:
    movq	16(%rax), %rbx
    movq	24(%rsp), %rax
    movq	32(%rsp), %rsi
    jmp	.L380
    .align	4
    .L368:
    movq	16(%rsp), %rax
    movq	8(%rax), %rbx
    movq	24(%rsp), %rax
    movq	40(%rsp), %rdi
    movq	32(%rsp), %rsi
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
    .cfi_startproc
    .L408:
    movq	8(%rbx), %rsi
    movq	(%rbx), %rbx
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
    .cfi_startproc
    leaq	-360(%rsp), %r10
    cmpq	40(%r14), %r10
    jb	.L423
    .L424:
    subq	$40, %rsp
    .cfi_adjust_cfa_offset 40
    .L422:
    movq	(%rax), %rsi
    call	caml_raise_exn@PLT
    .L425:
    .align	4
    .L420:
    movq	(%rax), %rax
    movq	8(%r12), %rax
    cmpq	$1, %rax
    jne	.L417
    xorpd	%xmm0, %xmm0
    movq	(%r12), %rax
    movq	(%rax), %rax
    movsd	(%rax), %xmm1
    cmpneqsd	%xmm0, %xmm1
    movd	%xmm1, %rax
    neg	%rax
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
    movq	%rsp, %rbx
    .cfi_remember_state
    .cfi_def_cfa_register %rbx
    movq	64(%r14), %rsp
    call	caml_modify@PLT
    movq	%rbx, %rsp
    .cfi_restore_state
    movq	24(%rsp), %rax
    movq	(%rax), %rax
    movq	32(%rsp), %rbx
    movq	%r12, %rdi
    addq	$40, %rsp
    .cfi_adjust_cfa_offset -40
    jmp	camlStdlib__Dynarray.set_560@PLT
    .cfi_adjust_cfa_offset 40
    .align	4
    .L414:
    movq	(%r12), %rbx
    movq	8(%rbx), %rdi
    movq	(%rbx), %rbx
    leaq	-24(%rdi), %rsi
    movq	$2048, -8(%rsi)
    movq	%rdi, (%rsi)
    movq	%rdx, 8(%rsi)
    movq	%r12, %rdi
    movq	%rsp, %rbx
    .cfi_remember_state
    .cfi_def_cfa_register %rbx
    movq	64(%r14), %rsp
    call	caml_modify@PLT
    movq	%rbx, %rsp
    .cfi_restore_state
    movq	24(%rsp), %rax
    movq	(%rax), %rax
    movq	32(%rsp), %rbx
    movq	%r12, %rdi
    addq	$40, %rsp
    .cfi_adjust_cfa_offset -40
    jmp	camlStdlib__Dynarray.set_560@PLT
    .cfi_adjust_cfa_offset 40
    .align	4
    .L413:
    movq	24(%rsp), %rax
    movq	32(%rsp), %rbx
    call	camlLqtree.subdivide_leaf_962@PLT
    .L435:
    movq	%rax, (%rsp)
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
    movq	(%rax), %rax
    call	camlLqtree.centroid_sum_120@PLT
    .L439:
    movq	8(%rsp), %r12
    movq	%r12, %rdi
    movq	%rax, %rsi
    movq	%rsp, %rbx
    .cfi_remember_state
    .cfi_def_cfa_register %rbx
    movq	64(%r14), %rsp
    call	caml_modify@PLT
    movq	%rbx, %rsp
    .cfi_restore_state
    movq	(%rsp), %rax
    movq	%rax, 8(%r12)
    movq	24(%rsp), %rax
    movq	(%rax), %rax
    movq	32(%rsp), %rbx
    movq	%r12, %rdi
    call	camlStdlib__Dynarray.set_560@PLT
    .L440:
    movq	8(%rsp), %rax
    movq	24(%rax), %rbx
    movq	16(%rsp), %rax
    movq	32(%rax), %rax
    call	camlLqtree.contains_378@PLT
    .L441:
    sarq	$1, %rax
    salq	$1, %rax
    incq	%rax
    movq	(%rsp), %rbx
    leaq	-1(%rbx,%rax), %rbx
    movq	24(%rsp), %rax
    movq	16(%rsp), %rdi
    jmp	.L422
    .align	4
    .L412:
    movq	24(%r12), %rbx
    movq	16(%rsp), %rax
    movq	32(%rax), %rax
    call	camlLqtree.contains_378@PLT
    .L442:
    sarq	$1, %rax
    salq	$1, %rax
    incq	%rax
    movq	%rax, (%rsp)
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
    movq	(%rax), %rax
    call	camlLqtree.centroid_sum_120@PLT
    .L446:
    movq	8(%rsp), %r12
    movq	%r12, %rdi
    movq	%rax, %rsi
    movq	%rsp, %rbx
    .cfi_remember_state
    .cfi_def_cfa_register %rbx
    movq	64(%r14), %rsp
    call	caml_modify@PLT
    movq	%rbx, %rsp
    .cfi_restore_state
    movq	8(%r12), %rax
    movq	(%rsp), %rbx
    leaq	-1(%rax,%rbx), %rbx
    movq	24(%rsp), %rax
    movq	16(%rsp), %rdi
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
    call	camlLqtree.new_t_821@PLT
    .L450:
    movq	%rax, %rbx
    movq	%rbx, 8(%rsp)
    movq	camlLqtree.1@GOTPCREL(%rip), %rdi
    movq	(%rsp), %rax
    .cfi_startproc
    .L452:
    movq	%rax, %rsi
    movq	%rbx, %rax
    movq	camlLqtree.2@GOTPCREL(%rip), %rdi
    movq	%rsi, %rbx
    .cfi_startproc
    leaq	-336(%rsp), %r10
    cmpq	40(%r14), %r10
    jb	.L455
    .L456:
    subq	$16, %rsp
    .cfi_adjust_cfa_offset 16
    .L454:
    movq	(%rax), %rdi
    call	camlStdlib__Dynarray.get_538@PLT
    .L457:
    addq	$24, %rax
    movq	(%rax), %rax
    movq	%rax, (%rsp)
    movq	8(%rsp), %rax
    movq	(%rax), %rax
    call	camlStdlib__Dynarray.clear_814@PLT
    .L458:
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
    movq	(%rax), %rax
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
    cmpq	$2050162989, %rax
    setge	%al
    movzbq	%al, %rax
    leaq	1(%rax,%rax), %rax
    cmpq	$1, %rax
    je	.L468(((1 0) 2225) ((1 0) 2222) ((286 6) 1733) ((286 24) 1732) ((99 31) 1719)
     ((284 6) 1717) ((284 21) 1716) ((283 17) 1713) ((283 17) 1712)
     ((282 17) 1710) ((279 23) 1709) ((279 23) 1708) ((279 23) 1706)
     ((278 12) 1701) ((270 15) 1695) ((261 12) 1689) ((260 21) 1679)
     ((237 8) 1644) ((237 21) 1641) ((237 22) 1639) ((236 8) 1632)
     ((236 25) 1627) ((236 38) 1626) ((236 52) 1614) ((235 16) 1608)
     ((235 38) 1605) ((255 10) 1602) ((255 23) 1599) ((254 22) 1593)
     ((254 44) 1590) ((253 10) 1587) ((253 23) 1584) ((252 10) 1582)
     ((251 10) 1574) ((250 29) 1569) ((250 42) 1568) ((250 56) 1556)
     ((249 25) 1553) ((246 10) 1545) ((246 23) 1542) ((245 10) 1534)
     ((245 27) 1529) ((242 12) 1528) ((242 12) 1527) ((242 21) 1526)
     ((240 8) 1520) ((240 21) 1517) ((239 8) 1509) ((239 25) 1497) ((111 9) 1486)
     ((111 9) 1483) ((111 9) 1482) ((110 10) 1481) ((110 17) 1480) ((108 7) 1476)
     ((156 17) 1475) ((155 4) 1471) ((155 35) 1470) ((155 35) 1469)
     ((155 35) 1467) ((231 23) 1462) ((257 4) 1450) ((231 23) 1435)
     ((230 23) 1434) ((230 23) 1433) ((230 23) 1432) ((230 23) 1432)
     ((230 13) 1431) ((225 16) 1392) ((225 26) 1388) ((224 8) 1384)
     ((224 18) 1381) ((224 36) 1379) ((223 18) 1371) ((223 37) 1367)
     ((222 15) 1365) ((221 50) 1358) ((221 18) 1353) ((221 37) 1348)
     ((220 16) 1345) ((220 26) 1342) ((220 44) 1340) ((219 42) 1338)
     ((219 18) 1333) ((218 17) 1330) ((217 19) 1317) ((111 9) 1306)
     ((111 9) 1303) ((111 9) 1302) ((108 7) 1298) ((215 10) 1296) ((215 10) 1294)
     ((215 19) 1293) ((156 17) 1292) ((155 4) 1288) ((155 35) 1287)
     ((213 20) 1284) ((213 20) 1283) ((213 20) 1281) ((213 20) 1276)
     ((227 4) 1264) ((213 20) 1247) ((213 20) 1246) ((213 20) 1246)
     ((212 19) 1245) ((202 48) 1218) ((37 30) 1217) ((37 41) 1216)
     ((200 22) 1212) ((198 17) 1203) ((193 6) 1152) ((193 24) 1151)
     ((193 33) 1139) ((193 66) 1138) ((193 66) 1136) ((193 66) 1134)
     ((193 66) 1133) ((192 57) 1117) ((192 24) 1113) ((191 17) 1108)
     ((191 47) 1105) ((191 17) 1103) ((189 52) 1092) ((189 38) 1090)
     ((189 24) 1087) ((189 21) 1079) ((189 66) 1078) ((188 4) 1075)
     ((188 17) 1073) ((188 35) 1066) ((188 35) 1060) ((188 35) 1059)
     ((188 35) 1058) ((187 8) 1056) ((187 8) 1054) ((187 17) 1053) ((186 4) 1049)
     ((111 9) 1036) ((111 9) 1033) ((111 9) 1032) ((110 10) 1031) ((110 17) 1030)
     ((108 7) 1026) ((156 17) 1025) ((155 4) 1021) ((184 19) 1020)
     ((184 19) 1019) ((184 19) 1017) ((183 21) 1012) ((176 6) 965) ((177 8) 964)
     ((178 53) 960) ((178 53) 958) ((178 53) 956) ((178 53) 955) ((178 8) 945)
     ((175 17) 943) ((175 47) 940) ((175 17) 938) ((173 52) 927) ((173 38) 925)
     ((173 24) 922) ((173 21) 914) ((173 66) 913) ((172 4) 910) ((172 17) 908)
     ((172 35) 901) ((172 35) 895) ((172 35) 894) ((172 35) 893) ((171 4) 889)
     ((111 9) 876) ((111 9) 873) ((111 9) 872) ((110 10) 871) ((110 17) 870)
     ((108 7) 866) ((156 17) 865) ((155 4) 861) ((169 19) 860) ((169 19) 859)
     ((169 19) 857) ((168 16) 852) ((165 4) 813) ((164 4) 811) ((99 31) 798)
     ((162 4) 796) ((160 12) 787) ((156 17) 786) ((155 4) 782) ((155 35) 781)
     ((155 35) 780) ((155 35) 780) ((154 15) 779) ((148 16) 770) ((148 33) 769)
     ((148 33) 768) ((148 33) 766) ((147 16) 761) ((136 6) 739) ((136 6) 737)
     ((136 35) 731) ((136 36) 727) ((135 6) 724) ((135 6) 722) ((135 35) 716)
     ((135 36) 712) ((131 9) 691) ((131 9) 688) ((123 9) 687) ((123 24) 686)
     ((122 9) 685) ((122 24) 684) ((121 9) 683) ((121 24) 682) ((120 6) 681)
     ((120 21) 680) ((116 22) 679) ((116 35) 678) ((116 22) 677) ((116 35) 676)
     ((129 21) 675) ((129 32) 674) ((127 25) 673) ((127 33) 672) ((126 25) 671)
     ((126 33) 670) ((125 27) 669) ((125 39) 667) ((115 12) 658) ((111 9) 645)
     ((111 9) 642) ((111 9) 641) ((110 10) 640) ((110 17) 639) ((108 7) 635)
     ((108 7) 634) ((107 16) 633) ((99 31) 610) ((99 31) 609) ((99 31) 609)
     ((99 15) 608) ((91 2) 570) ((92 14) 565) ((92 14) 562) ((92 14) 557)
     ((92 14) 553) ((92 14) 548) ((92 14) 546) ((92 14) 545) ((92 14) 544)
     ((93 14) 537) ((93 14) 534) ((93 14) 529) ((93 14) 525) ((94 14) 517)
     ((94 14) 514) ((94 14) 509) ((94 14) 505) ((95 6) 498) ((95 6) 495)
     ((95 6) 490) ((95 6) 486) ((95 6) 481) ((95 6) 479) ((91 2) 478)
     ((91 2) 476) ((91 2) 474) ((91 2) 472) ((91 2) 471) ((91 2) 469)
     ((91 2) 464) ((75 15) 459) ((67 15) 447) ((64 12) 413) ((63 12) 405)
     ((63 12) 399) ((62 12) 386) ((61 12) 378) ((61 12) 372) ((36 43) 370)
     ((36 54) 369) ((35 43) 367) ((35 54) 365) ((35 54) 364) ((35 54) 364)
     ((57 14) 363) ((50 29) 335) ((50 29) 332) ((50 29) 331) ((49 16) 330)
     ((36 43) 329) ((36 54) 328) ((50 10) 327) ((50 10) 324) ((50 10) 323)
     ((49 16) 322) ((35 43) 321) ((35 54) 319) ((35 54) 318) ((49 15) 317)
     ((37 30) 316) ((37 41) 315) ((37 41) 314) ((37 41) 314) ((37 11) 313)
     ((36 43) 312) ((36 54) 310) ((36 54) 309) ((36 54) 309) ((36 11) 308)
     ((35 43) 307) ((35 54) 305) ((35 54) 304) ((35 54) 304) ((35 11) 303)
     ((32 52) 282) ((32 52) 279) ((32 57) 278) ((32 36) 275) ((32 36) 274)
     ((32 25) 271) ((32 4) 268) ((32 4) 267) ((31 22) 266) ((31 22) 265)
     ((31 22) 264) ((31 21) 263) ((23 2) 221) ((24 6) 216) ((24 6) 213)
     ((24 6) 208) ((24 6) 204) ((23 2) 201) ((23 2) 198) ((25 6) 191)
     ((25 6) 188) ((25 6) 183) ((25 6) 179) ((23 2) 176) ((23 2) 173)
     ((26 6) 166) ((26 6) 163) ((26 6) 158) ((26 6) 154) ((23 2) 151)
     ((23 2) 148) ((27 6) 142) ((27 6) 139) ((27 6) 134) ((27 6) 130)
     ((23 2) 123) ((23 2) 120) ((23 2) 111) ((17 2) 95) ((14 6) 94) ((15 6) 93)
     ((14 6) 92) ((15 6) 91) ((15 6) 90) ((15 6) 90) ((12 17) 89) ((10 16) 59)
     ((10 16) 54) ((10 16) 50) ((10 16) 45) ((10 16) 43) ((10 16) 42)
     ((10 16) 41) ((10 0) 30) ((265 9) 27) ((264 30) 22) ((264 30) 16)
     ((264 38) 15) ((274 9) 12) ((273 30) 7) ((273 30) 1) ((273 38) 0))
    |}];
  let file_map, lines = Mentasm.Asm.filter_file_direcs (asm |> String.split_lines) in
  let chunks =
    Mentasm.Asm.parse_lines file_map lines |> Mentasm.Asm.filter_chunks_file "list.ml"
  in
  let lines, map = Mentasm.Asm.lines_map_of_chunks chunks in
  printf "%s" (String.concat ~sep:"\n" lines);
  Out_channel.newline stdout;
  printf
    "%s"
    (Sexp.to_string_hum (Mentasm.Asm.sexp_of_pos_map (map |> Mentasm.Asm.sort_pos_map)));
  [%expect
    {|
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
    movq	(%rax), %rax
    movq	8(%rax), %rax
    movq	8(%rsp), %rbx
    movq	16(%rsp), %rdi
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
    movq	(%rax), %rax
    movq	8(%rax), %rax
    movq	8(%rsp), %rbx
    movq	16(%rsp), %rdi
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
    movq	8(%rax), %rbx
    movq	(%rax), %rax
    testb	$1, %bl
    je	.L243
    call	camlLqtree.sexp_of_t_485@PLT
    .L249:
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
    call	camlLqtree.sexp_of_t_485@PLT
    .L253:
    movq	%rax, 8(%rsp)
    movq	(%rsp), %rax
    movq	(%rax), %rax
    call	camlLqtree.sexp_of_t_485@PLT
    .L254:
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
    movq	8(%rax), %rsi
    movq	camlLqtree.sexp_of_t_485_closure@GOTPCREL(%rip), %rdi
    movl	$3, %ebx
    movq	%rdx, %rax
    call	camlStdlib__List.map_dps_509@PLT
    .L258:
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
    jmp	camlLqtree.iter_4713@PLT
    .cfi_endproc
    .type camlLqtree.populate_1388,@function
    .size camlLqtree.populate_1388,. - camlLqtree.populate_1388
    .text
    .align	16
    .globl	camlLqtree.clear_1415
    camlLqtree.clear_1415:
    (((83 15) 92) ((84 6) 94) ((85 4) 89) ((85 4) 88) ((85 8) 123) ((85 8) 110)
     ((86 15) 106) ((87 15) 111) ((88 6) 129) ((88 10) 113) ((88 14) 127)
     ((110 13) 162) ((110 13) 140) ((110 13) 68) ((110 13) 44) ((110 13) 24)
     ((110 13) 0) ((112 4) 65) ((112 4) 64) ((112 4) 21) ((112 4) 20))
    |}];
  let start, stop =
    Mentasm.Asm.sort_pos_map map |> Mentasm.Asm.find_pos (83, 16) |> Option.value ~default:(-1, -1)
  in
  printf "%d %d" start stop;
  [%expect {| 92 94 |}]
;;
