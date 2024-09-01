; =============================================================================================
; Project Name:		Dangerous Seed Stage 3 Boss
; Created:		13rd February 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

DS17_Header:
	smpsHeaderVoice	DS17_Voices
	smpsHeaderChan	$06,	$00
	smpsHeaderTempo	$02,	$07

	smpsHeaderDAC	DS17_DAC
	smpsHeaderFM	DS17_FM1,	smpsPitch01hi,	$10
	smpsHeaderFM	DS17_FM2,	smpsPitch00,	$0B
	smpsHeaderFM	DS17_FM3,	smpsPitch01hi,	$13
	smpsHeaderFM	DS17_FM4,	smpsPitch00,	$13
	smpsHeaderFM	DS17_FM5,	smpsPitch01hi,	$14

; DAC Data
DS17_DAC:
	dc.b		nRst,$0C,$0C,$08,$0C,$20,$0C,$04,$0C,$0C,$08,$0C,$20,$0C,$02
	smpsPan	panLeft,0
	dc.b		dHiTom,$01,dHiTom,dHiTom,$04,dHiTom,$02,dHiTom
	smpsPan	panCenter,0
	dc.b		$04,dLowTom,$02,dLowTom
	dc.b		dKick,dKick,$02,dSnare,$02,dSnare,dSnare,dSnare
DS17_Jump01:
	smpsCall	DS17_Call01
	smpsCall	DS17_Call02
	smpsCall	DS17_Call01
	smpsCall	DS17_Call03
	smpsCall	DS17_Call01
	smpsCall	DS17_Call04
	smpsJump	DS17_Jump01
	smpsStop

DS17_Call01:
	smpsPan	panCenter,0
	dc.b		dKick,$08,dKick,$04,dSnareGO,$08,dKick,dSnareGO,$04
	smpsLoop	$00,	$0F,	DS17_Call01
	smpsReturn

DS17_Call02:
	dc.b		dKick,$08,dSnare,$04,dSnareGO,dKick,dSnare,dSnare,dSnareGO
	smpsAlterVol	$02
	smpsReturn

DS17_Call03:
	dc.b		dKick,$08,dSnareGO,$04,dSnare,$02,dSnare,dKick,$04
	smpsPan	panLeft,0
	dc.b		dHiTom,	$02,dHiTom
	smpsPan	panCenter,0
	dc.b		dMidTom,$02,dMidTom
	smpsPan	panRight,0
	dc.b		dVLowTom,$02,dVLowTom
	smpsReturn

DS17_Call04:
	dc.b		dKick,$08,dSnare,$04,dSnareGO,$08,dSnare,$04
	dc.b		dKick,dKick
	smpsReturn

; FM1 Data
DS17_FM1:
	smpsFMvoice	$08
	smpsAlterVol	$0C
	dc.b		nE3,	$0C,	smpsNoAttack,	$0C,	smpsNoAttack,	$08,	nD3,	$0B
	dc.b		nRst,	$01,	nA3,	$20,	smpsNoAttack,	$0C,	smpsNoAttack,	$03
	dc.b		nRst,	$01,	nE3,	$0C,	smpsNoAttack,	$0C,	smpsNoAttack,	$08
	dc.b		nD3,	$0B,	nRst,	$01,	nB3,	$20,	smpsNoAttack,	$0C
	dc.b		smpsNoAttack,	$04,	smpsNoAttack,	$18,	smpsNoAttack,	$04
	smpsAlterVol	$F4
	smpsFMvoice	$00
	smpsAlterVol	$02
	smpsModSet	$1D,	$01,	$05,	$05
	dc.b		nA3,	$2C,	nD3,	$01,	nEb3,	$01,	nE3,	$06
	dc.b		nG3,	$01,	nAb3,	$01,	nA3,	$06,	nBb3,	$01
	dc.b		nB3,	$01,	nC4,	$02
	smpsAlterVol	$FE
