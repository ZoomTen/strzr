Level_Select_Menu:
;-------------------------------------------------------------------------------
; Carrega o Texto do Menu de Seleção de Fases
;-------------------------------------------------------------------------------
		lea	($FFFF0000),a3
		move.w	#$045F,d1

Offset_0x026B4E:
		move.w	#$0000,(a3)+
		dbra	d1,Offset_0x026B4E
		lea	($FFFF0000),a3
		lea	(Menu_Level_Select_Text),a1
		lea	(Menu_Text_Positions),a5
		moveq	#$00,d0
		move.w	#$0009,d1	; Quantidade de textos a ser carregada e posição do Sound Test

Menu_Loop_Load_Text:
		move.w	(a5)+,d3
		lea	$00(a3,d3),a2
		moveq	#$00,d2
		move.b	(a1)+,d2
		move.w	d2,d3

Offset_0x026B7A:
		move.b	(a1)+,d0
		move.w	d0,(a2)+
		dbra	d2,Offset_0x026B7A
		move.w	#$000D,d2
		sub.w	d3,d2
		bcs.s	Offset_0x026B92

Offset_0x026B8A:
		move.w	#$0000,(a2)+
		dbra	d2,Offset_0x026B8A

Offset_0x026B92:
		move.w	#$0011,(a2) 	 	 	 ; Load "1"
		lea	$0050(a2),a2
		move.w	#$0012,(a2) 	 	 	 ; Load "2"
		lea	$0050(a2),a2
		move.w	#$0013,(a2) 	 	 	 ; Load "3"
		dbra	d1,Menu_Loop_Load_Text
;-------------------------------------------------------------------------------
		moveq	#$0E,d1
		lea	$FFFFFBA0(a2),a2

Menu_Clear_Act_x:						; Limpa os números dos acts não usados e carrega o "*" do Sound Test
		move.w	#$0000,(a2)				; Load " "
		lea	$0050(a2),a2
		dbra	d1,Menu_Clear_Act_x
		lea     ($FFFFFF10)(a2), a2
		move.w  #$001A, (a2)          ; Load "*"
;-------------------------------------------------------------------------------
; Carrega o Mapeamento das Asas onde são mostrados os ícones
;-------------------------------------------------------------------------------
;		lea	(Wings_Mappings),a0
;		lea	($FFFF0670),a1
;		move	#$06,d1
;Menu_Loop_Next_Line:
;		move	#$09,d0
;Menu_Loop_Load_Wings:
;		move.w	(a0)+,(a1)+
;		dbra	d0,Menu_Loop_Load_Wings
;		add.w	#$3C,a1
;		dbra	d1,Menu_Loop_Next_Line
;-------------------------------------------------------------------------------
; Carrega o Mapeamento dos ícones
;-------------------------------------------------------------------------------
		lea	($FFFF08C0),a1
		lea	(Eni_LevelIcons),a0
		move.w	#$0090,d0
		jsr	EniDec
		lea	($FFFF0000),a1
		move.l	#$40000003,d0
		moveq	#$27,d1
		moveq	#$1B,d2
		jsr	ShowVDPGraphics
;-------------------------------------------------------------------------------
		moveq	#$00,d3
		jsr	Offset_0x027040
;-------------------------------------------------------------------------------

		moveq	#$14,d0
		jsr	PalLoad1
		lea	($FFFFFB40).w,a1
		lea	($FFFFFBC0).w,a2
		moveq	#$07,d1

Offset_0x026C26:
		move.l	(a1),(a2)+
		clr.l	(a1)+
		dbra	d1,Offset_0x026C26
		move.b	#Level_Select_Menu_snd,d0
		jsr	PlaySound				; play Level Select Menu sound
		moveq	#$00,d0
		jsr	LoadPLC2
		move.w	#$0707,($FFFFF614).w
		clr.l	($FFFFEE00).w
		clr.l	($FFFFEE04).w
		clr.w	($FFFFFF0C).w	; clear Debug Mode Code Counter
		clr.w	($FFFFFF0E).w	; clear All Emerald Code Counter
		move.b	#$4,($FFFFF62A).w
		jsr	DelayProgram
		move.w	($FFFFF60C).w,d0
		ori.b	#$40,d0
		move.w	d0,($00C00004)
		jsr	Pal_FadeTo

