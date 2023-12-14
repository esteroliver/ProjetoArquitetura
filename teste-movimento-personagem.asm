personagem:
	addi $4, $0, 13364
	jal passaro
	addi $2, $0, 0
	
verificar:
	bne $0, $0, fim
	lui $1, 0xffff
	lw $13, 0($1)
	bne $13, $0, movimentos
	
	j verificar
	
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
	addi $15, $0, 'l'
	beq $13, $15, lancar
	
	j verificar
	# if $5 > 33 or $4 > 32: NÃO MOVA
esquerda:
	jal passaro_shadow
	addi $4, $4, -8
	jal passaro
	j verificar
baixo:
	jal passaro_shadow
	addi $4, $4, 512

	jal passaro
	j verificar

direita:
	jal passaro_shadow
	addi $4, $4, 8

	jal passaro
	j verificar
	
cima:
	jal passaro_shadow
	addi $4, $4, -512

	jal passaro
	j verificar
	
lancar: #PÁSSARO SE TACANDO NO PORCO

fim: 
	addi $2, $0, 10
	syscall

passaro:
	lui $8, 0x1001
	
	#EQUAÇÃO
	add $8, $4, $8
	
	addi $9, $0, 0x990030
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
	add $8, $4, $8
	sw $9, 4096($8)
	addi $8, $8, 4
	addi $9, $0, 0xed1c24
	sw $9, 4096($8)
	addi $8, $8, 4
	sw $9, 4096($8)
	addi $8, $8, 4
	addi $9, $0, 0x990030
	sw $9, 4096($8)
	addi $8, $8, 4
	sw $9, 4096($8)
	addi $8, $8, 4
	addi $9, $0, 0xed1c24
	sw $9, 4096($8)
	addi $8, $8, 4
	sw $9, 4096($8)
	addi $8, $8, 4
	sw $9, 4096($8)
	addi $8, $8, 4
	addi $9, $0, 0x990030
	sw $9, 4096($8)
	addi $8, $8, 4
	sw $9, 4096($8)
	
	lui $8, 0x1001
	add $8, $4, $8
	sw $9, 3588($8)
	addi $8, $8, 4
	addi $9, $0, 0xed1c24
	sw $9, 3588($8)
	addi $8, $8, 4
	addi $9, $0, 0x990030
	sw $9, 3588($8)
	addi $8, $8, 4
	addi $9, $0, 0xed1c24
	sw $9, 3588($8)
	addi $8, $8, 4
	sw $9, 3588($8)
	addi $8, $8, 4
	sw $9, 3588($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 3588($8)
	addi $8, $8, 4
	addi $9, $0, 0xed1c24
	sw $9, 3588($8)
	addi $8, $8, 4
	addi $9, $0, 0x990030
	sw $9, 3588($8)
	
	lui $8, 0x1001
	add $8, $4, $8
	sw $9, 3080($8)
	addi $8, $8, 4
	addi $9, $0, 0xed1c24
	sw $9, 3080($8)
	addi $8, $8, 4
	sw $9, 3080($8)
	addi $8, $8, 4
	sw $9, 3080($8)
	addi $8, $8, 4
	sw $9, 3080($8)
	addi $8, $8, 4
	addi $9, $0, 0xffc20e
	sw $9, 3080($8)
	addi $8, $8, 4
	sw $9, 3080($8)
	addi $8, $8, 4
	addi $9, $0, 0xed1c24
	sw $9, 3080($8)
	addi $8, $8, 4
	addi $9, $0, 0x990030
	sw $9, 3080($8)
	
	lui $8, 0x1001
	add $8, $4, $8
	sw $9, 2568($8)
	addi $8, $8, 4
	addi $9, $0, 0xed1c24
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
	addi $9, $0, 0xed1c24
	sw $9, 2568($8)
	addi $8, $8, 4
	addi $9, $0, 0x0
	sw $9, 2568($8)
	addi $8, $8, 4
	addi $9, $0, 0xffffff
	sw $9, 2568($8)
	addi $8, $8, 4
	addi $9, $0, 0x990030
	sw $9, 2568($8)
	
	lui $8, 0x1001
	add $8, $4, $8
	sw $9, 2056($8)
	addi $8, $8, 4
	addi $9, $0, 0xed1c24
	sw $9, 2056($8)
	addi $8, $8, 4
	sw $9, 2056($8)
	addi $8, $8, 4
	addi $9, $0, 0x0
	sw $9, 2056($8)
	addi $8, $8, 4
	sw $9, 2056($8)
	addi $8, $8, 4
	addi $9, $0, 0xed1c24
	sw $9, 2056($8)
	addi $8, $8, 4
	addi $9, $0, 0x0
	sw $9, 2056($8)
	addi $8, $8, 4
	sw $9, 2056($8)
	addi $8, $8, 4
	addi $9, $0, 0x990030
	sw $9, 2056($8)
	
	lui $8, 0x1001
	add $8, $4, $8
	sw $9, 1548($8)
	addi $8, $8, 4
	addi $9, $0, 0xed1c24
	sw $9, 1548($8)
	addi $8, $8, 4
	addi $9, $0, 0x0
	sw $9, 1548($8)
	addi $8, $8, 4
	addi $9, $0, 0xed1c24
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
	add $8, $4, $8
	addi $9, $0, 0x990030
	sw $9, 1036($8)
	addi $8, $8, 4
	sw $9, 1036($8)
	addi $8, $8, 4
	addi $9, $0, 0xed1c24
	sw $9, 1036($8)
	addi $8, $8, 4
	sw $9, 1036($8)
	addi $8, $8, 4
	sw $9, 1036($8)
	addi $8, $8, 4
	addi $9, $0, 0x990030
	sw $9, 1036($8)
	addi $8, $8, 4
	sw $9, 1036($8)
	addi $8, $8, 4
	
	lui $8, 0x1001
	add $8, $4, $8
	sw $9, 532($8)
	addi $8, $8, 4
	sw $9, 532($8)
	addi $8, $8, 4
	sw $9, 532($8)
	
	lui $8, 0x1001
	add $8, $4, $8
	sw $9, 16($8)
	addi $8, $8, 4
	sw $9, 16($8)
	addi $8, $8, 4
	
	jr $31
passaro_shadow:
	
	#POSIÇÃO DO PIXEL + 32768
	lui $8, 0x1001
	add $8, $8, $4
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
	add $8, $8, $4
	
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
	add $8, $8, $4
	
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
	add $8, $8, $4
	
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
	add $8, $8, $4
	
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
	add $8, $8, $4

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
	add $8, $8, $4
	
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
	add $8, $8, $4
	
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
	add $8, $8, $4
	
ps_linha9:
	beq $15, $0, fim_ps_linha9
	addi $15, $15, -1
	
	lw $10, 33300($8)
	sw $10, 532($8)
	addi  $8, $8, 4
	
	j ps_linha9
	
fim_ps_linha9:
	lui $8, 0x1001
	add $8, $8, $4
	
	lw $10, 32784($8)
	sw $10, 16($8)
	addi $8, $8, 4
	lw $10, 32784($8)
	sw $10, 16($8)
	
	jr $31
