; --------------------------------------------------------------------------------------------------------
; SAM THE RABBIT : ZUGON'S REVENGE
; INTRO SEQUENCE (Mode $24)
;
; PICTURES BY SAM237
; --------------------------------------------------------------------------------------------------------

; --------------------------------------------------------------------------------------------------------
; Maccas (macros. bad pun)
; --------------------------------------------------------------------------------------------------------
displaytext	macro	textaddr
	lea    ($FF055C).l,a1            ; Load screen mappings
	lea    (\textaddr).l,a0
	move.w    #0,d0
	jsr    EniDec
	endm

loadpalette	macro	paladdr
	lea   (\paladdr).l,a1
	bsr.w SamItr_Palette
	endm

loadpic		macro	pic
	lea   (\pic).l,a0
	bsr.w SamItr_LoadGraphics
	endm

; --------------------------------------------------------------------------------------------------------
; Main code
; --------------------------------------------------------------------------------------------------------

SamIntro:
		move.b	#$E4,($FFFFF00A).w	; disable all sound
		jsr	ClearPLC		; Clear PLC ram
		jsr	Pal_FadeFrom		; Fade out
		move	#$2700,sr		; disable interrupts

Sam_ItrSetupVDP:
		lea	($C00004).l,a6            ; To set up the VDP
		move.w	#$8004,(a6)		; Mode register 1 setting
		move.w	#$8230,(a6)		; Map Plane A setting
		move.w	#$8407,(a6)		; Map Plane B setting
		move.w	#$9001,(a6)		; Plane size setting
		move.w	#$9200,(a6)		; Window vertical position
		move.w	#$8B03,(a6)		; Mode register 3 setting
		move.w	#$8700,(a6)		; Backdrop color setting
		jsr	ClearScreen
		clr.b	($FFFFF64E).w		; Clear water flag
		jsr	ClearObjects
		fill	$FF0000, 0, $8C0

		loadeni	IntroMainMap, $FF00FE, 0

SamItr_LoadFont:
		lea	($C00000).l,a6
		vram	$25A0
		lea	(IntroFont).l,a5
		move.w	#$1D8,d1
@loadsig:	move.l	(a5)+,(a6)
		dbf	d1,@loadsig ; load uncompressed text patterns

		bsr.w	SamItr_ShowOnVDP
		
SamItr_Chk:
		cmp.b	#$01,($FFFFFFEB).w	; Is FZ flag set?
		bne.s	@checkfrz		; If not, check for FRZ.
		jmp	SamItr_PreTFS		; Else, play the pre-FZ cutscene instead.
@checkfrz:	cmp.b	#$02,($FFFFFFEB).w	; Is FRZ3 flag set?
		bne.s	@checkend		; If not, check for ending.
		jmp	SamItr_PreMSZ		; Else, play the pre-MSZ cutscene instead.
@checkend:	cmp.b	#$03,($FFFFFFEB).w	; Is ending flag set?
		bne.s	SamItr_IntroScreen	; If not, go to 1st screen
		jmp	SamItr_Ending		; Else, play the credits cutscene instead.
; --------------------------------------------------------------------------------------------------------
; Beginning
; --------------------------------------------------------------------------------------------------------
SamItr_IntroScreen:

@1:		cmp.b	#$01,($FFFFFFFD).w	; Is the no-play flag set?
		beq.w	@GotoTitle		; If yes, SKIP EVERYTHING!
		displaytext IntroText1
		loadpic	IntroTiles1
		bsr.w	SamItr_ShowOnVDP
		loadpalette IntroPallet1
		jsr	Pal_FadeTo
		move.b	#$E6,($FFFFF00A).w
		bsr.w	SamItr_Wait

@2:		jsr	Pal_FadeFrom
		bsr.w	SamItr_ClearText
		displaytext IntroText2
		loadpic	IntroTiles2
		bsr.w	SamItr_ShowOnVDP
		loadpalette IntroPallet2
		jsr	Pal_FadeTo
		bsr.w	SamItr_Wait

@3:		jsr	Pal_FadeFrom
		bsr.w	SamItr_ClearText
		displaytext IntroText3
		loadpic	IntroTiles3
		bsr.w	SamItr_ShowOnVDP
		loadpalette IntroPallet3
		jsr	Pal_FadeTo
		bsr.w	SamItr_Wait

@4:		jsr	Pal_FadeFrom
		bsr.w	SamItr_ClearText
		displaytext IntroText4
		loadpic	IntroTiles4
		bsr.w	SamItr_ShowOnVDP
		loadpalette IntroPallet4
		jsr	Pal_FadeTo
		bsr.w	SamItr_Wait

