    global _main
    extern _printf
    default rel
    
    section .text
_main:
    mov dx, 0x20
    xor rax, rax
    in rax, dx
    lea rdi, [format]
    mov rsi, rax

    sub rsp, 8
    call _printf
    add rsp, 8
    ret

    section .data
format: db '%s', 10