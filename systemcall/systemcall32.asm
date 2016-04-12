	segment .data
hello:db "hello,world!",0x0a
	
	segment .text
	global _start
_start:
	mov eax,4	;syscall 4 is write
	mov ebx,1	;file descriptor(1 is stdout)
	lea ecx,[hello] ;string array to write
	mov rdx,14	;14 bytes
	int 0x80	;execute system call

_exit:
	mov eax,1	;exit syscall
	mov ebx,0	;return 0 is normal
	int 0x80	;execute system call

