%include "io.inc"
section .data
n db 30
section .text
    
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    cicle:
    xor edx, edx
    jmp IsPerfect
    MethodOut:
    POP eax
    mov eax, [n]
    sub ebx, [n]
    jnz IsNot
    PRINT_UDEC 4, eax
    NEWLINE
    IsNot:
    dec eax
    mov [n], eax
    jnz cicle
    ret
    
IsPerfect:
    mov ebx, 0
    mov eax, [n]
    mov ecx, 2
    div ecx
    PUSH eax
    mov ecx, 0
    start:
    inc ecx  
    mov eax, [n]
    xor edx,edx
    div ecx
    xor edx, 0
    jnz NoSum
    add ebx, ecx
    NoSum:
    mov edx, ecx
    sub edx, [esp]
    jge MethodOut
    jmp start
    