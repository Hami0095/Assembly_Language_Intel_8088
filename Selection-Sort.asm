; Selection Sorting in assmebly : 

[org 0x0100]

jmp start

arr: db 5, 6, 10, 2, 3
len: db 5
min: db 0
   

start:
    
    mov si, 0
    mov di, 0

    mov bx, arr ;  bx has the base address of arr
    mov ax, [bx]   ; movin first element of array in Min
    mov ah, 0
    mov [min], ax
    mov ax, [min]
            
    OuterLoop:
        InnerLoop:
            ; Main yahaan di use kroongaa ... ok dude u can :0
            
            ; compare krna ha min ko with arr[di]
            cmp al, [arr + di]
            ja swap ; if min is greater than any element in arr[di], then unko swap krdoo
            
                    ; else just inc di
            inc di
                    ; Haan check krloo k kahiien di, len k baraber tw nai hogya?? -- To break the loop
            ; to break the loop : 
            mov cx, di
            cmp cl, [len]
            jle InnerLoop
            
        ; after innerLoop breaks;
        mov di, 0
        inc si
        cmp si, [len - 1]
        jne InnerLoop

    jmp exit     
    
    swap:
        mov dl, [arr + di]
        mov [arr+ di], al
        mov al, dl
        mov dx, 0
        inc di
    jmp InnerLoop

exit:

    mov ax, 0x4c00

int 0x21
