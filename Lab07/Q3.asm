INCLUDE Irvine32.inc


.data
array1 DWORD 10, 20, 30, 40, 50
array2 DWORD 5, 15, 25, 35, 45
sum1 DWORD ?
sum2 DWORD ?
total DWORD ?


.code
main PROC
    call SumArray1
    call SumArray2
    call TotalSum
    mov eax, total
    call WriteString
    call Crlf
    mov eax, total
    call WriteInt
    call Crlf

    exit
main ENDP

SumArray1 PROC
    mov ecx, LENGTHOF array1
    mov esi, OFFSET array1
    mov eax, 0

sum_loop1:
    add eax, [esi]
    add esi, TYPE array1
    loop sum_loop1

    mov sum1, eax
    ret
SumArray1 ENDP

SumArray2 PROC
    mov ecx, LENGTHOF array2
    mov esi, OFFSET array2
    mov eax, 0

sum_loop2:
    add eax, [esi]
    add esi, TYPE array2
    loop sum_loop2

    mov sum2, eax
    ret
SumArray2 ENDP

TotalSum PROC
    mov eax, sum1
    add eax, sum2
    mov total, eax
    ret
TotalSum ENDP

END main
