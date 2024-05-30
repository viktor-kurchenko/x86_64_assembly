global _start

section .text
    first_match  db "match 1!"
    second_match db "match 2!"

_start:
        mov rax, 1
        push rax
        mov rax, 2
        push rax

        ; read first stack frame and check
        mov rax, [rsp]
        cmp rax, 2
        jne .exit

        mov     rax, 1
        mov     rdi, 1
        mov     rsi, first_match
        mov     rdx, 8
        syscall

        ; read second stack frame and check
        mov rax, [rsp + 8]
        cmp rax, 1
        jne .exit

        mov     rax, 1
        mov     rdi, 1
        mov     rsi, second_match
        mov     rdx, 8
        syscall

.exit:
        mov rax, 60
        mov rdi, 0
        syscall