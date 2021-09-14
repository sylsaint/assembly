assume cs:code ds:stack

stack segment
dw 1, 1, 1, 1 ; 通过dw进行数据定义，前面地址高，后面地址低
stack ends

code segment
    mov ax, 4c00h
    int 21h
start:
    mov ax, stack
    mov ss, ax
    mov sp, 4
    mov cx, 0
    call far ptr s
s1:
    mov cx, 1
    inc ax
s:
    pop ax
    add ax, ax
    pop bx
    add ax, bx
    jcxz s1
go:
    ret
code ends

end start