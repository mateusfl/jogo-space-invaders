# configs: tamanho_pixel 2x2; tamanho_tela 256x512
.data
    COR_ESTRELA: .word 0x00FFFFFF
    COR_PLAYER: .word 0x0000FF00
    COR_ENEMY: .word 0x00FF0000
    POSX_INIT: .word 55
    POSY_INIT: .word 184
    ENEMY_X: .word 15
    ENEMY_Y: .word 30
    ENEMY_Y2: .word 50              # Segundo inimigo: 30 (Y1) + 8 (altura sprite) + 12 (gap) = 50
    ENEMY_Y3: .word 70              # Terceiro inimigo: 50 (Y2) + 8 (altura sprite) + 12 (gap) = 70
    ENEMY_X_PREV: .word 15          # Posição X anterior dos inimigos (para apagar)
    ENEMY_DIRECTION: .word 1        # Direção do movimento: 1 = direita, -1 = esquerda
    SCREEN_WIDTH: .word 128         # Largura da tela em pixels
    
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
        .word	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF
        .word	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000
        .word	0x00000000	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00000000
        .word	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00000000
        .word	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF
        .word	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00FFFFFF	0x00000000	0x00FFFFFF
        .word	0x00FFFFFF	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00FFFFFF
        .word	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000	0x00FFFFFF	0x00000000	0x00000000	0x00000000
											
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

    # Inicializar stack pointer (pilha) - CRÍTICO para funcionamento correto
    # No MARS, a pilha deve começar em 0x7FFFEFFC (topo da memória de dados)
    lui $29, 0x7FFF          # Carregar parte alta: 0x7FFF0000
    ori $29, $29, 0xEFFC     # Completar: 0x7FFFEFFC
    
    addi $23, $0, 50      # Quantidade de estrelas 


jal draw_splash_screen
jal draw_splash_screen2
jal draw_splash_screen3

# timer maior para o splash screen (não precisa ser função)
addi $25, $0, 2000000          # Timer maior para splash screen
splash_timer_loop:
    beq $25, $0, splash_timer_end
    nop
    nop
    addi $25, $25, -1
    j splash_timer_loop
splash_timer_end:

# Apagar splash screens usando a mesma lógica de erase_entity
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

# game loop
game_loop:
    jal erase_player
    jal draw_player
    jal timer

    beq $8, 128, endgame

    jal erase_enemies
    
    lw $18, ENEMY_X
    
    jal draw_enemies
    jal timer

    sw $18, ENEMY_X_PREV
    
    # Atualizar posição dos inimigos (verificar limites e inverter direção se necessário)
    jal update_enemy_position
    
    addi $8, $8, 1
    j game_loop


endgame:
    addi $2, $0, 10
    syscall


# FUNÇÕES ===========================================================================================

timer:
    addi $25, $0, 90000
    fortimer: beq $25, $0, fimtimer
        nop
        nop
        addi $25, $25, -1
        j fortimer
    fimtimer: jr $31