Menu_Main_Loop:
		move.b	#$4,($FFFFF62A).w
		jsr	DelayProgram
		move	#$2700,sr
		moveq	#$00,d3
		jsr	Offset_0x026ED8
		jsr	LevSel_S2_Controls
		move.w	#$6000,d3
		jsr	Offset_0x027048
		move.b	($FFFFF605).w,d0	; get button press
		andi.b	#$80,d0				; is Start button pressed?
		bne.s	Offset_0x026CD8		; if yes, branch
		bra.s	Menu_Main_Loop

Offset_0x026CD8:
		move.w	($FFFFFF82).w,d0	; get item selected
		add.w	d0,d0
		move.w	Menu_Level_Select_Array(pc,d0),d0	; load level number
		bmi.s	Menu_Game_Reset		; if sound test was selected, branch
		cmpi.w	#$0600,d0				; ending sequence was selected?
		beq.s	Menu_Ending_Sequence	; if yes, branch
		cmpi.w	#$5555,d0
		beq.s	Menu_Main_Loop
		cmpi.w	#$4000,d0			; Special Stage was selected?
		bne.s	Menu_Load_Level		; if not, branch
		move.b	#$10,($FFFFF600).w	; set screen mode to $10 (Special Stage)
		clr.w	($FFFFFE10).w		; clear level number
		move.b	#3,($FFFFFE12).w	; set lives to 3
		moveq	#0,d0
		move.w	d0,($FFFFFE20).w	; clear rings
		move.l	d0,($FFFFFE22).w	; clear time
		move.l	d0,($FFFFFE26).w	; clear score
		rts

Menu_Game_Reset:
		move.b	#$00,($FFFFF600).w	; set screen mode to 00 (Sega screen)
		rts

Menu_Ending_Sequence:
		move.b	#$28,($FFFFF600).w
		rts

Menu_Level_Select_Array:
		dc.w	$0000,$0001,$0002
		dc.w	$0100,$0101,$0102
		dc.w	$0300,$0301,$0302
		dc.w	$0400,$0401,$0402
		dc.w	$0200,$0201,$0202
		dc.w	$0500,$0501,$0103
		dc.w	$0502,$4000,$0600
		dc.w	$FFFF

Menu_Load_Level:
		andi.w	#$3FFF,d0
		move.w	d0,($FFFFFE10).w
		move.b	#$0C,($FFFFF600).w	; set screen mode to $0C (level)
		move.b	#3,($FFFFFE12).w	; set lives to 3
		moveq	#0,d0
		move.w	d0,($FFFFFE20).w	; clear rings
		move.l	d0,($FFFFFE22).w	; clear time
		move.l	d0,($FFFFFE26).w	; clear score
		move.b	#Volume_Down,d0
		jsr	PlaySound
		rts

; ---------------------------------------------------------------------------
; Subroutine to	change what you're selecting in the level select
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


LevSel_S2_Controls:
		move.b	($FFFFF605).w,d1	; get button press
		andi.b	#$03,d1				; is up/down pressed and held?
		bne.s	LevSel_S2_UpDown	; if yes, branch
		subq.w	#$01,($FFFFFF80).w	; subtract 1 from time	to next	move
		bpl.s	LevSel_S2_SndTest	; if time remains, branch

