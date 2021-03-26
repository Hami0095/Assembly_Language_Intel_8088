; [org 0x0100]

;                                       ; TASK 1 : to add AABB and CCDD which is the part of num
; jmp start

; num: dd 0xAABBCCDD
; sum: dw 0
; start:
; mov ax, [num + 2]
; mov bx, [num]

; add ax, bx
; mov [sum], ax

; exit:
; mov ax, 0x4c00
; int 0x21

                                        ; TASK 2:  swap AABB with CCDD
[org 0x0100]

jmp start 
num: dd 0xAABBCCDD

start:
    mov ax, [num + 2]
    mov bx, [num]

    mov dx, ax
    mov cx, bx
    mov bx, dx
    mov ax, cx
    mov cx, 0000
    mov dx, 0000
   mov [num + 2], ax
   mov [num], bx
exit:
    mov ax, 0x4c00
    int 0x21


;                                           ; Task 3: add 10, 20, 30 in array of size 3
; [org 0x0100]

; jmp start

; arr: dw 0, 0, 0

; start:

; mov si, 0
; mov cx, 10
; l1:
;     mov ax, [arr + si]
;     add ax, cx
;     add cx, 10
;     inc si
;     cmp si, 3
;     jne l1

; exit:
;     mov ax, 0x4c00
;     int 0x21
