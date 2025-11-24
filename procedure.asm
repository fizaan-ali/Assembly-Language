;Procedures........
.model small
.stack 100h
.data
    msg db 'Hey there how are you?$'
.code
main proc
    mov ax, @data
    mov ds, ax
    call printMsg
    mov ah, 4ch
    int 21h
    
main endp
printMsg proc
    lea dx, msg
    mov ah, 9
    int 21h
    ret   
printMsg endp    
end main