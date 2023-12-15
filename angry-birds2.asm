.text
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
	lui $11, 0xffff
	addi $13, $0, 0
	addi $10, $0, 8192
for_shadow:
	beq $10, $0, personagem
	addi $10, $10, -1
	lw $9, 0($8)
	sw $9, 32768($8)
	addi $8, $8, 4
	j for_shadow
personagem:
	addi $6, $0, 11308
	jal passaro
animacao:
	addi $4, $0, 0
	addi $5, $0, 0
	jal porco
	nop 
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 4
	addi $5, $0, 4
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 8
	addi $5, $0, 8
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 12
	addi $5, $0, 12
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 16
	addi $5, $0, 16
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 20
	addi $5, $0, 20
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 24
	addi $5, $0, 24
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 28
	addi $5, $0, 28
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 32
	addi $5, $0, 32
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 36
	addi $5, $0, 36
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 40
	addi $5, $0, 40
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 44
	addi $5, $0, 44
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 48
	addi $5, $0, 48
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 52
	addi $5, $0, 52
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 56
	addi $5, $0, 56
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 60
	addi $5, $0, 60
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 64
	addi $5, $0, 64
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 68
	addi $5, $0, 68
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 72
	addi $5, $0, 72
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 76
	addi $5, $0, 76
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 80
	addi $5, $0, 80
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 84
	addi $5, $0, 84
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 88
	addi $5, $0, 88
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 92
	addi $5, $0, 92
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 96
	addi $5, $0, 96
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 100
	addi $5, $0, 100
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 104
	addi $5, $0, 104
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 108
	addi $5, $0, 108
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 112
	addi $5, $0, 112
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 116
	addi $5, $0, 116
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 120
	addi $5, $0, 120
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 124
	addi $5, $0, 124
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 128
	addi $5, $0, 128
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_indo
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	#voltando
	addi $4, $0, 128
	addi $5, $0, 4
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 124
	addi $5, $0, 8
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 120
	addi $5, $0, 12
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 116
	addi $5, $0, 16
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 112
	addi $5, $0, 20
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 108
	addi $5, $0, 24
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 104
	addi $5, $0, 28
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 100
	addi $5, $0, 32
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 96
	addi $5, $0, 36
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 92
	addi $5, $0, 40
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 88
	addi $5, $0, 44
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 84
	addi $5, $0, 48
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 80
	addi $5, $0, 52
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 76
	addi $5, $0, 56
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 72
	addi $5, $0, 60
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 68
	addi $5, $0, 64
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 64
	addi $5, $0, 68
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 60
	addi $5, $0, 72
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 56
	addi $5, $0, 76
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 52
	addi $5, $0, 80
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 48
	addi $5, $0, 84
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 44
	addi $5, $0, 88
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 40
	addi $5, $0, 92
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 36
	addi $5, $0, 96
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 32
	addi $5, $0, 100
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 28
	addi $5, $0, 104
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 24
	addi $5, $0, 108
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 20
	addi $5, $0, 112
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 16
	addi $5, $0, 116
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 12
	addi $5, $0, 120
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 8
	addi $5, $0, 124
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 4
	addi $5, $0, 128
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	addi $4, $0, 0
	addi $5, $0, 132
	jal porco
	nop
	jal delay
	nop
	jal shadow_porco_voltando
	lw $13, 0($11)
	bne $13, $0, saida_animacao
	
	j animacao
#---------------------------------
#	      JOGO
saida_animacao:
	addi $6, $0, 11308
	
verificar:
	bne $0, $0, fim
	lui $1, 0xffff
	lw $13, 0($1)
	bne $13, $0, movimentos
	j verificar
#--------------------------------------------
#TECLAS DO JOGO
movimentos:
	lw $13, 4($1)
	addi $15, $0, 'a'
	beq $13, $15, esquerda
	
	addi $15, $0, 's'
	beq $13, $15, baixo
	
	addi $15, $0, 'd'
	beq $13, $15, direita
	
	addi $15, $0, 'w'
	beq $13, $15, cima
	
	#LANÇAR PÁSSARO
	addi $15, $0, '\n'
	beq $13, $15, lancar
	
	j verificar
