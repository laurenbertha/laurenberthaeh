; ===== CONTROL THE TRAFFIC LIGHTS =============================

	CLO		; Close unwanted windows.
Start:
			; Turn off all the traffic lights.
	MOV AL,0	; Copy 00000000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
			; Turn on all the traffic lights.
	MOV AL,90	; Copy 11111100 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).

	MOV AL,0	; Copy 00000000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
			; Turn on all the traffic lights.
	MOV AL,48	; Copy 11111100 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).

	MOV AL,0	; Copy 00000000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
			; Turn on all the traffic lights.
	MOV AL,24	; Copy 11111100 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
	JMP Start	; Jump back to the start.

	END		; Program ends.
	
; ===== Program Ends ==========================================