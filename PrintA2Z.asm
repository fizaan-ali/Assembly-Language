.model small
.stack 100h
.data
.code
main proc           
    mov cx, 26
    mov dl, 'A'
    l1:
        mov ah, 2
        int 21h
        inc dl
    loop l1   
    mov ah, 4ch
    int 21h
main endp
end main 



     
     
.model small
.stack 100h
.data
.code
main proc
    mov bl, 65
    mov cx, 26
    l1:
        mov dl, bl
        mov ah, 2
        int 21h
        mov dl, 10
        mov ah, 2
        int 21h
        mov dl, 13
        mov ah, 2
        int 21h
        inc bl
    loop l1    
    mov ah, 4ch
    int 21h
main endp
end main