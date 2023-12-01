.text
main:   lui $9, 0x1001
        addi $8, $0, 512
        addi $5, $0, 0x00ffffff
        addi $2, $0, 42
for1:   beq $8, $0, fimTela

	syscall

        sw $4, 0($9)
        sw $4, 2048($9)
        addi $9, $9, 4
        addi $8, $8, -1
        j for1
fimTela:
        lui $9, 0x1001
        lui $12, 0xffff
        addi $10, $0, 0x00ffffff
        addi $16, $0, 128 #step
for2:   bne $0, $0, fim
        sw $10, 0($9)
        sw $10, 8($9)
        
        jal sleept
        lw $13, 0($12) 
        beq $13, $0, cont
        
        lw $14, 4($12)
        addi $15, $0, 'f'
        beq $14, $15, fim
        addi $15, $0, 't'
        bne $14, $15, cont
        mul $16, $16, -1
       
       
cont:   lw $11, 2048($9)
        sw $11, 0($9)
        lw $11, 2056($9)
        sw $11, 8($9)
       
        add $9, $9, $16
       
        j for2
fim:     addi $2, $0, 10
         syscall
         
sleept:  addi $20, $0, 200000
forST:   beq $20, $0, fimST
         nop
         addi $20, $20, -1        
         j forST  
fimST:   jr $31