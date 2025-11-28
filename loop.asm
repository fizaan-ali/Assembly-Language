;LOOPS
;now we use loop in assembly using label whatever is inside label and loop it's gonna print
.model small
.stack 100h
.data
.code
main proc
    mov dl, '0'
    mov cx, 10 ;counter register -> it automatically decrements after one iteration -> loop keep going to iterate untill cx approaches to zero  
    ;if we don't put any value in cx loops gonna run infinitely
    label: ;this is a label -> this name can our assembly program can understand we loop using this label
        mov ah, 2
        int 21h
        inc dl ;increment (increases the value of dl by 1)
    loop label ;now this is loop and its' going to run this code between loop and label       
    mov ah, 4ch
    int 21h
main endp
end main