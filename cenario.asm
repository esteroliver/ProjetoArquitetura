.text
main:
	lui $8, 0x1001
	addi $9, $0, 0xa6d6e4 # cor do céu
	addi $10, $0, 6784
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
	addi $9, $0, 0xa6d6e4 # cor do céu
	beq $10, $0, fim_ceu
	addi $10, $10, -1
	# há 3 linhas para a grama
	# linha 1 só há 1 pixel
	# linha 2 há dois pixels
	# linha 3 têm 4 pixels
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
# laços para pintar a grama

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
	#linhas do chão
	beq $10, $0, estilingue
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j pedra
# a partir daqui, é feita a implementação do estilingue

estilingue:
	lui $8, 0x1001
	addi $8, $8, 10240
	addi $12, $0, 1408
	addi $13, $0, 1398
	
	addi $10, $0, 4096
	addi $11, $0, 2688
	addi $14, $0, 4095
topo_estilingue:
	beq $12, $0, fim_topo
	addi $12, $12, -1
	
	slt $16, $14, $10
	slt $15, $11, $14
	beq $15, $16, pintar_topo # se o $14 estiver entre o $10 e o $11, ele entrará no laço pintar
continue_topo:
	addi $9, $0,  0xa6d6e4
	sw $9, 0($8)
	addi $8, $8, 4
	j topo_estilingue
pintar_topo:
	beq $13, $12, pintar_estilingue_topo # se o $12 chegar na posição do $13, ele começa a pintar o estilingue
	addi $14, $14, -1
	j continue_topo
pintar_estilingue_topo:
	# nesse laço a base do estilingue é feita, linha por linha
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
	addi $10, $0, 4087
	addi $11, $0, 3958
	addi $12, $0, 3829
	addi $13, $0, 3700
	
	addi $14, $0, 512
	addi $15, $0, 4096
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
	addi $10, $0, 2304
	addi $11, $0, 2288
	
base_estilingue:
	beq $10, $0, final_base
	addi $10, $10, -1
	
	beq $11, $10, pintar_base
	addi $9, $0, 0xa6d6e4
	sw $9, 0($8)
	addi $8, $8, 4
	j base_estilingue
	
pintar_base:
	addi $9, $0, 0x9c5a3c
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	addi $10, $10, -2
	addi $11, $11, -128
	j base_estilingue
final_base:
	addi $8, $8, 60
	
	addi $9, $0, 0x9c5a3c
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $8, $8, 500
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $8, $8, 500
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $8, $8, 500
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
sombra:
	lui $8, 0x1001
	addi $9, $0, 0x593608
	
	addi $8, $8, 17964
	addi $8, $8, 16
	
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
base_porco_1:
	lui $8, 0x1001
	addi $8, $8, 16732
	
	addi $9, $0, 0x999999
	
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
	addi $9, $0, 0x666666
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
	addi $9, $0, 0x999999
pes_flat:
	beq $10, $0, fim_cenario
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
	
fim_cenario:
	addi $2, $0, 10
	syscall
