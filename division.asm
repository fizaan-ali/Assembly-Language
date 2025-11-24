.model small
.stack 100h
.data
.code
main proc
    mov ax, 9   ;Divident in ax(16 bits) 
    mov bl, 5   ; Divisor in some other register(8 bits)
    div bl      ; This 'div' divides ax with bl and gives --> ah = remainder, ah = quotient
    
    mov cl, al  ; we store quotient in other register, otherwise while calling interrupt it would change
    
    mov dl, ah
    add dl, 48  ;convert to asciis of digits
    mov ah, 2
    int 21h
    
    mov dl, cl
    add dl, 48
    mov ah, 2
    int 21h
    
    mov ah, 4ch     ;exit
    int 21h
main endp
end main