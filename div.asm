; This is an OSX console program that writes a little triangle of asterisks to standard
; output. Runs on macOS only.
;
;     nasm -fmacho64 triangle.asm && gcc hola.o && ./a.out
; ----------------------------------------------------------------------------------------

          global    start
          section   .text
start:
          mov       rdx, message             ; rdx holds address of next byte to write
          mov       rax, copy
          mov       rcx, 13
          mov       rdi, 0
          mov       rsi, 12
s:
          mov rbx, [rdx + rsi]
          mov [rax + rdi], rbx 
          add rdi, 1
          sub rsi, 1
          loop s

          mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, copy             ; address of string to output
          mov       rdx, 13
          syscall                           ; invoke operating system to do the write
          mov       rax, 0x02000001         ; system call for exit
          xor       rdi, rdi               ; exit code 0
          syscall                           ; invoke operating system to exit
		  section .data
message: db "Hello, World", 10
		  section .bss
copy:  resb 13

