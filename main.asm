# configs: tamanho_pixel 2x2; tamanho_tela 256x512
.data
    COR_ESTRELA: .word 0x00FFFFFF
    COR_PLAYER: .word 0x0000FF00
    COR_ENEMY: .word 0x00FF0000
    POSX_INIT: .word 55
    POSY_INIT: .word 184
    ENEMY_X: .word 60
    ENEMY_Y: .word 30
    
    # Alien sprite: 11x8 pixels (linha por linha)
    ALIEN_SPRITE:
        # Linha 0:
        .word 0x00000000
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00000000
        # Linha 1:
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        # Linha 2:
        .word 0x00000000
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00000000
        # Linha 3:
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00000000
        # Linha 4:
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        # Linha 5:
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00FFFFFF
        # Linha 6:
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00000000
        .word 0x00040404
        .word 0x00000000
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00FFFFFF
        # Linha 7:
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        
    # PLAYER_SPRITE

    # TODO: Atualizar para tamanho de entidade (todo mundo tem o mesmo tamanho)
    ALIEN_WIDTH: .word 11
    ALIEN_HEIGHT: .word 8

.text
main:

# Configs iniciais

    addi $23, $0, 50      # Quantidade de estrelas 


# Gerador de estrelas
g_stars:
    
    beq $23, $0, l_player
    addi $2, $0, 42
    addi $4, $0, 0
    addi $5, $0, 128
    syscall

    add $20, $0, $4         # POSIÇÃO EIXO X

    addi $2, $0, 42
    addi $4, $0, 0
    add $5, $0, 256
    syscall

    add $21, $0, $4         # POSIÇÃO EIXO Y

    lw $12, COR_ESTRELA
    jal drawpx
    
    addi $23, $23, -1

    j g_stars

# Inicializador Player (TODO: Atualizar para draw_entity depois)
l_player:
    # Desenha nave
    # Estrutura: Torre (2 linhas) + Corpo médio (2 linhas) + Base larga (4 linhas)
    #          |##|
    #        |######|
    #   |################|
    #   |################|

    
    lw $21, POSY_INIT        # Y inicial
    lw $20, POSX_INIT        # X inicial
    lw $12, COR_PLAYER       # Cor da nave
    
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # TORRE (2 linhas, 4 pixels de largura, centralizada)
    # Linha 0
    lw $20, POSX_INIT
    addi $20, $20, 8         # Centralizar: (20-4)/2 = 8
    addi $23, $0, 2          # Largura da torre
    jal draw_line
    
    # Linha 1
    lw $20, POSX_INIT
    addi $20, $20, 8
    addi $21, $21, 1
    addi $23, $0, 2
    jal draw_line
    
    # CORPO MÉDIO (2 linhas, 8 pixels de largura)
    # Linha 2
    lw $20, POSX_INIT
    addi $20, $20, 6         # Centralizar: (20-8)/2 = 6
    addi $21, $21, 1
    addi $23, $0, 6
    jal draw_line
    
    # Linha 3
    lw $20, POSX_INIT
    addi $20, $20, 6
    addi $21, $21, 1
    addi $23, $0, 6
    jal draw_line
    
    # BASE LARGA (4 linhas, 16 pixels de largura)
    # Linha 4
    lw $20, POSX_INIT
    addi $20, $20, 2         # Centralizar: (20-16)/2 = 2
    addi $21, $21, 1
    addi $23, $0, 14
    jal draw_line
    
    # Linha 5
    lw $20, POSX_INIT
    addi $20, $20, 2
    addi $21, $21, 1
    addi $23, $0, 14
    jal draw_line
    
    # Linha 6
    lw $20, POSX_INIT
    addi $20, $20, 2
    addi $21, $21, 1
    addi $23, $0, 14
    jal draw_line
    
    # Linha 7
    lw $20, POSX_INIT
    addi $20, $20, 2
    addi $21, $21, 1
    addi $23, $0, 14
    jal draw_line
    
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    
    # Desenhar um inimigo de exemplo
    jal draw_enemy
    
    j endgame

endgame:
    addi $2, $0, 10
    syscall


# FUNÇÕES ===========================================================================================

