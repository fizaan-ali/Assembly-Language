.model small
.stack 100h
.data
    var db 'a' ;now what does this line of code say:
               ; assign a byte (from db(define byte)) in memory and assign it to value of ascii of a
               ; whihc is 97 and named that memory location var
    var1 db 47  ; this is same assign one byte  named var1 and put value of 47 in it
.code
main proc
    mov ax, @data
    mov ds, ax ;always use these two lines to instruct the cpu where exactly is your data
                ; that you write in data segment
    mov dl, var
    mov ah, 2
    int 21h
                      
                      
    mov dl, var1  ;now it will print the character respective to the ascii of 47!
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main