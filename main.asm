# configs: tamanho_pixel 2x2; tamanho_tela 256x512
.data
    COR_ESTRELA: .word 0x00FFFFFF
    COR_PLAYER: .word 0x0000FF00
    COR_ENEMY: .word 0x00FF0000
    COR_PROJ: .word 0x00FFFF00      # Cor do tiro (Amarelo)
    POSX_INIT: .word 55
    POSY_INIT: .word 184
    POSX_PREV: .word 55          # Posição X anterior do player (para apagar)
    ENEMY_X: .word 15
    ENEMY_Y: .word 30
    ENEMY_Y2: .word 50              # Segundo inimigo: 30 (Y1) + 8 (altura sprite) + 12 (gap) = 50
    ENEMY_Y3: .word 70              # Terceiro inimigo: 50 (Y2) + 8 (altura sprite) + 12 (gap) = 70
    ENEMY_X_PREV: .word 15          # Posição X anterior dos inimigos (para apagar)
    ENEMY_DIRECTION: .word 1        # Direção do movimento: 1 = direita, -1 = esquerda
    SCREEN_WIDTH: .word 128         # Largura da tela em pixels
    
    # Notas de uma melodia simples (ex: tema de suspense)
    musica_notas: .word 38, 36  # Tons MIDI
    musica_tam:   .word 2                               # Total de notas
    
    # Estado do Sequenciador
    musica_idx:   .word 0    # Qual nota está tocando agora
    musica_timer: .word 0    # Quanto tempo falta para a próxima nota
    
    # Timer e Controle de Fim de Jogo
    GAME_TIMER: .word 0              # Contador do timer do jogo (decrementa)
    GAME_TIMER_INITIAL: .word 1000  # Valor inicial do timer (ajustável)
    GAME_OVER: .word 0                # Flag: 0 = jogo ativo, 1 = jogo terminado
    GAME_WIN: .word 0                 # Flag: 0 = não ganhou, 1 = vitória
    TIMER_PRINT_COUNTER: .word 0     # Contador para controlar frequência de impressão

    # Variáveis do Projétil
    PROJ_X: .word 0
    PROJ_Y: .word 0
    PROJ_ACTIVE: .word 0            # 0 = inativo, 1 = ativo
    
    # Status dos Inimigos (1 = vivo, 0 = morto) - 15 posições
    ENEMIES_STATUS:
        .word 1, 1, 1, 1, 1    # Fileira 0 (Superior)
        .word 1, 1, 1, 1, 1    # Fileira 1 (Meio)
        .word 1, 1, 1, 1, 1    # Fileira 2 (Inferior)
    
    SPLASH_SCREEN:
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000

    SPLASH_SCREEN2:
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	
        .word	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	
        .word	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	
        .word	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	
    SPLASH_SCREEN3:
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	

    # Alien sprite: 11x8 pixels (armazenado linha por linha)
    ALIEN_SPRITE:
        .word	0x00FF0000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FF0000
        .word	0x00000000	0x00FF0000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FF0000	0x00000000
        .word	0x00000000	0x00000000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00000000	0x00000000
        .word	0x00000000	0x00FF0000	0x00FF0000	0x00000000	0x00FF0000	0x00FF0000	0x00FF0000	0x00000000	0x00FF0000	0x00FF0000	0x00000000
        .word	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000
        .word	0x00FF0000	0x00000000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00FF0000	0x00000000	0x00FF0000
        .word	0x00FF0000	0x00000000	0x00FF0000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FF0000	0x00000000	0x00FF0000
        .word	0x00000000	0x00000000	0x00000000	0x00FF0000	0x00000000	0x00000000	0x00000000	0x00FF0000	0x00000000	0x00000000	0x00000000
                                            
    # Player sprite: 11x8 pixels (armazenado linha por linha)
    PLAYER_SPRITE:
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000
        .word	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000
        .word	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000
        .word	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF
        .word	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF
        .word	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF

    # Dimensões compartilhadas (player e enemy têm as mesmas dimensões)
    SPRITE_WIDTH: .word 11
    SPRITE_HEIGHT: .word 8
    CLEAR_COLOR: .word 0x00000000

.text
main:

# Configs iniciais
    addi $23, $0, 50      # Quantidade de estrelas 

jal draw_splash_screen
jal draw_splash_screen2
jal draw_splash_screen3

# timer maior para o splash screen (não precisa ser função)
addi $25, $0, 20000          # Timer maior para splash screen
splash_timer_loop:
    beq $25, $0, splash_timer_end
    nop
    nop
    addi $25, $25, -1
    j splash_timer_loop
