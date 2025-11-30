%include 'in_out.asm'

SECTION .text
global _start

_start:
    pop ecx     ; Извлекаем количество аргументов
    pop edx     ; Извлекаем имя программы  
    sub ecx, 1  ; Уменьшаем количество аргументов

next:
    cmp ecx, 0  ; проверяем, есть ли еще аргументы
    jz _end     ; если аргументов нет выходим
    pop eax     ; извлекаем аргумент из стека
    call sprintLF ; печать аргумента
    loop next   ; переход к следующему

_end:
    call quit
