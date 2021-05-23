all: clear
	nasm -f elf64 hello.asm -o hello.o
	ld hello.o -o hello

clear:
	@rm -f hello.o
	@rm -f hello
	