# Função para atualizar posição dos inimigos com verificação de limites
# Verifica se chegou ao fim da tela e inverte direção se necessário
# Atualiza $18 (usado no loop principal) e ENEMY_X
update_enemy_position:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Salvar registradores que serão usados
    addi $29, $29, -8
    sw $16, 0($29)                   # Salvar $16 (direção)
    sw $17, 4($29)                   # Salvar $17 (X atual)
    
    # Carregar valores atuais
    lw $17, ENEMY_X                  # $17 = posição X atual
    lw $16, ENEMY_DIRECTION          # $16 = direção atual (1 ou -1)
    
    # Calcular limite direito: última coluna (X + 4*17 + 11) não pode ultrapassar 128
    # X + 68 + 11 >= 128, então X >= 49
    addi $14, $0, 49                 # $14 = limite direito (49)
    
    # Verificar se chegou ao limite direito (X >= 49)
    slt $15, $17, $14                # $15 = 1 se X < 49, 0 se X >= 49
    beq $15, $0, update_enemy_invert_right   # Se X >= 49, inverter para esquerda
    
    # Verificar se chegou ao limite esquerdo (X <= 0)
    addi $14, $0, 1                 # $14 = limite esquerdo (0)
    slt $15, $14, $17                 # $15 = 1 se 0 < X, 0 se X <= 0
    beq $15, $0, update_enemy_invert_left     # Se X <= 0, inverter para direita
    
    # Se não chegou aos limites, continuar movimento normal
    j update_enemy_move
    
    update_enemy_invert_right:
        # Inverter direção para esquerda
        addi $16, $0, -1
        sw $16, ENEMY_DIRECTION
        j update_enemy_move
    
    update_enemy_invert_left:
        # Inverter direção para direita
        addi $16, $0, 1
        sw $16, ENEMY_DIRECTION
        j update_enemy_move
    
    update_enemy_move:
        # Mover inimigos: offset menor (2 pixels) multiplicado pela direção
        addi $14, $0, 2               # $14 = offset de movimento (2 pixels)
        mul $15, $16, $14             # $15 = direção * offset (2 ou -2)
        add $17, $17, $15              # $17 = nova posição X
        sw $17, ENEMY_X                # Atualizar ENEMY_X
        
        # Atualizar $18 no loop principal também (não restaurar o valor antigo)
        add $18, $0, $17
    
    # Recuperar registradores (exceto $18 que foi atualizado)
    lw $16, 0($29)                   # Restaurar $16
    lw $17, 4($29)                   # Restaurar $17
    addi $29, $29, 8
    
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

