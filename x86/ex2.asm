global _start

section .data
msg db "Hello, world!", 0x0a	; .data to enlign data by name 
				; 0x0a is hex 10 code for newline charactarer
len equ $ - msg		; determining the length of string 
			; by substracting location at the start of string
			; and location after the string
section .text
_start:
mov eax, 4	; sys_write system call
mov ebx, 1	; stdout file descriptor
mov ecx, msg	; bytes to write
mov edx, len	; number of bytes to write
int 0x80	; perform system call
mov eax, 1	; sys_exit system call 
mov ebx, 0	; exit status is 0
int 0x80
