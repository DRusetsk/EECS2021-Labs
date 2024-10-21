DM 4
s1: DC "Enter an integer:\n"
s2: DC "Enter i:\0"
s3: DC "Done"
s4: DC "prime"
s5: DC "not prime"

addi x5,x0,s1
ecall x1,x5,4
addi x5,x0,s2
ecall x1,x5,4
ecall a0,x0,5

addi t1,x0,1 //iterator
addi t2,x0,0 //mem count

LOOP:   beq a0,t1,END
	rem t0,a0,t1
	beq t0,x0,STORE
	addi t1,t1,1
	jal x0,LOOP
	
STORE:  sd t1,0(t2)
	addi t2,t2,8
	addi t1,t1,1
	jal x0,LOOP

END:    sd a0,0(t2)
	addi x5,x0,s3
	ecall x0,x5,4

PRIME:	ld t0,8(x0)
	beq t0,a0,PRINT_PRIME
	addi x5,x0,s5
	ecall x0,x5,4
	ebreak

PRINT_PRIME:
	addi x5,x0,s4
	ecall x0,x5,4