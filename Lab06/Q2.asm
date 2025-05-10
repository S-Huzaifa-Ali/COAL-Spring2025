INCLUDE Irvine32.inc


.data
nl BYTE 0Dh, 0Ah, 0
pattern1 BYTE "Pattern 1: ", 0
pattern2 BYTE "Pattern 2: ", 0
pattern3 BYTE "Pattern 3: ", 0
pattern4 BYTE "Pattern 4: ", 0


.code
main PROC
    mov edx, OFFSET pattern1
    call WriteString
    call Crlf
    mov ecx, 4
outerLoop1:
    push ecx
    mov ebx, 4
    sub ebx, ecx
    inc ebx
innerLoop1:
    mov eax, 1
    call WriteInt
    dec ebx
    jnz innerLoop1

    call Crlf
    pop ecx
    loop outerLoop1

    mov edx, OFFSET pattern2
    call WriteString
    call Crlf
    mov ecx, 4

outerLoop2:
    push ecx
    mov ebx, 4
    sub ebx, ecx
    mov edx, ebx
    call PrintDecreasingNumbers
    call Crlf
    pop ecx
    loop outerLoop2

    mov edx, OFFSET pattern3
    call WriteString
    call Crlf
    mov ecx, 4

outerLoop3:
    push ecx
    mov ebx, 1
    mov edx, 4
    call PrintIncreasingNumbers
    call Crlf
    pop ecx
    loop outerLoop3

    mov edx, OFFSET pattern4
    call WriteString
    call Crlf
    mov ecx, 4

outerLoop4:
    push ecx
    mov ebx, 4
    sub ebx, ecx
    mov edx, ebx
    call PrintDecreasingNumbers
    call Crlf
    pop ecx
    loop outerLoop4

    exit
main ENDP


PrintDecreasingNumbers PROC
    push ebx
    push edx
    mov eax, edx
    call WriteInt
    dec edx
    cmp edx, 0
    jge PrintDecreasingNumbers
    pop edx
    pop ebx
    ret
PrintDecreasingNumbers ENDP

PrintIncreasingNumbers PROC
    push ebx
    push edx
    mov eax, ebx
    call WriteInt
    inc ebx
    cmp ebx, 5
    jl PrintIncreasingNumbers
    pop edx
    pop ebx
    ret
PrintIncreasingNumbers ENDP

END main