splash_timer_end:

    addi $4, $0, 60                  # Nota baixa
    addi $5, $0, 300                 # Duração
    addi $6, $0, 0                   # Instrumento
    addi $7, $0, 100                 # Volume
    addi $2, $0, 31
    syscall

    addi $4, $0, 300
    addi $2, $0, 32
    syscall

    addi $4, $0, 62                  # Nota baixa
    addi $5, $0, 300                 # Duração
    addi $6, $0, 0                   # Instrumento
    addi $7, $0, 100                 # Volume
    addi $2, $0, 31
    syscall

    addi $4, $0, 300
    addi $2, $0, 32
    syscall

    addi $4, $0, 65                  # Nota baixa
    addi $5, $0, 300                 # Duração
    addi $6, $0, 0                   # Instrumento
    addi $7, $0, 100                 # Volume
    addi $2, $0, 31
    syscall

    addi $4, $0, 300
    addi $2, $0, 32
    syscall

    addi $4, $0, 64                  # Nota baixa
    addi $5, $0, 300               # Duração
    addi $6, $0, 0                   # Instrumento
    addi $7, $0, 100                 # Volume
    addi $2, $0, 31
    syscall

    addi $4, $0, 500
    addi $2, $0, 32
    syscall

    addi $4, $0, 60                 # Nota baixa
    addi $5, $0, 500               # Duração
    addi $6, $0, 0                   # Instrumento
    addi $7, $0, 100                 # Volume
    addi $2, $0, 31
    syscall

    addi $4, $0, 1300
    addi $2, $0, 32
    syscall


# Apagar splash screens usando erase_rectangle
jal erase_splash_screen
jal erase_splash_screen2
jal erase_splash_screen3

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
    addi $8, $0, 0
    
    # Inicializar timer do jogo
    lw $10, GAME_TIMER_INITIAL
    sw $10, GAME_TIMER
    
    # Garantir que flags estão zeradas
    sw $0, GAME_OVER
    sw $0, GAME_WIN
    
    # Imprimir timer inicial
    jal print_timer

    # Desenho inicial dos inimigos (uma vez antes do loop para eles aparecerem)
    jal draw_enemies

# game loop
game_loop:

    # Salvar posição anterior do player antes de atualizar
    lw $14, POSX_INIT
    sw $14, POSX_PREV
    
    # checar input de teclado e atualizar posição do player
    jal check_keyboard_input
    
    jal erase_player
    jal draw_player
    jal timer

    beq $8, 128, endgame
    
    # --- NOVO: Atualizar Projétil ---
    jal update_projectile
    
    # Verificar vitória (se todos os inimigos foram eliminados)
    jal check_victory
    
    # Verificar timer de derrota
    jal check_game_timer
    
    # Verificar se o jogo terminou
    lw $10, GAME_OVER
    bne $10, $0, handle_game_end
    
    # 1. Salva a posição atual como "anterior" antes de calcular a nova
    lw $18, ENEMY_X
    sw $18, ENEMY_X_PREV 
    
    # 2. Calcula a nova posição (atualiza ENEMY_X na memória)
    jal update_enemy_position
    
    # 3. Chama a função otimizada BLINDADA que apaga e desenha um por um
    jal refresh_enemies
    
    jal atualizar_musica

    # 4. Timer para controlar a velocidade
    jal timer




    addi $8, $8, 1
    j game_loop


endgame:
    addi $2, $0, 10
    syscall


# FUNÇÕES ===========================================================================================

atualizar_musica:
    la   $8, musica_timer
    lw   $9, 0($8)
    bgtz $9, conta_frame_musica    # Se timer > 0, apenas diminui

    # --- HORA DE TOCAR A PRÓXIMA NOTA ---
    la   $8, musica_idx
    lw   $10, 0($8)                # $10 = índice atual

    # Pegar a nota da "partitura"
    la   $11, musica_notas
    sll  $12, $10, 2               # Multiplica índice por 4 (offset word)
    add  $11, $11, $12
    lw   $4, 0($11)                # $a0 = Tom da nota

    # Tocar nota assíncrona (Syscall 31)
    addi $2, $0, 31
    addi $5, $0, 400               # $a1 = Duração da nota (400ms)
    addi $6, $0, 40                 # $a2 = Instrumento (0 = Piano)
    addi $7, $0, 100                # $a3 = Volume (mais baixo para não atrapalhar o tiro)
    syscall

    # --- PREPARAR PRÓXIMA NOTA ---
    addi $10, $10, 1               # musica_idx++
    la   $13, musica_tam
    lw   $13, 0($13)
    blt  $10, $13, salvar_idx      # Se idx < tamanho, salva
    addi $10, $0, 0                # Senão, reseta para 0 (Loop da música)

salvar_idx:
    la   $8, musica_idx
    sw   $10, 0($8)
    
    addi $9, $0, 10               # Próxima nota em 20 frames (~300ms se o jogo for rápido)
    la   $8, musica_timer
    sw   $9, 0($8)
    jr   $ra

