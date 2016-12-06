;Say hello to x86_64 Assembly [part 1]
;https://github.com/0xAX/asm

;nasm -f elf64 -o hello.o hello.asm
;ld -o hello hello.o

section .data
    msg db "hello world asm"

section .text
    global _start
_start:
    mov rax , 1
    mov rdi , 1
    mov rsi , msg
    mov rdx , 15
    syscall
    mov rax , 60
    mov rdi , 0
    syscall