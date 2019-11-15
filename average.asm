; -----------------------------------------------------------------------------
; 64-bit program that treats all its command line arguments as integers and
; displays their average as a floating point number.  This program uses a data
; section to store intermediate results, not that it has to, but only to
; illustrate how data sections are used.
; -----------------------------------------------------------------------------

    global _main
    extern _atoi
    extern _printf
    default rel

    section .text
_main:
    dec rdi
    jz nothingToAverage
    mov [count], rdi
accumulate:
    push rdi
    push rsi
    mov rdi, [rsi+rdi*8]
    call _atoi
    pop rsi
    pop rdi
    add [sum], rax
    dec rdi
    jnz accumulate
average:
    cvtsi2sd xmm0, [sum]
    cvtsi2sd xmm1, [count]
    divsd xmm0, xmm1
    mov rdi, format
    mov rax, 1
    sub rsp, 8
    call _printf
    add rsp, 8
    ret

nothingToAverage:
    mov rdi, error
    xor rax, rax
    call _printf
    ret

    section .data
count: dq 0
sum: dq 0
format: db "%q", 10, 0
error: db "There are no command line arguments to average", 10, 0