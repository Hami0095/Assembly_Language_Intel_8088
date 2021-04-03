[org 0x0100]

jmp start

            ; x 
            ; x - 1
            ; x * x
num: db 5

start:

    mov al, [num]
    
    mov bl,  1
    cmp al, bl
    je exit
    
    mov dl, al  ; copy of al in dl :)
        
    l1:
        sub dx, 1      ; 4
        mul dl   ; al -> 5 * 4
        cmp dl, bl
        jne l1
    
    jmp exit     

exit:
    mov ax, 0x4c00
    int 0x21        
