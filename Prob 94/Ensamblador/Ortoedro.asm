%include "io.inc"

section .data
l dw 65000
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    xor eax, eax
    xor ebx, ebx
    xor edx, edx
    mov eax, [l]
    mov ebx, [l]
    mul ebx
    mul ebx
    PRINT_DEC 4, eax
    ret