LevSel_S2_UpDown:
		move.w	#$B,($FFFFFF80).w	; reset time delay
		move.b	($FFFFF604).w,d1	; read controller
		andi.b	#$3,d1				; is up/down pressed?
		beq.s	LevSel_S2_SndTest	; if not, branch
		move.w	($FFFFFF82).w,d0	; get item selected
		btst	#$0,d1				; is up pressed?
		beq.s	LevSel_S2_Down		; if not, branch
		subq.w	#$1,d0		; move up 1 selection
		bcc.s	LevSel_S2_Down
		moveq	#$15,d0		; Último item após apertar para cima

LevSel_S2_Down:
		btst	#$1,d1				; is down pressed?
		beq.s	LevSel_S2_Refresh	; if not, branch
		addq.w	#$1,d0		; move down 1 selection
		cmpi.w	#$16,d0		; Verifica qual o último item da lista
		bcs.s	LevSel_S2_Refresh
		moveq	#$0,d0		; if selection moves above $15, jump to selection $0

LevSel_S2_Refresh:
		move.w	d0,($FFFFFF82).w	; set new selection
		rts
; ===========================================================================
LevSel_S2_SndTest:
		cmpi.w	#$15,($FFFFFF82).w	; se o item for igual muda as funções de esquerda e direita 
		bne.s	LevSel_S2_Left_Right; if not, branch
		move.w	($FFFFFF84).w,d0	; get sound selected
		move.b	($FFFFF605).w,d1	; get button press
		btst	#$2,d1				; is left pressed?
		beq.s	LevSel_S2_Right		; if not, branch
		subq.b	#$1,d0		; subtract 1 from sound test

LevSel_S2_Right:
		btst	#$3,d1				; is right pressed?
		beq.s	LevSel_S2_Button_A	; if not, branch
		addq.b	#$1,d0		; add 1 to sound test

LevSel_S2_Button_A:
		btst	#$6,d1				; is button A pressed?
		beq.s	LevSel_S2_Refresh2	; if not, branch
		addi.b	#$10,d0		; add $10 to sound test

LevSel_S2_Refresh2:
		move.w	d0,($FFFFFF84).w	; set sound test number
		andi.w	#$30,d1				; B or C pressed?
		beq.s	LevSel_S2_NoMove	; if not, branch
		move.w	($FFFFFF84).w,d0	; get sound selected
		addi	#$80, d0
		jsr	PlaySound			; play music
		lea		(Code_Debug_Mode),a0	; load Debug Mode Code
		lea		(Code_All_Emeralds),a2	; load All Emeralds Code
	;	lea		(Debug_Mode_Flag).w,a1	; load the RAM address of Debug Mode, slow motion & frame advance
		moveq	#1,d2	; flag to tell the routine to enable the Super Sonic cheat and the Debug Mode cheat
		jsr	Menu_Code_Test	

LevSel_S2_NoMove:
		rts
; ===========================================================================
LevSel_S2_Left_Right:
		move.b	($FFFFF605).w,d1	; get button press
		andi.b	#$C,d1				; is left/right pressed?
		beq.s	LevSel_S2_NoMove2	; if not, branch
		move.w	($FFFFFF82).w,d0	; set item selected to d0 
		move.b	Menu_Left_Right_Select(pc,d0),d0	; load new item selected number
		move.w	d0,($FFFFFF82).w	; set new item selected number to item selected

LevSel_S2_NoMove2:
		rts

; ---------------------------------------------------------------------------
; Level select "Left Right" to set new item selected number
; when left or right is pressed
; ---------------------------------------------------------------------------
Menu_Left_Right_Select:			 	
		dc.b	$0F,$10,$11,$12,$12,$12,$13,$13,$13,$14,$14,$14,$15,$15,$15
		dc.b	$00,$01,$02,$03,$06,$09,$0C
		even
; ===========================================================================

