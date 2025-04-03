INCLUDE Irvine32.inc

.data
    arrayB BYTE 61, 43, 11, 52, 25
    sortedB BYTE 5 DUP(?)

.code
main PROC
    mov al, 11
    mov [sortedB], al

    mov al, 25    
    mov [sortedB + 1], al

    mov al, 43
    mov [sortedB + 2], al

    mov al, 52
    mov [sortedB + 3], al

    mov al, 61
    mov [sortedB + 4], al

    mov esi, OFFSET sortedB
    mov ecx, 5


    exit
main ENDP
END main

; WORD ARRAY
; use the instruction [sorted + 2], [sorted + 4],.... as a WORD array is of 2 bytes

; DWORD ARRAY
; use the instruction [sorted + 4], [sorted + 8],.... as a DWORD array is of 4 bytes
