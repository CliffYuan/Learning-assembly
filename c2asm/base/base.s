	.file	"base.c"
	.local	global_static_var_not_init
	.comm	global_static_var_not_init,4,4
	.data
	.align 4
	.type	global_static_var_init, @object
	.size	global_static_var_init, 4
global_static_var_init:
	.long	8
	.local	global_static_var_init_0
	.comm	global_static_var_init_0,4,4
	.comm	global_var_not_init,4,4
	.globl	global_var_init
	.align 4
	.type	global_var_init, @object
	.size	global_var_init, 4
global_var_init:
	.long	88
	.globl	global_var_init_0
	.bss
	.align 4
	.type	global_var_init_0, @object
	.size	global_var_init_0, 4
global_var_init_0:
	.zero	4
	.globl	global_const_var
	.section	.rodata
	.align 4
	.type	global_const_var, @object
	.size	global_const_var, 4
global_const_var:
	.long	99
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$66, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$999, -12(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.local	static_var_init_0.1843
	.comm	static_var_init_0.1843,4,4
	.data
	.align 4
	.type	static_var_init.1842, @object
	.size	static_var_init.1842, 4
static_var_init.1842:
	.long	6
	.local	static_var_not_init.1841
	.comm	static_var_not_init.1841,4,4
	.ident	"GCC: (GNU) 5.1.1 20150618 (Red Hat 5.1.1-4)"
	.section	.note.GNU-stack,"",@progbits
