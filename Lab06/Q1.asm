INCLUDE Irvine32.inc


.data
fib1 DWORD 0
fib2 DWORD 1
count DWORD 10
msg BYTE "First 10 Fibonacci numbers:", 0


.code
main PROC
    mov edx, OFFSET msg
    call WriteString
    call Crlf
    mov eax, fib1
    call WriteInt
    call Crlf
    mov eax, fib2
    call WriteInt
    call Crlf
    mov ecx, count
    sub ecx, 2

fib_loop:
    mov eax, fib1
    add eax, fib2
    call WriteInt
    call Crlf
    mov ebx, fib2
    mov fib1, ebx
    mov fib2, eax
    loop fib_loop

    exit
main ENDP
END main
