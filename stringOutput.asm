;program to output string
.model small
.stack 100h
.data
    my_name db 'Fizaan$'  
    ;we allocate memory in the data segment there are three things first one is 
    ;name then size and then the values 
    ;db means define byte ->one byte per character
    ;so i write 'Fizaan$' it assigns 7 bytes and stores each character in one byte sequentially
    ;my_name then points to the first char
    ;we use dollar sign to print string with ah, 9 it ends the printing after dollar sign 
    ;interracted
.code
main proc
    mov ax, @data     
    mov ds, ax  ; whenever we have something in data segment we have to move it to the 
                ; ds(data segment) register otherwise cpu won't know where is the data
                ; and also we can't directly pass data to cpu so we use intermediary ax
    
    ;now there are two methods we can do first one is mov dx, offset my_name and the ot
    ;her one is lea dx, my_name
    mov dx, offset my_name ;for printing move to dx register
    mov ah, 9 ; now we move 9 to ah -> it continusosly prints characters until it encoutnres $ 
                ;sign we can also write ascii of $ which is 36. 
    int 21h
    mov ah, 4ch
    int 21h
main endp
end main