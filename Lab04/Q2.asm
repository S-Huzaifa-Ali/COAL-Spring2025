INCLUDE Irvine32.inc  

.DATA
    nameChars BYTE 'S', 'Y', 'E', 'D'

.CODE
main PROC
    mov al, 'S' 
    mov bl, 'Y' 
    mov cl, 'E' 
    mov dl, 'D' 

    call DumpRegs
    exit
main ENDP
END main