conta_frame_musica:
    addi $9, $9, -1
    la   $8, musica_timer
    sw   $9, 0($8)
    jr   $ra



timer:
    addi $25, $0, 10000
    fortimer: beq $25, $0, fimtimer
        nop
        nop
        addi $25, $25, -1
        j fortimer
    fimtimer: jr $31

# ==========================================================
# FUNÇÕES DE CONTROLE DE FIM DE JOGO
# ==========================================================

# Conta quantos inimigos ainda estão vivos
count_alive_enemies:
    addi $29, $29, -4
    sw $31, 0($29)
    
    addi $29, $29, -12
    sw $8, 0($29)                    # Salvar $8
    sw $9, 4($29)                    # Salvar $9
    sw $10, 8($29)                   # Salvar $10
    
    addi $2, $0, 0                   # $v0 = Contador = 0
    la $8, ENEMIES_STATUS
    addi $9, $0, 0                   # Índice = 0
    addi $10, $0, 15                 # Total de inimigos
    
count_loop:
    beq $9, $10, count_end
    lw $11, 0($8)                    # Carregar status
    beq $11, $0, count_next          # Se morto (0), pular
    addi $2, $2, 1                   # Incrementar contador
    
count_next:
    addi $8, $8, 4                   # Próxima posição
    addi $9, $9, 1                   # Incrementar índice
    j count_loop
    
count_end:
    lw $8, 0($29)
    lw $9, 4($29)
    lw $10, 8($29)
    addi $29, $29, 12
    
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

# Verifica se todos os inimigos foram eliminados (vitória)
check_victory:
    addi $29, $29, -4
    sw $31, 0($29)
    
    jal count_alive_enemies
    
    bne $2, $0, victory_check_end    # Se ainda há inimigos, continuar
    
    # Todos os inimigos mortos - VITÓRIA!
    addi $8, $0, 1
    sw $8, GAME_WIN
    sw $8, GAME_OVER
    
    # Tocar som de vitória
    addi $4, $0, 60                  # Nota
    addi $5, $0, 500                 # Duração
    addi $6, $0, 0                   # Instrumento
    addi $7, $0, 100                 # Volume
    addi $2, $0, 31
    syscall
    
    addi $4, $0, 100                  # Timer para próxima nota
    addi $2, $0, 32
    syscall
    
    addi $4, $0, 64                   # Nota
    addi $5, $0, 500                  # Duração
    addi $6, $0, 0                    # Instrumento
    addi $7, $0, 100                  # Volume
    addi $2, $0, 31
    syscall
    
victory_check_end:
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

# Imprime o valor do timer na saída do MARS
print_timer:
    addi $29, $29, -4
    sw $31, 0($29)
    
    addi $29, $29, -8
    sw $4, 0($29)
    sw $5, 4($29)
    
    # Imprimir string "tempo: "
    addi $4, $0, 116                 # 't'
    addi $2, $0, 11                  # syscall print char
    syscall
    addi $4, $0, 101                 # 'e'
    syscall
    addi $4, $0, 109                 # 'm'
    syscall
    addi $4, $0, 112                 # 'p'
    syscall
    addi $4, $0, 111                 # 'o'
    syscall
    addi $4, $0, 58                  # ':'
    syscall
    addi $4, $0, 32                  # ' ' (espaço)
    syscall
    
    # Imprimir valor do timer
    lw $4, GAME_TIMER
    addi $2, $0, 1                    # syscall print integer
    syscall
    
    # Imprimir nova linha
    addi $4, $0, 10                  # '\n'
    addi $2, $0, 11                  # syscall print char
    syscall
    
    lw $4, 0($29)
    lw $5, 4($29)
    addi $29, $29, 8
    
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

# Verifica o timer e decrementa. Se zerar com inimigos vivos, derrota
check_game_timer:
    addi $29, $29, -4
    sw $31, 0($29)
    
    addi $29, $29, -12
    sw $8, 0($29)
    sw $9, 4($29)
    sw $10, 8($29)
    
    lw $8, GAME_TIMER
    beq $8, $0, timer_check_end      # Se já zerou, não fazer nada
    
    addi $8, $8, -1                  # Decrementar
    sw $8, GAME_TIMER
    
    # Imprimir timer a cada 100 unidades ou quando for múltiplo de 1000
    addi $10, $0, 100
    div $8, $10
    mfhi $10                         # Resto da divisão por 100
    bne $10, $0, skip_print_timer    # Se não é múltiplo de 100, pular
    
    jal print_timer
    
