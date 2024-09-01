; ---------------------------------------------------------------------------
; Common menu screen subroutine for transferring text to RAM

; ARGUMENTS:
; d0 = starting art tile
; a1 = data source
; a2 = destination
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; sub_8FBE:
MenuScreenTextToRAM:
		moveq	#0,d1
		move.b	(a1)+,d1

MenuScreenTextToRAM_Cont:
		move.b	(a1)+,d0
		move.w	d0,(a2)+
		dbf	d1,MenuScreenTextToRAM_Cont
		rts
; End of function MenuScreenTextToRAM

; ===========================================================================
; loc_8FCC:
MenuScreen_Options:
		lea	(Chunk_Table).l,a1
		lea	(MapEng_Options).l,a0
		move.w	#$70,d0
		jsr	EniDec
		lea	($FFFF0160).l,a1
		lea	(MapEng_Options).l,a0
		move.w	#$2070,d0
		jsr	EniDec
		clr.b	(Options_menu_box).w
		jsr	sub_9186
		addq.b	#1,(Options_menu_box).w
		jsr	loc_91F8
		addq.b	#1,(Options_menu_box).w
		jsr	loc_91F8
		clr.b	(Options_menu_box).w
		clr.b	(Level_started_flag).w
		clr.w	($FFFFF7F0).w
;-------------------------------------------------------------------------------
		moveq	#$14,d0
		jsr	PalLoad1
		move.b	#MusID_Options,d0
		jsr	JmpTo_PlayMusic
		clr.l	(Camera_X_pos).w
		clr.l	(Camera_Y_pos).w
		move.b	#$4,(Vint_routine).w
		jsr	WaitForVint
		move.w	(VDP_Reg1_val).w,d0
		ori.b	#$40,d0
		move.w	d0,(VDP_control_port).l
		jsr	Pal_FadeTo
OptionScreen_Main:
		move.b	#$4,(Vint_routine).w
		jsr	WaitForVint
		move	#$2700,sr
		jsr	loc_91F8
		jsr	OptionScreen_Controls
		jsr	sub_9186
		move.b	(Ctrl_1_Press).w,d0
		andi.b	#button_start_mask,d0	; is Start button pressed?
		bne.s	OptionScreen_Select		; if yes, branch
		bra.s	OptionScreen_Main
; ===========================================================================
; loc_909A:
OptionScreen_Select:
		move.b	(Options_menu_box).w,d0
		bne.s	OptionScreen_Select_Not1P
		cmpi.b	#2,($FFFFFF8B).w		; is Knuckles in Player Select
		beq.s	Knuckles_not_playable	; if yes, branch
		moveq	#0,d0
		move.w	d0,(Current_ZoneAndAct).w	; green_hill_zone_act_1
		move.w	d0,($FFFFFE20).w	; clear rings
		move.l	d0,($FFFFFE22).w	; clear time
		move.l	d0,($FFFFFE26).w	; clear score
		move.b	#3,($FFFFFE12).w	; set lives to 3
		move.b	#GameModeID_Level,(Game_Mode).w ; => Level (Zone play mode)
		rts


Knuckles_not_playable:
		move.b	#$B4,d0
		jsr	PlaySound_Special	; play bumper sound
		bra.s	OptionScreen_Main
; ===========================================================================
; loc_90B6:
OptionScreen_Select_Not1P:
		subq.b	#1,d0
		bne.s	OptionScreen_Select_Other
		bra.s	OptionScreen_Main
; ===========================================================================
; loc_90D8:
OptionScreen_Select_Other:
		cmpi.b	#2,($FFFFFF8B).w					; is Knuckles in Player Select
		bne.s	OptionScreen_Select_Other_Knuckles	; if not, branch
		clr.b	($FFFFFF8B).w						; set the Player Select to Sonic

		; When pressing START on the sound test option, return to the SEGA screen
OptionScreen_Select_Other_Knuckles:
		move.b	#GameModeID_SegaScreen,(Game_Mode).w ; => SegaScreen
		rts

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

;sub_90E0:
OptionScreen_Controls:
		moveq	#0,d2
		move.b	(Options_menu_box).w,d2
		move.b	(Ctrl_1_Press).w,d0		; Ctrl_1_Press
	;	or.b	(Ctrl_2_Press).w,d0
		btst	#button_up,d0			; is up pressed?
		beq.s	Option_Controls_Down	; if not, branch
		subq.b	#1,d2					; move up 1 selection
		bcc.s	Option_Controls_Down
		move.b	#2,d2

