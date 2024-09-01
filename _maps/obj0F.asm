; ---------------------------------------------------------------------------
; Sprite mappings - "PRESS START BUTTON" and "TM" from title screen
; ---------------------------------------------------------------------------
		dc.w byte_A7CD-Map_obj0F
		dc.w byte_A7CC-Map_obj0F
		dc.w byte_A7EB-Map_obj0F
		dc.w SME_ocUU5_BF-Map_obj0F
byte_A7CC:	dc.b 0			; "PRESS START BUTTON"
byte_A7CD:	dc.b 6
		dc.b $F0, $C, 0, $F7, 0
		dc.b $F0, 0, 0, $FA, $20
		dc.b $F0, $C, 0, $FA, $30
		dc.b $F0, 0, 0, $FE, $50
		dc.b $F0, 8, 0, $FF, $60
		dc.b $F0, 8, 1, 2, $78
byte_A7EB:	dc.b $1E		; sprite list filler
		dc.b $B8, $F, 0, 0, $80
		dc.b $B8, $F, 0, 0, $80
		dc.b $B8, $F, 0, 0, $80
		dc.b $B8, $F, 0, 0, $80
		dc.b $B8, $F, 0, 0, $80
		dc.b $B8, $F, 0, 0, $80
		dc.b $B8, $F, 0, 0, $80
		dc.b $B8, $F, 0, 0, $80
		dc.b $B8, $F, 0, 0, $80
		dc.b $B8, $F, 0, 0, $80
		dc.b $D8, $F, 0, 0, $80
		dc.b $D8, $F, 0, 0, $80
		dc.b $D8, $F, 0, 0, $80
		dc.b $D8, $F, 0, 0, $80
		dc.b $D8, $F, 0, 0, $80
		dc.b $D8, $F, 0, 0, $80
		dc.b $D8, $F, 0, 0, $80
		dc.b $D8, $F, 0, 0, $80
		dc.b $D8, $F, 0, 0, $80
		dc.b $D8, $F, 0, 0, $80
		dc.b $F8, $F, 0, 0, $80
		dc.b $F8, $F, 0, 0, $80
		dc.b $F8, $F, 0, 0, $80
		dc.b $F8, $F, 0, 0, $80
		dc.b $F8, $F, 0, 0, $80
		dc.b $F8, $F, 0, 0, $80
		dc.b $F8, $F, 0, 0, $80
		dc.b $F8, $F, 0, 0, $80
		dc.b $F8, $F, 0, 0, $80
		dc.b $F8, $F, 0, 0, $80
SME_ocUU5_BF:	dc.b 6
		dc.b $F8, $C, 0, 0, $F0	
		dc.b $F8, 4, 0, 4, $13	
		dc.b $F8, 8, 0, 6, $25	
		dc.b 0, $C, 0, 9, $F0	
		dc.b 0, 4, 0, $D, $C	
		dc.b 0, 8, 0, $F, $1D	
		even