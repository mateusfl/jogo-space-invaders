# configs: tamanho_pixel 2x2; tamanho_tela 256x512
.data
    COR_ESTRELA: .word 0x00FFFFFF
    COR_PLAYER: .word 0x0000FF00
    COR_ENEMY: .word 0x00FF0000
    POSX_INIT: .word 55
    POSY_INIT: .word 184
    ENEMY_X: .word 60
    ENEMY_Y: .word 30

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

# Inicializador Player
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
    
    # === TORRE (2 linhas, 4 pixels de largura, centralizada) ===
    # Linha 0 da torre
    lw $20, POSX_INIT
    addi $20, $20, 8         # Centralizar: (20-4)/2 = 8
    addi $23, $0, 2          # Largura da torre
    jal draw_line
    
    # Linha 1 da torre
    lw $20, POSX_INIT
    addi $20, $20, 8
    addi $21, $21, 1
    addi $23, $0, 2
    jal draw_line
    
    # === CORPO MÉDIO (2 linhas, 8 pixels de largura) ===
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
    
    # === BASE LARGA (4 linhas, 16 pixels de largura) ===
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
    # sw $12, 2048($11)     # Salvar cenario em um outro espaço da memoria caso queira recuperar
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

draw_enemy:
    # Desenha inimigo
    # Formato: Antenas (2 pixels) + Corpo largo (12 pixels) + Pernas (4 pixels)
    #     #    #
    #  ############
    #  ############
    #     ## ##
    
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Carregar cor do inimigo
    lw $12, COR_ENEMY      # Cor do inimigo
    
    # === ANTENAS (2 linhas, 2 pixels cada, nas laterais) ===
    # Antena esquerda - Linha 0
    lw $20, ENEMY_X
    addi $20, $20, 2       # Offset para antena esquerda
    lw $21, ENEMY_Y        # Y inicial
    addi $23, $0, 2        # Largura da antena
    jal draw_line
    
    # Antena direita - Linha 0
    lw $20, ENEMY_X
    addi $20, $20, 8      # Offset para antena direita
    lw $21, ENEMY_Y        # Y inicial (mesma linha)
    addi $23, $0, 2        # Largura da antena
    jal draw_line
    
    # Antena esquerda - Linha 1
    lw $20, ENEMY_X
    addi $20, $20, 2
    lw $21, ENEMY_Y
    addi $21, $21, 1       # Próxima linha
    addi $23, $0, 2
    jal draw_line
    
    # Antena direita - Linha 1
    lw $20, ENEMY_X
    addi $20, $20, 8
    lw $21, ENEMY_Y
    addi $21, $21, 1       # Mesma linha que antena esquerda
    addi $23, $0, 2
    jal draw_line
    
    # === CORPO LARGO (2 linhas, 12 pixels de largura) ===
    # Linha 2
    lw $20, ENEMY_X
    addi $20, $20, 1       # Centralizar: (14-12)/2 = 1
    lw $21, ENEMY_Y
    addi $21, $21, 2       # Linha 2
    addi $23, $0, 10
    jal draw_line
    
    # Linha 3
    lw $20, ENEMY_X
    addi $20, $20, 1
    lw $21, ENEMY_Y
    addi $21, $21, 3       # Linha 3
    addi $23, $0, 10
    jal draw_line

    # Linha 4
    lw $20, ENEMY_X
    addi $20, $20, 1
    lw $21, ENEMY_Y
    addi $21, $21, 4       # Linha 4
    addi $23, $0, 10
    jal draw_line
    
    # === PERNAS (1 linha, 2 pixels cada, separadas) ===
    # Perna esquerda
    lw $20, ENEMY_X
    addi $20, $20, 3       # Offset para perna esquerda
    lw $21, ENEMY_Y
    addi $21, $21, 5       # Linha 5
    addi $23, $0, 2        # Largura da perna
    jal draw_line
    
    # Perna direita
    lw $20, ENEMY_X
    addi $20, $20, 7       # Offset para perna direita
    lw $21, ENEMY_Y
    addi $21, $21, 5       # Mesma linha que perna esquerda
    addi $23, $0, 2        # Largura da perna
    jal draw_line
    
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31