drawpx: 
    # Função para desenhar pixel na tela
    # Registrador $20 = EIXO X
    # Registrador $21 = EIXO Y

    lui $9, 0x1001          # Espaço de memoria para tela
    addi $10, $0, 128       # Largura lógica

    # Calculo = (Y * largura) + X
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
#   $19 = X inicial na tela (player) ou $20 = X inicial (enemy)
#   $21 = Y inicial na tela
#   $25 = tipo de entidade (0=player, 1=enemy)
draw_entity:
    # Salvar $ra e parâmetros originais na pilha
    # Estrutura da pilha (de cima para baixo):
    # 0($29): $ra (endereço de retorno)
    # 4($29): $19 (X player)
    # 8($29): $20 (X enemy)
    # 12($29): $21 (Y)
    # 16($29): $25 (tipo)
    # 20($29): $22 (sprite) - será salvo depois
    # 24($29): $23 (largura) - será salvo depois
    # 28($29): $24 (altura) - será salvo depois
    
    addi $29, $29, -32               # Reservar espaço para tudo de uma vez
    sw $31, 0($29)                   # Salvar $ra primeiro (no topo)
    sw $19, 4($29)                   # Salvar X inicial (player)
    sw $20, 8($29)                   # Salvar X inicial (enemy)
    sw $21, 12($29)                  # Salvar Y inicial
    sw $25, 16($29)                  # Salvar tipo de entidade
    
    # Selecionar sprite e dimensões baseado no tipo
    # $25 = 0: player
    # $25 = 1: enemy
    
    addi $14, $0, 0                  # $14 = 0 (player)
    beq $25, $14, draw_entity_player
    
    addi $14, $0, 1                  # $14 = 1 (enemy)
    beq $25, $14, draw_entity_enemy
    
    addi $14, $0, 2                  # $14 = 2 (projectile)
    beq $25, $14, draw_entity_projectile

    addi $14, $0, 3                  # $14 = 3 (splash screen 1)
    beq $25, $14, draw_entity_splash_screen

    addi $14, $0, 4                  # $14 = 4 (splash screen 2)
    beq $25, $14, draw_entity_splash_screen2
    
    addi $14, $0, 5                  # $14 = 5 (splash screen 3)
    beq $25, $14, draw_entity_splash_screen3

    # Se chegou aqui, tipo inválido - usar enemy como padrão
    j draw_entity_enemy
    
    draw_entity_player:
        la $22, PLAYER_SPRITE        # $22 = endereço base do sprite
        lw $23, SPRITE_WIDTH         # $23 = largura (compartilhada)
        lw $24, SPRITE_HEIGHT        # $24 = altura (compartilhada)
        add $20, $0, $19             # Usar $19 (X do player) em $20 para compatibilidade
        j draw_entity_start
    
    draw_entity_enemy:
        la $22, ALIEN_SPRITE         # $22 = endereço base do sprite
        lw $23, SPRITE_WIDTH         # $23 = largura (compartilhada)
        lw $24, SPRITE_HEIGHT        # $24 = altura (compartilhada)
        j draw_entity_start
    
    draw_entity_projectile:
        # TODO: Implementar quando projectile sprite estiver pronto
        # la $22, PROJECTILE_SPRITE
        # Por enquanto, usar enemy como placeholder
        la $22, ALIEN_SPRITE
        lw $23, SPRITE_WIDTH         # $23 = largura (compartilhada)
        lw $24, SPRITE_HEIGHT        # $24 = altura (compartilhada)
        j draw_entity_start
    
    draw_entity_splash_screen:
        addi $20, $0, 44                  # X inicial
        addi $21, $0, 64                  # Y inicial
        la $22, SPLASH_SCREEN      # Endereço base do sprite
        addi $23, $0, 44                 # Largura do sprite (128 pixels) 
        addi $24, $0, 8                  # Altura do sprite (6 pixels)
        j draw_entity_start    

    draw_entity_splash_screen2:
        addi $20, $0, 44                  # X inicial
        addi $21, $0, 74                  # Y inicial
        la $22, SPLASH_SCREEN2      # Endereço base do sprite
        addi $23, $0, 44                 # Largura do sprite (128 pixels) 
        addi $24, $0, 8                  # Altura do sprite (6 pixels)
        j draw_entity_start    

    draw_entity_splash_screen3:
        addi $20, $0, 44                  # X inicial
        addi $21, $0, 104                  # Y inicial
        la $22, SPLASH_SCREEN3      # Endereço base do sprite
        addi $23, $0, 44                 # Largura do sprite (128 pixels) 
        addi $24, $0, 15                  # Altura do sprite (6 pixels)
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
            sw $11, 0($29)        # Salvar linha atual
            sw $13, 4($29)        # Salvar coluna atual
            sw $22, 8($29)        # Salvar endereço base do sprite
            sw $23, 12($29)       # Salvar largura
            sw $24, 16($29)       # Salvar altura
            sw $20, 20($29)       # Salvar X inicial
            sw $21, 24($29)       # Salvar Y inicial
            
            # Calcular posição X e Y na tela usando valores salvos
            lw $15, 20($29)                  # Carregar X inicial
            lw $13, 4($29)                   # Carregar coluna atual
            add $20, $15, $13                # $20 = X inicial + coluna
            lw $16, 24($29)                  # Carregar Y inicial
            lw $11, 0($29)                   # Carregar linha atual
            add $21, $16, $11                # $21 = Y inicial + linha
            
            jal drawpx
            
            # Recuperar valores da pilha
            lw $11, 0($29)          # Restaurar linha atual
            lw $13, 4($29)          # Restaurar coluna atual
            lw $22, 8($29)          # Restaurar endereço base do sprite
            lw $23, 12($29)         # Restaurar largura
            lw $24, 16($29)         # Restaurar altura
            lw $20, 20($29)         # Restaurar X inicial
            lw $21, 24($29)         # Restaurar Y inicial
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
        # Recuperar parâmetros (ordem inversa do salvamento)
        lw $31, 0($29)       # Restaurar $ra PRIMEIRO (do topo)
        lw $19, 4($29)       # Restaurar X inicial (player)
        lw $20, 8($29)       # Restaurar X inicial (enemy/projectile)
        lw $21, 12($29)      # Restaurar Y inicial
        lw $25, 16($29)      # Restaurar tipo de entidade
        lw $22, 20($29)      # Restaurar endereço base do sprite
        lw $23, 24($29)      # Restaurar largura
        lw $24, 28($29)      # Restaurar altura
        addi $29, $29, 32    # Restaurar pilha completamente
        
        jr $31                            # Retornar usando $ra restaurado

