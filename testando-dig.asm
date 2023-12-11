.text
main:
	lui $11, 0xffff

	lw $12, 0($11)
	add $4, $12, $0
	
	addi $2, $0, 11
	syscall