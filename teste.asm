.text
main:
	lui $8, 0x1001
	addi $9, $0, 0x92cade
	addi $10, $0, 512
	
for:
	beq $10, $0, jogo
	addi $10, $10, -1
	
	sw $9, 0($8)
	addi $8, $8, 4
	addi $9, $9, 1000000
	
	j for
jogo:
	addi $9, $0, 0xffffff
	bne $0, $0, fim
	sw $9, 0($8)
	sw $9, 8($8)
	
	jal sleept
	
	
fim:
	addi $2, $0, 10
	syscall