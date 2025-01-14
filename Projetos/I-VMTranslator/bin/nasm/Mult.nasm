; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 0
leaw $0,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - POP local 0
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $0,%A
movw %A, %D
leaw $LCL, %A
addw (%A), %D, %D
leaw $R15, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %A
movw (%A), %D
leaw $R15, %A
movw (%A), %A
movw %D, (%A)
; 3 - PUSH argument 1
leaw $1,%A
movw %A, %D
leaw %ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 4 - POP local 1
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $1,%A
movw %A, %D
leaw $LCL, %A
addw (%A), %D, %D
leaw $R15, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %A
movw (%A), %D
leaw $R15, %A
movw (%A), %A
movw %D, (%A)
; Label (marcador)
loop:
; 5 - PUSH constant 0
leaw $0,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 6 - PUSH local 1
leaw $1,%A
movw %A, %D
leaw %LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 7 - EQ
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $SP, %A
subw (%A),$1,%A
subw (%A), %D, %D
leaw $END1 %A
je %D
nop
leaw $SP, %A
subw (%A),$1,%A
movw $0, (%A)
leaw $END2, %A
jmp
nop
END1:
leaw $SP, %A
subw (%A),$1,%A
movw $-1,(%A)
END2:
; 8 - Goto Condicional
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %D
notw %D
leaw $end, %A
je %D
nop
; 9 - PUSH local 0
leaw $0,%A
movw %A, %D
leaw %LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 10 - PUSH argument 0
leaw $0,%A
movw %A, %D
leaw %ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 11 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
addw $1, %A, %D
leaw $0, %A
movw %D, (%A)
; 12 - POP local 0
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $0,%A
movw %A, %D
leaw $LCL, %A
addw (%A), %D, %D
leaw $R15, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %A
movw (%A), %D
leaw $R15, %A
movw (%A), %A
movw %D, (%A)
; 13 - PUSH local 1
leaw $1,%A
movw %A, %D
leaw %LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 14 - PUSH constant 1
leaw $1,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 15 - SUB
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $SP, %A
subw (%A),$1, %A
subw (%A), %D, %D
movw %D, (%A)
; 16 - POP local 1
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $1,%A
movw %A, %D
leaw $LCL, %A
addw (%A), %D, %D
leaw $R15, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %A
movw (%A), %D
leaw $R15, %A
movw (%A), %A
movw %D, (%A)
; 17 - Goto Incondicional
leaw $loop,%A
jmp
nop
; Label (marcador)
end:
; 18 - PUSH local 0
leaw $0,%A
movw %A, %D
leaw %LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 21 - PUSH constant 7
leaw $7,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 22 - PUSH constant 2
leaw $2,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 23 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
addw $1, %A, %D
leaw $0, %A
movw %D, (%A)
; 24 - PUSH constant 3
leaw $3,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 25 - chamada de funcao mult
leaw $mult.ret.2, %A
 movw %A, %D
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
leaw $8,%A
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
leaw $Main,%A
jmp
nop
mult.ret.2:
; Label (marcador)
END:
; 26 - Goto Incondicional
leaw $END,%A
jmp
nop
; End
