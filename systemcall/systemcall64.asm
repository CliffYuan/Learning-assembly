; syscall params: rdi,rsi,rdx,r10,r8,r9

	segment .data

hello: db "Hello,world!",0x0a
	segment .text
	global _start
_start:
	mov rax,1	;syscall 1 is write
	mov rdi,1	;arg1: fd=stdout
	lea rsi,[hello] ;arg2:
	mov rdx,14	;arg3:write 14 bytes
	syscall
_exit:
	mov rax,60	;exit syscall
	mov rdi,0	;return value is 0
	syscall

