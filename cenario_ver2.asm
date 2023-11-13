.text
main:
	lui $8, 0x1001
	addi $9, $0, 0x92cade
	addi $10, $0, 2560
azulescuro:
	beq $10, $0, fim_azulescuro
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j azulescuro
	
fim_azulescuro:
	addi $9, $0, 0xa6d6e4
	addi $10, $0, 1664
azulmedio:
	beq $10, $0, fim_azulmedio
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j azulmedio

fim_azulmedio:
	addi $10, $0, 2176
	addi $11, $0, 283
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
	beq $10, $0, fim_cenario
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j pedra
fim_cenario:
	addi $2, $0, 10
	syscall