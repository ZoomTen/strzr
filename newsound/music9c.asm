; =============================================================================================
; Project Name:		Sonic 2 Beta - Boss (UVB enhanced)
; Created:		24th January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

BossNew_Header:
	smpsHeaderVoice	BossNew_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$09

	smpsHeaderDAC	BossNew_DAC
	smpsHeaderFM	BossNew_FM1,	smpsPitch01hi,	$08
	smpsHeaderFM	BossNew_FM2,	smpsPitch00,	$0D
	smpsHeaderFM	BossNew_FM3,	smpsPitch00,	$12
	smpsHeaderFM	BossNew_FM4,	smpsPitch00,	$12
	smpsHeaderFM	BossNew_FM5,	smpsPitch00,	$12
	smpsHeaderPSG	BossNew_PSG1,	smpsPitch02lo,	$04,	$01
	smpsHeaderPSG	BossNew_PSG2,	smpsPitch02lo,	$06,	$01
	smpsHeaderPSG	BossNew_PSG3,	smpsPitch02lo,	$08,	$01

; FM1 Data
BossNew_FM1:
	smpsFMvoice	$00
	smpsNoteFill	$09
	dc.b		nA1,	$0C,	nA2,	nA2,	nA1,	nA2,	nA2,	nA1
	dc.b		nA2
	smpsNoteFill	$00
	dc.b		nE1,	nE2,	nE1,	nE2,	nE1,	nE2,	nE1,	nE2
	smpsNoteFill	$09
	dc.b		nA1,	nA2,	nA2,	nA1,	nA2,	nA2,	nA1,	nA2
	smpsNoteFill	$00
	dc.b		nE1,	nE2,	nFs1,	nFs2,	nG1,	nG2,	nAb1,	nAb2
BossNew_Loop01:
	smpsCall	BossNew_Call01
	dc.b		nG1,	$0C,	nG2,	$06,	nG2,	nG1,	$0C,	nG2
	dc.b		$06,	nG2
	smpsCall	BossNew_Call01
	dc.b		nE1,	$0C,	nE2,	$06,	nE2,	nE1,	$0C,	nE2
	dc.b		$06,	nE2
	smpsLoop	$00,	$04,	BossNew_Loop01
	smpsJump	BossNew_FM1

BossNew_Call01:
	dc.b		nA1,	$0C,	nA2,	$06,	nA2,	nA1,	$0C,	nA2
	dc.b		$06,	nA2,	nA1,	$0C,	nA2,	$06,	nA2,	nA1
	dc.b		$0C,	nA2,	$06,	nA2,	nG1,	$0C,	nG2,	$06
	dc.b		nG2,	nG1,	$0C,	nG2,	$06,	nG2
	smpsReturn

; PSG1 Data
BossNew_PSG1:
	smpsJump	BossNew_Jump01

; PSG2 Data
BossNew_PSG2:
	smpsAlterNote	$01
	dc.b		nRst,	$06
	smpsJump	BossNew_Jump01

; PSG3 Data
BossNew_PSG3:
	smpsAlterNote	$FF
	dc.b		nRst,	$0C
	smpsJump	BossNew_Jump01

; FM2 Data
BossNew_FM2:
	smpsFMvoice	$01
BossNew_Jump01:
	smpsNoteFill	$09
	dc.b		nA3,	$0C,	nE3,	nE3,	nA3,	nE3,	nE3,	nA3
	dc.b		nE3
	smpsNoteFill	$00
	dc.b		nB3,	$18,	nB3,	nB3,	nB3
	smpsLoop	$00,	$02,	BossNew_Jump01
BossNew_Loop02:
	smpsCall	BossNew_Call02
	smpsLoop	$00,	$04,	BossNew_Loop02
	smpsJump	BossNew_Jump01

BossNew_Call02:
	dc.b		nA3,	$0C,	nB3,	nC4,	$18,	nD4,	nC4,	nB3
	dc.b		$0C,	nC4,	nB3,	nG3,	$18,	nE3,	$0C,	nG3
	dc.b		$18,	nA3,	$0C,	nB3,	nC4,	$18,	nD4,	nC4
	dc.b		nB3,	$0C,	nC4,	nD4,	nEb4,	nE4,	nRst,	$24
	smpsReturn

; FM3 Data
BossNew_FM3:
	smpsFMvoice	$01
