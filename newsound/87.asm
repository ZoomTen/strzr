; =============================================================================================
; Project Name:		AquaticRuins
; Created:		30th January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

AquaticRuins_Header:
	smpsHeaderVoice	AquaticRuins_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$08

	smpsHeaderDAC	AquaticRuins_DAC
	smpsHeaderFM	AquaticRuins_FM1,	smpsPitch01hi,	$0F
	smpsHeaderFM	AquaticRuins_FM2,	smpsPitch00,	$0F
	smpsHeaderFM	AquaticRuins_FM3,	smpsPitch00,	$13
	smpsHeaderFM	AquaticRuins_FM4,	smpsPitch00,	$0F
	smpsHeaderFM	AquaticRuins_FM5,	smpsPitch00,	$0F
	smpsHeaderPSG	AquaticRuins_PSG1,	smpsPitch04lo,	$03,	$01
	smpsHeaderPSG	AquaticRuins_PSG2,	smpsPitch04lo,	$04,	$01
	smpsHeaderPSG	AquaticRuins_PSG3,	smpsPitch00,	$01,	$02

; FM1 Data
AquaticRuins_FM1:
	smpsFMvoice	$00
	smpsModSet	$06,	$02,	$02,	$02
	dc.b		nC2,	$06,	nD2
AquaticRuins_Jump01:
	dc.b		nD1,	$30,	smpsNoAttack,	$30,	smpsNoAttack,	nD1,	nRst,	$12
	dc.b		nA1,	$06,	nA1,	nRst,	nC2,	nD2,	nD1,	$30
	dc.b		smpsNoAttack,	$30,	smpsNoAttack,	nD1,	nRst,	$12,	nA1,	$06
	dc.b		nA1,	nRst,	$12,	nRst,	nG1,	nBb1,	$06,	nRst
	dc.b		$18,	nC2,	$12,	nG1,	$06,	nRst,	nRst,	$12
	dc.b		nF1,	nA1,	$06,	nRst,	$18,	nBb1,	$12,	nF1
	dc.b		$06,	nRst,	nRst,	$12,	nE1,	nG1,	$06,	nRst
	dc.b		$18,	nA1,	$12,	nCs2,	$06,	nRst,	nRst,	$12
	dc.b		nD1,	nFs1,	$08,	nRst,	$16,	nA1,	$06,	nE1
	dc.b		nF1,	nG1,	nA1,	nRst,	$12,	nG1,	nBb1,	$08
	dc.b		nRst,	$16,	nC2,	$12,	nG1,	$09,	nRst,	$03
	dc.b		nRst,	$12,	nF1,	nA1,	$06,	nRst,	$18,	nBb1
	dc.b		$12,	nF1,	$07,	nRst,	$05,	nRst,	$12,	nE2
	dc.b		nCs2,	$08,	nRst,	$16,	nA1,	$12,	nE2,	$08
	dc.b		nRst,	$04,	nRst,	$12,	nD2,	$06,	$0C,	nA1
	dc.b		$06,	nRst,	nA1,	nA1,	$0C,	$06,	nD2,	nA1
	dc.b		$12,	nG1,	$0C,	nRst,	$06,	nD2,	$12,	nG1
	dc.b		$0C,	nG1,	nRst,	$06,	nD2,	$12,	nG1,	$0C
	dc.b		nF1,	nRst,	$06,	nC2,	$12,	nF1,	$0C,	nF1
	dc.b		nRst,	$06,	nC2,	$12,	nF1,	$0C,	nE1,	nRst
	dc.b		$06,	nE2,	$12,	nCs2,	$0C,	nA1,	nRst,	$06
	dc.b		nE1,	$12,	nA1,	$0C,	nD2,	nRst,	$06,	nA1
	dc.b		$12,	nFs1,	$0C,	nRst,	$08,	nD1,	nE1,	nFs1
	dc.b		nG1,	nA1,	nG1,	$0C,	nRst,	$06,	nD2,	$12
	dc.b		nG2,	$0C,	nRst,	$06,	nG2,	nRst,	nD2,	$12
	dc.b		nG1,	$0C,	nF1,	nRst,	$06,	nC2,	$12,	nF2
	dc.b		$0C,	nF2,	nRst,	$06,	nC2,	$12,	nA1,	$0C
	dc.b		nE1,	nRst,	$06,	nA1,	$12,	nCs2,	$0C,	nE2
	dc.b		$12,	nCs2,	nA1,	$0C,	nD2,	$03,	nRst,	nD2
	dc.b		nRst,	nD2,	$06,	nRst,	$12,	nD2,	$03,	nRst
	dc.b		$03,	nD2,	nRst,	nD2,	$06,	nRst,	$1E,	nC2
	dc.b		$06,	nD2
	smpsJump	AquaticRuins_Jump01