#--------------------------------------------
#MOVIMENTOS DO PÁSSARO
esquerda:
	jal passaro_shadow
	addi $6, $6, -8
	jal passaro
	j verificar
baixo:
	jal passaro_shadow
	addi $6, $6, 1024
	jal passaro
	j verificar

direita:
	jal passaro_shadow
	addi $6, $6, 8
	jal passaro
	j verificar
	
cima:
	jal passaro_shadow
	addi $6, $6, -1024
	jal passaro
	j verificar
	
lancar: 
	#PÁSSARO SE TACANDO NO PORCO
	jal lancamento
	beq $2, 1, lancar_diag_1
	beq $2, 2, lancar_diag_2
	beq $2, 3, lancar_diag_3
	beq $2, 4, lancar_diag_4
	beq $2, 5, lancar_diag_5
	beq $2, 6, lancar_diag_6
	beq $2, 7, lancar_diag_7
	beq $2, 8, lancar_diag_8
	beq $2, 9, lancar_diag_9
	beq $2, 10, lancar_diag_10
	j verificar
	
lancar_diag_1:
	addi $25, $0, 75
	diag_1:	
		beq $25, $0, verificar
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_1
lancar_diag_2:
	addi $25, $0, 8
	diag_2_1:
		beq $25, $0, lancar_diag_2_2
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_2_1
	lancar_diag_2_2:
	jal passaro_shadow
	addi $25, $0, 16
	addi $6, $6, 512
	diag_2_2:
		beq $25, $0, lancar_diag_2_3
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_2_2
	lancar_diag_2_3:
	jal passaro_shadow
	addi $25, $0, 17
	addi $6, $6, 512
	diag_2_3:
		beq $25, $0, lancar_diag_2_4
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_2_3
	lancar_diag_2_4:
	jal passaro_shadow
	addi $25, $0, 34
	diag_2_4:
		beq $25, $0, verificar
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_2_4
lancar_diag_3:
	addi $25, $0, 4
	diag_3_1:
		beq $25, $0, lancar_diag_3_2
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_3_1
	lancar_diag_3_2:
	jal passaro_shadow
	addi $25, $0, 8
	addi $6, $6, 512
	diag_3_2:
		beq $25, $0, lancar_diag_3_3
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_3_2
	lancar_diag_3_3:
	jal passaro_shadow
	addi $25, $0, 7
	addi $6, $6, 512
	diag_3_3:
		beq $25, $0, lancar_diag_3_4
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_3_3
	lancar_diag_3_4:
	jal passaro_shadow
	addi $25, $0, 8
	addi $6, $6, 512
	diag_3_4:
		beq $25, $0, lancar_diag_3_5
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_3_4
	lancar_diag_3_5:
	jal passaro_shadow
	addi $25, $0, 8
	addi $6, $6, 512
	diag_3_5:
		beq $25, $0, lancar_diag_3_6
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_3_5
	lancar_diag_3_6:
	jal passaro_shadow
	addi $25, $0, 7
	addi $6, $6, 512
	diag_3_6:
		beq $25, $0, lancar_diag_3_7
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_3_6
	lancar_diag_3_7:
	jal passaro_shadow
	addi $25, $0, 33
	diag_3_7:
		beq $25, $0, verificar
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_3_7
lancar_diag_4:
	addi $25, $0, 3
	addi $26, $0, 6
	diag_4_1:
		beq $25, $0, lancar_diag_4_2
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_4_1
	lancar_diag_4_2:
	jal passaro_shadow
	beq $26, $0, lancar_diag_4_10
	addi $26, $26, -1
	addi $25, $0, 6
	addi $6, $6, 512
	diag_4_2:
		beq $25, $0, lancar_diag_4_2
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_4_2
	lancar_diag_4_10:
	jal passaro_shadow
	addi $25, $25, 40
	diag_4_10:
		beq $25, $0, verificar
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_4_10
lancar_diag_5:
	addi $25, $0, 3
	addi $26, $0,7
	diag_5_1:
		beq $25, $0, lancar_diag_5_2
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_5_1
	lancar_diag_5_2:
	jal passaro_shadow
	beq $26, $0, lancar_diag_5_9_aux
	addi $26, $26, -1
	addi $25, $0, 6
	addi $6, $6, 512
	diag_5_2:
		beq $25, $0, lancar_diag_5_2
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_5_2
	lancar_diag_5_9_aux:
	addi $26, $0, 4
	lancar_diag_5_9:
	jal passaro_shadow
	beq $26, $0, lancar_diag_5_13
	addi $26, $26, -1
	addi $25, $0, 8
	addi $6, $6, 512
	diag_5_9:
		beq $25, $0, lancar_diag_5_13
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_5_9
	lancar_diag_5_13:
	jal passaro_shadow
	addi $25, $25, 24
	diag_5_13:
		beq $25, $0, verificar
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_5_13
lancar_diag_6:
	addi $26, $0, 8
	lancar_diag_6_1:
	jal passaro_shadow
	beq $26, $0, lancar_diag_6_2_aux
	addi $26, $26, -1
	addi $25, $0, 6
	addi $6, $6, 512
	diag_6_1:
		beq $25, $0, lancar_diag_6_1
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_6_1
	lancar_diag_6_2_aux:
	addi $26, $0, 2
	lancar_diag_6_2:
	jal passaro_shadow
	beq $26, $0, lancar_diag_6_3
	addi $26, $26, -1
	addi $25, $0, 8
	addi $6, $6, 512
	diag_6_2:
		beq $25, $0, lancar_diag_6_2
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_6_2
	lancar_diag_6_3:
	jal passaro_shadow
	addi $25, $0, 11
	diag_6_3:
		beq $25, $0, verificar
		addi $25, $25, -1
		
		jal passaro_shadow
		addi $6, $6, 4
		jal passaro
		jal delay_passaro
		j diag_6_3