# Funções wrapper para desenhar splash screens (chamadas de main)
draw_splash_screen:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Preparar parâmetros para draw_entity
    addi $20, $0, 18      # X inicial
    addi $21, $0, 16      # Y inicial
    addi $25, $0, 3       # $25 = 3 (tipo: splash screen 1)
    
    # Chamar função genérica
    jal draw_entity
    
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

draw_splash_screen2:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Preparar parâmetros para draw_entity
    addi $20, $0, 18      # X inicial
    addi $21, $0, 40      # Y inicial
    addi $25, $0, 4       # $25 = 4 (tipo: splash screen 2)
    
    # Chamar função genérica
    jal draw_entity
    
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

draw_splash_screen3:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Preparar parâmetros para draw_entity
    addi $20, $0, 18      # X inicial
    addi $21, $0, 60      # Y inicial
    addi $25, $0, 5       # $25 = 5 (tipo: splash screen 3)
    
    # Chamar função genérica
    jal draw_entity
    
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

# Função para desenhar um inimigo em posição específica
# Parâmetros: $20 = X, $21 = Y
draw_enemy_at:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Preparar parâmetros para draw_entity
    # $20 e $21 já estão configurados pelo chamador
    addi $25, $0, 1            # $25 = 1 (tipo: enemy)
    
    # Chamar função genérica
    jal draw_entity
    
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

# Função para apagar um inimigo em posição específica
# Parâmetros: $20 = X, $21 = Y
erase_enemy_at:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Preparar parâmetros para erase_entity
    # $20 e $21 já estão configurados pelo chamador
    addi $25, $0, 1            # $25 = 1 (tipo: enemy)
    
    # Chamar função genérica
    jal erase_entity

    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

# Função para desenhar 5 colunas × 3 fileiras de inimigos (15 inimigos total)
# Gap de 12 pixels entre fileiras e 6 pixels entre colunas
draw_enemies:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Salvar registradores que serão usados nos loops
    addi $29, $29, -16
    sw $16, 0($29)                   # Salvar $16 (contador de colunas)
    sw $17, 4($29)                   # Salvar $17 (contador de fileiras)
    sw $18, 8($29)                   # Salvar $18 (X atual)
    sw $19, 12($29)                  # Salvar $19 (Y atual)
    
    # Carregar X base
    lw $18, ENEMY_X                  # $18 = X base (primeira coluna)
    
    # Loop externo: percorre fileiras (3 fileiras)
    addi $17, $0, 0                  # $17 = contador de fileiras (0, 1, 2)
    
    draw_enemies_loop_y:
        beq $17, 3, draw_enemies_end_y   # Se fileira >= 3, termina
        
        # Determinar Y baseado na fileira
        beq $17, $0, draw_enemies_y1      # Se fileira == 0, usar ENEMY_Y
        addi $14, $0, 1
        beq $17, $14, draw_enemies_y2    # Se fileira == 1, usar ENEMY_Y2
        # Se fileira == 2, usar ENEMY_Y3
        lw $19, ENEMY_Y3
        j draw_enemies_y_done
        
        draw_enemies_y1:
            lw $19, ENEMY_Y
            j draw_enemies_y_done
        
        draw_enemies_y2:
            lw $19, ENEMY_Y2
            j draw_enemies_y_done
        
        draw_enemies_y_done:
            # Loop interno: percorre colunas (5 colunas)
            addi $16, $0, 0              # $16 = contador de colunas (0, 1, 2, 3, 4)
            
            draw_enemies_loop_x:
                beq $16, 5, draw_enemies_end_x   # Se coluna >= 5, próxima fileira
                
                # Calcular X atual: X_base + coluna * (largura + gap)
                # largura = 11, gap = 6, então offset = coluna * 17
                addi $14, $0, 17                 # $14 = 17 (11 + 6)
                mul $15, $16, $14                # $15 = coluna * 17
                add $20, $18, $15                # $20 = X_base + offset
                add $21, $0, $19                  # $21 = Y da fileira atual
                
                # Salvar valores antes de chamar draw_enemy_at
                addi $29, $29, -8
                sw $16, 0($29)                   # Salvar contador de colunas
                sw $17, 4($29)                   # Salvar contador de fileiras
                
                # Desenhar inimigo
                jal draw_enemy_at
                
                # Recuperar valores
                lw $16, 0($29)                   # Restaurar contador de colunas
                lw $17, 4($29)                   # Restaurar contador de fileiras
                addi $29, $29, 8
                
                # Próxima coluna
                addi $16, $16, 1
                j draw_enemies_loop_x
            
            draw_enemies_end_x:
                # Próxima fileira
                addi $17, $17, 1
                j draw_enemies_loop_y
    
    draw_enemies_end_y:
        # Recuperar registradores
        lw $16, 0($29)                   # Restaurar $16
        lw $17, 4($29)                   # Restaurar $17
        lw $18, 8($29)                   # Restaurar $18
        lw $19, 12($29)                  # Restaurar $19
        addi $29, $29, 16
        
        # Recuperar $ra
        lw $31, 0($29)
        addi $29, $29, 4
        jr $31

