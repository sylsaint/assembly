    global _euclid_distance
    section .text
_euclid_distance:
    movss xmm0, [rdi]
    subss xmm0, [rsi]
    mulss xmm0, xmm0
    movss xmm1, [rdi+4]
    subss xmm1, [rsi+4]
    mulss xmm1, xmm1
    movss xmm2, [rdi+8]
    subss xmm2, [rsi+8] 
    mulss xmm2, xmm2
    addss xmm0, xmm1
    addss xmm0, xmm2
    sqrtss xmm0, xmm0
    ret