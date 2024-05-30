section .data
    count: equ 10
    msg: db "."

section .text
    global _start

_start:
    mov rbx, 1
    .loop:
        mov     rax, 1
        mov     rdi, 1
        mov     rsi, msg
        mov     rdx, 1
        syscall

        add rbx, 1
        cmp rbx, count
        jne .loop

    mov rax, 60
    mov rdi, 0
    syscall