Option_Controls_Down:
		btst	#button_down,d0			; is down pressed?
		beq.s	Option_Controls_Refresh	; if not, branch
		addq.b	#1,d2					; move down 1 selection
		cmpi.b	#3,d2
		blo.s	Option_Controls_Refresh
		moveq	#0,d2

Option_Controls_Refresh:
		move.b	d2,(Options_menu_box).w
		lsl.w	#2,d2
		move.b	OptionScreen_Choices(pc,d2.w),d3 ; number of choices for the option
		movea.l	OptionScreen_Choices(pc,d2.w),a1 ; location where the choice is stored (in RAM)
		move.w	(a1),d2
		btst	#button_left,d0				; is left pressed?
		beq.s	Option_Controls_Right		; if not, branch
		subq.b	#1,d2						; subtract 1 from sound test
		bcc.s	Option_Controls_Right
		move.b	d3,d2

Option_Controls_Right:
		btst	#button_right,d0			; is right pressed?
		beq.s	Option_Controls_Button_A	; if not, branch
		addq.b	#1,d2						; add 1 to sound test
		cmp.b	d3,d2
		bls.s	Option_Controls_Button_A
		moveq	#0,d2

Option_Controls_Button_A:
		btst	#button_A,d0				; is button A pressed?
		beq.s	Option_Controls_Refresh2	; if not, branch
		addi.b	#$10,d2						; add $10 to sound test
		cmp.b	d3,d2
		bls.s	Option_Controls_Refresh2
		moveq	#0,d2

Option_Controls_Refresh2:
		move.w	d2,(a1)
		cmpi.b	#2,(Options_menu_box).w
		bne.s	Option_Controls_NoMove	; rts
		andi.w	#button_B_mask+button_C_mask,d0	; B or C pressed?
		beq.s	Option_Controls_NoMove	; if not, branch
		move.w	(Sound_test_sound).w,d0	; get sound selected
		addi.w	#$80,d0					; add $80 to sound selected
		jsr	JmpTo_PlayMusic
		lea	(Code_Level_Select).l,a0	; load Level Select Code
		lea	(Code_Continues).l,a2		; load Continues Code
		lea	(Level_select_flag).w,a1	; load the RAM address of Level Select
		moveq	#0,d2	; flag to tell the routine to enable the continues cheat and the Level Select cheat
		jsr	CheckCheats

Option_Controls_NoMove:
		rts
; End of function OptionScreen_Controls

; ===========================================================================
; word_917A:
OptionScreen_Choices:
		dc.l (3-1)<<24|($FFFF8A&$FFFFFF)
		dc.l (4-1)<<24|($FFFFB2&$FFFFFF)
		dc.l ($FF)<<24|($FFFF84&$FFFFFF)

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


sub_9186:
		jsr	loc_9268
		moveq	#0,d1
		move.b	(Options_menu_box).w,d1
		lsl.w	#3,d1
		lea	(OptScrBoxData).l,a3
		lea	(a3,d1.w),a3
		move.w	#$6000,d0
		lea	($FFFF0030).l,a2
		movea.l	(a3)+,a1
		jsr	MenuScreenTextToRAM
		lea	($FFFF00B6).l,a2
		moveq	#0,d1
		cmpi.b	#2,(Options_menu_box).w
		beq.s	loc_9186
		move.b	(Options_menu_box).w,d1
		lsl.w	#2,d1
		lea	OptionScreen_Choices(pc),a1
		movea.l	(a1,d1.w),a1
		move.w	(a1),d1
		lsl.w	#2,d1

loc_9186:
		movea.l	(a4,d1.w),a1
		jsr	MenuScreenTextToRAM
		cmpi.b	#2,(Options_menu_box).w
		bne.s	loc2_9186
		lea	($FFFF00C2).l,a2
		jsr	loc_9296

loc2_9186:
		lea	(Chunk_Table).l,a1
		move.l	(a3)+,d0
		moveq	#$15,d1
		moveq	#7,d2
		jmp	JmpTo_PlaneMapToVRAM
; ===========================================================================

