; 0 - POP that 0
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $0,%A
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
; 1 - POP that 1
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $1,%A
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
; 2 - POP that 2
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $2,%A
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
; End