; FM2 Data
AquaticRuins_FM2:
	dc.b		nRst,	$0C
AquaticRuins_Jump02:
	smpsFMvoice	$01
	smpsModSet	$04,	$02,	$03,	$02
	dc.b		nD5,	$12,	nE5,	nF5,	$0C,	nA5,	$30,	smpsNoAttack
	dc.b		$30,	smpsNoAttack,	$0C,	nRst,	$06,	nCs5,	nCs5,	nRst
	dc.b		$12,	nD5,	nE5,	nF5,	$06,	nD5,	nA5,	$30
	dc.b		smpsNoAttack,	$30,	smpsNoAttack,	$0C,	nRst,	$06,	nCs5,	nCs5
	dc.b		nRst
	smpsFMvoice	$02
	smpsAlterVol	$06
	dc.b		nD5,	nC5,	nD5,	$12,	nF5,	nD5,	$0C,	nE5
	dc.b		nRst,	$06,	$12,	nG5,	$0C,	nF5,	$06,	nRst
	dc.b		nC6,	nA5,	$30,	smpsNoAttack,	$0C,	nRst,	$06,	nA5
	dc.b		nRst,	nBb5,	$12,	nA5,	nG5,	$06,	nF5,	nE5
	dc.b		$18,	nG5,	nFs5,	$30,	smpsNoAttack,	$18,	nRst,	$0C
	dc.b		nD5,	$06,	nC5,	nD5,	$12,	nF5,	nD5,	$0C
	dc.b		nE5,	nRst,	$06,	$12,	nG5,	$0C,	nF5,	$06
	dc.b		nRst,	nC6,	nA5,	$30,	smpsNoAttack,	$0C,	nRst,	$06
	dc.b		$0C,	nBb5,	$12,	nA5,	nG5,	$06,	nF5,	nE5
	dc.b		$18,	nCs5,	nD5,	$30,	smpsNoAttack,	$18,	nRst,	$18
	smpsFMvoice	$01
	smpsAlterVol	$F8
	dc.b		nC5,	$12,	nBb4,	nG4,	nC5,	$06,	nRst,	nBb4
	dc.b		nC5,	nRst,	nBb4,	nRst,	nBb4,	$12,	nA4,	nF4
	dc.b		nBb4,	$06,	nRst,	nA4,	nBb4,	nRst,	nA4,	nRst
	dc.b		nA4,	$12,	nG4,	nE4,	nA4,	$06,	nRst,	nG4
	dc.b		nA4,	nRst,	nG4,	nRst,	nFs4,	nRst,	nFs4,	nRst
	dc.b		nG4,	nG4,	nRst,	nA4,	$30,	nRst,	$06,	nC5
	dc.b		$12,	nBb4,	nG4,	nC5,	$06,	nRst,	nBb4,	nC5
	dc.b		nRst,	nBb4,	nRst,	nBb4,	$12,	nA4,	nF4,	nBb4
	dc.b		$06,	nRst,	nA4,	nBb4,	nRst,	nA4,	nRst,	nA4
	dc.b		$12,	nG4,	nE4,	nA4,	$06,	nRst,	nG4,	nA4
	dc.b		nRst,	nG4,	nRst,	nD4,	$03,	nRst,	nD4,	nRst
	dc.b		nD4,	$06,	nRst,	$12,	nD4,	$03,	nRst,	$03
	dc.b		nD4,	nRst,	nD4,	$06,	nRst,	$2A
	smpsAlterVol	$02
	smpsJump	AquaticRuins_Jump02

; FM3 Data
AquaticRuins_FM3:
	smpsFMvoice	$01
	smpsModSet	$04,	$02,	$03,	$02
	dc.b		nRst,	$0C
	smpsPan		panLeft,	$00
