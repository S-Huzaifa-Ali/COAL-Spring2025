INCLUDE Irvine32.inc


.data
msg1 BYTE "Enter Employee ID: ", 0
msg2 BYTE "Enter Employee Name: ", 0
msg3 BYTE "Enter Year of Birth: ", 0
msg4 BYTE "Enter Annual Salary: ", 0
msg5 BYTE "Total Annual Salary for all employees: ", 0
newLine BYTE 0Dh, 0Ah, 0
employeeID DWORD 5 DUP(0)
employeeName BYTE 5 DUP(20)
employeeBirthYear DWORD 5 DUP(0)
annualSalary DWORD 5 DUP(0)
totalSalary DWORD 0


.code
main PROC
    mov ecx, 5

getEmployeeData:
    mov edx, OFFSET msg1
    call WriteString
    call ReadInt
    mov eax, employeeID
    mov [eax+ecx*4-4], eax
    mov edx, OFFSET msg2
    call WriteString
    call ReadString
    mov edx, OFFSET msg3
    call WriteString
    call ReadInt
    mov eax, employeeBirthYear
    mov [eax+ecx*4-4], eax
    mov edx, OFFSET msg4
    call WriteString
    call ReadInt
    mov eax, annualSalary
    mov [eax+ecx*4-4], eax
    loop getEmployeeData

    mov ecx, 5
    mov eax, 0
    mov ebx, annualSalary

salaryLoop:
    add eax, [ebx+ecx*4-4]
    loop salaryLoop

    mov edx, OFFSET msg5
    call WriteString
    mov edx, eax
    call WriteInt
    call Crlf

    exit
main ENDP

END main
