[org 0x0100]

; Task 1 :
         ; Fibbonacci numbers : 
; 1 1 2 3 5 8 ..  
; n-1 + n
jmp start

fib_nums: dw 0,0,0,0,0,0,0,0,0,0

start:
    mov word [fib_nums+0], 1
    mov word [fib_nums+1], 1
    
    mov si, 0

l1:    
    mov ax, [fib_nums+si]
    mov bx, [fib_nums+ si + 1]
    add ax, bx
    mov [fib_nums + si + 2],ax
    inc si
    cmp si, 10
    jb l1

jmp exit

exit:
 mov ax, 0x4c00
int 0x21
