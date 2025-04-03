INCLUDE Irvine32.inc

.data
  resultEDX DWORD ?

.code
main:
  mov eax, 1000h
  mov ebx, 0F00h
  mov ecx, 80
  add eax, 1
  add eax, ebx
  sub eax, ecx
  add eax, 0Ah
  sub eax, 65o
  add eax, 73d
  mov edx, eax
  mov resultEDX, edx
  
  call WriteDec

exit
end main