# Função para apagar 5 colunas × 3 fileiras de inimigos (15 inimigos total)
# Usa posição anterior (ENEMY_X_PREV) para apagar antes de desenhar na nova posição
erase_enemies:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Salvar registradores que serão usados nos loops
    addi $29, $29, -16
    sw $16, 0($29)                   # Salvar $16 (contador de colunas)
    sw $17, 4($29)                   # Salvar $17 (contador de fileiras)
    sw $18, 8($29)                   # Salvar $18 (X anterior)
    sw $19, 12($29)                  # Salvar $19 (Y atual)
    
    # Carregar X anterior
    lw $18, ENEMY_X_PREV             # $18 = X anterior (primeira coluna)
    
    # Loop externo: percorre fileiras (3 fileiras)
    addi $17, $0, 0                  # $17 = contador de fileiras (0, 1, 2)
    
    erase_enemies_loop_y:
        beq $17, 3, erase_enemies_end_y   # Se fileira >= 3, termina
        
        # Determinar Y baseado na fileira
        beq $17, $0, erase_enemies_y1      # Se fileira == 0, usar ENEMY_Y
        addi $14, $0, 1
        beq $17, $14, erase_enemies_y2    # Se fileira == 1, usar ENEMY_Y2
        # Se fileira == 2, usar ENEMY_Y3
        lw $19, ENEMY_Y3
        j erase_enemies_y_done
        
        erase_enemies_y1:
            lw $19, ENEMY_Y
            j erase_enemies_y_done
        
        erase_enemies_y2:
            lw $19, ENEMY_Y2
            j erase_enemies_y_done
        
        erase_enemies_y_done:
            # Loop interno: percorre colunas (5 colunas)
            addi $16, $0, 0              # $16 = contador de colunas (0, 1, 2, 3, 4)
            
            erase_enemies_loop_x:
                beq $16, 5, erase_enemies_end_x   # Se coluna >= 5, próxima fileira
                
                # Calcular X atual: X_anterior + coluna * (largura + gap)
                # largura = 11, gap = 6, então offset = coluna * 17
                addi $14, $0, 17                 # $14 = 17 (11 + 6)
                mul $15, $16, $14                # $15 = coluna * 17
                add $20, $18, $15                # $20 = X_anterior + offset
                add $21, $0, $19                  # $21 = Y da fileira atual
                
                # Salvar valores antes de chamar erase_enemy_at
                addi $29, $29, -8
                sw $16, 0($29)                   # Salvar contador de colunas
                sw $17, 4($29)                   # Salvar contador de fileiras
                
                # Apagar inimigo
                jal erase_enemy_at
                
                # Recuperar valores
                lw $16, 0($29)                   # Restaurar contador de colunas
                lw $17, 4($29)                   # Restaurar contador de fileiras
                addi $29, $29, 8
                
                # Próxima coluna
                addi $16, $16, 1
                j erase_enemies_loop_x
            
            erase_enemies_end_x:
                # Próxima fileira
                addi $17, $17, 1
                j erase_enemies_loop_y
    
    erase_enemies_end_y:
        # Recuperar registradores
        lw $16, 0($29)                   # Restaurar $16
        lw $17, 4($29)                   # Restaurar $17
        lw $18, 8($29)                   # Restaurar $18
        lw $19, 12($29)                  # Restaurar $19
        addi $29, $29, 16
        
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

