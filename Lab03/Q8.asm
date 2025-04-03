INCLUDE Irvine32.inc

.DATA
    dArray DWORD 50 DUP(?)

.CODE
main PROC
    call DumpRegs
    exit
main ENDP
END main
