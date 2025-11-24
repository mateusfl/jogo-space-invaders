.data
    # Configurações do Display
    # Endereço Heap para evitar conflito com variáveis .data
    displayAddress: .word 0x10040000 
    
    screenWidth:    .word 256        # Largura lógica
    screenHeight:   .word 512        # Altura lógica
    bgColor:        .word 0x000000   # Preto
    playerColor:    .word 0xFFFF00   # Amarelo
    enemyColor:     .word 0x00FF00   # Verde

    # Estado do Jogo
    playerX:        .word 60         
    playerY:        .word 240        
    
    enemyX:         .word 10         
    enemyY:         .word 10         
    enemyDir:       .word 1          
    enemyTimer:     .word 1          
    enemySpeed:     .word 2         


.text
main:
    # --- Inicialização ---
    # $16 ($s0) = Endereço base do display
    # $17 ($s1) = Player X
    # $18 ($s2) = Player Y
    # $19 ($s3) = Enemy X
    # $20 ($s4) = Enemy Y
    # $21 ($s5) = Enemy Direction
    # $22 ($s6) = Largura da tela
    
    lw $16, displayAddress
    lw $17, playerX
    lw $18, playerY
    lw $19, enemyX
    lw $20, enemyY
    lw $21, enemyDir
    lw $22, screenWidth

    # Limpar a tela uma única vez no início
    jal clear_screen

# MARK:Loop
game_loop:
    # 1. REMOVIDO: jal clear_screen
    # Não limpamos mais a tela toda a cada frame.

    # 2. Verificar Entrada (Se mover, apaga o player antigo dentro da função)
    jal check_input

    # 3. Atualizar Inimigos (Se mover, apaga os inimigos antigos dentro da função)
    jal update_enemies

    # 4. Desenhar Elementos (Nas novas posições)
    
    # Desenhar Jogador (Cor Amarela)
    lw $6, playerColor
    jal draw_player
    
    # Desenhar Inimigos (Cor Verde)
    lw $6, enemyColor
    jal draw_enemies

    # 5. Delay
    li $2, 32        # Syscall sleep
    li $4, 33        # ~30 FPS
    syscall

    # li $2, 10
    # syscall

    j game_loop

# ------------------------------------------------------------------
# MARK:LÓGICA DE ENTRADA (INPUT)
# ------------------------------------------------------------------
check_input:
    # Como vamos chamar draw_player aqui dentro, precisamos salvar $ra ($31)
    addi $29, $29, -4
    sw $31, 0($29)

    # Verifica buffer do teclado
    lui $8, 0xffff       
    lw $9, 0($8)         
    andi $9, $9, 1       
    beqz $9, input_end   

    lw $10, 4($8)        # Tecla pressionada

    # Se for mover, PRIMEIRO APAGAMOS o jogador na posição atual
    # Mas precisamos verificar qual tecla é antes
    beq $10, 0x61, prepare_move_left 
    beq $10, 0x64, prepare_move_right
    j input_end

prepare_move_left:
    # 1. Apagar (Desenhar Preto) na posição velha ($s1)
    lw $6, bgColor
    jal draw_player
    
    # 2. Atualizar coordenada
    sub $17, $17, 2      
    bltz $17, limit_left 
    j input_end          

limit_left:
    li $17, 0
    j input_end

prepare_move_right:
    # 1. Apagar (Desenhar Preto) na posição velha ($s1)
    lw $6, bgColor
    jal draw_player

    # 2. Atualizar coordenada
    add $17, $17, 2      
    li $11, 120          
    bgt $17, $11, limit_right
    j input_end

limit_right:
    li $17, 120
    j input_end

input_end:
    lw $31, 0($29)       # Recupera $ra
    addi $29, $29, 4
    jr $31

# ------------------------------------------------------------------
# MARK:LÓGICA DOS INIMIGOS (NPCs)
# ------------------------------------------------------------------
update_enemies:
    # Salvar $ra pois chamaremos draw_enemies para apagar
    addi $29, $29, -4
    sw $31, 0($29)

    # Carregar timer
    lw $8, enemyTimer    
    lw $9, enemySpeed    
    add $8, $8, 1        
    sw $8, enemyTimer    
    
    # Se timer < speed, não move
    blt $8, $9, enemies_end_func
    
    # Reset timer
    sw $0, enemyTimer    
    
    # --- MOMENTO DE MOVER ---
    # 1. Apagar Inimigos na posição VELHA (antes de mudar X/Y)
    lw $6, bgColor    # Cor Preta
    jal draw_enemies  # Apaga grade antiga

    # 2. Calcular nova posição
    add $19, $19, $21    # EnemyX += Direction

    # Verificar colisão com bordas
    bltz $19, reverse_dir
    li $10, 50           
    bgt $19, $10, reverse_dir
    
    j enemies_end_func

