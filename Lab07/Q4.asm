INCLUDE Irvine32.inc


.data
columns DWORD 5


.code
main PROC
    mov eax, columns
    call PrintPattern

    exit
main ENDP

PrintPattern PROC
    push ecx
    push edx
    push ebx
    push esi

    mov ecx, eax
    mov esi, eax

outer_loop:
    mov edx, ecx
    dec edx
print_spaces:
    cmp edx, 0
    jl print_stars
    mov al, ' '
    call WriteChar
    dec edx
    jmp print_spaces
print_stars:
    mov ebx, esi
    sub ebx, ecx
    inc ebx
print_star_loop:
    cmp ebx, 0
    jle after_star_loop
    mov al, '*'
    call WriteChar
    dec ebx
    jmp print_star_loop
after_star_loop:
    call Crlf
    loop outer_loop

    pop esi
    pop ebx
    pop edx
    pop ecx
    ret
PrintPattern ENDP

END main
