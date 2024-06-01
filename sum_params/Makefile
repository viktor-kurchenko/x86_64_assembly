compile:
	nasm -f elf64 -o sum_params.o sum_params.asm

link:
	ld -o sum_params sum_params.o

run: compile link
run:
	./sum_params
