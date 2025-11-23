%include 'in_out.asm'

section .data
msg db "Наименьшее число: ",0h
a dd 17    ; Remplacez par vos valeurs
b dd 23    ; selon votre variante
c dd 45    ; du tableau 7.5

section .bss
min resb 10

section .text
global _start
_start:
    ; Initialisation avec a
    mov ecx, [a]
    mov [min], ecx

    ; Comparaison avec b
    cmp ecx, [b]
    jl check_c
    mov ecx, [b]
    mov [min], ecx

check_c:
    ; Comparaison avec c
    mov ecx, [min]
    cmp ecx, [c]
    jl print_result
    mov ecx, [c]
    mov [min], ecx

print_result:
    mov eax, msg
    call sprint
    mov eax, [min]
    call iprintLF
    call quit