@5:		jsr	Pal_FadeFrom
		bsr.w	SamItr_ClearText
		displaytext IntroText5
		loadpic	IntroTiles5
		bsr.w	SamItr_ShowOnVDP
		loadpalette IntroPallet5
		jsr	Pal_FadeTo
		bsr.w	SamItr_Wait

@GotoTitle:     move.b	#1,($FFFFFFFD).w
		move.b	#4,($FFFFF600).w
		jmp	TitleScreen
		rts

; --------------------------------------------------------------------------------------------------------
; Pre-final battle
; --------------------------------------------------------------------------------------------------------
SamItr_PreTFS:

@1:		displaytext IntroText6
		loadpic	IntroTiles6
		bsr.w	SamItr_ShowOnVDP
		loadpalette IntroPallet6
		jsr	Pal_FadeTo
		move.b	#$E7,($FFFFF00A).w
		bsr.w	SamItr_Wait

@2:		jsr	Pal_FadeFrom
		bsr.w	SamItr_ClearText
		displaytext IntroText7
		loadpic	IntroTiles7
		bsr.w	SamItr_ShowOnVDP
		loadpalette IntroPallet7
		jsr	Pal_FadeTo
		bsr.w	SamItr_Wait

@GotoFZ:	move.b	#$0C,($FFFFF600).w	; go to next screen
		move.w	#1,($FFFFFE02).w	; restart level
		move.w	#$502,($FFFFFE10).w	; set level number to 0502 (FZ)
		rts
	    
; --------------------------------------------------------------------------------------------------------
; Pre-MSZ
; --------------------------------------------------------------------------------------------------------
SamItr_PreMSZ:

@1:	;	displaytext	IntroText8	(TODO: Write the text for this shit)
		loadpic	IntroTiles2		;RESERVED
		bsr.w	SamItr_ShowOnVDP
		loadpalette IntroPallet2	;RESERVED
		jsr	Pal_FadeTo
		move.b	#$E7,($FFFFF00A).w
		bsr.w	SamItr_Wait

@GotoMSZ:	move.b	#$0C,($FFFFF600).w	; go to next screen
		move.w	#1,($FFFFFE02).w	; restart level
		move.w	#$500,($FFFFFE10).w	; set level	number to 0500 (MSZ)
		rts
	    
; --------------------------------------------------------------------------------------------------------
; Ending
; --------------------------------------------------------------------------------------------------------
SamItr_Ending:

@1:		displaytext IntroText9
		loadpic	IntroTiles1		;RESERVED
		bsr.w	SamItr_ShowOnVDP
		loadpalette IntroPallet1	;RESERVED
		jsr	Pal_FadeTo
		move.b	#$F0,($FFFFF00A).w
		bsr.w	SamItr_WaitFixed

@2:		jsr	Pal_FadeFrom
		bsr.w	SamItr_ClearText
		displaytext IntroTextA
		loadpic	IntroTiles1		;RESERVED
		bsr.w	SamItr_ShowOnVDP
		loadpalette IntroPallet1	;RESERVED
		jsr	Pal_FadeTo
		bsr.w	SamItr_WaitFixed

@3:		jsr	Pal_FadeFrom
		bsr.w	SamItr_ClearText
		displaytext IntroTextB
		loadpic	IntroTiles1		;RESERVED
		bsr.w	SamItr_ShowOnVDP
		loadpalette IntroPallet1	;RESERVED
		jsr	Pal_FadeTo
		bsr.w	SamItr_WaitFixed

@GotoCredits:	move.b	#Mode_Credits,($FFFFF600).w ; go to next screen
		rts
		
; --------------------------------------------------------------------------------------------------------
; Demo End
; --------------------------------------------------------------------------------------------------------
SamItr_DemoFinished:

@1:		jsr	Pal_FadeFrom
		bsr.w	SamItr_ClearText
		displaytext IntroTextC
		loadpic	IntroTilesC
		bsr.w	SamItr_ShowOnVDP
		loadpalette IntroPalletC
		jsr	Pal_FadeTo
		bsr.w	SamItr_Wait
		
@GotoCredits:	move.b	#Mode_Credits,($FFFFF600).w ; go to next screen
		rts

; --------------------------------------------------------------------------------------------------------
; Subroutines!
; --------------------------------------------------------------------------------------------------------
SamItr_Palette:
		lea	($FFFFFB80).w,a0
		moveq	#$1F,d0
		jsr	CopyRAM
		rts
      
SamItr_ShowOnVDP:
		lea	($FF0000).l,a1
		move.l	#$40000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		jsr	ShowVDPGraphics
		rts
            
SamItr_Wait:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		andi.b	#$F0,($FFFFF605).w
		bne.s	@waitfinished
		add.w	#1,d0
		cmpi.w	#60*9,d0
		bne.s	SamItr_Wait
@waitfinished:	rts

