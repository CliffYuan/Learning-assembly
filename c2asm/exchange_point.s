	.file	"exchange_point.c"
	.intel_syntax noprefix
	.text
	.globl	exchange
	.type	exchange, @function
exchange:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	DWORD PTR [rbp-28], esi
	mov	rax, QWORD PTR [rbp-24]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rbp-4], eax
	mov	rax, QWORD PTR [rbp-24]
	mov	edx, DWORD PTR [rbp-28]
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR [rbp-4]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	exchange, .-exchange
	.ident	"GCC: (GNU) 5.1.1 20150618 (Red Hat 5.1.1-4)"
	.section	.note.GNU-stack,"",@progbits