AquaticRuins_Jump03:
	dc.b		nRst,	$07,	nD5,	$12,	nE5,	nF5,	$0C,	nA5
	dc.b		$30,	smpsNoAttack,	$30,	smpsNoAttack,	$0B,	nG5,	$06,	nG5
	dc.b		nRst,	$12,	nRst,	$07,	nD5,	$12,	nE5,	nF5
	dc.b		$06,	nD5,	nA5,	$30,	smpsNoAttack,	$30,	smpsNoAttack,	$0B
	dc.b		nG5,	$06,	nG5,	nRst,	nRst,	$07
	smpsFMvoice	$02
	smpsAlterVol	$06
	dc.b		nD5,	$06,	nC5,	nD5,	$12,	nF5,	nD5,	$0C
	dc.b		nE5,	nRst,	$06,	$12,	nG5,	$0C,	nF5,	$06
	dc.b		nRst,	nC6,	nA5,	$30,	smpsNoAttack,	$0C,	nRst,	$06
	dc.b		nA5,	nRst,	nBb5,	$12,	nA5,	nG5,	$06,	nF5
	dc.b		nE5,	$18,	nG5,	nFs5,	$30,	smpsNoAttack,	$18,	nRst
	dc.b		$0C,	nD5,	$06,	nC5,	nD5,	$12,	nF5,	nD5
	dc.b		$0C,	nE5,	nRst,	$06,	$12,	nG5,	$0C,	nF5
	dc.b		$06,	nRst,	nC6,	nA5,	$30,	smpsNoAttack,	$0C,	nRst
	dc.b		$06,	$0C,	nBb5,	$12,	nA5,	nG5,	$06,	nF5
	dc.b		nE5,	$18,	nCs5,	nD5,	$30,	smpsNoAttack,	$18,	nRst
	dc.b		$18
	smpsFMvoice	$01
	smpsAlterVol	$F8
	dc.b		nC5,	$12,	nBb4,	nG4,	nC5,	$06,	nRst,	nBb4
	dc.b		nC5,	nRst,	nBb4,	nRst,	nBb4,	$12,	nA4,	nF4
	dc.b		nBb4,	$06,	nRst,	nA4,	nBb4,	nRst,	nA4,	nRst
	dc.b		nA4,	$12,	nG4,	nE4,	nA4,	$06,	nRst,	nG4
	dc.b		nA4,	nRst,	nG4,	nRst,	nFs4,	nRst,	nFs4,	nRst
	dc.b		nG4,	nG4,	nRst,	nA4,	$30,	nRst,	$06,	nC5
	dc.b		$12,	nBb4,	nG4,	nC5,	$06,	nRst,	nBb4,	nC5
	dc.b		nRst,	nBb4,	nRst,	nBb4,	$12,	nA4,	nF4,	nBb4
	dc.b		$06,	nRst,	nA4,	nBb4,	nRst,	nA4,	nRst,	nA4
	dc.b		$12,	nG4,	nE4,	nA4,	$06,	nRst,	nG4,	nA4
	dc.b		nRst,	nG4,	$05
	smpsAlterVol	$FC
	dc.b		nF5,	$03,	nRst,	nF5,	nRst,	nF5,	$06,	nRst
	dc.b		$12,	nF5,	$03,	nRst,	$03,	nF5,	nRst,	nF5
	dc.b		$06,	nRst,	$2A
	smpsAlterVol	$06
	smpsJump	AquaticRuins_Jump03
	smpsStop

; FM4 Data
AquaticRuins_FM4:
	dc.b		nRst,	$0C
AquaticRuins_Loop01:
	smpsFMvoice	$03
	smpsPan		panRight,	$00
	dc.b		nD4,	$0C,	nF4,	$06,	nC4,	nRst,	nE4,	nRst
	dc.b		nD4,	$0C,	nD4,	$06,	nRst,	nF4,	nC4,	$0C
	dc.b		nE4,	nD4,	nF4,	$06,	nC4,	$0C,	nE4,	$06
	dc.b		nRst,	nD4,	$18,	nA3,	$06,	nA3,	nRst,	$12
	smpsLoop	$00,	$02,	AquaticRuins_Loop01
