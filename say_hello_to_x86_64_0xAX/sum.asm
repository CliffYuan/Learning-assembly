;;Say hello to x86_64 Assembly [part 2]
;;https://github.com/0xAX/asm

;;

section .data
    num1: equ 100
    num2: equ 50
    msg: db "Sum is correct", 10


section .text
    global _start

_start:
    mov rax,100
    mov rbx,50
    add rax,rbx
    cmp rax,150
    jne _exit
    jmp _rightSum

_rightSum:
    mov rax,1
    mov rdi,1
    mov rsi,msg
    mov rdx, 15
    syscall
    jmp _exit

_exit:
    mov rax,60
    mov rdi,0
    syscall

