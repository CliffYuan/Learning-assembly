all:
	yasm -f elf64 -g dwarf2 -l push_pop.lst push_pop.asm
	yasm -f elf64 -g dwarf2 -l inst_dollar.lst inst_dollar.asm
	ld push_pop.o -o push_pop
	ld inst_dollar.o -o inst_dollar
clean:
	rm -rf *.o
	rm -rf *.lst
	rm -rf push_pop
	rm -rf inst_dollar
