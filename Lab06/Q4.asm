INCLUDE Irvine32.inc


.data
Source  BYTE "Hello, World!", 0
Target  BYTE 100 DUP(0)


.code
main PROC
    mov esi, OFFSET Source
    mov edi, OFFSET Target
copy_loop:
    mov al, [esi]
    mov [edi], al
    cmp al, 0
    je copy_done
    inc esi
    inc edi
    jmp copy_loop

copy_done:
    mov edx, OFFSET Target
    call WriteString
    call Crlf

    exit
main ENDP

END main
