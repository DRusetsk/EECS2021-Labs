s1: DF 1.0
s2: DF 0.0
s3: DF 10.0

fld f1, s1(x0)//1.0
fld f2, s2(x0)//result
fld f3, s1(x0)//factorial
fld f4, s2(x0)//counter
fld f5, s3(x0)//n

LOOP:	fdiv.d f6,f1,f3//divide value
	fadd.d f2,f2,f6//add division to result
	fadd.d f4,f4,f1//increment counter by 1
	
	fmul.d f3,f3,f4//update factorial
	feq.d x1,f4,f5//compare counter to n
	beq x1,x0,LOOP