INCLUDE Irvine32.inc

.CODE
main PROC
    mov ax, 7FF0h

    add al, 10h  
    call DumpRegs

    add ah, 1 
    call DumpRegs

    add ax, 2
    call DumpRegs

    exit
main ENDP
END main
