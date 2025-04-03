INCLUDE Irvine32.inc

.DATA
    bArray BYTE 20 DUP(0)

.CODE
main PROC
    call DumpRegs
    exit
main ENDP
END main