BossNew_Loop03:
	smpsNoteFill	$09
	dc.b		nC4,	$0C,	nA3,	nA3,	nC4,	nA3,	nA3,	nC4
	dc.b		nA3
	smpsNoteFill	$00
	dc.b		nAb3,	$18,	nAb3,	nAb3,	nAb3
	smpsLoop	$00,	$02,	BossNew_Loop03
BossNew_Loop04:
	dc.b		nRst,	$30,	nRst
	smpsLoop	$00,	$08,	BossNew_Loop04
BossNew_Loop05:
	smpsAlterPitch	$0C
	smpsCall	BossNew_Call02
	smpsAlterPitch	$F4
	smpsLoop	$00,	$02,	BossNew_Loop05
	smpsJump	BossNew_FM3

; FM4 Data
BossNew_FM4:
	smpsPan		panLeft,	$00
	smpsModSet	$0C,	$01,	$04,	$04
	smpsJump	BossNew_Jump02

; FM5 Data
BossNew_FM5:
	smpsPan		panRight,	$00
	smpsModSet	$0C,	$01,	$FC,	$04
	smpsJump	BossNew_Jump02
BossNew_Jump02:
	smpsAlterPitch	$F4
	smpsFMvoice	$02
	dc.b		nRst,	$30,	nRst,	$24,	nD5,	$06,	nE5,	nF5
	dc.b		$0C,	nF5,	nE5,	nE5,	nD5,	nD5,	nE5,	$18
	dc.b		nRst,	$30,	nRst,	$24,	nD5,	$06,	nE5,	nF5
	dc.b		$0C,	nE5,	nEb5,	nE5,	nAb5,	$18,	nE5
	smpsAlterPitch	$0C
BossNew_Loop06:
	dc.b		nRst,	$30,	nRst
	smpsLoop	$00,	$04,	BossNew_Loop06
	smpsCall	BossNew_Call03
	dc.b		nG3
	smpsCall	BossNew_Call03
	dc.b		nAb3,	nC5,	smpsNoAttack,	$18,	nD5,	$0C,	nC5,	nB4
	dc.b		$30,	nG4,	nC5,	smpsNoAttack,	$18,	nD5,	$0C,	nC5
	dc.b		nB4,	$30,	nAb4,	nC5,	$0C,	nD5,	nE5,	$18
	dc.b		nF5,	nE5,	nD5,	$0C,	nE5,	nD5,	nB4,	$18
	dc.b		nG4,	$0C,	nB4,	$18,	nC5,	$0C,	nD5,	nE5
	dc.b		$18,	nF5,	nE5,	nD5,	$0C,	nE5,	nF5,	nFs5
	dc.b		nAb5,	$30
	smpsJump	BossNew_Jump02

BossNew_Call03:
	dc.b		nC4,	$30,	smpsNoAttack,	$18,	nD4,	$0C,	nC4,	nB3
	dc.b		$30
	smpsReturn

; DAC Data
BossNew_DAC:
	dc.b		dSnare,	$0C,	dLowTimpani,	dLowTimpani,	dSnare,	dLowTimpani,	dLowTimpani,	dSnare
	dc.b		dLowTimpani,	dLowTimpani,	$18,	dLowTimpani,	dLowTimpani,	dLowTimpani
	smpsLoop	$00,	$02,	BossNew_DAC
BossNew_Loop07:
	dc.b		dKick,	$0C,	dSnare,	$06,	dSnare,	dKick,	$0C,	dSnare
	dc.b		$06,	dSnare,	dKick,	$0C,	dSnare,	$06,	dSnare,	dKick
	dc.b		$0C,	dSnare,	$06,	dSnare,	dKick,	$0C,	dSnare,	$06
	dc.b		dSnare,	dKick,	$0C,	dSnare,	$06,	dSnare,	dKick,	$0C
	dc.b		dSnare,	$02,	dLowTimpani,	$04,	dSnare,	$02,	dLowTimpani,	$04
	dc.b		dKick,	$0C,	dSnare,	$02,	dLowTimpani,	$04,	dSnare,	$02
	dc.b		dLowTimpani,	$04
	smpsLoop	$00,	$08,	BossNew_Loop07
	smpsJump	BossNew_DAC

BossNew_Voices:
	UVBVoice	15_PickedBass
	UVBVoice	0A_SynthTrumpet
	UVBVoice	01_Trumpet1
	even
