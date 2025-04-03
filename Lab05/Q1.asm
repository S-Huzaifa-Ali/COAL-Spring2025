INCLUDE Irvine32.inc

.DATA
    val1 SDWORD 8000h

.CODE
main PROC
    mov eax, val1
    add eax, 1

    call DumpRegs

    exit
main ENDP
END main