DS17_Jump02:
	smpsFMvoice	$00
	smpsAlterVol	$02
	dc.b		nB3,	$2C,	nF3,	$01,	nFs3,	$01,	nG3,	$06
	dc.b		nA3,	$01,	nBb3,	$01,	nB3,	$06,	nC4,	$01
	dc.b		nCs4,	$01,	nD4,	$02,	nC4,	$2C,	nAb3,	$01
	dc.b		nA3,	$07,	nC4,	$08,	nA3,	$04,	nEb4,	$01
	dc.b		nE4,	$1B,	nD4,	$01,	nE4,	$01,	nF4,	$02
	dc.b		nD4,	$18,	nC4,	$04,	nB3,	nA3,	$2C,	nD3
	dc.b		$01,	nEb3,	$01,	nE3,	$06,	nG3,	$01,	nAb3
	dc.b		$01,	nA3,	$06,	nBb3,	$01,	nB3,	$01,	nC4
	dc.b		$02
	smpsAlterVol	$FE
	smpsJump	DS17_Jump02
	smpsStop

; FM2 Data
DS17_FM2:
	smpsFMvoice	$0A
	smpsAlterVol	$0B
	dc.b		nA2,	$0C,	smpsNoAttack,	$0C,	smpsNoAttack,	$08,	smpsNoAttack,	$0C
	dc.b		smpsNoAttack,	$20,	smpsNoAttack,	$0C,	smpsNoAttack,	$03,	nRst,	$01
	dc.b		nF2,	$0C,	smpsNoAttack,	$0C,	smpsNoAttack,	$08,	smpsNoAttack,	$0B
	dc.b		nRst,	$01,	nG2,	$20,	smpsNoAttack,	$0C,	smpsNoAttack,	$04
	dc.b		smpsNoAttack,	$18,	smpsNoAttack,	$04
	smpsAlterVol	$F7
DS17_Jump03:
	smpsFMvoice	$02
	dc.b		nA2,	$08,	nA2,	$02,	nRst,	nA2,	nRst,	nA2
	dc.b		nRst,	nA2,	nRst,	nA2,	nRst,	nA2,	nRst,	nA2
	dc.b		$08,	nA2,	$02,	nRst,	nA2,	nRst,	nA2,	nRst
	dc.b		nA2,	nRst,	nA2,	nRst,	nA2,	nRst,	nG2,	$08
	dc.b		nG2,	$02,	nRst,	nG2,	nRst,	nG2,	nRst,	nG2
	dc.b		nRst,	nG2,	nRst,	nG2,	nRst,	nG2,	$08,	nG2
	dc.b		$02,	nRst,	nG2,	nRst,	nG2,	nRst,	nG2,	nRst
	dc.b		nG2,	nRst,	nG2,	nRst,	nF2,	$08,	nF2,	$02
	dc.b		nRst,	nF2,	nRst,	nF2,	nRst,	nF2,	nRst,	nF2
	dc.b		nRst,	nF2,	nRst,	nF2,	$08,	nF2,	$02,	nRst
	dc.b		nF2,	nRst,	nF2,	nRst,	nF2,	nRst,	nF2,	nRst
	dc.b		nF2,	nRst,	nG2,	$08,	nG2,	$02,	nRst,	nG2
	dc.b		nRst,	nG2,	nRst,	nG2,	nRst,	nG2,	nRst,	nG2
	dc.b		nRst,	nAb2,	$08,	nAb2,	$02,	nRst,	nAb2,	nRst
	dc.b		nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst,	nAb2,	nRst
	smpsJump	DS17_Jump03
	smpsStop

; FM3 Data
DS17_FM3:
	smpsFMvoice	$0A
	smpsAlterVol	$04
	dc.b		nE3,	$0C,	smpsNoAttack,	$0C,	smpsNoAttack,	$06,	smpsNoAttack,	$01
	dc.b		nRst,	$01,	nD3,	$0C,	nA3,	$20,	smpsNoAttack,	$0C
	dc.b		smpsNoAttack,	$04,	nE3,	$0C,	smpsNoAttack,	$0C,	smpsNoAttack,	$06
	dc.b		smpsNoAttack,	$01,	nRst,	$01,	nD3,	$0C,	nB3,	$20
	dc.b		smpsNoAttack,	$0C,	smpsNoAttack,	$04,	smpsNoAttack,	$18,	smpsNoAttack,	$04
	smpsAlterVol	$FC
DS17_Jump04:
	smpsFMvoice	$05
	smpsAlterVol	$FD
	dc.b		nE2,	$04,	smpsNoAttack,	$03,	nRst,	$01,	nA2,	$04
	dc.b		nE3,	$03,	nRst,	$01,	nD3,	$03,	nRst,	$01
	dc.b		nB2,	$01,	nC3,	nCs3,	nD3,	nC3,	$02,	nB2
	dc.b		nA2,	nRst
	smpsAlterVol	$03
	smpsJump	DS17_Jump04
	smpsStop

