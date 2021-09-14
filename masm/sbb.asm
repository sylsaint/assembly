assume cs:code

code segment
start:
    mov bx, 1000H 
    mov ax, 003EH
    sub bx, 2000H
    sbb ax, 0020H

    mov ax, 4c00h
    int 21h

code ends

end start