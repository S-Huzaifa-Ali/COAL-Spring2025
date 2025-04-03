INCLUDE Irvine32.inc

.DATA
    val1 BYTE 10h
    val2 WORD 8000h
    val3 DWORD 0FFFFh
    val4 WORD 7FFFh

.CODE
main PROC
    inc val2  

    mov eax, val3  
    sub eax, val3 

    mov ax, val2 
    sub ax, val4 
    mov val2, ax 

    Call DumpRegs
    exit
main ENDP

END main
