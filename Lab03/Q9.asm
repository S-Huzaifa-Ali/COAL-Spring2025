INCLUDE Irvine32.inc

.DATA
    testString BYTE 500 DUP("TEST")

.CODE
main PROC
    call DumpRegs
    exit
main ENDP
END main
