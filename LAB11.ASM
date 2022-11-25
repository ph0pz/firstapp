.MODEL  SMALL
.STACK  100H
.CODE
.DATA
MSG DB 'THE SUM OF $'
MAIN    PROC
    MOV AH, 2
    MOV DL, '?'
    INT 21H

    INT 21H
    MOV BL, AL

    MOV AH, 1
    INT 21H
    MOV BH, AL ;finish input
    
    MOV DL, CR
    MOV AH, 2 
    INT 21H
    MOV DL,LF
    INT 21H

    MOV DL, BL
    AH, 2
    INT 21H

    MOV DL,BM
    MOV AH,2
    INT 21H 

    MOV AL,BL
    ADD BH, AL
    SUN BH,30H

    MOV DL,BH
    MOV AH, 2
    INT 21H

    MOV AH,4CH
    INT 21H

MAIN    ENDP
    END MAIN