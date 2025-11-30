%include 'in_out.asm'

SECTION .data
msg db "Результат: ",0
func_msg db "Функция: f(x)=2x+15",0

SECTION .text
global _start

_start:
    pop ecx
    pop edx
    sub ecx, 1
    mov esi, 0     ; Somme totale

next:
    cmp ecx, 0
    jz _end
    pop eax
    call atoi
    
    ; --- CALCUL DE f(x) = 2x + 15 ---
    mov ebx, 2     ; Multiplicateur
    imul ebx       ; EAX = 2*x
    add eax, 15    ; EAX = 2*x + 15
    ; ---------------------------------
    
    add esi, eax   ; Ajouter à la somme
    loop next

_end:
    mov eax, func_msg
    call sprintLF
    mov eax, msg
    call sprint
    mov eax, esi
    call iprintLF
    call quit
