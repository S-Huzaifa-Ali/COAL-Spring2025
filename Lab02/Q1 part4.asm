INCLUDE Irvine32.inc

.data
  result4 DWORD ?

.code
main:
  mov eax, 141 ; eax = 10001101 binary = 141 decimal
  sub eax, 3443 ; eax = eax - D83h = eax - 3443 decimal
  add eax, 385 ; eax = eax + 385
  add eax, 10 ; eax = eax + 10
  add eax, 125 ; eax = eax + 1111101 = 125 decimal
  sub eax, 14 ; eax = eax - E = 14 decimal
  add eax, 15 ; eax = eax + F = 15 decimal
  mov result4, eax

call WriteDec

exit
end main
