bits 64

global _main

_main:
mov    rax, 0x2000004  ; write
mov    rdi, 1          ; stdout
mov    rbx, 'hi'
push   rbx
mov    rsi, rsp
mov    rdx, 2
syscall

mov    rax, 0x2000001  ; exit
mov    rdi, 0
syscall
