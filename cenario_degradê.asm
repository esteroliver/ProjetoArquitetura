main:
	lui $8, 0x1001
	addi $9, $0, 0x92cade
	addi $10, $0, 3072
azulescuro:
	beq $10, $0, fim_azulescuro
	addi $10, $10, -1

	sw $9, 0($8)
	addi $8, $8, 4

	j azulescuro

fim_azulescuro:
	addi $9, $0, 0xa6d6e4
	addi $10, $0, 1792
azulmedio:
	beq $10, $0, fim_azulmedio
	addi $10, $10, -1

	sw $9, 0($8)
	addi $8, $8, 4

	j azulmedio

fim_azulmedio:
	addi $10, $0, 2176
	addi $11, $0, 383
	addi $12, $0, 255
	addi $13, $0, 127

azulclaro:
	addi $9, $0, 0xcee7f3
	beq $10, $0, fim_ceu
	addi $10, $10, -1

	beq $10, $11, linha1
	beq $10, $12, linha2
	beq $10, $13, linha3
continue_azul:
	beq $14, $10, pintar_verde

	sw $9, 0($8)
	addi $8, $8, 4

	j azulclaro
linha1:
	addi $14, $0, 380
	j continue_azul
linha2:
	addi $14, $0, 253
	j continue_azul
linha3:
	addi $14, $0, 126
	j continue_azul
pintar_verde:
	addi $9, $0,0x477d46

	slt $15, $14, $11
	slt $16, $12, $14
	beq $15, $16, pintar_linha1

	slt $15, $14, $12
	slt $16, $13, $14
	beq $15, $16, pintar_linha2

	slt $15, $14, $13
	slt $16, $0, $14
	beq $15, $16, pintar_linha3

pintar_linha1:
	sw $9, 0($8)
	addi $8, $8, 4

	addi $14, $14, -6
	j azulclaro
pintar_linha2:
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4

	addi $10, $10, -1
	addi $14, $14, -6
	j azulclaro
pintar_linha3:
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4

	addi $10, $10, -3
	addi $14, $14, -6
	j azulclaro
fim_ceu:
	addi $10, $0, 128
	addi $9, $0,0x477d46
gramaescura:
	beq $10, $0, fim_gramaescura
	addi $10, $10, -1

	sw $9, 0($8)
	addi $8, $8, 4

	j gramaescura
fim_gramaescura:
	addi $10, $0, 384
	addi $9, $0,0x42ad4b
gramaclara:
	beq $10, $0, fim_gramaclara
	addi $10, $10, -1

	sw $9, 0($8)
	addi $8, $8, 4

	j gramaclara
fim_gramaclara:
	addi $10, $0,1408
	addi $9, $0, 0x8c8c8c
pedra:
	beq $10, $0, estilingue
	addi $10, $10, -1

	sw $9, 0($8)
	addi $8, $8, 4

	j pedra
	
estilingue:
	lui $8, 0x1001
	addi $8, $8, 10280
	addi $9, $0, 0x9c5a3c
	
	addi $10, $0, 12
topo_estilingue:	
	beq $10, $0, estilingue_diagonais
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $8, $8, 36
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $8, $8, 452
	j topo_estilingue
	
estilingue_diagonais:
# INICIAR AS DIAGONAIS DO ESTILINGUE AQUI
	addi $10, $0, 5
diagonal:
pintar_diagonal_l1:
	addi $9, $0, 0x9c5a3c
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $8, $8, 28
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4

	addi $8, $8, 456
pintar_diagonal_l2:
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $8, $8, 20
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $8, $8, 464
pintar_diagonal_l3:
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $8, $8, 12
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $8, $8, 472
	
pintar_diagonal_l4:
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	
fim_diagonal:
	addi $10, $0, 19
	addi $8, $8, 492
base_estilingue_sombra:
	addi $9, $0, 0x593608
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	addi $9, $0, 0x9c5a3c
	addi $8, $8, 500
base_estilingue:
	beq $10, $0, base_porco_1
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $8, $8, 500
	
	j base_estilingue
	
base_porco_1:
	lui $8, 0x1001
	addi $8, $8, 16732
	
	addi $9, $0, 0x787878
	
	addi $10, $0, 35
	
base_porco_l1:
	beq $10, $0, base_porco_2
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j base_porco_l1
base_porco_2:
	addi $8, $8, 372
	addi $10, $0, 35
base_porco_l2:
	beq $10, $0, base_porco_3
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j base_porco_l2
base_porco_3:
	addi $8, $8, 376
	addi $10, $10, 33
base_porco_l3:
	beq $10, $0, base_porco_4
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j base_porco_l3
base_porco_4:
	addi $8, $8, 384
	addi $10, $10, 31
base_porco_l4:
	beq $10, $0, pes
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j base_porco_l4
pes:
	addi $9, $0, 0x404040
	addi $8, $8, 392
pes_sombra:
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $8, $8, 76
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	
	addi $10, $0, 19
	addi $9, $0, 0x787878
pes_flat:
	beq $10, $0, shadow
	addi $10, $10, -1
	
	addi $8, $8, 400
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $8, $8, 76
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	
	j pes_flat
shadow:
#A SHADOW É FEITA A PARTIR DAQUI
	lui $8, 0x1001
	addi $10, $0, 8192
for_shadow:
	beq $10, $0, porco
	addi $10, $10, -1
	lw $9, 0($8)
	sw $9, 32768($8)
	addi $8, $8, 4
	j for_shadow
