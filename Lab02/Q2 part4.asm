INCLUDE Irvine32.inc

.data
  resultECX DWORD ?

.code
main:
  mov ebx, 0
  mov ecx, 110010101101b
  add ecx, 45h
  sub ecx, 73o
  add ecx, ebx
  sub ecx, ecx
  add ecx, 1
  mov resultECX, ecx

  call WriteDec

exit
end main
