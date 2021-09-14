assume cs:code ds:stack ds:callee

stack segment
dw 8
db 'abcdefgh' 
stack ends

callee segment
dw 16 dup (0)
callee ends

code segment
start:
    mov ax, stack
    call capitalize 

    mov ax, 4c00h
    int 21h


capitalize:
    push dx ; 暂存要使用的寄存器
    push di
    mov dx, ss ; 保存当前栈信息到寄存器中
    mov di, sp
    mov ss, ax 
    mov bx, 0
    mov si, ss:[bx] 
    mov ax, si
    mov cx, 2
    div cl
    mov cx, ax
    mov sp, 2
inner:
    pop ax
    and al, 11011111b 
    and ah, 11011111b 
    loop inner
    mov ss, dx ; 恢复寄存器中的栈信息
    mov sp, di
    pop di     ; 恢复寄存器信息
    pop dx
    ret

code ends

end start