;Program to check is inputter number is equal to 5 not not 
.model small
.stack 100h
.data 
    msg1 db 'Number is equal$'
    msg2 db 'Numbre is not equal$'
.code
main proc
    mov ax, @data
    mov ds, ax
    mov dl, '5'
    mov ah, 1
    int 21h
    cmp al, dl ;compare al with al (inputted value with 5) -> it does not store any data it affects the flag regiters and changes the bits of those according to the result 
    je l1 ;jump if equal -> to l1
    mov dx, offset msg2
    mov ah, 9
    int 21h
    l1: 
        mov dx, offset msg1
        mov ah, 9
        int 21h
        
    mov ah, 4ch
    int 21h
main endp
end main        
;we can also do many things with these 
;je -> jump if equal jz -> ump if zero jne -> jump if not equal jg -> jump if greater jl -> jump if less
               