; FM4 Data
DS17_FM4:
	smpsFMvoice	$08
	smpsAlterVol	$05
	dc.b		nA2,	$0C,	smpsNoAttack,	$0C,	smpsNoAttack,	$08,	smpsNoAttack,	$0C
	dc.b		smpsNoAttack,	$20,	smpsNoAttack,	$0C,	smpsNoAttack,	$03,	nRst,	$01
	dc.b		nF2,	$0C,	smpsNoAttack,	$0C,	smpsNoAttack,	$08,	smpsNoAttack,	$0B
	dc.b		nRst,	$01,	nG2,	$20,	smpsNoAttack,	$0C,	smpsNoAttack,	$04
	dc.b		smpsNoAttack,	$18,	smpsNoAttack,	$04,	nRst,	$18,	smpsNoAttack,	$04
	smpsAlterVol	$FB
	dc.b		nRst,	$40,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		nRst,	$30
DS17_Jump05:
	smpsFMvoice	$00
	smpsAlterPitch	$18
	smpsAlterVol	$03
	dc.b		nG4,	$01,	nAb4,	$01,	nA4,	$06,	nG4,	$08
	dc.b		nAb4,	$01,	nA3,	$03,	nG4,	$08,	nE4,	$01
	dc.b		nRst,	$03,	nG4,	$01,	nAb4,	$01,	nA4,	$06
	dc.b		nG4,	$08,	nAb4,	$01,	nA3,	$03,	nG4,	$08
	dc.b		nE4,	$01,	nRst,	$03,	nG4,	$01,	nAb4,	$01
	dc.b		nA4,	$06,	nG4,	$08,	nAb4,	$01,	nA3,	$03
	dc.b		nG4,	$08,	nE4,	$01,	nRst,	$03,	nG4,	$01
	dc.b		nAb4,	$01,	nA4,	$06,	nG4,	$08,	nAb4,	$01
	dc.b		nB3,	$03,	nC5,	$08,	nE4,	$01,	nRst,	$03
	dc.b		nG4,	$01,	nAb4,	$01,	nA4,	$06,	nG4,	$08
	dc.b		nAb4,	$01,	nA3,	$03,	nG4,	$08,	nRst,	$04
	smpsAlterVol	$FD
	smpsAlterPitch	$F4
	smpsAlterVol	$FE
	smpsFMvoice	$00
	dc.b		nF3,	$08,	nA3,	nF3,	$04,	nC4,	$1C,	nD4
	dc.b		$04,	nB3,	$18,	nE3,	$04,	nE3,	nE3,	$0C
	smpsAlterVol	$02
	smpsAlterPitch	$F4
	smpsJump	DS17_Jump05
	smpsStop

; FM5 Data
DS17_FM5:
	smpsFMvoice	$08
	smpsAlterNote	$03
	smpsAlterVol	$0A
	dc.b		nRst,	$06,	nE3,	$0C,	smpsNoAttack,	$0C,	smpsNoAttack,	$06
	dc.b		smpsNoAttack,	$01,	nRst,	$01,	nD3,	$0C,	nA3,	$20
	dc.b		smpsNoAttack,	$0C,	smpsNoAttack,	$04,	nE3,	$0C,	smpsNoAttack,	$0C
	dc.b		smpsNoAttack,	$06,	smpsNoAttack,	$01,	nRst,	$01,	nD3,	$0C
	dc.b		nB3,	$20,	smpsNoAttack,	$06,	smpsNoAttack,	$04,	smpsNoAttack,	$18
	dc.b		smpsNoAttack,	$04
	smpsAlterVol	$F6
	smpsFMvoice	$00
	smpsAlterVol	$01
	smpsModSet	$1D,	$01,	$05,	$05
	smpsAlterNote	$03
	dc.b		nRst,	$02,	nA3,	$2C,	nE3,	$08,	nA3,	$08
	dc.b		nC4,	$02
	smpsAlterVol	$FF
DS17_Jump06:
	smpsFMvoice	$00
	smpsAlterVol	$01
	dc.b		nRst,	$02,	nB3,	$2C,	nG3,	$08,	nB3,	$08
	dc.b		nD4,	$04,	nC4,	$2C,	nA3,	$08,	nC4,	$08
	dc.b		nA3,	$04,	nEb4,	$01,	nE4,	$1B,	nF4,	$04
	dc.b		nD4,	$18,	nC4,	$04,	nB3,	nA3,	$2C,	nE3
	dc.b		$08,	nA3,	$08,	nC4,	$02
	smpsAlterVol	$FF
	smpsJump	DS17_Jump06
	smpsStop

