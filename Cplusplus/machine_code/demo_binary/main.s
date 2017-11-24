	.file	"main.cpp"
	.section	.text._ZNSt11char_traitsIcE6assignERcRKc,"axG",@progbits,_ZNSt11char_traitsIcE6assignERcRKc,comdat
	.weak	_ZNSt11char_traitsIcE6assignERcRKc
	.type	_ZNSt11char_traitsIcE6assignERcRKc, @function
_ZNSt11char_traitsIcE6assignERcRKc:
.LFB234:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE234:
	.size	_ZNSt11char_traitsIcE6assignERcRKc, .-_ZNSt11char_traitsIcE6assignERcRKc
	.section	.text._ZNKSt8ios_base6getlocEv,"axG",@progbits,_ZNKSt8ios_base6getlocEv,comdat
	.align 2
	.weak	_ZNKSt8ios_base6getlocEv
	.type	_ZNKSt8ios_base6getlocEv, @function
_ZNKSt8ios_base6getlocEv:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	208(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6localeC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	_ZNKSt8ios_base6getlocEv, .-_ZNKSt8ios_base6getlocEv
	.section	.text._ZNKSt5ctypeIcE5widenEc,"axG",@progbits,_ZNKSt5ctypeIcE5widenEc,comdat
	.align 2
	.weak	_ZNKSt5ctypeIcE5widenEc
	.type	_ZNKSt5ctypeIcE5widenEc, @function
_ZNKSt5ctypeIcE5widenEc:
.LFB792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %eax
	testb	%al, %al
	je	.L5
	movzbl	-12(%rbp), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	cltq
	movzbl	57(%rdx,%rax), %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movsbl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rdx, %rdi
	call	*%rax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE792:
	.size	_ZNKSt5ctypeIcE5widenEc, .-_ZNKSt5ctypeIcE5widenEc
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNSt12_Base_bitsetILm1EEC2Em,"axG",@progbits,_ZNSt12_Base_bitsetILm1EEC5Em,comdat
	.align 2
	.weak	_ZNSt12_Base_bitsetILm1EEC2Em
	.type	_ZNSt12_Base_bitsetILm1EEC2Em, @function
_ZNSt12_Base_bitsetILm1EEC2Em:
.LFB1050:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1050:
	.size	_ZNSt12_Base_bitsetILm1EEC2Em, .-_ZNSt12_Base_bitsetILm1EEC2Em
	.weak	_ZNSt12_Base_bitsetILm1EEC1Em
	.set	_ZNSt12_Base_bitsetILm1EEC1Em,_ZNSt12_Base_bitsetILm1EEC2Em
	.section	.text._ZNSt12_Base_bitsetILm1EE11_S_whichbitEm,"axG",@progbits,_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm,comdat
	.weak	_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm
	.type	_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm, @function
_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm:
.LFB1054:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$63, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1054:
	.size	_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm, .-_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm
	.section	.text._ZNSt12_Base_bitsetILm1EE10_S_maskbitEm,"axG",@progbits,_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm,comdat
	.weak	_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm
	.type	_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm, @function
_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm:
.LFB1055:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1055:
	.size	_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm, .-_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm
	.section	.text._ZNKSt12_Base_bitsetILm1EE10_M_getwordEm,"axG",@progbits,_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm,comdat
	.align 2
	.weak	_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm
	.type	_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm, @function
_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm:
.LFB1057:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1057:
	.size	_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm, .-_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm
	.section	.text._ZNSt12_Base_bitsetILm1EE9_M_hiwordEv,"axG",@progbits,_ZNSt12_Base_bitsetILm1EE9_M_hiwordEv,comdat
	.align 2
	.weak	_ZNSt12_Base_bitsetILm1EE9_M_hiwordEv
	.type	_ZNSt12_Base_bitsetILm1EE9_M_hiwordEv, @function
_ZNSt12_Base_bitsetILm1EE9_M_hiwordEv:
.LFB1058:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1058:
	.size	_ZNSt12_Base_bitsetILm1EE9_M_hiwordEv, .-_ZNSt12_Base_bitsetILm1EE9_M_hiwordEv
	.section	.rodata
	.align 8
.LC0:
	.string	"Representations of the number 97 \n"
.LC1:
	.string	"\n char: \n"
.LC2:
	.string	"\n"
.LC3:
	.string	"\n 8-bit integer: \n"
.LC4:
	.string	"\n 32-bit: \n"
.LC6:
	.string	"\n 32-bit float 97.0:  "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$.LC0, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-32(%rbp), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	_ZNSt6bitsetILm8EEC1Em
	movl	$.LC1, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-32(%rbp), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	_ZNSt6bitsetILm8EEC1Em
	movl	$.LC3, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-32(%rbp), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	_ZNSt6bitsetILm32EEC1Em
	movl	$.LC4, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -36(%rbp)
.L18:
	movl	-36(%rbp), %eax
	cltq
	cmpq	$4, %rax
	jnb	.L17
	movl	-36(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	movsbq	%al, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6bitsetILm8EEC1Em
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	addl	$1, -36(%rbp)
	jmp	.L18
.L17:
	movl	$.LC2, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L20
	call	__stack_chk_fail
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1170:
	.size	main, .-main
	.section	.text._ZNSt6bitsetILm8EEC2Em,"axG",@progbits,_ZNSt6bitsetILm8EEC5Em,comdat
	.align 2
	.weak	_ZNSt6bitsetILm8EEC2Em
	.type	_ZNSt6bitsetILm8EEC2Em, @function
_ZNSt6bitsetILm8EEC2Em:
.LFB1173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Base_bitsetILm1EEC2Em
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6bitsetILm8EE14_M_do_sanitizeEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1173:
	.size	_ZNSt6bitsetILm8EEC2Em, .-_ZNSt6bitsetILm8EEC2Em
	.weak	_ZNSt6bitsetILm8EEC1Em
	.set	_ZNSt6bitsetILm8EEC1Em,_ZNSt6bitsetILm8EEC2Em
	.section	.text._ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,"axG",@progbits,_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,comdat
	.weak	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	.type	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE, @function
_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE:
.LFB1175:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1175
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
.LEHE0:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt8ios_base6getlocEv
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale
.LEHE1:
	movq	%rax, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	movq	-72(%rbp), %rax
	movl	$49, %esi
	movq	%rax, %rdi
.LEHB2:
	call	_ZNKSt5ctypeIcE5widenEc
	movsbl	%al, %ebx
	movq	-72(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	_ZNKSt5ctypeIcE5widenEc
	movsbl	%al, %edx
	leaq	-64(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	%ebx, %ecx
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
.LEHE2:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LEHE3:
	movq	%rbx, %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L26
	jmp	.L29
.L27:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	jmp	.L25
.L28:
	movq	%rax, %rbx
.L25:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L29:
	call	__stack_chk_fail
.L26:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1175:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,"aG",@progbits,_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,comdat
.LLSDA1175:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1175-.LLSDACSB1175
.LLSDACSB1175:
	.uleb128 .LEHB0-.LFB1175
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1175
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L27-.LFB1175
	.uleb128 0
	.uleb128 .LEHB2-.LFB1175
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L28-.LFB1175
	.uleb128 0
	.uleb128 .LEHB3-.LFB1175
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1175
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1175:
	.section	.text._ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,"axG",@progbits,_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,comdat
	.size	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE, .-_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	.section	.text._ZNSt6bitsetILm32EEC2Em,"axG",@progbits,_ZNSt6bitsetILm32EEC5Em,comdat
	.align 2
	.weak	_ZNSt6bitsetILm32EEC2Em
	.type	_ZNSt6bitsetILm32EEC2Em, @function
_ZNSt6bitsetILm32EEC2Em:
.LFB1177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Base_bitsetILm1EEC2Em
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6bitsetILm32EE14_M_do_sanitizeEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1177:
	.size	_ZNSt6bitsetILm32EEC2Em, .-_ZNSt6bitsetILm32EEC2Em
	.weak	_ZNSt6bitsetILm32EEC1Em
	.set	_ZNSt6bitsetILm32EEC1Em,_ZNSt6bitsetILm32EEC2Em
	.section	.text._ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,"axG",@progbits,_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,comdat
	.weak	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	.type	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE, @function
_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE:
.LFB1179:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1179
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
.LEHE5:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt8ios_base6getlocEv
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
.LEHB6:
	call	_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale
.LEHE6:
	movq	%rax, -72(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	movq	-72(%rbp), %rax
	movl	$49, %esi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNKSt5ctypeIcE5widenEc
	movsbl	%al, %ebx
	movq	-72(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	_ZNKSt5ctypeIcE5widenEc
	movsbl	%al, %edx
	leaq	-64(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	%ebx, %ecx
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
.LEHE7:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LEHE8:
	movq	%rbx, %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L35
	jmp	.L38
.L36:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev
	jmp	.L34
.L37:
	movq	%rax, %rbx
.L34:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB9:
	call	_Unwind_Resume
.LEHE9:
.L38:
	call	__stack_chk_fail
.L35:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1179:
	.section	.gcc_except_table._ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,"aG",@progbits,_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,comdat
.LLSDA1179:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1179-.LLSDACSB1179
.LLSDACSB1179:
	.uleb128 .LEHB5-.LFB1179
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB1179
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L36-.LFB1179
	.uleb128 0
	.uleb128 .LEHB7-.LFB1179
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L37-.LFB1179
	.uleb128 0
	.uleb128 .LEHB8-.LFB1179
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB1179
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE1179:
	.section	.text._ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,"axG",@progbits,_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,comdat
	.size	_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE, .-_ZStlsIcSt11char_traitsIcELm32EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	.section	.text._ZNSt6bitsetILm8EE14_M_do_sanitizeEv,"axG",@progbits,_ZNSt6bitsetILm8EE14_M_do_sanitizeEv,comdat
	.align 2
	.weak	_ZNSt6bitsetILm8EE14_M_do_sanitizeEv
	.type	_ZNSt6bitsetILm8EE14_M_do_sanitizeEv, @function
_ZNSt6bitsetILm8EE14_M_do_sanitizeEv:
.LFB1181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Base_bitsetILm1EE9_M_hiwordEv
	movq	%rax, %rdi
	call	_ZNSt9_SanitizeILm8EE14_S_do_sanitizeERm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1181:
	.size	_ZNSt6bitsetILm8EE14_M_do_sanitizeEv, .-_ZNSt6bitsetILm8EE14_M_do_sanitizeEv
	.section	.text._ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_,"axG",@progbits,_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_,comdat
	.align 2
	.weak	_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_
	.type	_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_, @function
_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_:
.LFB1191:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%ecx, %eax
	movb	%dl, -36(%rbp)
	movb	%al, -40(%rbp)
	movsbl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc
	movq	$8, -8(%rbp)
.L43:
	cmpq	$0, -8(%rbp)
	je	.L44
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE15_Unchecked_testEm
	testb	%al, %al
	je	.L42
	movl	$8, %eax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt11char_traitsIcE6assignERcRKc
.L42:
	subq	$1, -8(%rbp)
	jmp	.L43
.L44:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1191:
	.size	_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_, .-_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_
	.section	.text._ZNSt6bitsetILm32EE14_M_do_sanitizeEv,"axG",@progbits,_ZNSt6bitsetILm32EE14_M_do_sanitizeEv,comdat
	.align 2
	.weak	_ZNSt6bitsetILm32EE14_M_do_sanitizeEv
	.type	_ZNSt6bitsetILm32EE14_M_do_sanitizeEv, @function
_ZNSt6bitsetILm32EE14_M_do_sanitizeEv:
.LFB1193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Base_bitsetILm1EE9_M_hiwordEv
	movq	%rax, %rdi
	call	_ZNSt9_SanitizeILm32EE14_S_do_sanitizeERm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1193:
	.size	_ZNSt6bitsetILm32EE14_M_do_sanitizeEv, .-_ZNSt6bitsetILm32EE14_M_do_sanitizeEv
	.section	.text._ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_,"axG",@progbits,_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_,comdat
	.align 2
	.weak	_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_
	.type	_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_, @function
_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_:
.LFB1194:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%ecx, %eax
	movb	%dl, -36(%rbp)
	movb	%al, -40(%rbp)
	movsbl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc
	movq	$32, -8(%rbp)
.L49:
	cmpq	$0, -8(%rbp)
	je	.L50
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm32EE15_Unchecked_testEm
	testb	%al, %al
	je	.L48
	movl	$32, %eax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt11char_traitsIcE6assignERcRKc
.L48:
	subq	$1, -8(%rbp)
	jmp	.L49
.L50:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1194:
	.size	_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_, .-_ZNKSt6bitsetILm32EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_
	.section	.text._ZNSt9_SanitizeILm8EE14_S_do_sanitizeERm,"axG",@progbits,_ZNSt9_SanitizeILm8EE14_S_do_sanitizeERm,comdat
	.weak	_ZNSt9_SanitizeILm8EE14_S_do_sanitizeERm
	.type	_ZNSt9_SanitizeILm8EE14_S_do_sanitizeERm, @function
_ZNSt9_SanitizeILm8EE14_S_do_sanitizeERm:
.LFB1196:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1196:
	.size	_ZNSt9_SanitizeILm8EE14_S_do_sanitizeERm, .-_ZNSt9_SanitizeILm8EE14_S_do_sanitizeERm
	.section	.text._ZNKSt6bitsetILm8EE15_Unchecked_testEm,"axG",@progbits,_ZNKSt6bitsetILm8EE15_Unchecked_testEm,comdat
	.align 2
	.weak	_ZNKSt6bitsetILm8EE15_Unchecked_testEm
	.type	_ZNKSt6bitsetILm8EE15_Unchecked_testEm, @function
_ZNKSt6bitsetILm8EE15_Unchecked_testEm:
.LFB1210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm
	andq	%rbx, %rax
	testq	%rax, %rax
	setne	%al
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1210:
	.size	_ZNKSt6bitsetILm8EE15_Unchecked_testEm, .-_ZNKSt6bitsetILm8EE15_Unchecked_testEm
	.section	.text._ZNSt9_SanitizeILm32EE14_S_do_sanitizeERm,"axG",@progbits,_ZNSt9_SanitizeILm32EE14_S_do_sanitizeERm,comdat
	.weak	_ZNSt9_SanitizeILm32EE14_S_do_sanitizeERm
	.type	_ZNSt9_SanitizeILm32EE14_S_do_sanitizeERm, @function
_ZNSt9_SanitizeILm32EE14_S_do_sanitizeERm:
.LFB1214:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1214:
	.size	_ZNSt9_SanitizeILm32EE14_S_do_sanitizeERm, .-_ZNSt9_SanitizeILm32EE14_S_do_sanitizeERm
	.section	.text._ZNKSt6bitsetILm32EE15_Unchecked_testEm,"axG",@progbits,_ZNKSt6bitsetILm32EE15_Unchecked_testEm,comdat
	.align 2
	.weak	_ZNKSt6bitsetILm32EE15_Unchecked_testEm
	.type	_ZNKSt6bitsetILm32EE15_Unchecked_testEm, @function
_ZNKSt6bitsetILm32EE15_Unchecked_testEm:
.LFB1215:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm
	andq	%rbx, %rax
	testq	%rax, %rax
	setne	%al
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1215:
	.size	_ZNKSt6bitsetILm32EE15_Unchecked_testEm, .-_ZNKSt6bitsetILm32EE15_Unchecked_testEm
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1236:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L59
	cmpl	$65535, -8(%rbp)
	jne	.L59
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L59:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1236:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB1237:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1237:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section	.rodata
	.align 4
.LC5:
	.long	1120010240
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
