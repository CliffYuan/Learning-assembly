all:
	nasm -f elf64 -o sum.o sum.asm
	ld -o sum sum.o
	nasm -f elf64 -o hello.o hello.asm
	ld -o hello hello.o
	yasm -f elf64 -o stack.o -l stack.lst  stack.asm
	ld -o stack stack.o
clean:
	rm -rf *.o
	rm -rf sum
	rm -rf hello    
	rm -rf stack
