INCLUDE Irvine32.inc

.data
    arrayB BYTE 10, 20, 30
    arrayW WORD 150, 250, 350
    arrayD DWORD 600, 1200, 1800

    SUM1 DWORD ?
    SUM2 DWORD ?
    SUM3 DWORD ?

.code
main PROC
    ; SUM1 = arrayB[0] + arrayW[0] + arrayD[0]
    movzx eax, BYTE PTR arrayB[0]
    movzx ebx, WORD PTR arrayW[0]
    mov ecx, DWORD PTR arrayD[0]
    add eax, ebx
    add eax, ecx
    mov SUM1, eax

    ; SUM2 = arrayB[1] + arrayW[1] + arrayD[1]
    movzx eax, BYTE PTR arrayB[1]
    movzx ebx, WORD PTR arrayW[2]
    mov ecx, DWORD PTR arrayD[4]
    add eax, ebx
    add eax, ecx
    mov SUM2, eax

    ; SUM3 = arrayB[2] + arrayW[2] + arrayD[2]
    movzx eax, BYTE PTR arrayB[2]   
    movzx ebx, WORD PTR arrayW[4]
    mov ecx, DWORD PTR arrayD[8]
    add eax, ebx
    add eax, ecx
    mov SUM3, eax


    mov eax, SUM1
    call WriteDec
    call Crlf

    mov eax, SUM2
    call WriteDec
    call Crlf

    mov eax, SUM3
    call WriteDec
    call Crlf

    exit
main ENDP
END main
