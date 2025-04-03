INCLUDE Irvine32.inc

.data
  result2 DWORD ?

.code
main:
  mov eax, 30 ; eax = 30
  sub eax, 9 ; eax = eax - 9
  add eax, 186 ; eax = eax + 186
  sub eax, 150 ; eax = eax - 150
  mov result2, eax

  call WriteDec

exit
end main
