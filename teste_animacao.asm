.text
main:
	lui $8, 0x1001
	addi $9, $0, 512
	addi $10, $0, 0xde99dd
fundo:
	beq $9, $0, shadow
	addi $9, $9, -1
	sw $10, 0($8)
	addi $8, $8, 4
	j fundo
shadow:
	lui $8, 0x1001
	addi $9, $0, 512
for_shadow:
	beq $9, $0, laco
	addi $9, $9, -1
	lw $10, 0($8)
	sw $10, 2048($8)
	addi $8, $8, 4
	j for_shadow
laco:
	lui $8, 0x1001

	addi $10, $0, 0x0
animacao:
	bne $0, $0, fim
	sw $10, 0($8)
	
	jal delay
	
	lw $11, 2048($8)
	sw $11, 0($8)
	
	addi $8, $8, 4
	
	j animacao

#------------------------
#       DELAY
delay:
	addi $20, $0, 200000
for_delay:
	beq $20, $0, fim_delay
	nop
	addi $20, $20, -1
	j for_delay
fim_delay:
	jr $31
#------------------------
fim:
	addi $2, $0, 10
	syscall
	