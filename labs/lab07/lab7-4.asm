%include 'in_out.asm'

section .data
msg_x db "Введите x: ",0h
msg_a db "Введите a: ",0h
result db "f(x) = ",0h

section .bss
x resb 10
a_val resb 10

section .text
global _start
_start:
    ; Saisie et conversion de x
    mov eax, msg_x
    call sprint
    mov ecx, x
    mov edx, 10
    call sread
    mov eax, x
    call atoi
    push eax        ; Sauvegarde x sur la pile
    
    ; Saisie et conversion de a
    mov eax, msg_a
    call sprint
    mov ecx, a_val
    mov edx, 10
    call sread
    mov eax, a_val
    call atoi
    mov ecx, eax    ; ecx = a
    pop ebx         ; ebx = x (récupération depuis la pile)
    
    ; Comparaison
    cmp ebx, ecx
    jl less_than
    
    ; x >= a
    mov eax, 8
    jmp display_result
    
less_than:
    ; x < a: f(x) = 2a - x
    mov eax, ecx    ; eax = a
    add eax, eax    ; eax = 2a
    sub eax, ebx    ; eax = 2a - x
    
display_result:
    ; Affichage du résultat
    push eax        ; Sauvegarde du résultat
    mov eax, result
    call sprint
    pop eax         ; Récupération du résultat
    call iprintLF
    call quit
