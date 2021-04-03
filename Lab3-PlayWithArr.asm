                  ; Task 2 :

[org 0x0100]

jmp start 

my_array: dw 10,34,6,67,24,656,75,59,34
array_len: dw 9

              ;     add 0 ,1 ,2, 3 ,4 ,5 ,6, 7, 8, 9 in my_array
              
;my_array: dw 10,35,8,70,28,661,81,66,42

start:
    mov si, 1
    mov ax, 0
    l1:
        mov ax,word [my_array + si]
        add ax, si
        mov [my_array + si], ax
        inc si
        cmp si, [array_len]
        jbe l1
    jmp exit

exit:
    mov ax, 0x4c00
int 0x21        
