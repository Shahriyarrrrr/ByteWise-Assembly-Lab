.model small
.stack 100h
.data
    input db 6, 0, 6 dup('$') 
    number dw ?
    msg1 db 'Enter a number: $'
    output_msg db 13,10,'Absolute value is: $'
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

 
    lea dx, input
    mov ah, 0Ah
    int 21h

    
    lea si, input
    mov al, [si+2]    
    cmp al, '-'
    jne positive_input

   
    mov cl, [si+3]
    sub cl, '0'
    neg cl
    mov number, cx
    jmp done_conversion

positive_input:
    mov cl, [si+2]
    sub cl, '0'
    mov number, cx

done_conversion:
    
    mov ax, number
    cmp ax, 0
    jge skip_negate
    neg ax
skip_negate:
    mov number, ax

   
    lea dx, output_msg
    mov ah, 09h
    int 21h

   
    add al, '0'
    mov dl, al
    mov ah, 02h
    int 21h

   
    mov ah, 4Ch
    int 21h

end main
