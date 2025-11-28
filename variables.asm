;Variabless declaration in data segment
.model small
.stack 100h
.data    
    var1 db '1' ;1.name 2.size 3.value
    var2 db 'A'  
   
.code
main proc
    mov ax, @data;if we have something in data segment in code segment we must point it to ds so it will know where is it
    mov ds, ax   
    mov dl, var1
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main