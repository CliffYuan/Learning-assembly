global _start
section .data
ddd equ 2 
kk db  1


section .text

_nothing:
	nop
	nop
	mov rax,0x456

_start:
    nop
    nop
    mov rax,$
    nop
    mov rbx,kk
    nop
    mov rax,$$
    mov rax,$
    ;;syscall number
    mov rax,60
    mov rdi,0
    syscall
