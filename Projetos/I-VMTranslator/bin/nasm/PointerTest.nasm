; 0 - PUSH constant 3030
leaw $3030,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 1 - POP pointer 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $THIS,%A
movw %D,(%A)
; 2 - PUSH constant 3040
leaw $3040,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 3 - POP pointer 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $THAT,%A
movw %D,(%A)
; 4 - PUSH constant 32
leaw $32,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 5 - POP this 2
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $2,%A
movw %A, %D
leaw $THIS, %A
addw (%A), %D, %D
leaw $R15, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %A
movw (%A), %D
leaw $R15, %A
movw (%A), %A
movw %D, (%A)
; 6 - PUSH constant 46
leaw $46,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 7 - POP that 6
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $6,%A
movw %A, %D
leaw $THAT, %A
addw (%A), %D, %D
leaw $R15, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %A
movw (%A), %D
leaw $R15, %A
movw (%A), %A
movw %D, (%A)
; 8 - PUSH pointer 0
leaw $THIS,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 9 - PUSH pointer 1
leaw $THAT,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 10 - ADD
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
; 11 - PUSH this 2
leaw $2,%A
movw %A, %D
leaw %THIS,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 12 - SUB
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
; 13 - PUSH that 6
leaw $6,%A
movw %A, %D
leaw %THAT,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 14 - ADD
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
; End