skip_print_timer:
    bne $8, $0, timer_check_end      # Se ainda não zerou, continuar
    
    # Timer zerou - verificar se há inimigos vivos
    jal count_alive_enemies
    beq $2, $0, timer_check_end      # Se não há inimigos, vitória já foi detectada
    
    # Ainda há inimigos - derrota por tempo
    addi $9, $0, 1
    sw $9, GAME_OVER
    # GAME_WIN permanece 0 (derrota)
    
    # Tocar som de derrota
    addi $4, $0, 30                  # Nota baixa
    addi $5, $0, 800                 # Duração
    addi $6, $0, 0                   # Instrumento
    addi $7, $0, 100                 # Volume
    addi $2, $0, 31
    syscall
    
timer_check_end:
    lw $8, 0($29)
    lw $9, 4($29)
    lw $10, 8($29)
    addi $29, $29, 12
    
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

# Gerencia o fim do jogo (vitória ou derrota)
handle_game_end:
    # Aguardar um tempo antes de terminar (para efeitos sonoros tocarem)
    addi $25, $0, 2000000
wait_loop:
    beq $25, $0, wait_end
    addi $25, $25, -1
    j wait_loop
wait_end:
    j endgame                       # Terminar o jogo

# Função para atualizar posição dos inimigos com verificação de limites
update_enemy_position:
    addi $29, $29, -4
    sw $31, 0($29)
    
    addi $29, $29, -8
    sw $16, 0($29)                   # Salvar $16
    sw $17, 4($29)                   # Salvar $17
    
    lw $17, ENEMY_X                  # $17 = posição X atual
    lw $16, ENEMY_DIRECTION          # $16 = direção atual (1 ou -1)
    
    addi $14, $0, 49                 # $14 = limite direito (49)
    
    slt $15, $17, $14                # $15 = 1 se X < 49, 0 se X >= 49
    beq $15, $0, update_enemy_invert_right
    
    addi $14, $0, 1                 # $14 = limite esquerdo (0)
    slt $15, $14, $17                 # $15 = 1 se 0 < X, 0 se X <= 0
    beq $15, $0, update_enemy_invert_left
    
    j update_enemy_move
    
    update_enemy_invert_right:
        addi $16, $0, -1
        sw $16, ENEMY_DIRECTION
        j update_enemy_move
    
    update_enemy_invert_left:
        addi $16, $0, 1
        sw $16, ENEMY_DIRECTION
        j update_enemy_move
    
    update_enemy_move:
        addi $14, $0, 2               # $14 = offset de movimento
        mul $15, $16, $14             # $15 = direção * offset
        add $17, $17, $15              # $17 = nova posição X
        sw $17, ENEMY_X                # Atualizar ENEMY_X
        
        # IMPORTANTE: Atualizar $18 para o chamador, se necessário
        add $18, $0, $17
    
    lw $16, 0($29)                   # Restaurar $16
    lw $17, 4($29)                   # Restaurar $17
    addi $29, $29, 8
    
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

drawpx: 
    # Função para desenhar pixel na tela
    lui $9, 0x1001          # Espaço de memoria para tela
    addi $10, $0, 128       # Largura lógica

    mul $11, $21, $10
    add $11, $11, $20
    sll $11, $11, 2
    add $11, $11, $9

    sw $12, 0($11)
    jr $31

