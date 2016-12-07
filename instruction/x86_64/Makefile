all:
	yasm -f elf64 -g dwarf2 -l push_pop.lst push_pop.asm
	ld push_pop.o -o push_pop

clean:
	rm -rf *.o
	rm -rf *.lst
	rm -rf push_pop
