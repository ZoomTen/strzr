; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_cvMMV:	
		dc.w SME_cvMMV_1A-SME_cvMMV, SME_cvMMV_57-SME_cvMMV	
		dc.w SME_cvMMV_85-SME_cvMMV, SME_cvMMV_C2-SME_cvMMV	
		dc.w SME_cvMMV_FF-SME_cvMMV, SME_cvMMV_12D-SME_cvMMV	
		dc.w SME_cvMMV_160-SME_cvMMV, SME_cvMMV_175-SME_cvMMV	
		dc.w SME_cvMMV_180-SME_cvMMV, SME_cvMMV_18B-SME_cvMMV	
		dc.w SME_cvMMV_196-SME_cvMMV, SME_cvMMV_1D8-SME_cvMMV	
		dc.w SME_cvMMV_206-SME_cvMMV	
SME_cvMMV_1A:	dc.b $C
		dc.b $F8, 5, 0, $3E, $84	; S
		dc.b $F8, 5, 0, $46, $94	; U
		dc.b $F8, 5, 0, $2E, $A4	; N
		dc.b $F8, 5, 0, $3E, $B4	; S
		dc.b $F8, 5, 0, $10, $C4	; E
		dc.b $F8, 5, 0, $42, $D4	; T
		dc.b $F8, 5, 0, $36, $F4	; P
		dc.b $F8, 5, 0, $26, $4		; L
		dc.b $F8, 5, 0, 0, $14		; A
		dc.b $F8, 1, 0, $20, $24	; I
		dc.b $F8, 5, 0, $2E, $2C	; N
		dc.b $F8, 5, 0, $3E, $3C	; S
SME_cvMMV_57:	dc.b 9	
		dc.b $F8, 5, 0, 4, $8C
		dc.b $F8, 5, 0, $10, $9C	
		dc.b $F8, 5, 0, 0, $AC	
		dc.b $F8, 5, 0, 8, $BC	
		dc.b $F8, 5, 0, $1C, $CC	
		dc.b $F8, 5, 0, $3A, $EC	
		dc.b $F8, 5, 0, $46, $FC	
		dc.b $F8, 5, 0, $3E, $C	
		dc.b $F8, 5, 0, $1C, $1C	
SME_cvMMV_85:	dc.b $C	
		dc.b $F8, 5, 0, $14, $84
		dc.b $F8, 5, 0, 0, $94	
		dc.b $F8, 5, 0, $22, $B4	
		dc.b $F8, 5, 0, $2E, $C4	
		dc.b $F8, 5, 0, $10, $D4	
		dc.b $F8, 5, 0, $3A, $E4	
		dc.b $F8, 5, 0, $3A, 4	
		dc.b $F8, 5, 0, $46, $14	
		dc.b $F8, 1, 0, $20, $24	
		dc.b $F8, 5, 0, $2E, $2C	
		dc.b $F8, 5, 0, $3E, $3C	
		dc.b $F8, 5, 0, $6E, $A4	
SME_cvMMV_C2:	dc.b $C	
		dc.b $F8, 5, 0, $14, $8C	
		dc.b $F8, 5, 0, $32, $9C	
		dc.b $F8, 5, 0, $3A, $AC	
		dc.b $F8, 5, 0, $10, $BC	
		dc.b $F8, 5, 0, $3E, $CC	
		dc.b $F8, 5, 0, $42, $DC	
		dc.b $F8, 5, 0, $14, $FC	
		dc.b $F8, 5, 0, $3A, $C	
		dc.b $F8, 5, 0, $10, $1C	
		dc.b $F8, 5, 0, $2E, $2C	
		dc.b $F8, 5, 0, $4E, $3C	
		dc.b $F8, 5, 0, $4A, $4C	
SME_cvMMV_FF:	dc.b 9	
		dc.b $F8, 1, 0, $20, $B4	
		dc.b $F8, 5, 0, 8, $BC	
		dc.b $F8, 5, 0, $10, $CC	
		dc.b $F8, 5, 0, $36, $EC	
		dc.b $F8, 5, 0, 0, $FC	
		dc.b $F8, 5, 0, $26, $C	
		dc.b $F8, 5, 0, 0, $1C	
		dc.b $F8, 5, 0, 8, $2C	
		dc.b $F8, 5, 0, $10, $3C	
SME_cvMMV_12D:	dc.b $A	
		dc.b $F8, 5, 0, $2A, $8C	
		dc.b $F8, 5, 0, $46, $9C	
		dc.b $F8, 5, 0, $42, $AC	
		dc.b $F8, 5, 0, 0, $BC	
		dc.b $F8, 5, 0, $2E, $CC	
		dc.b $F8, 5, 0, $42, $DC	
		dc.b $F8, 5, 0, $3E, $FC	
		dc.b $F8, 5, 0, $1C, $C	
		dc.b $F8, 1, 0, $20, $1C	
		dc.b $F8, 5, 0, $36, $24	
SME_cvMMV_160:	dc.b 4	
		dc.b $F8, 5, 0, $4E, $E0	
		dc.b $F8, 5, 0, $32, $F0	
		dc.b $F8, 5, 0, $2E, 0	
		dc.b $F8, 5, 0, $10, $10	
SME_cvMMV_175:	dc.b 2	
		dc.b 4, $C, 0, $53, $EC	
		dc.b $F4, 2, 0, $57, $C	
SME_cvMMV_180:	dc.b 2	
		dc.b 4, $C, 0, $53, $EC	
		dc.b $F4, 6, 0, $5A, 8	
SME_cvMMV_18B:	dc.b 2	
		dc.b 4, $C, 0, $53, $EC	
		dc.b $F4, 6, 0, $60, 8	
SME_cvMMV_196:	dc.b $D	
		dc.b $E4, $C, 0, $70, $F4	
		dc.b $E4, 2, 0, $74, $14	
		dc.b $EC, 4, 0, $77, $EC	
		dc.b $F4, 5, 0, $79, $E4	
		dc.b $14, $C, $18, $70, $EC	
		dc.b 4, 2, $18, $74, $E4	
		dc.b $C, 4, $18, $77, 4	
		dc.b $FC, 5, $18, $79, $C	
		dc.b $EC, 8, 0, $7D, $FC	
		dc.b $F4, $C, 0, $7C, $F4	
		dc.b $FC, 8, 0, $7C, $F4	
		dc.b 4, $C, 0, $7C, $EC	
		dc.b $C, 8, 0, $7C, $EC	
SME_cvMMV_1D8:	dc.b 9	
		dc.b $F8, 5, 0, $42, $A9	
		dc.b $F8, 5, 0, $1C, $B9	
		dc.b $F8, 5, 0, $10, $C9	
		dc.b $F8, 0, 0, $56, $D9	
		dc.b $F8, 5, 0, $14, $E9	
		dc.b $F8, 1, 0, $20, $F9	
		dc.b $F8, 5, 0, $2E, 1	
		dc.b $F8, 5, 0, 0, $11	
		dc.b $F8, 5, 0, $26, $21	
SME_cvMMV_206:	dc.b 5	
		dc.b $F8, 5, 0, $3E, $FC	
		dc.b $F8, 5, 0, $42, $C	
		dc.b $F8, 5, 0, 0, $1C	
		dc.b $F8, 5, 0, $2E, $2C	
		dc.b $F8, 5, 0, $C, $3C	
		even