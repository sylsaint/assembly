    global _main
    extern _printf

    section .text
_main:
    mov rbx, 1073741824
    mov r12, 003fh
print:
    lea rdi, [rel format]
    mov rsi, rbx
    mov rdx, 63 
    sub rdx, r12
    mov rcx, rdx
    shr rsi, cl 
    sub rsp, 8
    call _printf
    add rsp, 8
    dec r12
    jnz print
    ret

    section .data
format: db 'number: %d after shift %d times', 10, 0