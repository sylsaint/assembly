    global _dot_product
    section .text
_dot_product:
    movss xmm0, [rdi]
    mulss xmm0, [rsi]
    movss xmm1, [rdi+4]
    mulss xmm1, [rsi+4]
    movss xmm2, [rdi+8]
    mulss xmm2, [rsi+8]
    addss xmm0, xmm1
    addss xmm0, xmm2
    ret