.model small    ;size of model (various model sizes)
.stack 100h     ;stack of size 100h
.data           ;data segment -> we allocate memory here (declare arrays variables)
.code           ;code segment -> executables instructions are here
main proc      
    
    mov dl, 'A'  ; this moves ascii of character A into 'dl' register why dl bcz whenver we are 
                 ; going to print someting first cpu checks dl register you can think the thing 
                 ; which we are going to print has to be in dx /dl register
    mov ah, 2    ; move 2 into ah this is the service routine for printing a character
    int 21h      ;interrupt->ye kahta ha cpu se ke pehle mera kaam karo phir kuch aur karna ab 
                 ; kaam kia karna ha according to the value stored in ah in this case it is 
                 ; 2, so it prints a charcter stored in dl register
    
    mov ah, 4ch  ; mov 4C(hexdecmial value) into ah 
    int 21h      ;execute -> which is in case according to ah value is exit (out of register)
main endp        ;end of main procedure
end main         ;end of entire program