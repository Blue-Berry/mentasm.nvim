open Core

let asm =
  {|
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
  |}
;;

let%expect_test "asm_filter_file_direcs" =
  let file_map, lines = Mentasm.Asm.filter_file_direcs (asm |> String.split_lines) in
  printf "%s" (Hashtbl.sexp_of_t Int.sexp_of_t String.sexp_of_t file_map |> Sexp.to_string);
  [%expect {| ((1 list.ml)(2 lqtree/lqtree.ml)) |}];
  printf "%s" (String.concat ~sep:"\n" lines);
  [%expect
    {|
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
    |}]
;;

let%expect_test "asm_parse_lines" =
  let file_map, lines = Mentasm.Asm.filter_file_direcs (asm |> String.split_lines) in
  let chunks = Mentasm.Asm.parse_lines file_map lines in
  printf "%s" (Sexp.to_string_hum (sexp_of_list Mentasm.Asm.sexp_of_chunk chunks));
  [%expect {|
    (((file "") (line_start 0) (line_end 110) (col_start ()) (col_end (13))
      (lines
       ("" .L103: "\tjmp\t.L102" "\t.cfi_endproc"
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
     ((file lqtree/lqtree.ml) (line_start 273) (line_end 277) (col_start (30))
      (col_end ())
      (lines
       ("\tsubq\t$24, %r15" "\tcmpq\t(%r14), %r15" "\tjb\t.L108" .L110: "  "))))
    |}]
;;