draw_entity:
    # Salvar $ra e parâmetros originais na pilha
    addi $29, $29, -32               
    sw $31, 0($29)                   
    sw $19, 4($29)                   
    sw $20, 8($29)                   
    sw $21, 12($29)                  
    sw $25, 16($29)                  
    
    addi $14, $0, 0                  # $14 = 0 (player)
    beq $25, $14, draw_entity_player
    
    addi $14, $0, 1                  # $14 = 1 (enemy)
    beq $25, $14, draw_entity_enemy
    
    addi $14, $0, 3                  # $14 = 3 (splash screen 1)
    beq $25, $14, draw_entity_splash_screen

    addi $14, $0, 4                  # $14 = 4 (splash screen 2)
    beq $25, $14, draw_entity_splash_screen2
    
    addi $14, $0, 5                  # $14 = 5 (splash screen 3)
    beq $25, $14, draw_entity_splash_screen3

    j draw_entity_enemy
    
    draw_entity_player:
        la $22, PLAYER_SPRITE        
        lw $23, SPRITE_WIDTH         
        lw $24, SPRITE_HEIGHT        
        add $20, $0, $19             
        j draw_entity_start
    
    draw_entity_enemy:
        la $22, ALIEN_SPRITE         
        lw $23, SPRITE_WIDTH         
        lw $24, SPRITE_HEIGHT        
        j draw_entity_start
    
    draw_entity_splash_screen:
        addi $20, $0, 44                  
        addi $21, $0, 64                  
        la $22, SPLASH_SCREEN      
        addi $23, $0, 44                 
        addi $24, $0, 8                  
        j draw_entity_start    

    draw_entity_splash_screen2:
        addi $20, $0, 44                  
        addi $21, $0, 74                  
        la $22, SPLASH_SCREEN2      
        addi $23, $0, 44                 
        addi $24, $0, 8                  
        j draw_entity_start    

    draw_entity_splash_screen3:
        addi $20, $0, 44                  
        addi $21, $0, 104                  
        la $22, SPLASH_SCREEN3      
        addi $23, $0, 44                 
        addi $24, $0, 15                  
        j draw_entity_start    

    draw_entity_start:
        sw $22, 20($29)              
        sw $23, 24($29)              
        sw $24, 28($29)              
    
    addi $11, $0, 0                  # $11 = linha atual
    addi $13, $0, 0                  # $13 = coluna atual
    
    draw_entity_loop_y:
        beq $11, $24, draw_entity_end    
        
        addi $13, $0, 0
        
        draw_entity_loop_x:
            beq $13, $23, draw_entity_next_y   
            
            mul $14, $11, $23                 
            add $14, $14, $13                 
            sll $14, $14, 2                   
            add $14, $14, $22                 
            
            lw $12, 0($14)                   
            
            beq $12, $0, draw_entity_skip_pixel
            
            addi $29, $29, -28
            sw $11, 0($29)        
            sw $13, 4($29)        
            sw $22, 8($29)        
            sw $23, 12($29)       
            sw $24, 16($29)       
            sw $20, 20($29)       
            sw $21, 24($29)       
            
            lw $15, 20($29)                  
            lw $13, 4($29)                   
            add $20, $15, $13                
            lw $16, 24($29)                  
            lw $11, 0($29)                   
            add $21, $16, $11                
            
            jal drawpx
            
            lw $11, 0($29)          
            lw $13, 4($29)          
            lw $22, 8($29)          
            lw $23, 12($29)         
            lw $24, 16($29)         
            lw $20, 20($29)         
            lw $21, 24($29)         
            addi $29, $29, 28
            
            draw_entity_skip_pixel:
                addi $13, $13, 1
                j draw_entity_loop_x
        
        draw_entity_next_y:
            addi $11, $11, 1
            j draw_entity_loop_y
    
    draw_entity_end:
        lw $31, 0($29)       
        lw $19, 4($29)       
        lw $20, 8($29)       
        lw $21, 12($29)      
        lw $25, 16($29)      
        lw $22, 20($29)      
        lw $23, 24($29)      
        lw $24, 28($29)      
        addi $29, $29, 32    
        
        jr $31                            

draw_splash_screen:
    addi $29, $29, -4
    sw $31, 0($29)
    
    addi $20, $0, 18      # X inicial
    addi $21, $0, 16      # Y inicial
    addi $25, $0, 3       # $25 = 3 (tipo: splash screen 1)
    
    jal draw_entity
    
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

draw_splash_screen2:
    addi $29, $29, -4
    sw $31, 0($29)
    
    addi $20, $0, 18      # X inicial
    addi $21, $0, 40      # Y inicial
    addi $25, $0, 4       # $25 = 4 (tipo: splash screen 2)
    
    jal draw_entity
    
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

draw_splash_screen3:
    addi $29, $29, -4
    sw $31, 0($29)
    
    addi $20, $0, 18      # X inicial
    addi $21, $0, 60      # Y inicial
    addi $25, $0, 5       # $25 = 5 (tipo: splash screen 3)
    
    jal draw_entity
    
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

draw_enemy_at:
    addi $29, $29, -4
    sw $31, 0($29)
    addi $25, $0, 1            
    jal draw_entity
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

erase_enemy_at:
    addi $29, $29, -4
    sw $31, 0($29)
    lw $23, SPRITE_WIDTH         
    lw $24, SPRITE_HEIGHT        
    jal erase_rectangle
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

draw_enemies:
    addi $29, $29, -4
    sw $31, 0($29)
    addi $29, $29, -16
    sw $16, 0($29)                   
    sw $17, 4($29)                   
    sw $18, 8($29)                   
    sw $19, 12($29)                  
    
    lw $18, ENEMY_X                  
    addi $17, $0, 0                  
    
    draw_enemies_loop_y:
        beq $17, 3, draw_enemies_end_y   
        beq $17, $0, draw_enemies_y1      
        addi $14, $0, 1
        beq $17, $14, draw_enemies_y2    
        lw $19, ENEMY_Y3
        j draw_enemies_y_done
        draw_enemies_y1: lw $19, ENEMY_Y
        j draw_enemies_y_done
        draw_enemies_y2: lw $19, ENEMY_Y2
        j draw_enemies_y_done
        
        draw_enemies_y_done:
            addi $16, $0, 0              
            draw_enemies_loop_x:
                beq $16, 5, draw_enemies_end_x   
                addi $14, $0, 17                 
                mul $15, $16, $14                
                add $20, $18, $15                
                add $21, $0, $19                  
                addi $29, $29, -8
                sw $16, 0($29)                   
                sw $17, 4($29)                   
                jal draw_enemy_at
                lw $16, 0($29)                   
                lw $17, 4($29)                   
                addi $29, $29, 8
                addi $16, $16, 1
                j draw_enemies_loop_x
            draw_enemies_end_x:
                addi $17, $17, 1
                j draw_enemies_loop_y
    draw_enemies_end_y:
        lw $16, 0($29)                   
        lw $17, 4($29)                   
        lw $18, 8($29)                   
        lw $19, 12($29)                  
        addi $29, $29, 16
        lw $31, 0($29)
        addi $29, $29, 4
        jr $31