# Função para apagar player usando erase_entity
erase_player:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Preparar parâmetros para erase_entity
    lw $19, POSX_INIT          # $19 = X inicial (player usa $19)
    lw $21, POSY_INIT          # $21 = Y inicial
    addi $25, $0, 0            # $25 = 0 (tipo: player)
    
    # Chamar função genérica
    jal erase_entity
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

# Funções para apagar splash screens (apagar retângulos nas posições dos sprites)
# Usar as mesmas posições que draw_entity usa internamente
erase_splash_screen:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Posição e dimensões do primeiro splash screen (mesmas usadas em draw_entity_splash_screen)
    addi $20, $0, 44             # X inicial
    addi $21, $0, 64             # Y inicial
    addi $23, $0, 44             # Largura (44 pixels)
    addi $24, $0, 8              # Altura (8 pixels)
    
    # Usar a mesma lógica de erase_entity para apagar o retângulo
    jal erase_rectangle
    
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

erase_splash_screen2:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Posição e dimensões do segundo splash screen (mesmas usadas em draw_entity_splash_screen2)
    addi $20, $0, 44             # X inicial
    addi $21, $0, 74             # Y inicial
    addi $23, $0, 44             # Largura (44 pixels)
    addi $24, $0, 8              # Altura (8 pixels)
    
    # Usar a mesma lógica de erase_entity para apagar o retângulo
    jal erase_rectangle
    
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

erase_splash_screen3:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Posição e dimensões do terceiro splash screen (mesmas usadas em draw_entity_splash_screen3)
    addi $20, $0, 44             # X inicial
    addi $21, $0, 104             # Y inicial
    addi $23, $0, 44             # Largura (44 pixels)
    addi $24, $0, 15             # Altura (15 pixels)
    
    # Usar a mesma lógica de erase_entity para apagar o retângulo
    jal erase_rectangle
    
    # Recuperar $ra
    lw $31, 0($29)
    addi $29, $29, 4
    jr $31

# Função auxiliar para apagar um retângulo (similar a erase_entity mas mais simples)
# Parâmetros: $20 = X inicial, $21 = Y inicial, $23 = largura, $24 = altura
erase_rectangle:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Salvar X e Y iniciais em registradores temporários
    add $16, $0, $20                 # $16 = X inicial (preservar)
    add $17, $0, $21                 # $17 = Y inicial (preservar)
    
    # Variáveis para loops
    addi $11, $0, 0                  # $11 = linha atual
    addi $13, $0, 0                  # $13 = coluna atual
    addi $12, $0, 0                  # $12 = cor preta (0x00000000)
    
    # Loop externo: percorre linhas
    erase_rectangle_loop_y:
        beq $11, $24, erase_rectangle_end    # Se linha >= altura, termina
        
        # Resetar coluna para cada nova linha
        addi $13, $0, 0
        
        # Loop interno: percorre colunas
        erase_rectangle_loop_x:
            beq $13, $23, erase_rectangle_next_y   # Se coluna >= largura, próxima linha
            
            # Salvar valores temporários na pilha antes de chamar drawpx
            addi $29, $29, -8
            sw $11, 0($29)                   # Salvar linha atual
            sw $13, 4($29)                   # Salvar coluna atual
            
            # Calcular posição X e Y na tela usando valores preservados
            add $20, $16, $13               # $20 = X inicial + coluna
            add $21, $17, $11                # $21 = Y inicial + linha
            
            # Desenhar pixel preto (apagar)
            jal drawpx
            
            # Recuperar valores da pilha
            lw $11, 0($29)                   # Restaurar linha atual
            lw $13, 4($29)                   # Restaurar coluna atual
            addi $29, $29, 8
            
            # Próxima coluna
            addi $13, $13, 1
            j erase_rectangle_loop_x
        
        erase_rectangle_next_y:
            # Próxima linha
            addi $11, $11, 1
            j erase_rectangle_loop_y
    
    erase_rectangle_end:
        # Restaurar X e Y originais
        add $20, $0, $16                 # Restaurar X inicial
        add $21, $0, $17                 # Restaurar Y inicial
        
        # Recuperar $ra
        lw $31, 0($29)
        addi $29, $29, 4
        jr $31

