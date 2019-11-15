    global _main
    extern _printf
    default rel

    section .text
_main:
  xor rdx, rdx
  mov rax, 1
  mov rcx, 0
  div rcx
  lea rdi, [format]
  mov rsi, rax
  sub rsp, 8
  call _printf
  add rsp, 8
  ret

    section .data
format: db '%x', 10