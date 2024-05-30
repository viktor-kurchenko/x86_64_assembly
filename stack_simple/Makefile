compile:
	nasm -f elf64 -o stack_simple.o stack_simple.asm

link:
	ld -o stack_simple stack_simple.o

run: compile link
run:
	./stack_simple
