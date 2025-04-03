INCLUDE Irvine32.inc  

.DATA
    val1 DWORD 25h 
    val2 BYTE 36o  
    val3 WORD 20d  

.CODE
main PROC
    mov eax, 89  
    add eax, 75Fh  
    sub eax, 46o   
    sub eax, 28   
    add eax, 1101b 

    call DumpRegs

    mov eax, val1  
    add al, val2   
    sub eax, 654h 
    add ax, val3  

    call DumpRegs

    exit
main ENDP
END main
