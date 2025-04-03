INCLUDE Irvine32.inc

.data
    arrayB BYTE 60, 70, 80
    arrayW WORD 150, 250, 350
    arrayD DWORD 600, 1200, 1800

.code
main PROC
    mov esi, OFFSET arrayB
    xor eax, eax
    mov al, [esi]
    add al, [esi + 2 * TYPE arrayB]

    call WriteDec
    call CrLf
    

    mov esi, OFFSET arrayW
    xor eax, eax
    mov ax, [esi]
    add ax, [esi + 2 * TYPE arrayW]

    call WriteDec
    call CrLf


    mov esi, OFFSET arrayD
    mov eax, [esi]
    add eax, [esi + 2 * TYPE arrayD]

    call WriteDec
    call CrLf

    exit
main ENDP
END main
