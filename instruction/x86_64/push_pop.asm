;;
;;

global _start

section .text

_start:
    mov rax , 88
    mov rbx , 99
    push rax
    push rbx

    mov r8,[rsp+8]
    mov r9,[rsp]

    pop rcx
    pop rdx

    ;;syscall number
    mov rax,60
    mov rdi,0
    syscall