AquaticRuins_Loop02:
	dc.b		nBb3,	$0C,	nD4,	$06,	nF4,	$0C,	nBb3,	nC4
	dc.b		$06,	nRst,	nC4,	$0C,	nE4,	$06,	nG4,	$0C
	dc.b		nC4,	$06,	nRst,	nF4,	$0C,	nA4,	$06,	nC4
	dc.b		$0C,	nE4,	nF4,	nA4,	$06,	nRst,	nA4,	nBb3
	dc.b		$0C,	nD4,	nE4,	nG4,	$06,	nCs4,	$0C,	nD4
	dc.b		nE4,	nG4,	$06,	nRst,	nG4,	nCs4,	$0C,	nE4
	dc.b		nD4,	nFs4,	$06,	nA3,	$0C,	nC4,	nD4,	nFs4
	dc.b		$06,	nRst,	nFs4,	nA3,	$0C,	nC4
	smpsLoop	$00,	$02,	AquaticRuins_Loop02
	smpsFMvoice	$01
	smpsAlterVol	$04
	smpsModSet	$02,	$02,	$01,	$02
	dc.b		nBb5,	$12,	nC6,	nD6,	nD6,	$06,	nRst,	nD6
	dc.b		nC6,	nRst,	nBb5,	nRst,	nA5,	$30,	nRst,	$06
	dc.b		nC6,	nRst,	nC6,	nBb5,	nRst,	nA5,	nRst,	nG5
	dc.b		$30,	nRst,	$06,	nBb5,	nRst,	nBb5,	nA5,	nRst
	dc.b		nG5,	nRst,	$06,	nA5,	$06,	nRst,	nA5,	nRst
	dc.b		nBb5,	nBb5,	nRst,	nC6,	nRst,	nRst,	$02,	nFs5
	dc.b		$08,	nG5,	nA5,	nBb5,	nC6,	nBb5,	$12,	nC6
	dc.b		nD6,	nD6,	$06,	nRst,	nD6,	nC6,	nRst,	nBb5
	dc.b		nRst,	nA5,	$30,	nRst,	$06,	nC6,	nRst,	nC6
	dc.b		nBb5,	nRst,	nA5,	nRst,	nG5,	$30,	nRst,	$06
	dc.b		nBb5,	nRst,	nBb5,	nA5,	nRst,	nG5,	nRst,	nF5
	dc.b		nF5,	nF5,	nRst,	$12,	nF5,	$06,	nF5,	nF5
	dc.b		nRst,	$2A
	smpsAlterVol	$FC
	smpsJump	AquaticRuins_Loop01
	smpsStop

; FM5 Data
AquaticRuins_FM5:
	dc.b		nRst,	$0C
AquaticRuins_Loop03:
	smpsFMvoice	$03
	smpsPan		panRight,	$00
	dc.b		nA3,	$0C,	nD4,	$06,	nG3,	nRst,	nC4,	nRst
	dc.b		nA3,	$0C,	nA3,	$06,	nRst,	nD4,	nG3,	$0C
	dc.b		nC4,	nA3,	nD4,	$06,	nG3,	nRst,	nC4,	nRst
	dc.b		nA3,	$18,	nF3,	$06,	nF3,	nRst,	$12
	smpsLoop	$00,	$02,	AquaticRuins_Loop03
AquaticRuins_Loop04:
	dc.b		nG3,	$0C,	nBb3,	$06,	nD4,	$0C,	nG3,	nG3
	dc.b		$06,	nRst,	nG3,	$0C,	nBb3,	$06,	nE4,	$0C
	dc.b		nG3,	$06,	nRst,	$06,	nC4,	$0C,	nF4,	$06
	dc.b		nA3,	$0C,	nC4,	nD4,	nF4,	$06,	nRst,	nF4
	dc.b		nF3,	$0C,	nBb3,	nBb3,	nE4,	$06,	nG3,	$0C
	dc.b		nBb3,	nCs4,	nE4,	$06,	nRst,	nE4,	nA3,	$0C
	dc.b		nCs4,	nA3,	nD4,	$06,	nG3,	$0C,	nA3,	nA3
	dc.b		nD4,	$06,	nRst,	nD4,	nFs3,	$0C,	nA3
	smpsLoop	$00,	$02,	AquaticRuins_Loop04
	smpsFMvoice	$01
	smpsModSet	$02,	$02,	$01,	$02
	smpsAlterVol	$04
	smpsPan		panLeft,	$00
	dc.b		nF5,	$12,	nG5,	nA5,	nG5,	$06,	nRst,	nG5
	dc.b		nF5,	nRst,	nG5,	nRst,	nF5,	$30,	nRst,	$06
	dc.b		nA5,	nRst,	nA5,	nG5,	nRst,	nF5,	nRst,	nE5
	dc.b		$30,	nRst,	$06,	nG5,	nRst,	nG5,	nE5,	nRst
	dc.b		nE5,	nRst,	$06,	nFs5,	$06,	nRst,	nFs5,	nRst
	dc.b		nG5,	nG5,	nRst,	nA5,	nRst,	nRst,	$02,	nD5
	dc.b		$08,	nE5,	nFs5,	nG5,	nA5,	nF5,	$12,	nG5
	dc.b		nA5,	nG5,	$06,	nRst,	nG5,	nF5,	nRst,	nG5
	dc.b		nRst,	nF5,	$30,	nRst,	$06,	nA5,	nRst,	nA5
	dc.b		nG5,	nRst,	nF5,	nRst,	nE5,	$30,	nRst,	$06
	dc.b		nG5,	nRst,	nG5,	nE5,	nRst,	nE5,	nRst,	$06
	dc.b		nA5,	$06,	nA5,	nA5,	nRst,	$12,	nA5,	$06
	dc.b		nA5,	nA5,	nRst,	$2A
	smpsAlterVol	$FC
	smpsJump	AquaticRuins_Loop03

