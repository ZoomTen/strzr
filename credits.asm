; ---------------------------------------------------------------------------
; Credits
; Original from Sonic 1 WTFLAME by Sonic65 & GerbilSoft.
; ---------------------------------------------------------------------------

NewCredits_Main:

WTF_ClearEverything:
		jsr	ClearPLC
		jsr	Pal_FadeFrom
		clr.b	($FFFFF64E).w		; Clear water state.
		move.w	#$2300, sr		; Don't freeze the music
		move.w	($FFFFF60C).w, d0
		move.w	d0, d1
		andi.b	#$BF, d0
		move.w	d0, ($C00004).l
		jsr	ClearScreen
		clr.w	($FFFFFE10).w		; Clear level/act numbers.
		moveq	#0, d0
		lea	($C00004).l, a5		; VRAM control port.
		lea	($C00000).l, a6		; VRAM data port.

WTF_ClrVRAM:
		move.l	#$40000000, (a5)	; Clear VRAM.
		move.w	#$3FFF, d1		; $4000 DWORDs to clear.
@clear:		move.l	d0, (a6)
		dbf	d1, @clear
		fill	$FFFFCC00, 0, $DF
		jsr	ClearObjects
		
; --------------------------------------------------------------
		
		; Load the C64 character set.
		moveq	#$2, d0			; Color: $2
		jsr	C64_charset_load
		
; --------------------------------------------------------------
		
		; Set up the scroll plane.
		move.w	#$9001, (a5)		; Scroll size: 64x32
		move.w	#$8230,(a5)
		move.w	#-225, d7		; Start at -225 so the first line can be loaded.
		move.l	#$40000010, (a5)
		move.w	d7, (a6)
		
; --------------------------------------------------------------
		
		; Reserved registers:
		; - d4: Frame counter.
		; - d5: Current scroll line.
		; - d6: Wetflame TL;DR line counter.
		; - d7: Current VScroll value.
		; - a1: Wetflame_TLDR address.
		
		; Load the palette.
		move.l	#$C0040000, (a5)	; Palette 0, Index 2.
		move.w	#$0EEE, (a6)

		; Load the TL;DR's address.
		lea	(Wetflame_TLDR_0001), a1

		; Initialize the TL;DR variables.
		move.w	(a1)+, d6	; Number of lines for the TL;DR.
		moveq	#1, d5		; Current scroll line.
		moveq	#0, d4		; Frame counter.

		; Enable the display.
		move.w	#$8164, ($C00004).l
		
; --------------------------------------------------------------
		
		; Start of Wetflame!
		; TODO: Replace with Sonic65's PCM driver.

		; Note: Interrupts are disabled due to a conflict
		; with the text scrolling if Labyrinth Zone was the
		; active zone when a Wetflame monitor was broken.
		cmpi.b	#$01,($FFFFFE10).w	; Are we in Labyrinth Zone?
		beq.s	WTF_scroll_loop		; If yes, branch
		move.w	#$2000, sr
		
WTF_scroll_loop:
		
		; VBlank routine by Sik.
VBlank_Wait_1:
		; Wait for current VBlank to exit.
		move.w	($C00004).l, d0
		btst.l	#3, d0
		bne.s	VBlank_Wait_1

VBlank_Wait_2:
		; Wait for next VBlank to start.
		move.w	($C00004).l, d0
		btst.l	#3, d0
		beq.s	VBlank_Wait_2
		
		; Next frame.
		addq	#1, d4		; Frame counter.
		btst	#0, d4		; Update on even frames only.
		bne.s	WTF_scroll_loop
		
		; Next frame. Update the VScroll.
		addq	#1, d7
		move.l	#$40000010, (a5)
		move.w	d7, (a6)
		
		; Check if a scroll line needs to be written.
		move.w	d7, d0
		andi.b	#7, d0
		bne.s	WTF_scroll_loop
		
		; VScroll is a multiple of 8.
		move.l	d5, d0		; Set up the Scroll A write address.
		lsl.w	#7, d0		; Shift left by 7 bits. (64 cells horizontally, times two.)
		ori.w	#$4000, d0	; Part of Scroll A's VRAM address.
		swap	d0		; Swap the words in d0.
		ori.b	#$3, d0		; Part of Scroll A's VRAM address.
		move.l	d0, (a5)	; Set the VRAM address.
		
		; Increment the scroll line for next time.
		addq	#1, d5		; Next scroll line.
		andi	#$1F, d5	; 32 scroll lines.
		
		; Check if the TL;DR is completely offscreen.
		cmpi.w	#-35, d6
		beq.s	WTF_finished
		
		; Check if there are any more lines to write.
		cmpi.w	#0, d6
		ble.s	WTF_write_blank_line
		
		; Write a line of text.
		; d0 == column; d1 == data.
		moveq	#39, d0		; 40 columns.
		moveq	#0, d1		; Clear the data register.
		
