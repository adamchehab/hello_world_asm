all: clear
	nasm -f elf64 hello.asm
	ld hello.o -o hello
	./hello

clear:
	@rm -f hello.o
	@rm -f hello
	