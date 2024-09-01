C64_charset_load:
	; Load the text characters into VRAM.
	; d0 == color to use.
	; Starting address: $0000 (tile 0)
	lea	($C00004), a0
	lea	($C00000), a1
	move.l	#$40000000, (a0); Base address: $0000
	
	; Make sure d0 is within range.
	and.b	#$F, d0
	
	; Number of characters: $80
	moveq	#$7F, d1
	
	; Load the address of the characters table.
	lea	(C64_charset), a2
	
C64_charset_load_char_loop:
		; d2 == row number.
		moveq	#7, d2
		
C64_charset_load_char_row_loop:
			moveq	#0, d3		; d3 == current row video data.
			move.b	(a2)+, d4	; d4 == current character byte.
			moveq	#7, d5		; d5 == current column.
			
C64_charset_load_char_col_loop:
				; Test the MSB of the low byte.
				btst	#7, d4
				beq.s	.no_pixel
				
				; Pixel is set.
				or.l	d0, d3
				
.no_pixel:
				lsl.l	#4, d3	; Left-shift the current video data.
				add.w	d4, d4	; Left-shift the character data.
				
				; Next column.
				dbf	d5, C64_charset_load_char_col_loop
			
			; Send the row to VRAM.
			move.l	d3, (a1)
			
			; Next row.
			dbf	d2, C64_charset_load_char_row_loop
		
		; Next character.
		dbf	d1, C64_charset_load_char_loop
	
	; Finished loading the character data into VRAM.
	rts

C64_charset:
	    incbin "tiles.1bpp"