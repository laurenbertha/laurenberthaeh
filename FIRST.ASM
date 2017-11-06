; ===== WORK OUT 2 PLUS 2 ======================================
	CLO		; Close unwanted windows.
	MOV AL,2	; Copy a 2 into the AL register.
	MOV BL,2	; Copy a 2 into the BL register.
	ADD AL,BL	; Add AL to BL. Answer goes into AL.
	MOV [A0],AL
	
	MOV AL,2	; Copy a 2 into the AL register.
	MOV BL,2	; Copy a 2 into the BL register.
	SUB AL,BL	; Add AL to BL. Answer goes into AL.
	MOV [A1],AL

	MOV CL,6	; Copy a 2 into the AL register.
	MOV DL,2	; Copy a 2 into the BL register.
	DIV CL,DL	; Add AL to BL. Answer goes into AL.
	MOV [A2],CL

	MOV AL,2	; Copy a 2 into the AL register.
	MOV BL,3	; Copy a 2 into the BL register.
	MUL AL,BL	; Add AL to BL. Answer goes into AL.
	MOV [A3],AL

	END		; Program ends
; ===== Program Ends ===========================================