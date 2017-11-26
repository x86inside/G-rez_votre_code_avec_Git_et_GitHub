;programme pour linux 64 bit
;compilation: 	nasm -f elf64 bonjour.asm -o boujour.o
;		ld -o boujour boujour.o

bits 64
global _start

section .data
Hello db "Bonjour chez vous !", 10

section .text
_start:
    mov rax, 1 ; sys_write
    mov rdi, 1 ; stdout
    mov rsi, Hello
    mov rdx, 20
    syscall

    mov rax, 60 ; sys_exit
    xor rdi, rdi ; exit(0)
    syscall
