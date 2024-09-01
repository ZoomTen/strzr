; ===============================================================================================
; Reversed SEGA logo [played if you accessed one of the secret screens]
; ===============================================================================================
ReversedSEGA:
; load GFX
		loadnem	Art_SEGA2_R, 0
		loadeni	Map_SEGA2_R, 0, 0
		show	$0000,$C000,$27,$1B
; clear palette
		moveq	#0,d0			; Set fill byte to 0 for clearing
		lea	($FFFFFB80).w,a1	; To palette buffer
		moveq	#$10,d1			; Clear 16 entries
@palclear:	move.w	d0,(a1)+
		dbf d1,	@palclear		; Loop until all palette entries clear
; make colors visible
		move.w	($FFFFF60C).w,d0
		ori.b	#$40,d0
		move.w	d0,($C00004).l
		copy	Pal_SEGA, $20, $FFFFFB80
		jsr	Pal_FadeTo
		sound	$E1

ReversedSEGA_Anim1:
		jsr	Pal_MakeFlash
		loadnem	Art_SEGA1_R, $0000
		loadeni	Map_SEGA1_R, $0000, $0000
		show	$0000,$C000,$27,$1B
		sound	$D0
		copy	Pal_SEGA_R, $20, $FFFFFB80
		jsr	Pal_MakeWhite
		move.w	#30,($FFFFF614).w	; Set to delay 30 frames
@delay5:	move.b	#2,($FFFFF62A).w
  		jsr	DelayProgram
  		andi.b	#$80,($FFFFF605).w
		bne.w	Sega_GotoTitle
		tst.w	($FFFFF614).w		; Has delay time run out?
		bne.w	@delay5			; If not, keep waiting

ReversedSEGA_Anim2:
		; Make 'A' visible
@anim_A:	move.w	#30,($FFFFF614).w	; Set to delay 30 frames
		palmain	$0000,	7
		palmain	$0000,	15
		palmain	$0000,	6
		palmain	$0000,	2
		sound	$B4
@delay4:	move.b	#2,($FFFFF62A).w
  		jsr	DelayProgram
  		andi.b	#$80,($FFFFF605).w
		bne.w	Sega_GotoTitle
		tst.w	($FFFFF614).w		; Has delay time run out?
		bne.w	@delay4			; If not, keep waiting
		
		; Make 'G' visible
@anim_G:	move.w	#30,($FFFFF614).w	; Set to delay 30 frames
		palmain	$0000,	14
		palmain	$0000,	13
		palmain	$0000,	12
		palmain	$0000,	5
		sound	$B4
@delay3:	move.b	#2,($FFFFF62A).w
  		jsr	DelayProgram
  		andi.b	#$80,($FFFFF605).w
		bne.w	Sega_GotoTitle
		tst.w	($FFFFF614).w		; Has delay time run out?
		bne.w	@delay3			; If not, keep waiting
		
		; Make 'E' visible
@anim_E:	move.w	#30,($FFFFF614).w	; Set to delay 30 frames
		palmain	$0000,	11
		palmain	$0000,	10
		palmain	$0000,	4
		sound	$B4
@delay2:	move.b	#2,($FFFFF62A).w
  		jsr	DelayProgram
  		andi.b	#$80,($FFFFF605).w
		bne.w	Sega_GotoTitle
		tst.w	($FFFFF614).w		; Has delay time run out?
		bne.w	@delay2			; If not, keep waiting
		
; Make 'S' visible
@anim_S:	move.w	#30,($FFFFF614).w	; Set to delay 30 frames
		palmain	$0000,	9
		palmain	$0000,	8
		palmain	$0000,	3
		sound	$B4
@delay1:	move.b	#2,($FFFFF62A).w
  		jsr	DelayProgram
  		andi.b	#$80,($FFFFF605).w
		bne.w	Sega_GotoTitle
		tst.w	($FFFFF614).w		; Has delay time run out?
		bne.w	@delay1			; If not, keep waiting

Sega_GotoTitle2:
                bsr.w	Pal_FadeFrom
                bsr.w	ClearScreen
                clr.b	($FFFFFFFC).w
                jmp	SFCW_SplashStart

; -----------------------------------------------------------------------------------------------
; FILES
; -----------------------------------------------------------------------------------------------
Art_SEGA1_R:	incbin	"#SEGA_Logo/SEGAtiles1.nem"
		even
Art_SEGA2_R:	incbin	"#SEGA_Logo/SEGAtiles2.nem"
		even
Map_SEGA1_R:	incbin	"#SEGA_Logo/SEGAmap1.eni"
		even
Map_SEGA2_R:	incbin	"#SEGA_Logo/SEGAmap2.eni"
		even
Pal_SEGA_R:	incbin	"#SEGA_Logo/SEGApalet1.bin"
		even