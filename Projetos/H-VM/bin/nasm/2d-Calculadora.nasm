; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 0 - Declarando função mult
mult:
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 1 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 2 - POP local 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; 3 - PUSH argument 1
leaw $1,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 4 - POP local 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; Label (marcador)
mult.mult.loop:
; 5 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 6 - PUSH local 1
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 7 - EQ
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $EQmult0,%A
je %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $EQ2mult0,%A
jmp
nop
EQmult0:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
EQ2mult0:
; 8 - Goto Condicional
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $mult.mult.end,%A
jne %D
nop
; 9 - PUSH local 0
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 10 - PUSH argument 0
leaw $0,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 11 - ADD
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
addw (%A),%D,%D
movw %D,(%A)
; 12 - POP local 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; 13 - PUSH local 1
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 14 - PUSH constant 1
leaw $1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 15 - SUB
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
movw %D,(%A)
; 16 - POP local 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; 17 - Goto Incondicional
leaw $mult.mult.loop,%A
jmp
nop
; Label (marcador)
mult.mult.end:
; 18 - PUSH local 0
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 19 - Retorno de função
; Retorno de função 
leaw $LCL,%A
movw (%A),%D
leaw $R13,%A
movw %D,(%A)
leaw $5,%A
subw %D,%A,%A
movw (%A),%D
leaw $R14,%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
addw %D,$1,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THAT,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THIS,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $ARG,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $R14,%A
movw (%A),%A
jmp
nop
; End
; 20 - Declarando função pow
pow:
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 21 - PUSH argument 0
leaw $0,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 22 - POP local 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; 23 - PUSH argument 1
leaw $1,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 24 - POP local 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; 25 - PUSH constant 1
leaw $1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 26 - POP temp 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $6,%A
movw %D,(%A)
; 27 - PUSH local 1
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 28 - PUSH temp 1
leaw $6,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 29 - SUB
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
movw %D,(%A)
; 30 - POP local 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; Label (marcador)
pow.pow.loop:
; 31 - PUSH local 0
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 32 - PUSH argument 0
leaw $0,%A
movw %A,%D
leaw $ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 33 - chamada de funcao mult
leaw $mult.ret.1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $LCL,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THIS,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THAT,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $7,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
subw %A,%D,%D
leaw $ARG,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $mult,%A
jmp
nop
mult.ret.1:
; 34 - POP local 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; 35 - PUSH local 1
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 36 - PUSH temp 1
leaw $6,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 37 - SUB
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
movw %D,(%A)
; 38 - POP local 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
; 39 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 40 - PUSH local 1
leaw $1,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 41 - EQ
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $SP,%A
subw (%A),$1,%A
subw (%A),%D,%D
leaw $EQpow1,%A
je %D
nop
leaw $SP,%A
subw (%A),$1,%A
movw $0,(%A)
leaw $EQ2pow1,%A
jmp
nop
EQpow1:
leaw $SP,%A
subw (%A),$1,%A
movw $-1,(%A)
EQ2pow1:
; 42 - Goto Condicional
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $pow.pow.end,%A
jne %D
nop
; 43 - Goto Incondicional
leaw $pow.pow.loop,%A
jmp
nop
; Label (marcador)
pow.pow.end:
; 44 - PUSH local 0
leaw $0,%A
movw %A,%D
leaw $LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 45 - Retorno de função
; Retorno de função 
leaw $LCL,%A
movw (%A),%D
leaw $R13,%A
movw %D,(%A)
leaw $5,%A
subw %D,%A,%A
movw (%A),%D
leaw $R14,%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $R15,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $R15,%A
movw (%A),%A
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
addw %D,$1,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THAT,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $THIS,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $ARG,%A
movw %D,(%A)
leaw $R13,%A
subw (%A),$1,%D
movw %D,(%A)
movw %D,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $R14,%A
movw (%A),%A
jmp
nop
; End
; 46 - Declarando função Main.main
Main.main:
; 47 - PUSH constant 3
leaw $3,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 48 - PUSH constant 3
leaw $3,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 49 - chamada de funcao pow
leaw $pow.ret.1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $LCL,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $ARG,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THIS,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $THAT,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
leaw $7,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
subw %A,%D,%D
leaw $ARG,%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
leaw $LCL,%A
movw %D,(%A)
leaw $pow,%A
jmp
nop
pow.ret.1:
; 50 - POP temp 2
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $7,%A
movw %D,(%A)
; Label (marcador)
Main.Main.main.while:
; 51 - Goto Incondicional
leaw $Main.Main.main.while,%A
jmp
nop
; End