; ===============================================================================================
; StR:ZR SEGA logo v2
; ===============================================================================================
SegaScreen:				; XREF: GameModeArray
		sound	$E4
		bsr.w	ClearPLC
		bsr.w	Pal_FadeFrom
; setup VDP
		lea	($C00004).l,a6
		move.w	#$8004,(a6)
		move.w	#$8230,(a6)
		move.w	#$8407,(a6)
		move.w	#$8700,(a6)
		move.w	#$8B00,(a6)
		clr.b	($FFFFF64E).w
		disable_ints
		move.w	($FFFFF60C).w,d0
		andi.b	#$BF,d0
		move.w	d0,($C00004).l
		bsr.w	ClearScreen
; load GFX
		loadnem	Art_SEGA1, 0
		loadeni	Map_SEGA1, 0, 0
		show	$0000,$C000,$27,$1B
; clear palette
		moveq	#0,d0			; Set fill byte to 0 for clearing
		lea	($FFFFFB80).w,a1	; To palette buffer
		moveq	#$10,d1			; Clear 16 entries
@palclear:	move.w	d0,(a1)+
		dbf d1,	@palclear		; Loop until all palette entries clear
; make colors visible
		jsr	Pal_FadeTo
		move.w	($FFFFF60C).w,d0
		ori.b	#$40,d0
		move.w	d0,($C00004).l
; -----------------------------------------------------------------------------------------------
; SEGA screen animation
; -----------------------------------------------------------------------------------------------
SegaScreenAnim:

; Make 'S' visible
@anim_S:	move.w	#15,($FFFFF614).w	; Set to delay 30 frames
		palmain	$000E,	9
		palmain	$0004,	8
		palmain	$0002,	3
		sound	$B5
@delay1:	jsr	SEGA_RunDelay
		tst.w	($FFFFF614).w		; Has delay time run out?
		bne.w	@delay1			; If not, keep waiting

; Make 'E' visible
@anim_E:	move.w	#15,($FFFFF614).w	; Set to delay 30 frames
		palmain	$00E4,	11
		palmain	$0040,	10
		palmain	$0020,	4
		sound	$B5
@delay2:	jsr	SEGA_RunDelay
		tst.w	($FFFFF614).w		; Has delay time run out?
		bne.w	@delay2			; If not, keep waiting

; Make 'G' visible
@anim_G:	move.w	#15,($FFFFF614).w	; Set to delay 30 frames
		palmain	$0E40,	14
		palmain	$0E20,	13
		palmain	$0400,	12
		palmain	$0200,	5
		sound	$B5
@delay3:	jsr	SEGA_RunDelay
		tst.w	($FFFFF614).w		; Has delay time run out?
		bne.w	@delay3			; If not, keep waiting

; Make 'A' visible
@anim_A:	move.w	#15,($FFFFF614).w	; Set to delay 30 frames
		palmain	$0EEE,	7
		palmain	$0666,	15
		palmain	$0444,	6
		palmain	$0222,	2
		sound	$B5
@delay4:	jsr	SEGA_RunDelay
		tst.w	($FFFFF614).w		; Has delay time run out?
		bne.w	@delay4			; If not, keep waiting

; Flash the screen in
@anim_end:	jsr	Pal_MakeFlash
		loadnem	Art_SEGA2, 0
		loadeni	Map_SEGA2, 0, 0
		show	$0000,$C000,$27,$1B
		copy	Pal_Sega, $20, $FFFFFB80
		paldup	$0000,	1

; Flash the screen out
		jsr	Pal_MakeWhite
		music	$E1			; S1 Remastered "SEGA!" sound [SEGA.asm]
		move.w	#10,($FFFFF614).w	; Set to delay 30 frames
@delay4a:	jsr	SEGA_RunDelay
		tst.w	($FFFFF614).w		; Has delay time run out?
		bne.w	@delay4a		; If not, keep waiting
		sound	$D0

		palmain	$0200,	1
		move.w	#2,($FFFFF614).w	; Set to delay 30 frames
@delaypal1:	jsr	SEGA_RunDelay
		tst.w	($FFFFF614).w
		bne.w	@delaypal1
		
		palmain	$0400,	1
		move.w	#2,($FFFFF614).w	; Set to delay 30 frames
@delaypal2:	jsr	SEGA_RunDelay
		tst.w	($FFFFF614).w
		bne.w	@delaypal2
		
		palmain	$0600,	1
		move.w	#2,($FFFFF614).w	; Set to delay 30 frames
@delaypal3:	jsr	SEGA_RunDelay
		tst.w	($FFFFF614).w
		bne.w	@delaypal3
		
		

		move.w	#150,($FFFFF614).w	; Set to delay 30 frames
@delay5:	jsr	SEGA_RunDelay
		andi.b	#$80,($FFFFF605).w
		bne.s	Sega_GotoTitle
		tst.w	($FFFFF614).w		; Has delay time run out?
		bne.w	@delay5			; If not, keep waiting
Sega_GotoTitle:
		bsr.w	Pal_FadeFrom
                bsr.w	ClearScreen
  		move.b	#$20,($FFFFF600).w ; go to SFCW splash
; -----------------------------------------------------------------------------------------------
; SUBROUTINES
; -----------------------------------------------------------------------------------------------
SEGA_RunDelay:
		move.b	#2,($FFFFF62A).w
  		jsr	DelayProgram
  		rts
; -----------------------------------------------------------------------------------------------
; FILES
; -----------------------------------------------------------------------------------------------
Art_SEGA1:	incbin	"#SEGA_Logo/SEGAtiles1.nem"
		even
Art_SEGA2:	incbin	"#SEGA_Logo/SEGAtiles2.nem"
		even
Map_SEGA1:	incbin	"#SEGA_Logo/SEGAmap1.eni"
		even
Map_SEGA2:	incbin	"#SEGA_Logo/SEGAmap2.eni"
		even
Pal_SEGA:	incbin	"#SEGA_Logo/SEGApalet2.bin"
		even