# Função para apagar uma entidade (desenhar com cor preta)
# Parâmetros:
#   $19 = X inicial na tela (player) ou $20 = X inicial (enemy)
#   $21 = Y inicial na tela
#   $25 = tipo de entidade (0=player, 1=enemy)
erase_entity:
    # Salvar $ra na pilha
    addi $29, $29, -4
    sw $31, 0($29)
    
    # Salvar parâmetros originais
    addi $29, $29, -16
    sw $19, 0($29)                   # Salvar X inicial (player)
    sw $20, 4($29)                   # Salvar X inicial (enemy)
    sw $21, 8($29)                   # Salvar Y inicial
    sw $25, 12($29)                  # Salvar tipo de entidade
    
    # Selecionar sprite e dimensões baseado no tipo
    addi $14, $0, 0                  # $14 = 0 (player)
    beq $25, $14, erase_entity_player
    
    # Se não for player, é enemy
    j erase_entity_enemy
    
    erase_entity_player:
        lw $23, SPRITE_WIDTH         # $23 = largura
        lw $24, SPRITE_HEIGHT        # $24 = altura
        add $20, $0, $19             # Usar $19 (X do player) em $20
        j erase_entity_start
    
    erase_entity_enemy:
        lw $23, SPRITE_WIDTH         # $23 = largura
        lw $24, SPRITE_HEIGHT        # $24 = altura
        j erase_entity_start
    
    erase_entity_start:
        # Salvar X e Y iniciais em registradores temporários que não serão modificados
        # Usar $16 e $17 para preservar X e Y (não são modificados por drawpx)
        add $16, $0, $20                 # $16 = X inicial (preservar)
        add $17, $0, $21                 # $17 = Y inicial (preservar)
        
        # Variáveis para loops
        addi $11, $0, 0                  # $11 = linha atual
        addi $13, $0, 0                  # $13 = coluna atual
        addi $12, $0, 0                  # $12 = cor preta (0x00000000)
        
        # Loop externo: percorre linhas
        erase_entity_loop_y:
            beq $11, $24, erase_entity_end    # Se linha >= altura, termina
            
            # Resetar coluna para cada nova linha
            addi $13, $0, 0
            
            # Loop interno: percorre colunas
            erase_entity_loop_x:
                beq $13, $23, erase_entity_next_y   # Se coluna >= largura, próxima linha
                
                # Salvar valores temporários na pilha antes de chamar drawpx
                addi $29, $29, -8
                sw $11, 0($29)                   # Salvar linha atual
                sw $13, 4($29)                   # Salvar coluna atual
                
                # Calcular posição X e Y na tela usando valores preservados
                add $20, $16, $13               # $20 = X inicial + coluna
                add $21, $17, $11                # $21 = Y inicial + linha
                
                # Desenhar pixel preto (apagar)
                jal drawpx
                
                # Recuperar valores da pilha
                lw $11, 0($29)                   # Restaurar linha atual
                lw $13, 4($29)                   # Restaurar coluna atual
                addi $29, $29, 8
                
                # Próxima coluna
                addi $13, $13, 1
                j erase_entity_loop_x
        
        erase_entity_next_y:
            # Próxima linha
            addi $11, $11, 1
            j erase_entity_loop_y
    
    erase_entity_end:
        # Restaurar X e Y originais (já estão preservados em $16 e $17)
        add $20, $0, $16                 # Restaurar X inicial
        add $21, $0, $17                 # Restaurar Y inicial
        
        # Recuperar parâmetros originais
        lw $19, 0($29)                   # Restaurar X inicial (player)
        lw $20, 4($29)                   # Restaurar X inicial (enemy)
        lw $21, 8($29)                   # Restaurar Y inicial
        lw $25, 12($29)                  # Restaurar tipo de entidade
        addi $29, $29, 16
        
        # Recuperar $ra
        lw $31, 0($29)
        addi $29, $29, 4
        jr $31
