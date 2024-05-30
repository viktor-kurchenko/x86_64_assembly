compile:
	nasm -f elf64 -o loop_print.o loop_print.asm

link:
	ld -o loop_print loop_print.o

run: compile link
run:
	./loop_print