SamItr_WaitFixed:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		add.w	#1,d0
		cmpi.w	#60*9,d0
		bne.s	SamItr_WaitFixed
@waitfinished:	rts


SamItr_ClearText:
		fill	$FF055C, 0, $364
		rts
		
SamItr_LoadGraphics:
		vram	$20
		jsr	NemDec
		rts

; --------------------------------------------------------------------------------------------------------
; Intro files
; --------------------------------------------------------------------------------------------------------

IntroFont:	incbin '#Sam_Cutscenes\8x8font_unshaded.bin'
	        even
IntroMainMap:	incbin '#Sam_Cutscenes\main_compressed\main_map.eni'
	        even

; --------------------------------------------------------------------------------------------------------
; Intro tile set (Nemesis compressed)
; --------------------------------------------------------------------------------------------------------
IntroTiles1:	incbin '#Sam_Cutscenes\intro1\compressed\intro1.tiles.nem'
	        even
IntroTiles2:	incbin '#Sam_Cutscenes\intro2\compressed\intro2.tiles.nem'
	        even
IntroTiles3:	incbin '#Sam_Cutscenes\intro3\compressed\intro3.tiles.nem'
	        even
IntroTiles4:	incbin '#Sam_Cutscenes\intro4\compressed\intro4.tiles.nem'
	        even
IntroTiles5:	incbin '#Sam_Cutscenes\intro5\compressed\intro5.tiles.nem'
	        even
IntroTiles6:	incbin '#Sam_Cutscenes\intro6\compressed\intro6.tiles.nem'
	        even
IntroTiles7:	incbin '#Sam_Cutscenes\intro7\compressed\intro7.tiles.nem'
	        even
IntroTilesC:	incbin '#Sam_Cutscenes\intro12\compressed\intro12.tiles.nem'
	        even

; --------------------------------------------------------------------------------------------------------
; Intro palettes
; --------------------------------------------------------------------------------------------------------
IntroPallet1:	incbin '#Sam_Cutscenes\intro1\intro1.pallet.bin'
	        even
IntroPallet2:	incbin '#Sam_Cutscenes\intro2\intro2.pallet.bin'
	        even
IntroPallet3:	incbin '#Sam_Cutscenes\intro3\intro3.pallet.bin'
	        even
IntroPallet4:	incbin '#Sam_Cutscenes\intro4\intro4.pallet.bin'
	        even
IntroPallet5:	incbin '#Sam_Cutscenes\intro5\intro5.pallet.bin'
	        even
IntroPallet6:	incbin '#Sam_Cutscenes\intro6\intro6.pallet.bin'
	        even
IntroPallet7:	incbin '#Sam_Cutscenes\intro7\intro7.pallet.bin'
	        even
IntroPalletC:	incbin '#Sam_Cutscenes\intro12\intro12.pallet.bin'
	        even
	        
; --------------------------------------------------------------------------------------------------------
; Intro text map (Enigma compressed)
; --------------------------------------------------------------------------------------------------------
IntroText1:	incbin '#Sam_Cutscenes\intro1\compressed\text01.eni'
	        even
IntroText2:	incbin '#Sam_Cutscenes\intro2\compressed\text02.eni'
	        even
IntroText3:	incbin '#Sam_Cutscenes\intro3\compressed\text03.eni'
	        even
IntroText4:	incbin '#Sam_Cutscenes\intro4\compressed\text04.eni'
	        even
IntroText5:	incbin '#Sam_Cutscenes\intro5\compressed\text05.eni'
	        even
IntroText6:	incbin '#Sam_Cutscenes\intro6\compressed\text06.eni'
	        even
IntroText7:	incbin '#Sam_Cutscenes\intro7\compressed\text07.eni'
	        even
IntroText9:	incbin '#Sam_Cutscenes\intro9\compressed\text09.eni'
	        even
IntroTextA:	incbin '#Sam_Cutscenes\intro10\compressed\text0A.eni'
	        even
IntroTextB:	incbin '#Sam_Cutscenes\intro11\compressed\text0B.eni'
	        even
IntroTextC:	incbin '#Sam_Cutscenes\intro12\compressed\text0C.eni'
	        even

	       ;Cutscene picture specs:
	       ;
	       ;200x96 pixels (25x16 tiles)
	       ;
	       ;Uncompressed size =  9600 decimal
	       ;		    $2580 hexadecimal
	       ;
	       ;Indexed with color 0 = black
	       ;	     color 1 = black
	       ;	     color 2 = white
	       ;so maximum of 13 colors per picture.
	       ;
	       ;Nemesis compressed, unoptimized.
	       ;
	       ;
	       ;CHOOSING PALETTES
	       ;To convert an RGB value to Genesis value,
	       ;divide the RGB value by 32