draw_player:
    addi $29, $29, -4
    sw $31, 0($29)
    lw $19, POSX_INIT          
    lw $21, POSY_INIT          
    addi $25, $0, 0            
    jal draw_entity
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

check_keyboard_input:
    addi $29, $29, -4
    sw $31, 0($29)
    lui $8, 0xFFFF              
    lw $9, 0($8)                 
    andi $9, $9, 1               
    beq $9, $0, check_keyboard_end   
    lw $10, 4($8)                
    addi $11, $0, 'a'
    beq $10, $11, move_player_left
    addi $11, $0, 'd'
    beq $10, $11, move_player_right
    
    # --- NOVO: Tecla 'w' para atirar ---
    addi $11, $0, 119       # ASCII 'w'
    beq $10, $11, init_projectile

    j check_keyboard_end
    
    move_player_left:
        lw $12, POSX_INIT        
        addi $12, $12, -2        
        addi $13, $0, 0          
        slt $14, $12, $13        
        bne $14, $0, check_keyboard_end   
        sw $12, POSX_INIT        
        j check_keyboard_end
    move_player_right:
        lw $12, POSX_INIT
        lw $13, SPRITE_WIDTH
        add $12, $12, $13        
        addi $12, $12, 2         
        addi $14, $0, 128        
        slt $15, $14, $12        
        bne $15, $0, check_keyboard_end   
        lw $12, POSX_INIT        
        addi $12, $12, 2         
        sw $12, POSX_INIT        
        j check_keyboard_end
        
    init_projectile:
        
        lw $12, PROJ_ACTIVE
        bne $12, $0, check_keyboard_end # Se já ativo, ignora

        addi $4, $0, 80		# Nota
        addi $5, $0, 300	# Duração da Nota
        addi $6, $0, 80		# Instrumento
        addi $7, $0, 100	# Volume
        addi $2, $0, 31		
        syscall

        addi $12, $0, 1
        sw $12, PROJ_ACTIVE
        
        lw $13, POSX_INIT
        addi $13, $13, 5  # Centro do player
        sw $13, PROJ_X
        
        lw $14, POSY_INIT
        addi $14, $14, -2 # Acima do player
        sw $14, PROJ_Y
        j check_keyboard_end
        
    check_keyboard_end:
        lw $31, 0($29)
        addi $29, $29, 4
        jr $31

erase_player:
    addi $29, $29, -4
    sw $31, 0($29)
    lw $20, POSX_PREV          
    lw $21, POSY_INIT          
    lw $23, SPRITE_WIDTH       
    lw $24, SPRITE_HEIGHT      
    jal erase_rectangle
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

erase_splash_screen:
    addi $29, $29, -4
    sw $31, 0($29)
    addi $20, $0, 44             
    addi $21, $0, 64             
    addi $23, $0, 44             
    addi $24, $0, 8              
    jal erase_rectangle
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

erase_splash_screen2:
    addi $29, $29, -4
    sw $31, 0($29)
    addi $20, $0, 44             
    addi $21, $0, 74             
    addi $23, $0, 44             
    addi $24, $0, 8              
    jal erase_rectangle
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

erase_splash_screen3:
    addi $29, $29, -4
    sw $31, 0($29)
    addi $20, $0, 44             
    addi $21, $0, 104             
    addi $23, $0, 44             
    addi $24, $0, 15             
    jal erase_rectangle
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

erase_rectangle:
    addi $29, $29, -4
    sw $31, 0($29)
    
    add $16, $0, $20                 
    add $17, $0, $21                 
    addi $11, $0, 0                  
    addi $13, $0, 0                  
    addi $12, $0, 0                  
    
    erase_rectangle_loop_y:
        beq $11, $24, erase_rectangle_end    
        addi $13, $0, 0
        erase_rectangle_loop_x:
            beq $13, $23, erase_rectangle_next_y   
            addi $29, $29, -8
            sw $11, 0($29)                   
            sw $13, 4($29)                   
            add $20, $16, $13               
            add $21, $17, $11                
            jal drawpx
            lw $11, 0($29)                   
            lw $13, 4($29)                   
            addi $29, $29, 8
            addi $13, $13, 1
            j erase_rectangle_loop_x
        erase_rectangle_next_y:
            addi $11, $11, 1
            j erase_rectangle_loop_y
    erase_rectangle_end:
        add $20, $0, $16                 
        add $21, $0, $17                 
        lw $31, 0($29)
        addi $29, $29, 4
        jr $31

