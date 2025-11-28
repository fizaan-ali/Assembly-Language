;Array, dup, Source index register
.model small
.stack 100h
.data
    arr db '1','2','3','4' ; db (define byte) 4 bytes (one per character)
.code
main proc
    mov ax, @data
    mov ds, ax   
    mov cx, 4 ;-> there are 4 values so we are gonna iterate 4 times to print all characters one by one via si register
    
    lea si, arr ; -> si now points to the first value of arr
    Array:
        mov dl, [si] ;-> [] gives value at that address 
        
        mov ah, 2
        int 21h
        inc si; increment si by 1 -> si now points to the next memory address after  1
    loop Array
    mov ah, 4ch
    int 21h
main endp
end main