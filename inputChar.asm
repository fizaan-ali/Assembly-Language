;Program to input a character

.model small
.stack 100h
.data
.code
main proc
    mov ah, 1    ;service routine for character input
    int 21h
    mov dl, al   ;input character goes to al register -> then we move to dl for printing
    mov ah, 2    ; print inputted character
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main