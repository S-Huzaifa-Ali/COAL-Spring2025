INCLUDE Irvine32.inc

.data
    arrayD DWORD 1000, 200, 50, 30, 20
    finalResult DWORD ?

.code
main PROC
    mov esi, OFFSET arrayD
    mov eax, [esi]

    add esi, 4
    sub eax, [esi]

    add esi, 4
    sub eax, [esi]

    add esi, 4
    sub eax, [esi]

    add esi, 4
    sub eax, [esi]

    mov finalResult, eax


    mov eax, finalResult
    call WriteDec
    call Crlf

    exit
main ENDP
END main
