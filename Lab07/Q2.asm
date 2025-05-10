Include Irvine32.inc

.data
    num1 DWORD 10
    num2 DWORD 20
    num3 DWORD 30
    result DWORD ?
    
.code
main PROC
    push num1
    push num2
    push num3

    pop eax
    pop ebx
    add eax, ebx

    pop ecx
    add eax, ecx

    mov result, eax 

    mov eax, result
    call WriteDec   

    exit
main endp
end main
