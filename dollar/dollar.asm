global main
extern puts

section .text
main:
sub rsp, 8
mov rdi, msglen
call puts
add rsp, 8
ret

section .data
message: db "hello, world"
msglen:  equ $-message
