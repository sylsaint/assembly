    global _main 
    extern _printf

    section .text
_main:
    ;open file
    mov rax, 0x02000005     ; macos下打开文件的系统调用号
    lea rdi, [rel filename] ; 第一个参数
    mov rsi, 2              ; 第二个参数，表示读写模式
    syscall

    ; save file handler
    mov [rel handler], rax  ; 将文件handler保存到内存中
    lea rdi, [rel format]
    mov rsi, rax
    sub rsp, 8
    call _printf
    add rsp, 8

    ; write string
    mov rax, 0x02000004     ; 写文件调用号
    mov rdi, [rel handler]  ; 第一个参数，文件句柄号
    lea rsi, [rel text]     ; 第二个参数，字符串地址
    mov rdx, 9              ; 字符串长度
    syscall

    ; close file
    mov rax, 0x02000006     ; 关闭的系统调用号
    mov rdi, [rel handler]  ; 第一个参数，文件句柄号
    syscall

    ; finish the program
    mov rax, 0x02000001     ; 退出的系统调用号
    xor rdi, rdi            ; 第一个参数，返回数为0
    syscall

    section .data
text: db '孙永录'
filename: db 'name.txt', 0
format: db '%d', 10

    section .bss
handler: resw 1