loc_91F8:
		jsr	loc_9268
		moveq	#0,d1
		move.b	(Options_menu_box).w,d1
		lsl.w	#3,d1
		lea	(OptScrBoxData).l,a3
		lea	(a3,d1.w),a3
		moveq	#0,d0
		lea	($FFFF0190).l,a2
		movea.l	(a3)+,a1
		jsr	MenuScreenTextToRAM
		lea	($FFFF0216).l,a2
		moveq	#0,d1
		cmpi.b	#2,(Options_menu_box).w
		beq.s	loc2_91F8
		move.b	(Options_menu_box).w,d1
		lsl.w	#2,d1
		lea	OptionScreen_Choices(pc),a1
		movea.l	(a1,d1.w),a1
		move.w	(a1),d1
		lsl.w	#2,d1

loc2_91F8
		movea.l	(a4,d1.w),a1
		jsr	MenuScreenTextToRAM
		cmpi.b	#2,(Options_menu_box).w
		bne.s	loc3_91F8
		lea	($FFFF0222).l,a2
		jsr	loc_9296

loc3_91F8
		lea	($FFFF0160).l,a1
		move.l	(a3)+,d0
		moveq	#$15,d1
		moveq	#7,d2
		jmp	JmpTo_PlaneMapToVRAM
; ===========================================================================

loc_9268:
		lea	(off_92DE).l,a4

loc2_9268:
		tst.b	(Options_menu_box).w
		beq.s	loc3_9268
		lea	(off_92EA).l,a4

loc3_9268:
		cmpi.b	#2,(Options_menu_box).w
		bne.s	loc4_9268		; rts
		lea	(off_92F2).l,a4

loc4_9268:
		rts
; ===========================================================================

loc_9296:
		move.w	(Sound_test_sound).w,d1
		move.b	d1,d2
		lsr.b	#4,d1
		bsr.s	loc2_9296
		move.b	d2,d1

loc2_9296:
		andi.w	#$F,d1
		cmpi.b	#$A,d1
		blo.s	loc3_9296
		addi.b	#4,d1

loc3_9296:
		addi.b	#$10,d1
		move.b	d1,d0
		move.w	d0,(a2)+
		rts
; ===========================================================================
OptScrBoxData:
		dc.l TextOptScr_PlayerSelect
		dc.w $4192
		dc.w 3
		dc.l TextOptScr_VsModeItems
		dc.w $4592
		dc.w 3
		dc.l TextOptScr_SoundTest
		dc.w $4992
		dc.w 3
off_92DE:
		dc.l TextOptScr_Sonic
		dc.l TextOptScr_Tails
		dc.l TextOptScr_Knuckles
off_92EA:
		dc.l TextOptScr_StRZR
		dc.l TextOptScr_Sonic2
		dc.l TextOptScr_Sonic3K
		dc.l TextOptScr_StR118
off_92F2:
		dc.l TextOptScr_0
; ===========================================================================
TextOptScr_PlayerSelect:	dc.b	$10,_st,__,_P,_L,_A,_Y,_E,_R,__,_S,_E,_L,_E,_C,_T,__,_st
TextOptScr_Sonic:			dc.b	$E,__,__,__,__,__,_S,_A,_M,__,__,__,__,__,__,__
TextOptScr_Tails:			dc.b	$E,__,__,__,__,_B,_A,_I,_L,_E,_Y,__,__,__,__,__
TextOptScr_Knuckles:			dc.b	$E,__,__,__,__,_M,_A,_C,_C,_A,__,__,__,__,__,__
TextOptScr_VsModeItems:		dc.b	$10,_st,__,__,__,_D,_R,_U,_M,__,_K,_I,_T,__,__,__,__,_st
TextOptScr_StRZR:		dc.b	$E,__,__,__,__,_S,_T,_R,_col,_Z,_R,__,__,__,__,__
TextOptScr_Sonic2:		dc.b	$E,__,__,__,_S,_O,_N,_I,_C,__,__,_2,__,__,__,__
TextOptScr_Sonic3K:		dc.b	$E,__,__,__,_S,_O,_N,_I,_C,__,_3,_K,__,__,__,__
TextOptScr_StR118:		dc.b	$E,_S,_A,_M,__,_I,_N,__,_S,_1,__,_D,_E,_M,_O,__
TextOptScr_SoundTest:		dc.b	$10,_st,__,_S,_O,_U,_N,_D,__,_S,_E,_L,_E,_C,_T,__,__,_st
TextOptScr_0:				dc.b	$10,__,__,__,__,__,_st,__,_0,_st,__,__,__,__,__,__,__,__