; DAC Data
AquaticRuins_DAC:
	dc.b		dClap,	$06,	dClap
AquaticRuins_Jump04:
	dc.b		dKick,	$12,	$1E,	$12,	$1E,	$12,	$1E,	$12
	dc.b		$06,	dSnare,	dClap,	dClap,	$0C,	dKick,	$12,	dKick
	dc.b		dSnare,	$06,	dClap,	dKick,	$12,	dKick,	dClap,	$06
	dc.b		dClap,	dKick,	$12,	$06,	dMidTom,	dMidTom,	dMidTom,	$0C
	dc.b		dKick,	$12,	dSnare,	$06,	$0C,	dKick
AquaticRuins_Loop05:
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$12,	dClap,	$06
	dc.b		$12,	$06,	dKick,	$0C,	dSnare,	$06,	dKick,	dClap
	smpsLoop	$00,	$03,	AquaticRuins_Loop05
	dc.b		dKick,	$06,	dSnare,	dClap,	dKick,	$0C,	dClap,	$06
	dc.b		dClap,	dClap,	$0C,	dClap,	dClap,	$06,	dClap,	dClap
	dc.b		dClap,	dClap
AquaticRuins_Loop06:
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$12,	dClap,	$06
	dc.b		$12,	$06,	dKick,	$0C,	dSnare,	$06,	dKick,	dClap
	smpsLoop	$00,	$03,	AquaticRuins_Loop06
	dc.b		dSnare,	$02,	dClap,	dClap,	dClap,	dClap,	dClap,	dClap
	dc.b		dClap,	dClap,	dClap,	dClap,	dClap,	dClap,	$0C,	$06
	dc.b		dClap,	dClap,	dClap,	dClap,	dClap,	dClap,	dClap,	dClap
	dc.b		$0C
AquaticRuins_Loop07:
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$12,	dMidTom,	$06
	dc.b		dMidTom,	dKick,	$0C,	dSnare,	$06,	dKick,	$12,	dMidTom
	dc.b		$06,	dMidTom
	smpsLoop	$00,	$03,	AquaticRuins_Loop07
	dc.b		dKick,	$0C,	dSnare,	dKick,	$06,	dClap,	$0C,	$06
	dc.b		dKick,	$08,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare
AquaticRuins_Loop08:
	dc.b		dKick,	$0C,	dSnare,	$06,	dKick,	$12,	dMidTom,	$06
	dc.b		dMidTom,	dKick,	$0C,	dSnare,	$06,	dKick,	$12,	dMidTom
	dc.b		$06,	dMidTom
	smpsLoop	$00,	$03,	AquaticRuins_Loop08
	dc.b		dClap,	$06,	dSnare,	dSnare,	$18,	dSnare,	$06,	dSnare
	dc.b		dSnare,	$18,	dKick,	$0C,	dClap,	$06,	dClap
	smpsJump	AquaticRuins_Jump04

; PSG1 Data
AquaticRuins_PSG1:
	dc.b		nRst,	$0C
	smpsModSet	$03,	$02,	$01,	$05
