# configs: tamanho_pixel 2x2; tamanho_tela 256x512
.data
    COR_ESTRELA: .word 0x00FFFFFF
    COR_PLAYER: .word 0x0000FF00
    COR_ENEMY: .word 0x00FF0000
    POSX_INIT: .word 55
    POSY_INIT: .word 184
    ENEMY_X: .word 60
    ENEMY_Y: .word 30
    
    # Alien sprite: 11x8 pixels (armazenado linha por linha)
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
        
    # Player sprite: 11x8 pixels (armazenado linha por linha)
    PLAYER_SPRITE:
        # Linha 0:
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        # Linha 1:
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        # Linha 2:
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        # Linha 3:
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00000000
        .word 0x00000000
        .word 0x00010101
        .word 0x00000000
        # Linha 4:
        .word 0x00000000
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00000000
        # Linha 5:
        .word 0x00FDFDFD
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
        # Linha 6:
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FFFFFF
        .word 0x00FBFBFB
        .word 0x00FFFFFF
        # Linha 7:
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

    ALIEN_WIDTH: .word 11
    ALIEN_HEIGHT: .word 8
    PLAYER_WIDTH: .word 11
    PLAYER_HEIGHT: .word 8

.text
main:

# Configs iniciais

    # Inicializar stack pointer (pilha) - CRÍTICO para funcionamento correto
    # No MARS, a pilha deve começar em 0x7FFFEFFC (topo da memória de dados)
    lui $29, 0x7FFF          # Carregar parte alta: 0x7FFF0000
    ori $29, $29, 0xEFFC     # Completar: 0x7FFFEFFC
    
    addi $23, $0, 50      # Quantidade de estrelas 


# Gerador de estrelas
g_stars:
    
    beq $23, $0, init_game_loop
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

init_game_loop:
    lw $18, ENEMY_X            # $18 = controle do loop (posição X do enemy)

# game loop
game_loop:
    jal draw_player
    jal timer

    beq $18, 128, endgame
    
    # Atualizar ENEMY_X na memória com o valor do loop
    sw $18, ENEMY_X
    
    jal draw_enemy
    jal timer

    addi $18, $18, 4           # Incrementar posição X do enemy
    j game_loop


endgame:
    addi $2, $0, 10
    syscall


# FUNÇÕES ===========================================================================================

timer:
    addi $25, $0, 500
    fortimer: beq $25, $0, fimtimer
        nop
        nop
        addi $25, $25, -1
        j fortimer
    fimtimer: jr $31

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

