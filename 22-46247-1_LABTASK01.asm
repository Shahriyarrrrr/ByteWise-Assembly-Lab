.model small
.stack 100h
.data
    num1 db ?
    num2 db ?
    msg1 db 'Enter first number: $'
    msg2 db 13,10,'Enter second number: $'
    msg3 db 13,10,'Sorted Numbers: $'
.code
main:
    
    mov ax, @data
    mov ds, ax

   
    mov ah, 0
    mov al, 3
    int 10h

    
    lea dx, msg1
    mov ah, 09h
    int 21h

    
    mov ah, 01h
    int 21h
    sub al, '0'    
    mov num1, al

   
    lea dx, msg2
    mov ah, 09h
    int 21h

   
    mov ah, 01h
    int 21h
    sub al, '0'    
    mov num2, al

    
    mov al, num1
    mov bl, num2

   
    cmp al, bl
    jbe no_swap

    xchg al, bl

no_swap:
   
    mov num1, al
    mov num2, bl

    
    lea dx, msg3
    mov ah, 09h
    int 21h

   
    mov dl, num1
    add dl, '0'    
    mov ah, 02h
    int 21h

    
    mov dl, ' '
    int 21h

   
    mov dl, num2
    add dl, '0'
    mov ah, 02h
    int 21h

    
    mov ah, 01h
    int 21h

   
    mov ah, 4Ch
    int 21h
end main
