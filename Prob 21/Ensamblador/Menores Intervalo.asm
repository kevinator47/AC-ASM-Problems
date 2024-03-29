%include "io.inc"
section .data
b db 0
c db 2
n dd 4
array db 4,3,5,6
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    xor ecx, ecx
    xor ebx, ebx
    call GetMin
    PRINT_DEC 1, al
    ret

GetMin:
    mov cl, [b]
    mov bl, [c]
    mov al, [array + ecx]
    cicle:
    inc ecx
    cmp ecx, ebx
    jg end
    cmp [array + ecx], al 
    jge cicle
    mov al, [array + ecx]
    jmp cicle
    end:
    ret