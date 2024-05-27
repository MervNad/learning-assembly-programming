global _start		; startint point
section .data		; section toset data or variable to be used
addr db "yellow", 0x0a	; addr is a pointer to some memory address
section .text		; section for code
_start:
mov [addr], byte 'H'
mov [addr+5], byte '!'
mov eax, 4	; sys_write system call
mov ebx, 1	; stdout file descriptor
mov ecx, addr	; bytes to write
mov edx, 7	; number of bytes to write
int 0x80	; perform systerm call
mov eax, 1	; sys_exit system call
mov ebx, 0	; exit status is 0
int 0x80
