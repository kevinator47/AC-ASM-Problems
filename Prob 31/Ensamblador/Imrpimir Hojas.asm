%include "io.inc"
n dd 15
array dw 1,2,6,-1,3,-1,-1,-1,-1,4,5,-1,-1,-1,-1
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    xor eax, eax
    xor edx, edx
    xor ebx, ebx
    mov ecx, -2
    call PrintLeafs
    call PrintAfterHalf
    ret
    
PrintLeafs:
    for:
    add ecx, 2
    cmp ecx, [n]
    jg return
    mov eax, 2
    mov bx, [array + ecx]
    cmp bx, -1
    je for
    PUSH bx
    mul ecx
    add eax, 2
    mov bx, [array + eax]
    cmp bx, -1
    je Derecho
    POP bx
    jmp for
    Derecho:
    add eax, 2
    mov bx, [array + eax]
    cmp bx, -1
    je Fin
    POP bx
    jmp for
    Fin:
    POP bx
    PRINT_DEC 2, bx
    NEWLINE
    jmp for
    return:
    ret

PrintAfterHalf:
    xor eax, eax
    xor edx, edx
    xor ebx, ebx
    sub ecx, 2
    mov eax, 2
    mov ebx, [n]
    mul ebx
    xor ebx, ebx
    cicle:
    add ecx, 2
    cmp ecx, eax
    je return
    mov bx, [array + ecx]
    cmp bx, -1
    je cicle
    PRINT_DEC 2, bx
    NEWLINE
    jmp cicle