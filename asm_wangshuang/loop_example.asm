;; program: 2~11
;; 
;; executes the exit system call
;;
;; no input
;;
;; output: exit status 
;;

segment .text
global _start

_start:
	mov eax,2
	mov ecx,11
s:	add eax,eax
	loop s

	mov eax,1  ;exit syscall
	mov ebx,eax  ;the status value to return 
	int 0x80   ;execute system call

