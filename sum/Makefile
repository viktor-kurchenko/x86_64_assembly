compile:
	nasm -f elf64 -o sum.o sum.asm

link:
	ld -o sum sum.o

run: compile link
run:
	./sum