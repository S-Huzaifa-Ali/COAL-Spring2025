INCLUDE Irvine32.inc

.data
  result5 DWORD ?

.code
main:
  mov eax, 5 ; eax = 101b binary = 5 decimal
  sub eax, 9 ; eax = eax - 9
  add eax, 420 ; eax = eax + 1A4h = 420 decimal
  sub eax, 377 ; eax = eax - 569o = 377 decimal
  mov result5, eax

  call WriteDec

exit
end main