# ==========================================================
# NOVA FUNÇÃO: ATUALIZAR PROJÉTIL E COLISÃO
# ==========================================================
update_projectile:
    addi $29, $29, -4
    sw $31, 0($29)
    
    lw $8, PROJ_ACTIVE
    beq $8, $0, up_proj_end
    
    lw $20, PROJ_X
    lw $21, PROJ_Y
    
    # 1. Apagar pixel atual (desenhar preto)
    # Salvar registradores pois drawpx usa $11, $12, etc
    addi $29, $29, -8
    sw $20, 0($29)
    sw $21, 4($29)
    
    addi $12, $0, 0 # Preto
    jal drawpx
    
    lw $20, 0($29)
    lw $21, 4($29)
    addi $29, $29, 8
    
    # 2. Mover para cima
    addi $21, $21, -4 # Velocidade do tiro
    sw $21, PROJ_Y
    
    # 3. Verificar Limites (Topo da tela)
    slt $8, $21, $0 # Y < 0?
    bne $8, $0, up_proj_deactivate
    
    # 4. Verificar Colisão (Ler Cor do Pixel)
    # Calcular endereço: Base (0x10010000) + (Y*128 + X)*4
    lui $9, 0x1001
    addi $10, $0, 128
    mul $11, $21, $10
    add $11, $11, $20
    sll $11, $11, 2
    add $11, $11, $9
    
    lw $12, 0($11) # Carregar cor da nova posição
    
    lw $13, COR_ENEMY
    beq $12, $13, up_proj_collision
    
    # Se não houve colisão, desenhar nova posição
    lw $12, COR_PROJ
    jal drawpx
    j up_proj_end

up_proj_deactivate:
    sw $0, PROJ_ACTIVE
    j up_proj_end

up_proj_collision:
    # 1. Desativar tiro
    sw $0, PROJ_ACTIVE
    
    # 2. Descobrir qual inimigo morreu e atualizar status
    # Precisamos de $20 (Proj X) e $21 (Proj Y)
    
    # Determinar Fileira (Row)
    addi $17, $0, -1      # $17 = Row Index
    
    lw $10, ENEMY_Y
    slt $11, $21, $10     # ProjY < EnemyY ?
    bne $11, $0, up_proj_end # Se for menor que a primeira fileira, erro
    
    # Verificar Fileira 0 (Y >= 30 e Y < 38) - Simplificado: Y < Y2
    lw $10, ENEMY_Y2
    slt $11, $21, $10
    bne $11, $0, set_row_0
    
    # Verificar Fileira 1 (Y >= 50 e Y < Y3)
    lw $10, ENEMY_Y3
    slt $11, $21, $10
    bne $11, $0, set_row_1
    
    # Se chegou aqui, é Fileira 2
    j set_row_2
    
    set_row_0: addi $17, $0, 0
    lw $26, ENEMY_Y
    j calc_col
    set_row_1: addi $17, $0, 1
    lw $26, ENEMY_Y2
    j calc_col
    set_row_2: addi $17, $0, 2
    lw $26, ENEMY_Y3
    j calc_col
    
    calc_col:
        # Col Index = (ProjX - EnemyBaseX) / 17
        lw $10, ENEMY_X
        sub $11, $20, $10   # Delta X
        
        # Se Delta X < 0, ignorar (tiro fora da grade à esquerda)
        slt $12, $11, $0
        bne $12, $0, up_proj_end
        
        addi $12, $0, 17
        div $11, $12
        mflo $16            # $16 = Col Index (0 a 4)
        
        # Verificar se Col <= 4
        addi $12, $0, 5
        slt $13, $16, $12   # Col < 5?
        beq $13, $0, up_proj_end
        
        # Calcular Índice Global: Row * 5 + Col
        mul $27, $17, $12
        add $27, $27, $16   # $27 = Índice Global (0-14)
        
        # Marcar como morto (0) no array ENEMIES_STATUS
        la $14, ENEMIES_STATUS
        sll $25, $27, 2     # Offset em bytes
        add $14, $14, $25
        sw $0, 0($14)       # Status = 0 (Morto)
        
        # Apagar o inimigo da tela imediatamente
        # Precisamos de X e Y do inimigo para erase_enemy_at
        # X = EnemyBaseX + Col * 17
        addi $12, $0, 17
        mul $15, $16, $12
        lw $10, ENEMY_X
        add $20, $10, $15   # X do Inimigo
        add $21, $0, $26    # Y do Inimigo (já carregado em $26)

        addi $4, $0, 50		# Nota
        addi $5, $0, 100	# Duração da Nota
        addi $6, $0, 116		# Instrumento
        addi $7, $0, 100	# Volume
        addi $2, $0, 31		
        syscall
        
        addi $4, $0, 100 	# Timer para ir para proxima nota 
        addi $2, $0, 32
        syscall

        addi $4, $0, 40		# Nota
        addi $5, $0, 100	# Duração da Nota
        addi $6, $0, 116		# Instrumento
        addi $7, $0, 100	# Volume
        addi $2, $0, 31		
        syscall
        
        addi $4, $0, 100 	# Timer para ir para proxima nota 
        addi $2, $0, 32
        syscall

        addi $4, $0, 30		# Nota
        addi $5, $0, 100	# Duração da Nota
        addi $6, $0, 116		# Instrumento
        addi $7, $0, 100	# Volume
        addi $2, $0, 31		
        syscall
        
        addi $4, $0, 100 	# Timer para ir para proxima nota 
        addi $2, $0, 32
        syscall
        
        jal erase_enemy_at

    j up_proj_end