Offset_0x026ED8:
		lea		($FFFF0000),a4
		lea		(Menu_Text_Highlight),a5
		lea		($00C00000),a6
		moveq	#$00,d0
		move.w	($FFFFFF82).w,d0
		lsl.w	#$02,d0
		lea		$00(a5,d0),a3
		moveq	#$00,d0
		move.b	(a3),d0
		mulu.w	#$0050,d0
		moveq	#$00,d1
		move.b	$0001(a3),d1
		add.w	d1,d0
		lea		$00(a4,d0),a1
		moveq	#$00,d1
		move.b	(a3),d1
		lsl.w	#$07,d1
		add.b	$0001(a3),d1
		addi.w	#$C000,d1
		lsl.l	#$02,d1
		lsr.w	#$02,d1
		ori.w	#$4000,d1
		swap.w	d1
		move.l	d1,$0004(a6)
		moveq	#$0E,d2		; Quantidade de letras a selecionar (Highlight)

Offset_0x026F28:		
		move.w	(a1)+,d0
		add.w	d3,d0
		move.w	d0,(a6)
		dbra	d2,Offset_0x026F28
		addq.w	#$02,a3
		moveq	#$00,d0
		move.b	(a3),d0
		beq.s	Offset_0x026F6C
		mulu.w	#$0050,d0
		moveq	#$00,d1
		move.b	$0001(a3),d1
		add.w	d1,d0
		lea		$00(a4,d0),a1
		moveq	#$00,d1
		move.b	(a3),d1
		lsl.w	#$07,d1
		add.b	$0001(a3),d1
		addi.w	#$C000,d1
		lsl.l	#$02,d1
		lsr.w	#$02,d1
		ori.w	#$4000,d1
		swap.w	d1
		move.l	d1,$0004(a6)
		move.w	(a1)+,d0
		add.w	d3,d0
		move.w	d0,(a6)

Offset_0x026F6C:
		cmpi.w	#$0015,($FFFFFF82).w		; Se for igual seleciona o número do Sound Test
		bne.s	Offset_0x026F78
		bsr.s	Offset_0x026F7A

Offset_0x026F78:
		rts
;-------------------------------------------------------------------------------
Offset_0x026F7A:
		move.l	#$49C60003,($00C00004)		; Posição dos números do Sound Test
		move.w	($FFFFFF84).w,d0
		move.b	d0,d2
		lsr.b	#$04,d0
		bsr.s	Offset_0x026F90
		move.b	d2,d0

Offset_0x026F90:
		andi.w	#$000F,d0
		cmpi.b	#$0A,d0
		bcs.s	Offset_0x026F9E
		addi.b	#$04,d0

Offset_0x026F9E:
		addi.b	#$10,d0
		add.w	d3,d0
		move.w	d0,(a6)
		rts

; ===========================================================================

Offset_0x027040:
		jsr	Offset_0x026F7A
		bra.s	Offset_0x027050

Offset_0x027048:
		jsr	Offset_0x026ED8

Offset_0x027050:
		move.w	($FFFFFF82).w,d0
		lea		(Menu_Icon_List),a3
		lea		$00(a3,d0),a3
		lea		($FFFF08C0),a1
		moveq	#$00,d0
		move.b	(a3),d0
		lsl.w	#$03,d0
		move.w	d0,d1
		add.w	d0,d0
		add.w	d1,d0
		lea		$00(a1,d0),a1
		move.l	#$4B360003,d0			; Posição Horizontal dos Ícones
		moveq	#$03,d1
		moveq	#$02,d2
		jsr	ShowVDPGraphics
		lea		(Pal_MenuIcon),a1  
		moveq	#$00,d0
		move.b	(a3),d0
		lsl.w	#$05,d0
		lea		$00(a1,d0),a1
		lea		($FFFFFB40).w,a2
		moveq	#$07,d1

Offset_0x027098:
		move.l	(a1)+,(a2)+
		dbra	d1,Offset_0x027098
		rts