AquaticRuins_Loop09:
	dc.b		nRst,	$30,	nRst
	smpsPSGvoice	$0A
	dc.b		nD6,	$06,	nA6,	nD6,	nA6,	nD6,	$18,	nRst
	dc.b		$12,	nCs6,	$06,	nCs6,	nRst,	$12
	smpsLoop	$00,	$02,	AquaticRuins_Loop09
	dc.b		nRst,	$30,	nRst,	nRst,	nF5,	$06,	nF5,	nC6
	dc.b		nA5,	$1E,	nRst,	$30,	nRst,	nRst,	$06,	nD6
	dc.b		nRst,	nD6,	nC6,	nRst,	nC6,	nRst,	nBb5,	nRst
	dc.b		nBb5,	nRst,	nA5,	$03,	nRst,	nA5,	nRst,	$09
	dc.b		nRst,	$06,	nRst,	$30,	nRst,	nRst,	nF5,	$06
	dc.b		nF5,	nC6,	nA5,	$1E,	nRst,	$30,	nRst,	nRst
	dc.b		$06,	nD6,	nRst,	nD6,	nD6,	nRst,	nC6,	nRst
	dc.b		nD6,	$0C,	nC6,	$06,	nD6,	$12,	nC6,	$02
	dc.b		nB5,	nA5,	nG5,	nF5,	nE5
	smpsPSGvoice	$01
	smpsAlterVol	$FE
	dc.b		nG5,	$0C,	nBb5,	$06,	nD5,	$0C,	nF5,	nG5
	dc.b		$06,	nRst,	nBb5,	nRst,	nD5,	nF5,	$0C,	nG5
	dc.b		$06,	nRst,	nF5,	$0C,	nA5,	$06,	nC5,	$0C
	dc.b		nE5,	nF5,	$06,	nRst,	nA5,	nRst,	nC5,	nE5
	dc.b		$0C,	nF5,	$06,	nRst,	nE5,	$0C,	nG5,	$06
	dc.b		nCs5,	$0C,	nD5,	nE5,	$06,	nRst,	nG5,	nRst
	dc.b		nCs5,	nD5,	$0C,	nE5,	$06,	nRst,	nFs5,	$0C
	dc.b		nA5,	$06,	nD5,	$0C,	nE5,	nFs5,	$06,	nRst
	dc.b		nA5,	nRst,	nD5,	nE5,	$0C,	nFs5,	$06,	nRst
	dc.b		nG5,	$0C,	nBb5,	$06,	nD5,	$0C,	nF5,	nG5
	dc.b		nBb5,	$06,	nRst,	nD5,	nF5,	$0C,	nG5,	$06
	dc.b		nRst,	nF5,	$0C,	nA5,	$06,	nC5,	$0C,	nE5
	dc.b		nF5,	nA5,	$06,	nRst,	nC5,	nE5,	$0C,	nF5
	dc.b		$06,	nRst,	nE5,	$0C,	nG5,	$06,	nCs5,	$0C
	dc.b		nD5,	nE5,	nG5,	$06,	nRst,	nCs5,	nD5,	$0C
	dc.b		nE5,	$06,	nRst,	nA5,	nA5,	nA5,	nRst,	$12
	dc.b		nA5,	$06,	nA5,	nA5,	nRst,	$2A
	smpsAlterVol	$02
	smpsJump	AquaticRuins_Loop09
	smpsStop

; PSG2 Data
AquaticRuins_PSG2:
	dc.b		nRst,	$0C
	smpsModSet	$03,	$02,	$01,	$05
