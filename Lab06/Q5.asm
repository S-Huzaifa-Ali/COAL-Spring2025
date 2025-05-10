INCLUDE Irvine32.inc


.data
arr DWORD 10, 20, 30, 40, 50, 60
arrSize = LENGTHOF arr
elementSize = TYPE arr


.code
main PROC
    mov esi, OFFSET arr
    mov edi, OFFSET arr
    add edi, (arrSize - 1) * elementSize
    mov ecx, arrSize
    shr ecx, 1

reverse_loop:
    mov eax, [esi]
    mov ebx, [edi]
    mov [esi], ebx
    mov [edi], eax
    add esi, elementSize
    sub edi, elementSize
    loop reverse_loop

    mov ecx, arrSize
    mov esi, OFFSET arr

print_loop:
    mov eax, [esi]
    call WriteInt
    call Crlf
    add esi, elementSize
    loop print_loop

    exit
main ENDP

END main