Menu_Level_Select_Text:
		dc.b	$0E,_S,_U,_N,_S,_E,_T,__,_P,_L,_A,_I,_N,_S,__,__
		dc.b	$0E,_B,_E,_A,_C,_H,__,_R,_U,_S,_H,__,__,__,__,__
		dc.b	$0E,_F,_O,_R,_E,_S,_T,__,_F,_R,_E,_N,_Z,_Y,__,__
		dc.b	$0E,_I,_C,_E,__,_P,_A,_L,_A,_C,_E,__,__,__,__,__
		dc.b	$0E,_F,_A,_W,_K,_N,_E,_R,__,_R,_U,_I,_N,_S,__,__
		dc.b	$0E,_M,_U,_T,_A,_N,_T,__,_S,_H,_I,_P,__,__,__,__
		dc.b	$0E,_T,_H,_E,__,_F,_I,_N,_A,_L,__,_S,_T,_A,_N,_D
		dc.b	$0E,_S,_P,_E,_C,_I,_A,_L,__,_S,_T,_A,_G,_E,__,__
		dc.b	$0E,_O,_P,_T,_I,_O,_N,_S,__,_M,_E,_N,_U,__,__,__
		dc.b	$0E,_S,_O,_U,_N,_D,__,_T,_E,_S,_T,__,__,_st,__,__
		even
;-------------------------------------------------------------------------------
Menu_Text_Highlight:
		dc.w	$0306,$0324,$0306
		dc.w	$0424,$0306,$0524
		dc.w	$0706,$0724,$0706
		dc.w	$0824,$0706,$0924
		dc.w	$0B06,$0B24,$0B06
		dc.w	$0C24,$0B06,$0D24
		dc.w	$0F06,$0F24,$0F06
		dc.w	$1024,$0F06,$1124
		dc.w	$1306,$1324,$1306
		dc.w	$1424,$1306,$1524
		dc.w	$032C,$034A,$032C
		dc.w	$044A,$032C,$054A
		dc.w	$072C,$0000,$0B2C
		dc.w	$0000,$0F2C,$0000
		dc.w	$132C,$134A
		even

; ---------------------------------------------------------------------------
Menu_Icon_List: 
		dc.b	$00,$00,$00	; SPZ
		dc.b	$0E,$0E,$0E	; BRZ
		dc.b	$06,$06,$06	; FFZ
		dc.b	$0B,$0B,$0B	; FPZ
		dc.b	$0D,$0D,$0D	; FRZ
		dc.b	$09,$09,$09	; MSZ
		dc.b	$04		; TFS
		dc.b	$10		; SS
		dc.b	$0F		; Option
		dc.b	$11		; Sound
		even
;-------------------------------------------------------------------------------
Menu_Text_Positions:		   
		dc.w	$00F6	; SPZ
		dc.w	$0236	; BRZ
		dc.w	$0376	; FFZ
		dc.w	$04B6	; FPZ
		dc.w	$05F6	; FRZ
		dc.w	$011C	; MSZ
		dc.w	$025C	; TFS
		dc.w	$039C	; SS
		dc.w	$04DC	; Option
		dc.w	$061C	; Sound Test
		even
;-------------------------------------------------------------------------------
Wings_Mappings:
		dc.w	$6000,$6000,$6000,$604D,$604E,$684E,$684D,$6000,$6000,$6000
		dc.w	$604F,$6050,$6051,$6052,$6053,$6853,$6852,$6851,$6850,$684F
		dc.w	$6054,$6055,$6056,$6057,$6057,$6057,$6057,$6856,$6855,$6854
		dc.w	$6058,$6059,$605A,$6057,$6057,$6057,$6057,$685A,$6859,$6858
		dc.w	$605B,$605C,$605D,$6057,$6057,$6057,$6057,$685D,$685C,$685B
		dc.w	$6000,$605E,$605F,$6060,$6061,$6062,$6063,$6064,$685E,$6000
		dc.w	$6000,$6000,$6065,$6066,$6067,$6867,$6866,$6865,$6000,$6000
		even