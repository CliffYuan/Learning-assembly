;; program: exit
;; 
;; executes the exit system call
;;
;; no input
;;
;; output: exit status 
;;
segment .data
foo dq 0x65
segment .text
global _start

_start:
	nop 
	mov rax,foo
	mov rax,[foo]
	lea rax,[foo] 
	lea rax,[foo+rax]
	lea rax,[rax+rax*2]
_exit:
	mov eax,1  ;exit syscall
	mov ebx,0  ;the status value to return 
	int 0x80   ;execute system call

