INCLUDE Irvine32.inc

.DATA
    val3 SDWORD -2147483648  ; Smallest 32-bit signed integer

.CODE
main PROC
    mov eax, val3
    call DumpRegs
    exit
main ENDP
END main
