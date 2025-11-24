.model small
.stack 100h
.data 
    msg1 db 'Fizaan $'
    msg2 db 'Ali $'
    msg3 db 'Shafiq $' 
    
    printMsg macro str
        lea dx, str
        mov ah, 9
        int 21h
    endm
    
.code
main proc
    mov ax, @data
    mov ds, ax
    
    printMsg msg1
    printMsg msg2
    printMsg msg3
    mov ah, 4ch
    int 21h
main endp
end main