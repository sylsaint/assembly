assume cs:code ds:stack

stack segment
dw 1,2,3,4,5,6,7,8
dd 0,0,0,0,0,0,0,0 
stack ends

code segment
start:
    mov ax, stack
    mov ds, ax
    mov si, 0
    mov di, 16
    mov cx, 8
s:
    mov bx, [si]
    call cube
    mov [di], ax
    mov [di+2], dx
    add si, 2
    add di, 4
    loop s

    mov cx, 8
    mov ax, 0
    mov dx, 0
    mov di, 16
s1:
    add ax, [di]
    add dx, [di+2]
    add di, 4
    loop s1

    mov ax, 4c00h
    int 21h

cube:
    mov ax, bx 
    mul bx
    mul bx
    ret

code ends

end start