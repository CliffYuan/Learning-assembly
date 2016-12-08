;Say hello to x86_64 Assembly [part 3]
;https://github.com/0xAX/asm
;
;计算两个参数的和值

section .data
    SYS_WRITE equ 1
    STD_IN    equ 1
    SYS_EXIT  equ 60
    EXIT_CODE equ 0

    NEW_LINE    db 0xa
    WORING_ARGS db "Must be two command line argument",0xa 

section .text
    global _start

_start:
    ;; get args count to rcx
    pop rcx    

    ;;
    ;; check args count
    cmp rcx,3
    jne argsError

    ;; sum args
    add rsp,8

    pop rsi
    call str_to_int
    mov r10, rax

    pop rsi
    call str_to_int
    mov r11,rax
    add r10,r11

    ;; conver to string
    mov rax,r10
    xor r12,r12
    jmp int_to_str

;; conver int to string
int_to_str:
    mov rdx,0
    mov rbx,10
    ;; rax=rax/10
    div rbx
    add rdx,48
    add rdx,0x0
    push rdx

    inc r12
    cmp rax,0x0
    jne int_to_str
    jmp print


str_to_int:
    xor rax,rax
    mov rcx,10
next:
    cmp [rsi],byte 0
    je return_str
    mov bl,[rsi]
    sub bl,48
    mul rcx
    add rax,rbx
    inc rsi
    jmp next


return_str:
    ret    


;; 

print:
    mov rax,1
    mul r12
    mov r12,8
    mul r12
    mov rdx,rax

    mov rax,SYS_WRITE
    mov rdi,STD_IN
    mov rsi,rsp
    syscall

    jmp printNewline

printNewline:
    mov rax,SYS_WRITE
    mov rdi,STD_IN
    mov rsi,NEW_LINE
    mov rdx,1
    syscall
    jmp exit    

;; prints args error
;;
argsError:
    mov rax,SYS_WRITE
    mov rdi,STD_IN
    mov rsi,WORING_ARGS
    mov rdx,34
    syscall
    jmp exit


;;
;; exit from program
exit:
    mov rax,SYS_EXIT
    mov rdi,EXIT_CODE
    syscall
    


