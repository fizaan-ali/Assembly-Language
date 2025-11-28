;Program to subtract two numbers
.model small
.stack 100h
.data
.code
main proc
    mov bl, 3
    mov cl, 1
    sub bl, cl ;first one is always a destination -> result stores to bl
    mov dl, bl ;move result from bl to dl for print   
    add dl, 48 ; convert number to ascii
    mov ah, 2
    int 21h
    mov ah, 4ch
    int 21h
main endp 
end main