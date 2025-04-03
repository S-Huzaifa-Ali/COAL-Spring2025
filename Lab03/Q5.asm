INCLUDE Irvine32.inc

.DATA
    w BYTE 11h
    b BYTE 10h
    y BYTE 30h
    z BYTE 40h

.CODE
main PROC
    mov al, w
    add al, b
    mov bl, w
    sub bl, b
    sub al, bl
    add al, y 
    add al, z 

    call DumpRegs
    exit
main ENDP
END main
