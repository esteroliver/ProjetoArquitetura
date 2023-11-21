.text
main:
	lui $8, 0x1001
	addi $9, $0, 0xa6d6e4 # cor do c�u
	addi $10, $0, 6016
azul:
	beq $10, $0, fim_azul
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j azul
	
fim_azul:
	addi $10, $0, 384
	addi $11, $0, 383
	addi $12, $0, 255
	addi $13, $0, 127

ceu_grama:
	addi $9, $0, 0xa6d6e4 # cor do c�u
	beq $10, $0, fim_ceu
	addi $10, $10, -1
	# h� 3 linhas para a grama
	# linha 1 s� h� 1 pixel
	# linha 2 h� dois pixels
	# linha 3 t�m 4 pixels
	#   *
	#  **
	# ****
	beq $10, $11, linha1
	beq $10, $12, linha2
	beq $10, $13, linha3
continue_azul:
	beq $14, $10, pintar_verde
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j ceu_grama
linha1:
	addi $14, $0, 380 # pixel da linha 1
	j continue_azul
linha2:
	addi $14, $0, 253 # pixel da linha 2
	j continue_azul
linha3:
	addi $14, $0, 126 # pixel da linha 3
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
# la�os para pintar a grama
pintar_linha1:
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $14, $14, -6
	j ceu_grama
pintar_linha2:
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $10, $10, -1
	addi $14, $14, -6
	j ceu_grama
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
	j ceu_grama
fim_ceu:
	addi $10, $0, 128
	addi $9, $0,0x477d46
gramaescura:
	#linha da grama escura
	beq $10, $0, fim_gramaescura
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j gramaescura
fim_gramaescura:
	addi $10, $0, 384
	addi $9, $0,0x42ad4b
gramaclara:
	#linha da grama clara
	beq $10, $0, fim_gramaclara
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j gramaclara
fim_gramaclara:
	addi $10, $0,1408
	addi $9, $0, 0x8c8c8c
pedra:
	#linhas do ch�o
	beq $10, $0, estilingue
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j pedra
# a partir daqui, � feita a implementa��o do estilingue
#TO DO
# - Base do estilingue
estilingue:
	lui $8, 0x1001
	addi $12, $0, 3200
	addi $13, $0, 1782
	
	addi $10, $0, 6400 # linha do in�cio
	addi $11, $0, 3200 # linha do final
	addi $14, $0, 6399 # contador para realizar os la�os
topo_estilingue:
	beq $12, $0, fim_topo
	addi $12, $12, -1
	
	slt $16, $14, $10
	slt $15, $11, $14
	beq $15, $16, pintar_topo # se o $14 estiver entre o $10 e o $11, ele entrar� no la�o pintar
continue_topo:
	addi $9, $0,  0xa6d6e4
	sw $9, 0($8)
	addi $8, $8, 4
	j topo_estilingue
pintar_topo:
	beq $13, $12, pintar_estilingue_topo # se o $12 chegar na posi��o do $13, ele come�a a pintar o estilingue
	addi $14, $14, -1
	j continue_topo
pintar_estilingue_topo:
	# nesse la�o a base do estilingue � feita, linha por linha
	addi $9, $0, 0x9c5a3c
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	addi $9, $0, 0xa6d6e4
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
	addi $8, $8, 4
	addi $9, $0, 0x9c5a3c
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	addi $13, $13, -128
	addi $12, $12, -14
	addi $14, $14, -15
	j topo_estilingue
fim_topo:
# INICIAR AS DIAGONAIS DO ESTILINGUE AQUI
	addi $10, $0, 4855
	addi $11, $0, 4726
	addi $12, $0, 4597
	addi $13, $0, 4468
	
	addi $14, $0, 512
	addi $15, $0, 4864
diagonal:
	beq $14, $0, fim_diagonal
	addi $14, $14, -1
	
	beq $10, $15, pintar_diagonal_l1
	beq $11, $15, pintar_diagonal_l2
	beq $12, $15, pintar_diagonal_l3
	beq $13, $15, pintar_diagonal_l4
	
	addi $15, $15, -1
	addi $9, $0, 0xa6d6e4
	sw $9, 0($8)
	addi $8, $8, 4
	j diagonal
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
	addi $9, $0, 0xa6d6e4
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
	addi $9, $0, 0x9c5a3c
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $14, $14, -14
	addi $15, $15, -15
	j diagonal
pintar_diagonal_l2:
	addi $9, $0, 0x9c5a3c
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	addi $9, $0, 0xa6d6e4
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
	addi $9, $0, 0x9c5a3c
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $14, $14, -12
	addi $15, $15, -13
	j diagonal
pintar_diagonal_l3:
	addi $9, $0, 0x9c5a3c
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	addi $9, $0, 0xa6d6e4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	addi $9, $0, 0x9c5a3c
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $14, $14, -10
	addi $15, $15, -11
	j diagonal
pintar_diagonal_l4:
	addi $9, $0, 0x9c5a3c
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
	addi $8, $8, 4
	
	addi $14, $14, -8
	addi $15, $15, -9
	j diagonal
fim_diagonal:
# INICIAR A BASE DO ESTILINGUE AQUI

fim_cenario:
	addi $2, $0, 10
	syscall
