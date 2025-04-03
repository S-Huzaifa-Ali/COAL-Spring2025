.386
.model flat, stdcall
.stack 4096

include irvine32.inc

SecondsInDay = 24 * 60 * 60  ; 86400 seconds

.data
    result DWORD ?

.code
main PROC
    mov eax, SecondsInDay 
    mov result, eax 
    call DumpRegs 
    exit
main ENDP

END main
