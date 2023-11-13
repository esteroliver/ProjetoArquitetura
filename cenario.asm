.text
# degradê | cenário 4x4
# 0x92cade
# 0xa6d6e4
#0xcee7f3
main:
	lui $8, 0x1001
	
	addi $9, $0, 0x92cade #cor mais escura do céu
	addi $11, $0,2560
for1:
	beq $11, $0, fim1
	addi $11, $11, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j for1
fim1:
	addi $11, $0, 1664 #cor média do céu
	addi $9, $0, 0xa6d6e4
for2:
	beq $11, $0, fim2
	addi $11, $11, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j for2
fim2:	
	addi $11, $0, 2176 # cor clara do céu
	# três últimas linhas da cor clara do céu
	addi $12, $0, 383 #linha3
	addi $13, $0, 255 #linha2
	addi $14, $0, 127 #linha1
	
for3:
	addi $9, $0,0xcee7f3 # as três últimas linhas da cor clara do céu, serão utilizadas para desenhar a grama
	beq $11, $0, fim3
	addi $11, $11, -1
	
	beq $11, $12, linha3
	beq $11, $13, linha2
	beq $11, $14, linha1
continue:
	beq $15, $11, pintar
	
	sw $9, 0($8)
	addi $8, $8, 4

	j for3
linha3:
	addi $15, $0, 380
	j continue
linha2:
	addi $15, $0, 253
	j continue
linha1:
	addi $15, $0, 126
	j continue
pintar:
	addi $9, $0,0x477d46
	
	slt $16, $15, $12
	slt $17, $13, $15
	beq $17, $13, pintar_verde3
	
	slt $16, $15, $13
	slt $17, $14, $15
	beq $17, $16, pintar_verde2
	
	slt $16, $15, $14
	slt $17, $0, $15
	beq $17, $16, pintar_verde1
	
pintar_verde3:
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $15, $15, -6
	j for3
pintar_verde2:
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $11, $11, -1
	addi $15, $15, -6
	j for3
pintar_verde1:
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	sw $9, 0($8)
	addi $8, $8, 4
	
	addi $11, $11, -3
	addi $15, $15, -3
	j for3
fim3:
	addi $11, $0, 128
	addi $9, $0,0x477d46
for4:
	beq $11, $0, fim4
	addi $11, $11, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j for4
fim4:	
	addi $11, $0, 384
	addi $9, $0,0x42ad4b
	
for5:
	beq $11, $0, fim5
	addi $11, $11, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	
	j for5
fim5:
	addi $11, $0,1408
	addi $9, $0, 0x8c8c8c
for6:
	beq $11, $0, fim6
	addi $11, $11, -1
	
	sw $9, 0($8)
	addi $8,$8, 4
	
	j for6
fim6:
	addi $2, $0, 10
	syscall