# Função genérica para desenhar entidade usando sprite armazenado em memória
# Parâmetros:
#   $19 = X inicial na tela (player) ou $20 = X inicial (enemy/projectile)
#   $21 = Y inicial na tela
#   $25 = tipo de entidade (0=player, 1=enemy, 2=projectile)
draw_entity:
    # Salvar $ra e parâmetros originais na pilha
    # Estrutura da pilha (de cima para baixo):
    # 0($29): $ra (endereço de retorno)
    # 4($29): $19 (X player)
    # 8($29): $20 (X enemy/projectile)
    # 12($29): $21 (Y)
    # 16($29): $25 (tipo)
    # 20($29): $22 (sprite) - será salvo depois
    # 24($29): $23 (largura) - será salvo depois
    # 28($29): $24 (altura) - será salvo depois
    
    addi $29, $29, -32               # Reservar espaço para tudo de uma vez
    sw $31, 0($29)                   # Salvar $ra primeiro (no topo)
    sw $19, 4($29)                   # Salvar X inicial (player)
    sw $20, 8($29)                   # Salvar X inicial (enemy/projectile)
    sw $21, 12($29)                  # Salvar Y inicial
    sw $25, 16($29)                  # Salvar tipo de entidade
    
    # Selecionar sprite e dimensões baseado no tipo
    # $25 = 0: player
    # $25 = 1: enemy
    # $25 = 2: projectile (futuro)
    
    addi $14, $0, 0                  # $14 = 0 (player)
    beq $25, $14, draw_entity_player
    
    addi $14, $0, 1                  # $14 = 1 (enemy)
    beq $25, $14, draw_entity_enemy
    
    addi $14, $0, 2                  # $14 = 2 (projectile)
    beq $25, $14, draw_entity_projectile
    
    # Se chegou aqui, tipo inválido - usar enemy como padrão
    j draw_entity_enemy
    
    draw_entity_player:
        la $22, PLAYER_SPRITE        # $22 = endereço base do sprite
        lw $23, PLAYER_WIDTH        # $23 = largura
        lw $24, PLAYER_HEIGHT       # $24 = altura
        add $20, $0, $19             # Usar $19 (X do player) em $20 para compatibilidade
        j draw_entity_start
    
    draw_entity_enemy:
        la $22, ALIEN_SPRITE         # $22 = endereço base do sprite
        lw $23, ALIEN_WIDTH         # $23 = largura
        lw $24, ALIEN_HEIGHT        # $24 = altura
        j draw_entity_start
    
    draw_entity_projectile:
        # TODO: Implementar quando projectile sprite estiver pronto
        # la $22, PROJECTILE_SPRITE
        # lw $23, PROJECTILE_WIDTH
        # lw $24, PROJECTILE_HEIGHT
        # Por enquanto, usar enemy como placeholder
        la $22, ALIEN_SPRITE
        lw $23, ALIEN_WIDTH
        lw $24, ALIEN_HEIGHT
        j draw_entity_start
    
    draw_entity_start:
        # Salvar sprite e dimensões na pilha (já reservado espaço acima)
        sw $22, 20($29)              # Salvar endereço base do sprite
        sw $23, 24($29)              # Salvar largura
        sw $24, 28($29)              # Salvar altura
    
    # Variáveis para loops
    addi $11, $0, 0                  # $11 = linha atual
    addi $13, $0, 0                  # $13 = coluna atual
    
    # Loop externo: percorre linhas
    draw_entity_loop_y:
        beq $11, $24, draw_entity_end    # Se linha >= altura, termina
        
        # Resetar coluna para cada nova linha
        addi $13, $0, 0
        
        # Loop interno: percorre colunas
        draw_entity_loop_x:
            beq $13, $23, draw_entity_next_y   # Se coluna >= largura, próxima linha
            
            # Calcular índice: linha * largura + coluna
            mul $14, $11, $23                 # $14 = linha * largura
            add $14, $14, $13                 # $14 = índice
            
            # Calcular endereço do pixel: base + índice * 4
            sll $14, $14, 2                   # $14 = índice * 4 (bytes)
            add $14, $14, $22                 # $14 = endereço do pixel
            
            # Carregar cor do pixel
            lw $12, 0($14)                   # $12 = cor do pixel
            
            # Se a cor não for preta (0x00000000), desenhar o pixel
            beq $12, $0, draw_entity_skip_pixel
            
            # Salvar valores temporários na pilha antes de chamar drawpx
            addi $29, $29, -28
            sw $11, 0($29)                   # Salvar linha atual
            sw $13, 4($29)                   # Salvar coluna atual
            sw $22, 8($29)                   # Salvar endereço base do sprite
            sw $23, 12($29)                  # Salvar largura
            sw $24, 16($29)                  # Salvar altura
            sw $20, 20($29)                  # Salvar X inicial
            sw $21, 24($29)                  # Salvar Y inicial
            
            # Calcular posição X e Y na tela usando valores salvos
            lw $15, 20($29)                  # Carregar X inicial
            lw $13, 4($29)                   # Carregar coluna atual
            add $20, $15, $13                # $20 = X inicial + coluna
            lw $16, 24($29)                  # Carregar Y inicial
            lw $11, 0($29)                   # Carregar linha atual
            add $21, $16, $11                # $21 = Y inicial + linha
            
            # Desenhar pixel (drawpx usa $20, $21, $12 e modifica $9, $10, $11)
            jal drawpx
            
            # Recuperar valores da pilha
            lw $11, 0($29)                   # Restaurar linha atual
            lw $13, 4($29)                   # Restaurar coluna atual
            lw $22, 8($29)                   # Restaurar endereço base do sprite
            lw $23, 12($29)                  # Restaurar largura
            lw $24, 16($29)                  # Restaurar altura
            lw $20, 20($29)                  # Restaurar X inicial
            lw $21, 24($29)                  # Restaurar Y inicial
            addi $29, $29, 28
            
            draw_entity_skip_pixel:
                # Próxima coluna
                addi $13, $13, 1
                j draw_entity_loop_x
        
        draw_entity_next_y:
            # Próxima linha
            addi $11, $11, 1
            j draw_entity_loop_y
    
    draw_entity_end:
        # Recuperar parâmetros originais (ordem inversa do salvamento)
        lw $31, 0($29)                   # Restaurar $ra PRIMEIRO (do topo)
        lw $19, 4($29)                   # Restaurar X inicial (player)
        lw $20, 8($29)                   # Restaurar X inicial (enemy/projectile)
        lw $21, 12($29)                  # Restaurar Y inicial
        lw $25, 16($29)                  # Restaurar tipo de entidade
        lw $22, 20($29)                  # Restaurar endereço base do sprite
        lw $23, 24($29)                  # Restaurar largura
        lw $24, 28($29)                  # Restaurar altura
        addi $29, $29, 32                # Restaurar pilha completamente
        
        jr $31                            # Retornar usando $ra restaurado

# Função para desenhar inimigo usando draw_entity
draw_enemy:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Preparar parâmetros para draw_entity
    lw $20, ENEMY_X            # $20 = X inicial (carregar da memória)
    lw $21, ENEMY_Y            # $21 = Y inicial
    addi $25, $0, 1            # $25 = 1 (tipo: enemy)
    
    # Chamar função genérica
    jal draw_entity
    
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

# Função para desenhar player usando draw_entity
draw_player:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Preparar parâmetros para draw_entity
    lw $19, POSX_INIT          # $19 = X inicial (player usa $19)
    lw $21, POSY_INIT          # $21 = Y inicial
    addi $25, $0, 0            # $25 = 0 (tipo: player)
    
    # Chamar função genérica
    jal draw_entity
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

# Função para desenhar projétil usando draw_entity (preparado para futuro)
draw_projectile:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Preparar parâmetros para draw_entity
    # TODO: Carregar posição do projétil quando implementado
    # lw $20, PROJECTILE_X      # $20 = X inicial
    # lw $21, PROJECTILE_Y      # $21 = Y inicial
    addi $25, $0, 2            # $25 = 2 (tipo: projectile)
    
    # Chamar função genérica
    jal draw_entity
    
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31
