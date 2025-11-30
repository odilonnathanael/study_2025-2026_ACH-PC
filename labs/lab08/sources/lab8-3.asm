%include 'in_out.asm'

SECTION .data
msg db "Результат: ",0

SECTION .text
global _start

_start:
    pop ecx        ; Количество аргументов
    pop edx        ; Имя программы
    sub ecx, 1     ; Уменьшаем количество аргументов
    mov esi, 1     ; ← CHANGER: 1 pour la multiplication (au lieu de 0)

next:
    cmp ecx, 0
    jz _end
    pop eax
    call atoi
    imul esi, eax  ; ← CHANGER: Multiplication ESI = ESI * EAX (au lieu de add)
    loop next

_end:
    mov eax, msg
    call sprint
    mov eax, esi   ; Le résultat est déjà dans esi
    call iprintLF
    call quit