DS17_Voices:
	dc.b		$3A,$31,$20,$41,$61,$8F,$8F,$8E,$54,$0E,$03,$0E,$03,$00,$00,$00
	dc.b		$00,$13,$F3,$13,$0A,$18,$22,$1B,$80;			Voice 00
	dc.b		$33,$37,$72,$77,$32,$9F,$DF,$9F,$9F,$0B,$03,$11,$05,$1F,$1F,$1F
	dc.b		$1F,$FF,$FF,$FF,$FF,$19,$00,$1B,$80;			Voice 01
;	dc.b		$38,$0A,$70,$30,$00,$1F,$1F,$5F,$5F,$12,$0E,$0A,$0A,$00,$04,$04
;	dc.b		$03,$26,$26,$26,$26,$23,$2D,$12,$80;			Voice 02
	IncludeVoice	MetalBass
	dc.b		$14,$72,$04,$01,$34,$59,$1F,$59,$1F,$1F,$0A,$1F,$0A,$01,$01,$01
	dc.b		$01,$13,$2A,$13,$2A,$00,$80,$05,$80;			Voice 03
	dc.b		$3C,$37,$72,$77,$32,$1F,$1F,$1F,$1F,$02,$0A,$03,$0B,$03,$1F,$1F
	dc.b		$1F,$11,$F6,$F0,$F6,$1E,$89,$1B,$80;			Voice 04
;	dc.b		$28,$42,$45,$77,$71,$1F,$12,$1F,$1F,$04,$01,$04,$0C,$01,$01,$01
;	dc.b		$02,$10,$18,$19,$18,$0A,$1C,$17,$80;			Voice 05
	IncludeVoice	MetalRhythmGuitar2
	dc.b		$38,$33,$01,$51,$01,$10,$13,$1A,$1B,$0F,$1F,$1F,$1F,$01,$01,$01
	dc.b		$01,$33,$03,$03,$08,$19,$1B,$1A,$80;			Voice 06
	dc.b		$33,$37,$72,$77,$32,$9F,$DF,$9F,$9F,$0B,$03,$11,$05,$1F,$1F,$1F
	dc.b		$1F,$FF,$FF,$FF,$FF,$19,$00,$1B,$80;			Voice 07
	dc.b		$3C,$37,$72,$77,$32,$14,$0E,$14,$0E,$01,$05,$02,$07,$03,$1F,$1F
	dc.b		$1F,$11,$F6,$F0,$F6,$1E,$89,$1B,$80;			Voice 08
	dc.b		$3F,$34,$0A,$03,$01,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$26,$07,$07,$06,$94,$8A,$82,$80;			Voice 09
	dc.b		$3B,$61,$02,$23,$02,$59,$59,$59,$4A,$03,$03,$03,$05,$00,$00,$00
	dc.b		$00,$22,$22,$22,$27,$1E,$20,$25,$80;			Voice 0A
	dc.b		$3D,$01,$00,$01,$02,$12,$1F,$1F,$14,$07,$02,$02,$0A,$05,$05,$05
	dc.b		$05,$25,$27,$27,$A7,$1C,$80,$82,$80;			Voice 0B
	dc.b		$2B,$01,$01,$50,$01,$1F,$1F,$1F,$1F,$02,$03,$03,$02,$01,$02,$02
	dc.b		$01,$11,$21,$21,$17,$17,$18,$19,$83;			Voice 0C
	dc.b		$3A,$01,$00,$01,$01,$0F,$0F,$0F,$14,$0A,$05,$0A,$05,$02,$02,$02
	dc.b		$02,$56,$56,$56,$16,$19,$19,$28,$80;			Voice 0D
	dc.b		$1C,$7A,$77,$31,$34,$9F,$9F,$9F,$9F,$05,$05,$01,$0A,$05,$05,$00
	dc.b		$03,$25,$F7,$05,$28,$19,$80,$1E,$80;			Voice 0E
	dc.b		$3B,$31,$7F,$61,$0A,$9F,$DF,$9F,$9F,$03,$00,$01,$02,$00,$1E,$1D
	dc.b		$1F,$17,$F2,$E0,$FA,$23,$20,$1C,$80;			Voice 0F
	even