up_proj_end:
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

# ==========================================================
# FUNÇÃO CORRIGIDA COM PROTEÇÃO DE REGISTRADORES
# ==========================================================
refresh_enemies:
    addi $29, $29, -4
    sw $31, 0($29)
    
    addi $29, $29, -24
    sw $16, 0($29)       
    sw $17, 4($29)       
    sw $18, 8($29)       
    sw $19, 12($29)      
    sw $26, 16($29)      
    sw $27, 20($29)      
    
    lw $18, ENEMY_X_PREV      
    lw $19, ENEMY_X           
    
    # Loop Fileiras (0 a 2)
    addi $17, $0, 0
    
    refresh_loop_y:
        beq $17, 3, refresh_end_y
        
        beq $17, $0, refresh_y1
        addi $14, $0, 1
        beq $17, $14, refresh_y2
        lw $26, ENEMY_Y3
        j refresh_y_done
        refresh_y1: lw $26, ENEMY_Y
        j refresh_y_done
        refresh_y2: lw $26, ENEMY_Y2
        refresh_y_done:
            
            # Loop Colunas (0 a 4)
            addi $16, $0, 0
            
            refresh_loop_x:
                beq $16, 5, refresh_end_x
                
                # --- VERIFICAR STATUS DO INIMIGO ---
                # Índice = Row($17) * 5 + Col($16)
                addi $27, $0, 5
                mul $27, $17, $27
                add $27, $27, $16   # Índice
                sll $27, $27, 2     # Bytes
                la $14, ENEMIES_STATUS
                add $27, $27, $14
                lw $14, 0($27)      # Carregar status
                
                # Se Status == 0 (Morto), pular
                beq $14, $0, refresh_skip_enemy
                
                addi $14, $0, 17
                mul $15, $16, $14   
                
                # --- PASSO A: APAGAR ---
                add $20, $18, $15   
                add $21, $0, $26    
                
                # BLINDAGEM CRÍTICA: Salvar $16 e $17 na pilha
                # porque erase_rectangle vai usar esses registos!
                addi $29, $29, -20
                sw $15, 0($29)
                sw $26, 4($29)
                sw $16, 8($29)      # Salva contador colunas
                sw $17, 12($29)     # Salva contador fileiras
                sw $19, 16($29)
                
                jal erase_enemy_at  
                
                lw $15, 0($29)
                lw $26, 4($29)
                lw $19, 16($29)
                # (Não recuperamos $16 e $17 ainda)
                
                # --- PASSO B: DESENHAR ---
                add $20, $19, $15   
                add $21, $0, $26    
                
                jal draw_enemy_at   
                
                # Restaurar contadores originais
                lw $15, 0($29)
                lw $26, 4($29)
                lw $16, 8($29)      # Recupera contador colunas
                lw $17, 12($29)     # Recupera contador fileiras
                lw $19, 16($29)
                addi $29, $29, 20
                
            refresh_skip_enemy:
                addi $16, $16, 1
                j refresh_loop_x
            
            refresh_end_x:
                addi $17, $17, 1
                j refresh_loop_y
    
    refresh_end_y:
        lw $16, 0($29)
        lw $17, 4($29)
        lw $18, 8($29)
        lw $19, 12($29)
        lw $26, 16($29)
        lw $27, 20($29)
        addi $29, $29, 24
        
        lw $31, 0($29)
        addi $29, $29, 4
        jr $31
