.model small
.data       
msg db "your entered string is", '$'
.code
    mov ax, @data
    mov ds, ax
             
    lea dx, msg ; print message
    mov ah, 09h
    int 21h
    
    reading:    ; label for reading
    mov ah, 01  ; read a character
    int 21h
    
    cmp al, 13  ; check if key = enter
    je exit     ; if true, jump to exit
    
    mov ah, 02  ; print a character
    int 21h
    loop reading ; loop back to reading
    
    exit:        ; label for exit
    mov ah, 4ch
    int 21h
end
