; 2*3456^2

assume cs:code

code segment

  start: mov ax 0d80h
         int 7ch
		 add ax, ax
		 adc dx, dx
		 mov ax, 4c00h
		 int 21h

code ends

end start
