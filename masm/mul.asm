assume cs:code ds:stack

stack segment
dw 8 dup (2) 
dw 8 dup (2) 
stack ends

code segment
start:
    mov ax, stack
    mov ds, ax
    mov al, 10
    mov bl, 20
    mul bl
    mov ax, 100
    mov bx, 1000
    mul bx
    mov ax, 2
    mov bx, 1
    sub bx, ax
    adc ax, 1

    mov ax, 1EH
    mov bx, 0F000H
    add bx, 1000H
    adc ax, 20H

    mov ax, stack
    mov ds, ax
    mov si, 0
    mov di, 16
    call add128

    mov ax, 4c00h
    int 21h

add128:
    pushf
    push ax
    push cx
    mov ax, 0
    add ax, 0
    mov cx, 8
s:
    mov ax, ds:[si] 
    adc ax, ds:[di]
    mov ds:[si], ax
    add si, 2
    add di, 2
    loop s
    pop cx
    pop ax
    popf
    ret

code ends

end start