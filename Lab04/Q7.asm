.386
.model flat, stdcall
.stack 4096

include irvine32.inc

.data
    A      WORD 0FF10h 
    B      WORD 0E10Bh 
    temp   WORD ?  

.code
main PROC
    mov ax, A 
    mov temp, ax 

    mov ax, B  
    mov A, ax  

    mov ax, temp 
    mov B, ax  

    call DumpRegs 
    exit
main ENDP

END main
