;STRINGS
.model small
.stack 100h
.data
    str db '1234$' ;-> now in this each character is one byte and str points to first one like in normal arrays in c++ -> why $ at end it is not necessary to write but if we are going to print it throug service routine (ah=9) then we must end at $ terminator otherwise it won't stop printing
.code
main proc
    mov ax, @data
    mov ds, ax
    ;now there are two ways to do -> mov dx, offset str -> lea dx, str (load offset address)
    lea dx, str     
    
    mov ah, 9    ;service routine for printing string it keeps prinitng until it encounters $ terminator
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main