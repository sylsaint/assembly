    global _horner_polynomial
    section .text
_horner_polynomial:
    movss xmm1, xmm0
    movss xmm0, [rdi+rsi*4]
    cmp rsi, 0
    jz done
accumulate:
    sub rsi, 1
    mulss xmm0, xmm1 
    addss xmm0, [rdi+rsi*4]
    jnz accumulate
done:
    ret