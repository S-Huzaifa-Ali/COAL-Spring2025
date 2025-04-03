INCLUDE Irvine32.inc

.data
  resultEAX DWORD ?

.code
main:
  mov ebx, 0F00h
  mov eax, 5ADh
  sub eax, ebx
  add eax, 65o
  add eax, 65d
  sub eax, 11110111b
  add eax, 150
  mov resultEAX, eax

  call WriteDec

exit
end main
