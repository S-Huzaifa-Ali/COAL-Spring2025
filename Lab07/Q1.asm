Include Irvine32.inc

.data
    arr WORD 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
    arrSize = LENGTHOF arr
    new_arr WORD arrSize DUP(?)
    
.code
main PROC
    mov ecx, arrSize  
    mov esi, 0        

    PushLoop:
        movzx eax, arr[esi * 2] 
        push eax
        inc esi
        loop PushLoop

    mov ecx, arrSize
    mov esi, 0

    PopLoop:
        pop eax
        mov new_arr[esi * 2], ax
        inc esi
        loop PopLoop

    mov ecx, arrSize  
    mov esi, 0         

    PrintLoop:
        movzx eax, new_arr[esi * 2] 
        call WriteDec                
        mov eax, 32    
        call WriteChar        
        inc esi
        loop PrintLoop

    call crlf

    exit

main endp
end main
