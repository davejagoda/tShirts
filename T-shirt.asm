section .text
    global _start

_start:
    mov edx, 1   ;message length
    mov ecx, msg ;message to write
    mov ebx, 1   ;file descriptor (stdout)
    mov eax, 4   ;system call number (sys_write)
    int 0x80     ;call kernel

    mov eax, len
    sub eax, 2
    mov ecx, 10

loop:
    mov edx, 0
    div ecx

    push edx

    cmp eax, 0
    jnz loop

done:
    mov eax, len
    sub eax, 2
    mov ecx, 10

loop2:
    mov edx, 0
    div ecx

    pop edx

    push eax
    push ecx

    mov eax, '0'
    add eax, edx
    mov [num], eax
    mov ecx, num

    mov edx, 1
    mov ebx, 1
    mov eax, 4
    int 0x80

    pop ecx
    pop eax

    cmp eax, 0
    jnz loop2

done2:
    mov edx, 1
    mov ecx, msg
    add ecx, len
    sub ecx, 1
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80

section .data
    msg db 'andreessenhorowitz'
    len equ $ - msg

section .bss
    num resb 1
