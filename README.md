# asm

# 常用命令

- gcc 

```
gcc -masm=intel -S add.c -o add-intel.s //汇编使用intel格式，默认是AT&T

cc -g -O0 simple_method_call.c   -o simple_method_call // gdb asm
```


- yasm
```
yasm -f elf64 -g dwarf2 -l exit.lst exit.asm //编译文件  

ld -o exit exit.o  //链接文件  
```

 
