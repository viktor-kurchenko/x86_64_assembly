section .data
    msg db      "hello, world!"

section .text
    global _start
_start:
    mov     rax, 1   ; syscall number: https://github.com/torvalds/linux/blob/master/arch/x86/entry/syscalls/syscall_64.tbl
    mov     rdi, 1   ; first function param (input: 0, output: 1, error: 2)
    mov     rsi, msg ; second function param
    mov     rdx, 13  ; third function param
    syscall          ; call: size_t sys_write(unsigned int fd, const char * buf, size_t count);
    mov    rax, 60   ; syscall number
    mov    rdi, 0    ; error code param
    syscall          ; call: sys_exit
