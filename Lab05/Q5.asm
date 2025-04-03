INCLUDE Irvine32.inc

.data
    array1 BYTE 10, 20, 30, 40
    array2 BYTE 4 DUP(?)
    count  DWORD 4

.code
main PROC
    mov esi, OFFSET array1
    mov edi, OFFSET array2 + 3
    mov ecx, count

reverse_loop:
    mov al, [esi]
    mov [edi], al
    
    inc esi 
    dec edi 

    loop reverse_loop

    exit
main ENDP
END main