drawpx: 
    # Função para desenhar pixel na tela
    # Registrador $20 = EIXO X
    # Registrador $21 = EIXO Y

    lui $9, 0x1001          # Espaço de memoria para tela
    addi $10, $0, 128       # Largura lógica

    mul $11, $21, $10
    add $11, $11, $20
    sll $11, $11, 2
    add $11, $11, $9

    sw $12, 0($11)
    # sw $12, 2048($11)     # TODO: Salvar cenario em um outro espaço da memoria caso queira recuperar
    jr $31

# Função para desenhar uma linha horizontal
# $20 = X inicial, $21 = Y, $23 = largura, $12 = cor
draw_line:
    addi $29, $29, -4
    sw $31, 0($29)
    
    draw_line_loop:
        beq $23, $0, draw_line_end
        jal drawpx
        addi $20, $20, 1
        addi $23, $23, -1
        j draw_line_loop
    
    draw_line_end:
        lw $31, 0($29)
        addi $29, $29, 4
        jr $31

draw_enemy: # TODO: generalizar para draw_entity depois
    # Sprite: 11x8 pixels armazenado em ALIEN_SPRITE
    
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    la $8, ALIEN_SPRITE        # $8 = endereço base do sprite
    
    # Carregar dimensões
    lw $9, ALIEN_WIDTH         # $9 = largura (11)
    lw $10, ALIEN_HEIGHT       # $10 = altura (8)
    
    # Carregar posição inicial
    lw $20, ENEMY_X            # $20 = X inicial
    lw $21, ENEMY_Y            # $21 = Y inicial
    
    # Variáveis para loops
    addi $11, $0, 0            # $11 = linha atual (0 a 7)
    addi $13, $0, 0            # $13 = coluna atual (0 a 10)
    
    # Loop externo: percorre linhas
    draw_enemy_loop_y:
        beq $11, $10, draw_enemy_end    # Se linha >= altura, termina
        
        # Resetar coluna para cada nova linha
        addi $13, $0, 0
        
        # Loop interno: percorre colunas
        draw_enemy_loop_x:
            beq $13, $9, draw_enemy_next_y   # Se coluna >= largura, próxima linha
            
            # Calcular índice: linha * largura + coluna
            mul $14, $11, $9                 # $14 = linha * largura
            add $14, $14, $13                # $14 = índice
            
            # Calcular endereço do pixel: base + índice * 4
            sll $14, $14, 2                  # $14 = índice * 4 (bytes)
            add $14, $14, $8                 # $14 = endereço do pixel
            
            # Carregar cor do pixel
            lw $12, 0($14)                   # $12 = cor do pixel
            
            # Se a cor não for preta (0x00000000), desenhar o pixel
            beq $12, $0, draw_enemy_skip_pixel
            
            # Salvar valores temporários na pilha
            addi $29, $29, -28
            sw $20, 0($29)                   # Salvar X original
            sw $21, 4($29)                   # Salvar Y original
            sw $11, 8($29)                   # Salvar linha atual
            sw $13, 12($29)                  # Salvar coluna atual
            sw $8, 16($29)                   # Salvar endereço base do sprite
            sw $9, 20($29)                   # Salvar ALIEN_WIDTH
            sw $10, 24($29)                  # Salvar ALIEN_HEIGHT
            
            # Calcular posição X e Y na tela diretamente em $20 e $21
            lw $20, ENEMY_X                  # Recarregar X inicial
            add $20, $20, $13                # $20 = ENEMY_X + coluna
            lw $21, ENEMY_Y                  # Recarregar Y inicial
            add $21, $21, $11                # $21 = ENEMY_Y + linha
            
            # Desenhar pixel
            jal drawpx
            
            lw $20, 0($29)                   # X original
            lw $21, 4($29)                   # Y original
            lw $11, 8($29)                   # linha atual
            lw $13, 12($29)                  # coluna atual
            lw $8, 16($29)                   # endereço base do sprite
            lw $9, 20($29)                   # ALIEN_WIDTH
            lw $10, 24($29)                  # ALIEN_HEIGHT
            addi $29, $29, 28
            
            draw_enemy_skip_pixel:
                addi $13, $13, 1
                j draw_enemy_loop_x
        
        draw_enemy_next_y:
            addi $11, $11, 1
            j draw_enemy_loop_y
    
    draw_enemy_end:
        # Recuperar $ra
        lw $31, 0($29)
        addi $29, $29, 4
        jr $31