AquaticRuins_Loop0A:
	dc.b		nRst,	$30,	nRst
	smpsPSGvoice	$0A
	dc.b		nA5,	$06,	nE6,	nA5,	nE6,	nA5,	$18,	nRst
	dc.b		$12,	nF5,	$06,	nF5,	nRst,	$12
	smpsLoop	$00,	$02,	AquaticRuins_Loop0A
	dc.b		nRst,	$30,	nRst,	nRst,	nC5,	$06,	nD5,	nA5
	dc.b		nF5,	$1E,	nRst,	$30,	nRst,	nRst,	$06,	nA5
	dc.b		nRst,	nA5,	nG5,	nRst,	nG5,	nRst,	nFs5,	nRst
	dc.b		nFs5,	nRst,	nD5,	$03,	nRst,	nD5,	nRst,	$09
	dc.b		nRst,	$06,	nRst,	$30,	nRst,	nRst,	nC5,	$06
	dc.b		nD5,	nA5,	nF5,	$1E,	nRst,	$30,	nRst,	nRst
	dc.b		$06,	nA5,	nRst,	nG5,	nA5,	nRst,	nG5,	nRst
	dc.b		nA5,	$0C,	nG5,	$06,	nA5,	$12,	nG5,	$02
	dc.b		nF5,	nE5,	nD5,	nC5,	nB4
	smpsPSGvoice	$01
	smpsAlterVol	$FE
	dc.b		nD5,	$0C,	nG5,	$06,	nBb4,	$0C,	nD5,	nD5
	dc.b		$06,	nRst,	nF5,	nRst,	nG4,	nD5,	$0C,	nD5
	dc.b		$06,	nRst,	nC5,	$0C,	nF5,	$06,	nA4,	$0C
	dc.b		nC5,	nC5,	$06,	nRst,	nF5,	nRst,	nA4,	nC5
	dc.b		$0C,	nC5,	$06,	nRst,	nCs5,	$0C,	nE5,	$06
	dc.b		nA4,	$0C,	nBb4,	nCs5,	$06,	nRst,	nE5,	nRst
	dc.b		nA4,	nA4,	$0C,	nA4,	$06,	nRst,	nD5,	$0C
	dc.b		nFs5,	$06,	nA4,	$0C,	nC5,	nD5,	$06,	nRst
	dc.b		nFs5,	nRst,	nA4,	nC5,	$0C,	nD5,	$06,	nRst
	dc.b		nD5,	$0C,	nG5,	$06,	nBb4,	$0C,	nD5,	nD5
	dc.b		nF5,	$06,	nRst,	nG4,	nD5,	$0C,	nD5,	$06
	dc.b		nRst,	nC5,	$0C,	nF5,	$06,	nA4,	$0C,	nC5
	dc.b		nC5,	nF5,	$06,	nRst,	nA4,	nC5,	$0C,	nC5
	dc.b		$06,	nRst,	nCs5,	$0C,	nE5,	$06,	nA4,	$0C
	dc.b		nBb4,	nCs5,	nE5,	$06,	nRst,	nA4,	nA4,	$0C
	dc.b		nA4,	$06,	nRst,	nE5,	nE5,	nE5,	nRst,	$12
	dc.b		nE5,	$06,	nE5,	nE5,	nRst,	$2A
	smpsAlterVol	$02
	smpsJump	AquaticRuins_Loop0A

; PSG3 Data
AquaticRuins_PSG3:
	smpsPSGform	$E7
	dc.b		nRst,	$0C
	smpsPSGvoice	$02
AquaticRuins_Loop0B:
	dc.b		nRst,	$0C,	nA5,	$06,	nRst,	$07,	nA5,	$06
	dc.b		nRst,	$11,	nA5,	$0C,	nRst,	$06,	nA5,	$0C
	dc.b		nRst,	$06,	nA5,	nRst
	smpsLoop	$00,	$13,	AquaticRuins_Loop0B
	dc.b		nA5,	$06,	nA5,	nA5,	nRst,	$12,	nA5,	$06
	dc.b		nA5,	nA5,	nRst,	$2A
	smpsJump	AquaticRuins_Loop0B

AquaticRuins_Voices:
	dc.b		$3D,$00,$02,$12,$01,$1E,$1D,$1E,$1F,$16,$1F,$1F,$1F,$07,$01,$00
	dc.b		$01,$3A,$0B,$0B,$0B,$10,$89,$86,$80;			Voice 00
	dc.b		$3A,$01,$01,$01,$02,$8D,$07,$07,$52,$09,$00,$00,$03,$01,$02,$02
	dc.b		$00,$52,$02,$02,$28,$18,$22,$18,$80;			Voice 01
	dc.b		$3D,$01,$02,$02,$02,$10,$50,$50,$50,$07,$08,$08,$08,$01,$00,$00
	dc.b		$00,$24,$18,$18,$18,$1C,$82,$82,$82;			Voice 02
	dc.b		$32,$71,$0D,$33,$01,$5F,$99,$5F,$94,$05,$05,$05,$07,$02,$02,$02
	dc.b		$02,$11,$11,$11,$72,$23,$2D,$26,$80;			Voice 03
	dc.b		$00;			Voice 04
	even
