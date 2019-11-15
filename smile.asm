    global start
    section .text
start:
    mov rax, 0x02000004
    mov rdi, 1
    mov rsi, smile
    mov rdx, 4 
    syscall
    mov rax, 0x02000001
    xor rdi, rdi
    syscall

    section .data
smile: db `\u263a`,10