; ===============================================================================================
; StRZR 1.22 Hidden Screens (mode $30)
; ===============================================================================================
HiddenScreen:
		sound	$CA
		jsr	Pal_MakeFlash
		jsr	ClearScreen
; Clear objects.. [Copied from SFCW splash; i'm too lazy..]
		lea	($FFFFD000).w,a1	; Prepare for object clearing
		moveq	#0,d0			; Set to clear object RAM
		move.w	#$7FF,d1		; Clear FFFFD000-FFFFD800
@clearloop:	move.l	d0,(a1)+
		dbf	d1,@clearloop		; No sleep until clear
; Load main map..
		loadeni	Map_Hidden, 0, 0
		show	$0000, $C000, $27, $1B
		move.l	#$00000C20,($FFFFFB80).w; palette shit. ignore.
		
HiddenScreen_Chk:
		cmp.b	#$01,($FFFFFF86).w	; DOWN (Samroll)
		bne.s	@checkleft
		jmp	Hidden_Rickroll
@checkleft:	cmp.b	#$02,($FFFFFF86).w 	; LEFT (Macca)
		bne.s	@checkrght
		jmp	Hidden_Macca
@checkrght:	cmp.b	#$03,($FFFFFF86).w 	; RIGHT (Meiwakuna Baka)
		bne.s	Hidden_SamNDash
		jmp	Hidden_Meiwakuna
Hidden_SamNDash:
		loadnem	HiddenArt_SamNDash, $20
		lea	(Pal_HiddenSamNDash).l,a1	; Load palette
		jsr	Hidden_LoadPal
		music	$FB
		jmp	HiddenWait_Loop

Hidden_Rickroll:
		loadnem	HiddenArt_Samroll, $20
		lea	(Pal_Samroll).l,a1	; Load palette
		jsr	Hidden_LoadPal
		music	$F8
		jmp	HiddenWait_Loop

Hidden_Macca:
		loadnem	HiddenArt_TheFox, $20
		lea	(Pal_TheFox).l,a1	; Load palette
		jsr	Hidden_LoadPal
		music	$F7
		jmp	HiddenWait_Loop
		
Hidden_Meiwakuna:
		move.b	#1,($FFFFFFFC).w
		loadnem	HiddenArt_MB, $20
		lea	(Pal_MB).l,a1	; Load palette
		jsr	Hidden_LoadPal
		music	$EA
		jmp	HiddenWait_Loop
; -----------------------------------------------------------------------------------------------
; SUBROUTINES
; -----------------------------------------------------------------------------------------------
HiddenWait_Loop:
		jsr	Pal_MakeWhite		; Flash out
@loop:		move.b	#8,($FFFFF62A).w
  		jsr	DelayProgram
		andi.b	#$F0,($FFFFF605).w	; Is any button pressed?
		bne.w	@next			; If so, go to next screen
		bra.s	@loop
@next:		move.b	#$00,($FFFFF600).w ; go to SEGA screen
		rts

Hidden_LoadPal:
		lea	($FFFFFB84).w,a2	; To palette buffer
		moveq	#$0E,d0			; Copy 14 entries
@palloop:	move.w	(a1)+,(a2)+
		dbf d0,	@palloop		; Loop until all palette entries copied
		jsr	Pal_ToWhite
		rts

; -----------------------------------------------------------------------------------------------
; FILES
; -----------------------------------------------------------------------------------------------
Map_Hidden:		incbin	"#HiddenScreen\MainMap.bin"
			even
; Hidden art. 32x16 [256 x 128 px], Should be $4000 bytes if uncompressed. 14 colours.
HiddenArt_SamNDash:	incbin	"#HiddenScreen\Sam_and_Dash.nem"
			even
Pal_HiddenSamNDash:	incbin	"#HiddenScreen\Palette\Sam_and_Dash.bin"
			even
HiddenArt_Samroll:	incbin	"#HiddenScreen\Samroll.nem"
			even
Pal_Samroll:		incbin	"#HiddenScreen\Palette\Samroll.bin"
			even
HiddenArt_TheFox:	incbin	"#HiddenScreen\TheFox.nem"
			even
Pal_TheFox:		incbin	"#HiddenScreen\Palette\TheFox.bin"
			even
HiddenArt_MB:		incbin	"#HiddenScreen\Substitute.nem"		;FORGET YOU
			even
Pal_MB:			incbin	"#HiddenScreen\Palette\Substitute.bin"  ;FORGET YOU
			even