TLDR_Load:
		; Load a character from the TL;DR.
		move.b	(a1)+, d1
		move.w	d1, (a6)	; Write the character to VRAM.
		dbf	d0, TLDR_Load	; Next column.
		subq	#1, d6		; Decrement the line counter.
		bra.s	WTF_scroll_loop
		
WTF_write_blank_line:
		; Write a blank line to VRAM.
		; d0 == column; d1 == data.
		moveq	#$F, d0		; 64 columns, four at a time.
		moveq	#0, d1		; Clear the data register.
		subq	#1, d6		; Decrement the line counter.
		
WTF_write_blank_line_loop:
		move.l	d1, (a6)	; Write the blank characters to VRAM.
		move.l	d1, (a6)	; Write the blank characters to VRAM.
		dbf	d0, WTF_write_blank_line_loop
		bra.s	WTF_scroll_loop
		
; --------------------------------------------------------------

WTF_finished:
		; Finished scrolling.
		jsr	Pal_FadeTo
		jmp	GameScreen
; ===========================================================================

		; Data for the TL;DR screen.
		include C64_charset.asm
		include	creditstext.asm
		

; ---------------------------------------------------------------------------
; YOU JUST LOST THE GAME
; ---------------------------------------------------------------------------

GameScreen:				; XREF: Wetflame_Main
		move.w	#-1, ($FFFFF625).w	; Make sure water doesn't interfere.
		move.l	#$C0040000, ($C00004).l	; Palette 0, Index 2.
		move.w	#$0000, ($C00000).l

		move.w	#$2300, sr		; Don't freeze the music
		clr.b	($FFFFF64E).w
		move.w	($FFFFF60C).w,d0
		andi.b	#$BF,d0             ;disable screen
		move.w	d0,($C00004).l
		jsr	ClearScreen
		
		move.l	#$40000000,($C00004).l
		lea	(Nem_GameScreen).l,a0	; Load "The Game" screen patterns.
		jsr	NemDec
		lea	($FF0000).l,a1
		lea	(Eni_GameScreen).l,a0	; Load "The Game" screen mappings.
		move.w	#0,d0
		jsr	EniDec
		lea	($FF0000).l,a1
		move.l	#$40000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		jsr	ShowVDPGraphics
		
		move.w	#-$A,($FFFFF632).w
		move.w	#0,($FFFFF634).w
		move.w	#0,($FFFFF662).w
		move.w	#0,($FFFFF660).w
		move.w	($FFFFF60C).w,d0
		ori.b	#$40,d0 		;enable screen
		move.w	d0,($C00004).l
		
		copy	Pal_FinalScreen, $20, $FFFFFB80

		jsr	Pal_FadeTo
		
		moveq	#0,d0

GameScreen_Wait:
		move.b	#2,($FFFFF62A).w
		jsr	DelayProgram
		andi.b	#$80,($FFFFF605).w
		beq.s	GameScreen_Wait	; if not, branch
		
GameScreen_HardReset:
		jsr	Pal_FadeFrom
		clr.b	($FFFFFFFD).w		; Reset no-play flag.
		movea.l	($00000000).w, a7	; Load initial SP.
		movea.l	($00000004).w, a0	; Load initial PC.
		jmp	(a0)			; Jump to initial PC.
		
Nem_GameScreen:
		incbin	"#STRZR/art/FinalScreen.nem"
		even
Eni_GameScreen:
		incbin	"#STRZR/map/FinalScreen.eni"
		even
Pal_FinalScreen:
		incbin	"#STRZR/pal/FinalScreen.bin"
		even