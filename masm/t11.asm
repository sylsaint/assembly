assume cs:code ds:data

data segment
db "Beginner's All-purpose Symbolic Instruction Code", 0 
data ends

code segment
start:
    mov ax, data
    mov ds, ax
    mov di, 0
    call toupper 
    mov di, 0
    mov si, 140H
    call putchar

    mov ax, 4c00h
    int 21h

toupper:
s:
    mov cl, [di]
    jcxz end0
    cmp cl, 41H
    jb j0
    cmp cl, 5AH
    jna doupper
    cmp cl, 61H 
    jb j0
    cmp cl, 7AH 
    ja j0
doupper:
    and cl, 11011111b
    mov byte ptr [di], cl
j0:
    inc di
    jmp s
end0:
    ret

putchar:
    mov ch, 0
s1:
    mov cl, [di]
    jcxz end1
    mov ax, 0B800H
    mov es, ax
    mov byte ptr es:[si], cl
    mov byte ptr es:[si+1], 02H
    inc di
    add si, 2
    jmp s1

end1:
    ret


code ends

end start