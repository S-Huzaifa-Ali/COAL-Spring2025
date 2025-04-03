INCLUDE Irvine32.inc

.data
  resultEBX DWORD ?

.code
main:
  mov eax, 0
  mov ebx, 5ADh
  sub ebx, eax
  add ebx, 65d
  add ebx, 73o
  sub ebx, 11100101b
  add ebx, 7Bh
  mov resultEBX, ebx

  call WriteDec

exit
end main