lancar_diag_7:

lancar_diag_8:
lancar_diag_9:
lancar_diag_10:

#---------------------------------
#FUNÇÃO PORCO
porco:
	#16220
	lui $8, 0x1001
	add $8, $8, $4
	addi $9, $0, 0x15612b
	sw $9, 16220($8)
	addi $8, $8, 4
	sw $9, 16220($8)
	addi $8, $8, 4
	sw $9, 16220($8)
	
	#15700
	lui $8, 0x1001
	add $8, $8, $4
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
	add $8, $8, $4
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
	add $8, $8, $4
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
	add $8, $8, $4
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
	add $8, $8, $4
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
	add $8, $8, $4
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
	add $8, $8, $4
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
	add $8, $8, $4
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
	add $8, $8, $4
	sw $9, 11600($8)
	addi $8, $8, 32
	sw $9, 11600($8)
	
	jr $31
	
#FUNÇÃO SHADOW PORCO
shadow_porco_voltando:
	lui $8, 0x1001
	addi $11, $0, -1
	mul $11, $11, $5
	add $8, $8, $11
	
	lw $10, 49128($8)
	sw $10, 16360($8)
	
	lw $10, 48624($8)
	sw $10, 15856($8)
	
	lw $10, 48112($8)
	sw $10, 15344($8)
	
	lw $10, 47604($8)
	sw $10, 14836($8)
	
	lw $10, 47092($8)
	sw $10, 14324($8)
	
	lw $10, 46580($8)
	sw $10, 13812($8)
	
	lw $10, 46064($8)
	sw $10, 13296($8)
	
	lw $10, 45556($8)
	sw $10, 12788($8)
	
	lw $10, 45048($8)
	sw $10, 12280($8)
	
	lw $10, 44532($8)
	sw $10, 11764($8)
	addi $8, $8, -32
	lw $10, 44532($8)
	sw $10, 11764($8)
	
	jr $31
	
