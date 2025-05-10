INCLUDE Irvine32.inc


.data
promptMsg  BYTE "Enter a number: ", 0
resultMsg  BYTE "Sum from 1 to n is: ", 0
n          DWORD ?
sum        DWORD ?


.code
main PROC
    mov edx, OFFSET promptMsg
    call WriteString
    call ReadInt
    mov n, eax

    mov eax, n
    call SumToN

    mov edx, OFFSET resultMsg
    call WriteString

    call WriteInt
    call Crlf

    exit
main ENDP

SumToN PROC
    push ecx
    push ebx
    mov ecx, eax
    mov ebx, 0

sum_loop:
    cmp ecx, 0
    jle done
    add ebx, ecx
    dec ecx
    jmp sum_loop
done:
    mov eax, ebx
    pop ebx
    pop ecx
    ret
SumToN ENDP

END main
