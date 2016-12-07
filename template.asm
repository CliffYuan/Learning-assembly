;; program: exit
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
	mov eax,1  ;exit syscall
	mov ebx,5  ;the status value to return 
	int 0x80   ;execute system call