shadow_porco_indo:
	lui $8, 0x1001
	add $8, $8, $5
	
	lw $10, 48988($8)
	sw $10, 16220($8)
	
	lw $10, 48468($8)
	sw $10, 15700($8)
	
	lw $10, 47956($8)
	sw $10, 15188($8)
	
	lw $10, 47440($8)
	sw $10, 14672($8)
	
	lw $10, 46928($8)
	sw $10, 14160($8)
	
	lw $10, 46416($8)
	sw $10, 13648($8)
	
	lw $10, 45908($8)
	sw $10, 13140($8)
	
	lw $10, 45392($8)
	sw $10, 12624($8)
	
	lw $10, 44876($8)
	sw $10, 12108($8)
	
	lw $10, 44368($8)
	sw $10, 11600($8)
	addi $8, $8, 32
	lw $10, 44368($8)
	sw $10, 11600($8)
	
	jr $31
#FUNÇÃO PARA DESENHAR O PÁSSARO
passaro:
	lui $8, 0x1001
	add $8, $6, $8
	
	addi $9, $0, 0xd67622
	sw $9, 4612($8)
	addi $8, $8, 4
	sw $9, 4612($8)
	addi $8, $8, 12
	sw $9, 4612($8)
	addi $8, $8, 4
	sw $9, 4612($8)
	addi $8, $8, 4
	sw $9, 4612($8)
	
	lui $8, 0x1001
	add $8, $6, $8
	sw $9, 4096($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 4096($8)
	addi $8, $8, 4
	sw $9, 4096($8)
	addi $8, $8, 4
	addi $9, $0, 0xd67622
	sw $9, 4096($8)
	addi $8, $8, 4
	sw $9, 4096($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 4096($8)
	addi $8, $8, 4
	sw $9, 4096($8)
	addi $8, $8, 4
	sw $9, 4096($8)
	addi $8, $8, 4
	addi $9, $0, 0xd67622
	sw $9, 4096($8)
	addi $8, $8, 4
	sw $9, 4096($8)
	
	lui $8, 0x1001
	add $8, $6, $8
	sw $9, 3588($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 3588($8)
	addi $8, $8, 4
	addi $9, $0, 0xd67622
	sw $9, 3588($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 3588($8)
	addi $8, $8, 4
	sw $9, 3588($8)
	addi $8, $8, 4
	sw $9, 3588($8)
	addi $8, $8, 4
	addi $9, $0,0xdb3d0d 
	sw $9, 3588($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 3588($8)
	addi $8, $8, 4
	addi $9, $0, 0xd67622
	sw $9, 3588($8)
	
	lui $8, 0x1001
	add $8, $6, $8
	sw $9, 3080($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 3080($8)
	addi $8, $8, 4
	sw $9, 3080($8)
	addi $8, $8, 4
	sw $9, 3080($8)
	addi $8, $8, 4
	sw $9, 3080($8)
	addi $8, $8, 4
	addi $9, $0, 0xdb3d0d 
	sw $9, 3080($8)
	addi $8, $8, 4
	sw $9, 3080($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 3080($8)
	addi $8, $8, 4
	addi $9, $0, 0xd67622
	sw $9, 3080($8)
	
	lui $8, 0x1001
	add $8, $6, $8
	sw $9, 2568($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 2568($8)
	addi $8, $8, 4
	sw $9, 2568($8)
	addi $8, $8, 4
	addi $9, $0, 0xffffff
	sw $9, 2568($8)
	addi $8, $8, 4
	addi $9, $0, 0x0
	sw $9, 2568($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 2568($8)
	addi $8, $8, 4
	addi $9, $0, 0x0
	sw $9, 2568($8)
	addi $8, $8, 4
	addi $9, $0, 0xffffff
	sw $9, 2568($8)
	addi $8, $8, 4
	addi $9, $0, 0xd67622
	sw $9, 2568($8)
	
	lui $8, 0x1001
	add $8, $6, $8
	sw $9, 2056($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 2056($8)
	addi $8, $8, 4
	sw $9, 2056($8)
	addi $8, $8, 4
	addi $9, $0, 0x0
	sw $9, 2056($8)
	addi $8, $8, 4
	sw $9, 2056($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 2056($8)
	addi $8, $8, 4
	addi $9, $0, 0x0
	sw $9, 2056($8)
	addi $8, $8, 4
	sw $9, 2056($8)
	addi $8, $8, 4
	addi $9, $0, 0xd67622
	sw $9, 2056($8)
	
	lui $8, 0x1001
	add $8, $6, $8
	sw $9, 1548($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 1548($8)
	addi $8, $8, 4
	addi $9, $0, 0x0
	sw $9, 1548($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 1548($8)
	addi $8, $8, 4
	sw $9, 1548($8)
	addi $8, $8, 4
	sw $9, 1548($8)
	addi $8, $8, 4
	addi $9, $0, 0x0
	sw $9, 1548($8)
	addi $8, $8, 4	
	
	lui $8, 0x1001
	add $8, $6, $8
	addi $9, $0,  0xd67622
	sw $9, 1036($8)
	addi $8, $8, 4
	sw $9, 1036($8)
	addi $8, $8, 4
	addi $9, $0,  0xffc20e
	sw $9, 1036($8)
	addi $8, $8, 4
	sw $9, 1036($8)
	addi $8, $8, 4
	sw $9, 1036($8)
	addi $8, $8, 4
	addi $9, $0, 0xd67622
	sw $9, 1036($8)
	addi $8, $8, 4
	sw $9, 1036($8)
	addi $8, $8, 4
	
	lui $8, 0x1001
	add $8, $6, $8
	sw $9, 532($8)
	addi $8, $8, 4
	sw $9, 532($8)
	addi $8, $8, 4
	sw $9, 532($8)
	
	lui $8, 0x1001
	add $8, $6, $8
	sw $9, 16($8)
	addi $8, $8, 4
	sw $9, 16($8)
	addi $8, $8, 4
	
	jr $31
passaro_shadow:
	#POSIÇÃO DO PIXEL + 32768
	lui $8, 0x1001
	add $8, $8, $6
	lw $10, 37380($8)
	sw $10, 4612($8)
	addi $8, $8, 4
	lw $10, 37380($8)
	sw $10, 4612($8)
	addi $8, $8, 12
	lw $10, 37380($8)
	sw $10, 4612($8)
	addi $8, $8, 4
	lw $10, 37380($8)
	sw $10, 4612($8)
	addi $8, $8, 4
	lw $10, 37380($8)
	sw $10, 4612($8)
	
	addi $15, $0, 10
	lui $8, 0x1001
	add $8, $8, $6
	
ps_linha2:
	beq $15, $0, fim_ps_linha2
	addi $15, $15, -1
	
	lw $10, 36864($8)
	sw $10, 4096($8)
	addi  $8, $8, 4
	
	j ps_linha2
	
fim_ps_linha2:
	addi $15, $0, 9
	lui $8, 0x1001
	add $8, $8, $6
	
ps_linha3:
	beq $15, $0, fim_ps_linha3
	addi $15, $15, -1
	
	lw $10, 36356($8)
	sw $10, 3588($8)
	addi $8, $8, 4
	
	j ps_linha3
	
fim_ps_linha3:
	addi $15, $0, 9
	lui $8, 0x1001
	add $8, $8, $6
	
ps_linha4:
	beq $15, $0, fim_ps_linha4
	addi $15, $15, -1
	
	lw $10, 35848($8)
	sw $10, 3080($8)
	addi  $8, $8, 4
	
	j ps_linha4
	
fim_ps_linha4:
	addi $15, $0, 9
	lui $8, 0x1001
	add $8, $8, $6
	
ps_linha5:
	beq $15, $0, fim_ps_linha5
	addi $15, $15, -1
	
	lw $10, 35336($8)
	sw $10, 2568($8)
	addi  $8, $8, 4
	
	j ps_linha5
	
fim_ps_linha5:
	addi $15, $0, 9
	lui $8, 0x1001
	add $8, $8, $6

ps_linha6:
	beq $15, $0, fim_ps_linha6
	addi $15, $15, -1
	
	lw $10, 34824($8)
	sw $10, 2056($8)
	addi  $8, $8, 4
	
	j ps_linha6
	
fim_ps_linha6:
	addi $15, $0, 7
	lui $8, 0x1001
	add $8, $8, $6
	
ps_linha7:
	beq $15, $0, fim_ps_linha7
	addi $15, $15, -1
	
	lw $10, 34316($8)
	sw $10, 1548($8)
	addi  $8, $8, 4
	
	j ps_linha7
	
fim_ps_linha7:
	addi $15, $0, 7
	lui $8, 0x1001
	add $8, $8, $6
	
ps_linha8:
	beq $15, $0, fim_ps_linha8
	addi $15, $15, -1
	
	lw $10, 33804($8)
	sw $10, 1036($8)
	addi  $8, $8, 4
	
	j ps_linha8
	
fim_ps_linha8:
	addi $15, $0, 3
	lui $8, 0x1001
	add $8, $8, $6
	
ps_linha9:
	beq $15, $0, fim_ps_linha9
	addi $15, $15, -1
	
	lw $10, 33300($8)
	sw $10, 532($8)
	addi  $8, $8, 4
	
	j ps_linha9
	
fim_ps_linha9:
	lui $8, 0x1001
	add $8, $8, $6
	
	lw $10, 32784($8)
	sw $10, 16($8)
	addi $8, $8, 4
	lw $10, 32784($8)
	sw $10, 16($8)
	
	jr $31
	
#FUNÇÃO PARA CALCULAR O CAMINHO
# Haverá vários tipos de lançamento, dependendo da altura e da distância que o personagem estiver.
lancamento:
	addi $2, $0, 0

	addi $15, $0, 11268
	slt $17, $15, $6
	addi $16, $0, 11344
	slt $18, $6, $16
	beq $17, $18, lancamento1
	
	addi $15, $0, 10244
	slt $17, $15, $6
	addi $16, $0, 10320
	slt $18, $6, $16
	beq $17, $18, lancamento2
	
	addi $15, $0, 9220
	slt $17, $15, $6
	addi $16, $0, 9296
	slt $18, $6, $16
	beq $17, $18, lancamento3
	
	addi $15, $0, 8196
	slt $17, $15, $6
	addi $16, $0, 8272
	slt $18, $6, $16
	beq $17, $18, lancamento4
	
	addi $15, $0, 7172
	slt $17, $15, $6
	addi $16, $0, 7248
	slt $18, $6, $16
	beq $17, $18, lancamento5
	
	addi $15, $0, 6148
	slt $17, $15, $6
	addi $16, $0, 6224
	slt $18, $6, $16
	beq $17, $18, lancamento6
	
	addi $15, $0, 5124
	slt $17, $15, $6
	addi $16, $0, 5200
	slt $18, $6, $16
	beq $17, $18, lancamento7
	
	addi $15, $0, 4100
	slt $17, $15, $6
	addi $16, $0, 4176
	slt $18, $6, $16
	beq $17, $18, lancamento8
	
	addi $15, $0, 3076
	slt $17, $15, $6
	addi $16, $0, 3152
	slt $18, $6, $16
	beq $17, $18, lancamento9
	
	addi $15, $0, 2052
	slt $17, $15, $6
	addi $16, $0, 2128
	slt $18, $6, $16
	beq $17, $18, lancamento10
	
	jr $31
	
lancamento1: 
	addi $2, $0, 1
	jr $31

lancamento2: 
	addi $2, $0, 2
	jr $31
	
lancamento3: 
	addi $2, $0, 3
	jr $31
	
lancamento4: 
	addi $2, $0, 4
	jr $31

lancamento5: 
	addi $2, $0, 5
	jr $31
	
lancamento6: 
	addi $2, $0, 6
	jr $31
	
lancamento7: 
	addi $2, $0, 7
	jr $31
	
lancamento8: 
	addi $2, $0, 8
	jr $31

lancamento9: 
	addi $2, $0, 9
	jr $31
	
lancamento10: 
	addi $2, $0, 10
	jr $31
		
#FUNÇÃO DELAY
delay:
	addi $20, $0, 50000
for_delay:
	beq $20, $0, fim_delay
	nop
	addi $20, $20, -1
	j for_delay
fim_delay:
	jr $31
delay_passaro:
	addi $20, $0, 7000
for_delay_passaro:
	beq $20, $0, fim_delay_passaro
	nop
	addi $20, $20, -1
	j for_delay_passaro
fim_delay_passaro:
	jr $31
fim:
	addi $2, $0, 10
	syscall