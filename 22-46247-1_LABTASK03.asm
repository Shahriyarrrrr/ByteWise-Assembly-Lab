.model small
.stack 100h
.data
    prompt db 'Enter a number (-9 to 9): $'
    output_msg db 13,10,'Absolute value is: $'
.code
main:
    mov ax, @data
    mov ds, ax

   
    lea dx, prompt
    mov ah, 09h
    int 21h

   
    mov ah, 01h
    int 21h
    mov bl, al   

  
    cmp al, '-'
    jne read_digit

  
    mov ah, 01h
    int 21h
    mov bh, al   
    sub bh, '0'  

 

    jmp show_output

read_digit:
  
    mov bh, bl
    sub bh, '0' 

show_output:
   
    lea dx, output_msg
    mov ah, 09h
    int 21h

   
    mov al, bh
    add al, '0'  
    mov dl, al
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h

end main
