global main
extern printf
section .text
main:
push rbx
xor rax, rax
mov ecx, 90
mov rbx, 1

print:
push rax
push rcx

mov rdi, format
mov rsi, rax
xor rax, rax
call printf

pop rcx
pop rax

mov rdx, rax
mov rax, rbx
add rbx, rdx
dec ecx
jnz print
pop rbx
ret

format:
db "%20ld", 10, 0

