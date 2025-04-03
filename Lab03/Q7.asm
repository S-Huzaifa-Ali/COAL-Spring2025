INCLUDE Irvine32.inc

.DATA
    wArray WORD 10, 20, 30

.CODE
main PROC
    call DumpRegs
    exit
main ENDP
END main
