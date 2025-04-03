INCLUDE Irvine32.inc

.data
  result3 DWORD ?

.code
main:
  mov eax, 46 ; eax = 101110 binary = 46 decimal
  add eax, 80 ; eax = eax + 50Ah = eax + 80 decimal
  add eax, 6710 ; eax = eax + 6710d
  add eax, 81 ; eax = eax + 1010001 = 81 decimal
  add eax, 15 ; eax = eax + F = 15 decimal
  mov result3, eax

call WriteDec

exit
end main
