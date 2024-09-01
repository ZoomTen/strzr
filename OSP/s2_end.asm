; ---------------------------------------------------------------------------
; Subroutine to	code test in the Sound Test
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Menu_Code_Test:
		move.w	($FFFFFF0C).w,d0	; Get the number of correct sound IDs entered so far
		adda.w	d0,a0				; Skip to the next entry
		move.w	($FFFFFF84).w,d0	; get sound selected
		cmp.b	(a0),d0				; does sound selected match the cheat code?
		bne.s	Menu_Reset_Code_Counter	; if not, branch
		addq.w	#1,($FFFFFF0C).w	; Add 1 to the number of correct entries
		tst.b	1(a0)				; Is the next entry 0?
		bne.s	Menu_Code_Test_2	; If not, branch
		tst.w	d2					; Test this to determine which cheat to enable
		bne.s	Menu_Set_DebugMode	; If not 0, branch

		move.b	#$01,(a1)			; Enable the cheat (Level Select)		
		bra.s	Menu_Test_1_Sound
; ===========================================================================
Menu_Set_DebugMode:
	;	move.w	#$0101,(a1)			; Enable the cheat (Debug Mode)	
		move.b	#$01,(Slow_Motion_Flag).w	; activate slow motion & frame advance cheat flag
		move.b	#$01,(Debug_Mode_Flag).w	; activate debug mode cheat flag
		move.b	#$39+$80,d0
		jsr	PlaySound_Special			; play emerald music
		bra.s	Menu_Reset_Code_Counter

Menu_Test_1_Sound:
  		move.b	#$2C,($FFFFF600)
  		jmp Menu_Start

Menu_Reset_Code_Counter:
		move.w	#0,($FFFFFF0C).w	; Clear the number of correct entries

; ===========================================================================
Menu_Code_Test_2:		; Do the same procedure with the other cheat
		move.w	($FFFFFF0E).w,d0	; Get the number of correct sound IDs entered so far
		adda.w	d0,a2				; Skip to the next entry
		move.w	($FFFFFF84).w,d0	; get sound selected
		cmp.b	(a2),d0				; does sound selected match the cheat code?
		bne.s	Menu_Reset_Code_Counter_2	; if not, branch
		addq.w	#1,($FFFFFF0E).w	; Add 1 to the number of correct entries
		tst.b	1(a2)				; Is the next entry 0?
		bne.s	Menu_Code_Not_0xFF 
		tst.w	d2					; Test this to determine which cheat to enable
		bne.s	Menu_Set_All_Emeralds	; If not 0, branch

		move.b	#$F,(Continue_count).w		; Give 15 continues
		; The next line causes the bug where the OOZ music plays until reset.
		; Remove "&$7F" to fix the bug.
		move.b	#SndID_ContinueJingle,d0
		jsr	PlaySound					; play extra continue sound
		bra.s	Menu_Reset_Code_Counter_2
; ===========================================================================
Menu_Set_All_Emeralds:
		move.b	#$06,($FFFFFE57).w	; set number of chaos emeralds to 6
		move.b	#$96,d0
		jsr	PlaySound_Special			; play emerald music

Menu_Reset_Code_Counter_2:
		move.w	#0,($FFFFFF0E).w	; Clear the number of correct entries

Menu_Code_Not_0xFF:
		rts
; End of function Menu_Code_Test
; ===========================================================================
; ---------------------------------------------------------------------------
; Level	select codes
; ---------------------------------------------------------------------------
Code_Level_Select:
		dc.b	$20, $13, $12, $14, 0	; 2013-12-14 [Date of Project Start]
		even
Code_Continues:
		dc.b	$20, $13, $06, $16, 0	; 2013-06-16 [WHAT DOES THE FIREFOX SAY!?!?1212]
		even
Code_Debug_Mode:
		dc.b	$20, $13, $03, $31, 0	; Sam-a-versary: 2013-03-31 [First Edit]
		even
Code_All_Emeralds:
		dc.b	4, 2, 1, 3, 0		; Sam-a-versary: 04-02-2013 [First Picture]
		even
; ===========================================================================

; ---------------------------------------------------------------------------
; Subroutine to	Dynamic Menu
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Dynamic_Menu:
		rts