.text
main:
	jal func
	
	addi $2, $0, 10
	syscall
	
func:
	sw $31, 0($29)
	addi $29, $29, -4
	
	#funcao
	
	addi $29, $29, 4
	lw $31, 0($29)
	jr $31