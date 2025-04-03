INCLUDE Irvine32.inc

.DATA
    val1 SWORD ?
    val2 SBYTE -11

.CODE
main PROC
    mov al, val2
    call DumpRegs
    exit
main ENDP
END main
