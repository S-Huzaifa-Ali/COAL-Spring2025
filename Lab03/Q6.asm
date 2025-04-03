INCLUDE Irvine32.inc

.DATA
    a BYTE 00010001b
    b BYTE 00010000b
    x BYTE 00110000b
    d BYTE 01000000b

.CODE
main PROC
    mov al, a
    add al, b
    mov bl, a
    sub bl, b
    sub al, bl
    add al, x
    add al, d

    call DumpRegs
    exit
main ENDP
END main
