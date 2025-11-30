%include 'in_out.asm'

SECTION .data
msg1 db 'Введите N: ',0h

SECTION .bss
N: resb 10

SECTION .text
global _start

_start:
    ; --- Вывод сообщения 'Введите N: '
    mov eax,msg1
    call sprint

    ; --- Ввод 'N'
    mov ecx, N
    mov edx, 10
    call sread

    ; --- Преобразование 'N' из символа в число
    mov eax,N
    call atoi
    mov [N],eax

    ; --- Организация цикла
    mov ecx,[N]    ; Счетчик цикла, `ecx=N`
label:
    push ecx        ; Sauvegarder ecx dans la pile
    
    ; Afficher d'abord la valeur ACTUELLE de ecx
    mov [N], ecx    ; ← AFFICHER ecx AVANT de le modifier
    mov eax, [N]
    call iprintLF
    
    ; Ensuite modifier pour la prochaine itération
    sub ecx, 1      ; ← Décrémenter APRÈS affichage
    mov [N], ecx
    
    pop ecx         ; Restaurer ecx depuis la pile
    loop label      ; loop utilise la valeur originale


    call quit      
