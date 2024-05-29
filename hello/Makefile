compile:
	nasm -f elf64 -o hello.o hello.asm

link:
	ld -o hello hello.o

run: compile link
run:
	./hello