reverse_dir:
    mul $21, $21, -1     # Inverte direção
    add $20, $20, 4      # Move para baixo
    add $19, $19, $21    # Desencalha

enemies_end_func:
    lw $31, 0($29)       # Recupera $ra
    addi $29, $29, 4
    jr $31

# ------------------------------------------------------------------
# MARK:FUNÇÕES DE DESENHO
# ------------------------------------------------------------------

# Desenha o jogador
# Agora recebe a COR em $6 ($a2)
draw_player:
    move $4, $17         # X base
    move $5, $18         # Y base
    # A cor já está em $6 ($a2)
    
    addi $29, $29, -8    # Espaço para $ra e salvar a cor $6 (preservar $a2)
    sw $31, 0($29)
    sw $6,  4($29)       # Salvamos a cor pois draw_rect_simple pode usar regs
    
    # Parte de baixo
    move $4, $17
    move $5, $18
    li $6, 8             # Largura
    li $7, 4             # Altura
    lw $25, 4($29)       # Recupera cor para $t9 ($25)
    jal draw_rect_simple

    # Torre da nave
    move $4, $17
    add $4, $4, 3        # X + 3
    move $5, $18
    sub $5, $5, 2        # Y - 2
    li $6, 2
    li $7, 2
    lw $25, 4($29)       # Recupera cor
    jal draw_rect_simple

    lw $31, 0($29)
    addi $29, $29, 8
    jr $31

# Desenha a grade de inimigos
# Agora recebe a COR em $6 ($a2)
draw_enemies:
    addi $29, $29, -8
    sw $31, 0($29)
    sw $6,  4($29)       # Salva a cor de entrada

    # Loop externo (Linhas Y)
    li $8, 0             # i = 0
    loop_rows:
        beq $8, 3, end_enemies_draw
        
        # Loop interno (Colunas X)
        li $9, 0         # j = 0
        loop_cols:
            beq $9, 4, next_row

            # Calc X: enemyGlobalX + (j * 15)
            mul $10, $9, 15    
            add $4, $19, $10   # Coord X
            
            # Calc Y: enemyGlobalY + (i * 12)
            mul $11, $8, 12    
            add $5, $20, $11   # Coord Y
            
            # Setup Retângulo
            li $6, 8           # Largura
            li $7, 6           # Altura
            lw $25, 4($29)     # Recupera a COR salva da pilha para $25
            
            # Salvar contexto antes de chamar draw_rect
            addi $29, $29, -12
            sw $8, 0($29)
            sw $9, 4($29)
            sw $31, 8($29)
            
            jal draw_rect_simple
            
            lw $31, 8($29)
            lw $9, 4($29)
            lw $8, 0($29)
            addi $29, $29, 12

            addi $9, $9, 1     # j++
            j loop_cols

        next_row:
            addi $8, $8, 1     # i++
            j loop_rows

    end_enemies_draw:
    lw $31, 0($29)
    addi $29, $29, 8
    jr $31


# ------------------------------------------------------------------
# MARK:UTILITÁRIOS GRÁFICOS
# ------------------------------------------------------------------

# Função simples para desenhar retângulo
# $4=x, $5=y, $6=w, $7=h, $25=color
draw_rect_simple:
    move $12, $4   # x
    move $13, $5   # y
    move $14, $6   # w
    move $15, $7   # h
    
    li $24, 0      # dy
    
    rect_loop_y:
        beq $24, $15, rect_end
        li $3, 0   # dx
        
        rect_loop_x:
            beq $3, $14, rect_next_line
            
            # Endereço: Base + (y * 128 + x) * 4
            add $10, $13, $24 # y atual
            add $11, $12, $3  # x atual
            
            sll $10, $10, 7
            add $10, $10, $11
            sll $10, $10, 2
            add $10, $10, $16 # Base
            
            sw $25, 0($10)    # Pinta Cor
            
            addi $3, $3, 1
            j rect_loop_x
            
        rect_next_line:
            addi $24, $24, 1
            j rect_loop_y
            
    rect_end:
        jr $31

# Limpa a tela (Usado apenas na inicialização agora)
clear_screen:
    lw $8, displayAddress 
    li $9, 32768          
    lw $10, bgColor       
    
    clear_loop:
        sw $10, 0($8)
        addi $8, $8, 4
        addi $9, $9, -1
        bnez $9, clear_loop
    jr $31