porco:
#INICIAR A ANIMAÇÃO DO NPC AQUI
	#16220
	lui $8, 0x1001
	addi $9, $0, 0x15612b
	sw $9, 16220($8)
	addi $8, $8, 4
	sw $9, 16220($8)
	addi $8, $8, 4
	sw $9, 16220($8)
	
	#15700
	lui $8, 0x1001
	sw $9, 15700($8)
	addi $8, $8, 4
	sw $9, 15700($8)
	addi $8, $8, 4
	addi $9, $0, 0x22b14c # VERDE
	sw $9, 15700($8)
	addi $8, $8, 4
	sw $9, 15700($8)
	addi $8, $8, 4
	sw $9, 15700($8)
	addi $8, $8, 4
	addi $9, $0, 0x15612b
	sw $9, 15700($8)
	addi $8, $8, 4
	sw $9, 15700($8)
	
	#15188
	lui $8, 0x1001
	sw $9, 15188($8)
	addi $8, $8, 4
	addi $9, $0, 0x22b14c
	sw $9, 15188($8)
	addi $8, $8, 4
	addi $9, $0, 0x15612b
	sw $9, 15188($8)
	addi $8, $8, 4
	sw $9, 15188($8)
	addi $8, $8, 4
	sw $9, 15188($8)
	addi $8, $8, 4
	addi $9, $0, 0x22b14c
	sw $9, 15188($8)
	addi $8, $8, 4
	addi $9, $0, 0x15612b
	sw $9, 15188($8)
	
	#14672
	lui $8, 0x1001
	sw $9, 14672($8)
	addi $8, $8, 4
	addi $9, $0, 0x22b14c
	sw $9, 14672($8)
	addi $8, $8, 4
	addi $9, $0, 0x15612b
	sw $9, 14672($8)
	addi $8, $8, 4
	addi $9, $0, 0x22b14c
	sw $9, 14672($8)
	addi $8, $8, 4
	sw $9, 14672($8)
	addi $8, $8, 4
	sw $9, 14672($8)
	addi $8, $8, 4
	addi $9, $0, 0x15612b
	sw $9, 14672($8)
	addi $8, $8, 4
	addi $9, $0, 0x22b14c
	sw $9, 14672($8)
	addi $8, $8, 4
	addi $9, $0, 0x15612b
	sw $9, 14672($8)

	#14160
	lui $8, 0x1001
	sw $9, 14160($8)
	addi $8, $8, 4
	addi $9, $0, 0xffffff
	sw $9, 14160($8)
	addi $8, $8, 4
	sw $9, 14160($8)
	addi $8, $8, 4
	addi $9, $0, 0x15612b
	sw $9, 14160($8)
	addi $8, $8, 4
	sw $9, 14160($8)
	addi $8, $8, 4
	sw $9, 14160($8)
	addi $8, $8, 4
	addi $9, $0, 0xffffff
	sw $9, 14160($8)
	addi $8, $8, 4
	sw $9, 14160($8)
	addi $8, $8, 4
	addi $9, $0, 0x15612b
	sw $9, 14160($8)
	
	#13648
	lui $8, 0x1001
	sw $9, 13648($8)
	addi $8, $8, 4
	addi $9, $0, 0xffffff
	sw $9, 13648($8)
	addi $8, $8, 4
	addi $9, $0, 0x0
	sw $9, 13648($8)
	addi $8, $8, 4
	addi $9, $0, 0x22b14c
	sw $9, 13648($8)
	addi $8, $8, 4
	sw $9, 13648($8)
	addi $8, $8, 4
	sw $9, 13648($8)
	addi $8, $8, 4
	addi $9, $0, 0x0
	sw $9, 13648($8)
	addi $8, $8, 4
	addi $9, $0, 0xffffff
	sw $9, 13648($8)
	addi $8, $8, 4
	addi $9, $0, 0x15612b
	sw $9, 13648($8)
	
	#13140
	lui $8, 0x1001
	sw $9, 13140($8)
	addi $8, $8, 4
	addi $9, $0, 0x22b14c
	sw $9, 13140($8)
	addi $8, $8, 4
	sw $9, 13140($8)
	addi $8, $8, 4
	sw $9, 13140($8)
	addi $8, $8, 4
	sw $9, 13140($8)
	addi $8, $8, 4
	sw $9, 13140($8)
	addi $8, $8, 4
	addi $9, $0, 0x15612b
	sw $9, 13140($8)
	
	#12624
	lui $8, 0x1001
	sw $9, 12624($8)
	addi $8, $8, 4
	sw $9, 12624($8)
	addi $8, $8, 4
	sw $9, 12624($8)
	addi $8, $8, 4
	addi $9, $0, 0x22b14c
	sw $9, 12624($8)
	addi $8, $8, 4
	sw $9, 12624($8)
	addi $8, $8, 4
	sw $9, 12624($8)
	addi $8, $8, 4
	addi $9, $0, 0x15612b
	sw $9, 12624($8)
	addi $8, $8, 4
	sw $9, 12624($8)
	addi $8, $8, 4
	sw $9, 12624($8)
	
	#12108
	lui $8, 0x1001
	sw $9, 12108($8)
	addi $8, $8, 4
	addi $9, $0, 0x22b14c
	sw $9, 12108($8)
	addi $8, $8, 4
	addi $9, $0, 0x15612b
	sw $9, 12108($8)
	addi $8, $8, 8
	sw $9, 12108($8)
	addi $8, $8, 4
	sw $9, 12108($8)
	addi $8, $8, 4
	sw $9, 12108($8)
	addi $8, $8, 8
	sw $9, 12108($8)
	addi $8, $8, 4
	addi $9, $0, 0x22b14c
	sw $9, 12108($8)
	addi $8, $8, 4
	addi $9, $0, 0x15612b
	sw $9, 12108($8)
	
	#11600
	lui $8, 0x1001
	sw $9, 11600($8)
	addi $8, $8, 32
	sw $9, 11600($8)
fim_cenario:
	addi $2, $0, 10
	syscall 
