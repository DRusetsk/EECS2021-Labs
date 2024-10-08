addi a0,x0,4
addi a1,x0,0
addi a2,x0,1

fib:	beq a0,x0,retA
	addi t0,x0,1
	beq a0,t0, retB
	
	addi t1,a1,0
	addi a0,a0,-1	
	addi a1,a2,0
	add a2,t1,a2	
	
	jal x0,fib

retA: addi x4,a1,0

retB: addi x4,a2,0