Menu_Start:
	include "OSP\s2_constants.asm"
; ===========================================================================
		move.b	#Stop_Sound,d0
		jsr	PlaySound			; stop music
		jsr	Pal_FadeFrom
		move	#$2700,sr
		move.w	($FFFFF60C).w,d0
		andi.b	#$BF,d0
		move.w	d0,($00C00004).l
		jsr	ClearScreen
		lea	($00C00004).l,a6
		move.w	#$8004,(a6)
		move.w	#$8230,(a6)
		move.w	#$8407,(a6)
		move.w	#$8230,(a6)
		move.w	#$8700,(a6)
		move.w	#$8C81,(a6)
		move.w	#$9001,(a6)

		; clear the RAM ($FFFFAC00-EFFF)
		lea	($FFFFAC00).w,a1
		moveq	#$00,d0
		move.w	#$07FF*2+$FF,d1
		; $7FF = Menus_Object_RAM //// $7FF = Object RAM //// $FF = Sprite_Table_Input

MenuScreen_ClrObjRam:
		move.l	d0,(a1)+
		dbf	d1,MenuScreen_ClrObjRam

		; load background + graphics of font/LevSelPics
		clr.w	($FFFFDC00).w
		move.l	#$FFFFDC00,($FFFFDCFC).w
		move.l	#$42000000,($00C00004).l
		lea	(Nem_MenuFont).l,a0
		jsr	NemDec
		move.l	#$4E000000,($00C00004).l
		lea	(Nem_MenuBox).l,a0
		jsr	NemDec
		move.l	#$52000000,($00C00004).l
		lea	(Nem_LevelIcons).l,a0
		jsr	NemDec
;-------------------------------------------------------------------------------
; Carrega o Mapeamento do Fundo Sonic/Miles
;-------------------------------------------------------------------------------
		loadnem	Nem_LevSel, $6000
		lea	($FFFF0000),a1
		lea	(Eni_LevSel),a0
		move.w	#$0300,d0
		jsr	EniDec
		lea	($FFFF0000),a1
		move.l	#$60000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		jsr	ShowVDPGraphics	; fullscreen background

; ===========================================================================
MenuStart_Select:
		cmpi.b 	#$28, ($FFFFF600).w		; is menu option?
		beq.w	MenuScreen_Options	; if yes, branch
		cmpi.b	#$2C,($FFFFF600).w	; is level select?
		beq.w	Level_Select_Menu	; if yes, branch