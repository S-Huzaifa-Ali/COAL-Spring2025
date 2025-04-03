INCLUDE Irvine32.inc  

.DATA
    varB BYTE 10 
    varW WORD -150 
    varD DWORD 600 

.CODE
main PROC
    movzx eax, varB  
    movsx ebx, varW 
    mov ecx, varD 

    call DumpRegs

    exit
main ENDP
END main
