;------------------------------------------------------------------------
;SFCW Splash Screen v2
;------------------------------------------------------------------------


SFCW_SplashStart:
		move.b	#$E4,($FFFFF00A).w
		jsr	ClearPLC		; Clear the PLC
		disable_ints
@setupVDP:	lea	($C00004).l,a6		; Prepare for VDP setup
		move.w	#$8004,(a6)		; Mode register 1 setting
		move.w	#$8230,(a6)		; Map Plane A setting
		move.w	#$8407,(a6)		; Map Plane B setting
		move.w	#$8B03,(a6)		; Mode register 3 setting
		move.w	#$8700,(a6)		; Backdrop color setting
		clr.b	($FFFFF64E).w		; Clear water flag
		move.w	#1,($FFFFF634).w
		move.w	#0,($FFFFF632).w
		jsr	ClearScreen
		jsr	ClearObjects
		loadnem	Art_SFCW, 0
		loadeni	Map_SFCW, 0, 0
		show	$0000, $C000, $27, $1B
		copy	Pal_SFCW, $1F, $FFFFFB80
SFCW_Music:
		jsr	Pal_FadeTo
		
; BEGIN CHEAT! YAAAAAY!
                move.b	($FFFFFFB3),($FFFFFFB4).w	; Save current drum kit setting
		cmp.b	#$40,($FFFFF604).w		; if you pressed [A] or [A and B],
		bhs.s	@playFE				; then play the incorrect S3K End-of-Act Music
							; from the previous release.
		cmp.b	#$10,($FFFFF604).w		; if you pressed [B] only,
		beq.s	@playFC				; then play the incorrect S3K End-of-Act Music
							; from the previous release.
		move.b	#$FD,($FFFFF00A).w		; You didn't do anything? Play the Ristar music!
		move.w	#$180,($FFFFF614).w     	; :D
		bra.s	SFCW_Loop
@playFE:	move.b	#$03,($FFFFFFB3).w		; use StR118's drum kit
		move.b	#$FE,($FFFFF00A).w
		move.w	#$180,($FFFFF614).w
		bra.s	SFCW_Loop
@playFC:	move.b	#$02,($FFFFFFB3).w		; use S3K's drum kit
		move.b	#$FC,($FFFFF00A).w
		move.w	#$180,($FFFFF614).w

; -----------------------------------------------------------------------------------------------

SFCW_Loop:
		jsr	SFCW_PalCycle
		jsr	SFCW_RunDelay
		andi.b	#$F0,($FFFFF605).w
		bne.s	@next
		tst.w   ($FFFFF614).w  
		bne.s	SFCW_Loop
@next:		move.b	($FFFFFFB4),($FFFFFFB3).w	; load saved drum kit
		clr.b	($FFFFFFB4).w			; clear save
		move.b	#$00,($FFFFFFEB).w ; set flag in intro
		move.b	#$24,($FFFFF600).w ; go to next screen
		rts

; -----------------------------------------------------------------------------------------------
; SUBROUTINES
; -----------------------------------------------------------------------------------------------
SFCW_PalCycle:				;modified GHZ palette cycling routine.. -_-
		lea	(Pal_SFCWCyc).l,a0	;load cycling palette
		sub.w 	#1,($FFFFF634).w	;subtract 1 from time left
		bne.s	@return			;if delay is > 0 then loop
		move.w	#1,($FFFFF634).w	;set delay time to 4
		move.w	($FFFFF632).w,d0	;move index to d0
		add.w	#2,($FFFFF632).w	;add index
		andi.w	#30,d0			;limit the number of cycles
		lea	($FFFFFB16).w,a1 	;modify palette
		move.w	(a0,d0.w),(a1)
@return:
		rts

SFCW_RunDelay:
		move.b	#2,($FFFFF62A).w
  		jsr	DelayProgram
  		rts

; -----------------------------------------------------------------------------------------------
; FILES
; -----------------------------------------------------------------------------------------------

Pal_SFCW:	incbin   '#SFCW_Intro/sfcw_pal.bin'
		even
Art_SFCW:	incbin   '#SFCW_Intro/sfcw_set.nem'
		even
Map_SFCW:	incbin   '#SFCW_Intro/sfcw_map.eni'
		even
Pal_SFCWCyc:	dc.w $0200,$0402,$0624,$0846,$0A68,$0C8A,$0EAC,$0ECE,$0EEE
		dc.w $0ECE,$0EAC,$0C8A,$0A68,$0846,$0624,$0402
		even
Art_ZySamSplash:	incbin   '#SFCW_Intro/zysam_splash_set.nem'
			even
Map_ZySamSplash:	incbin   '#SFCW_Intro/zysam_splash_map.eni'
			even
Pal_ZySamSplash:	incbin   '#SFCW_Intro/zysam_splash_pal.bin'
			even