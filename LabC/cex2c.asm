c1: DC "test"
c2: DC "words"
ld x28,c1(x0)
ld x29,c2(x0)

lench_start:	addi t0,a0,0
	addi t1,x0,0
	jal x0,lench

lench:	
	lbu t2,c1(t1)
	beq t2,x0,lench_close
	addi t1,t1,1
	jal x0,lench

lench_close:
	addi x4,t1,0
	addi x5,c1,4

appch_start:
	addi a1,x0,0
	beq a1,x0,appch_close
appch:
	lbu a2,c1(a1)