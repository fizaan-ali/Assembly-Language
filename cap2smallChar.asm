;Program to convert capital letter into small letter
.model small
.stack 100h
.data
.code
main proc
    mov ah, 1
    int 21h
    mov dl, al
    add dl, 32
    mov ah, 2                ; IF YOU WANNA REVERSE JUST CHANGE ADD TO SUB THEN IT WILL DO SMALL TO CAPITAL
    int 21h
    mov ah, 4ch
    int 21h
main endp
end main