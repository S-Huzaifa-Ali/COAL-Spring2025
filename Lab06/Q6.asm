INCLUDE Irvine32.inc


.data
arr DWORD 8, 5, 1, 2, 6
arrSize = LENGTHOF arr
elemSize = TYPE arr


.code
main PROC
    mov ecx, arrSize
    dec ecx

outer_loop:
    push ecx
    mov esi, OFFSET arr
    mov ecx, arrSize
    dec ecx

inner_loop:
    mov eax, [esi]
    mov ebx, [esi + elemSize]
    cmp eax, ebx
    jbe skip_swap
    mov [esi], ebx
    mov [esi + elemSize], eax

skip_swap:
    add esi, elemSize
    loop inner_loop

    pop ecx
    loop outer_loop

    mov esi, OFFSET arr
    mov ecx, arrSize

print_sorted:
    mov eax, [esi]
    call WriteInt
    call Crlf
    add esi, elemSize
    loop print_sorted

    exit
main ENDP

END main
