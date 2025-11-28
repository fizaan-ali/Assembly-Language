;Program to print Hello
;                 World

.model small
.stack 100h
.data 
    var1 db 'Hello$'  ;it occupies 6 bytes (one per char) and var1 poitns to first
    var2 db 'World$'
.code
main proc
    mov ax, @data
    mov ds, ax
    lea dx, var1    ;prints first strin ("Hello")
    mov ah, 9        ;stops at $ 
    int 21h
    
    mov dl, 10   ;ascii for new line moves cursor right below the line -> but it not moves the cursor to the start of newline
    mov ah, 2
    int 21h
    mov dl, 13   ;ascii for carriage return move cursor to the start of the existing line -> first we move cursor to newline then we move it to start via this cr
    mov ah, 2
    int 21h
    
    lea dx, var2
    mov ah, 9
    int 21h
    
    
    
    mov ah, 4ch
    int 21h
main endp
end main