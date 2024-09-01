; =============================================================================================
; Project Name:		Sonic 2 Beta - Level Select
; Created:		24th January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

LSNew_Header:
	smpsHeaderVoice	LSNew_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$00

	smpsHeaderDAC	LSNew_DAC
	smpsHeaderFM	LSNew_FM1,	smpsPitch01lo,	$07
	smpsHeaderFM	LSNew_FM2,	smpsPitch01hi,	$1A
	smpsHeaderFM	LSNew_FM3,	smpsPitch00,	$11
	smpsHeaderFM	LSNew_FM4,	smpsPitch00,	$13
	smpsHeaderFM	LSNew_FM5,	smpsPitch00,	$20
	smpsHeaderPSG	LSNew_PSG1,	smpsPitch04lo,	$02,	$03
	smpsHeaderPSG	LSNew_PSG2,	smpsPitch04lo,	$03,	$03
	smpsHeaderPSG	LSNew_PSG3,	smpsPitch04lo,	$06,	$03

; FM1 Data
LSNew_FM1:
	smpsPan		panRight,	$00
	smpsNoteFill	$05
LSNew_Jump01:
	smpsFMvoice	$03
	dc.b		nC5,	$0C,	nB4,	nA4,	nG4,	nC5,	nB4,	nA4
	dc.b		nG4,	nC5,	nB4,	nA4,	nG4,	nC5,	nB4,	nA4
	dc.b		nG4,	nC5,	nBb4,	nAb4,	nG4,	nC5,	nBb4,	nAb4
	dc.b		nG4,	nD5,	nC5,	nBb4,	nAb4,	nD5,	nC5,	nBb4
	dc.b		nAb4
	smpsJump	LSNew_Jump01

; FM2 Data
LSNew_FM2:
	smpsPan		panLeft,	$00
	smpsFMvoice	$00
LSNew_Jump02:
	dc.b		nRst,	$18,	nC4,	$0C,	nE4,	nG4,	$18,	nC4
	dc.b		$0C,	nE4,	nG4,	$30,	smpsNoAttack,	$30,	nRst,	$18
	dc.b		nAb3,	$0C,	nC4,	nEb4,	$30,	nRst,	$18,	nBb3
	dc.b		$0C,	nD4,	nF4,	$30
	smpsJump	LSNew_Jump02

; FM5 Data
LSNew_FM5:
	smpsFMvoice	$01
	smpsModSet	$02,	$01,	$02,	$04
	dc.b		nRst,	$06
	smpsJump	LSNew_Jump03

; PSG2 Data
LSNew_PSG2:
	smpsAlterNote	$02
	dc.b		nRst,	$0C
	smpsJump	LSNew_Jump03

; PSG3 Data
LSNew_PSG3:
	smpsAlterNote	$01
	dc.b		nRst,	$12
	smpsJump	LSNew_Jump03

; PSG1 Data
LSNew_PSG1:
	smpsAlterNote	$FF
	smpsJump	LSNew_Jump03

; FM3 Data
LSNew_FM3:
	smpsFMvoice	$01
	smpsModSet	$12,	$01,	$02,	$04
LSNew_Jump03:
	dc.b		nRst,	$18,	nC5,	$0C,	nC5,	nC5,	$18,	nD5
	dc.b		$0C,	nF5,	smpsNoAttack,	nF5,	nRst,	nE5,	nRst,	nD5
	dc.b		nRst,	nC5,	nRst,	nEb5,	$18,	nF5,	$0C,	nC5
	dc.b		$30,	smpsNoAttack,	$0C,	smpsNoAttack,	$30,	smpsNoAttack,	$30
	smpsJump	LSNew_Jump03

; FM4 Data
LSNew_FM4:
	smpsFMvoice	$02
	dc.b		nC3,	$30,	nC3,	nC3,	nC3,	$18,	nG2,	nAb2
	dc.b		$30,	$18,	nF2,	nBb2,	$30,	$18,	nG2
	smpsJump	LSNew_FM4

; DAC Data
LSNew_DAC:
	dc.b		dKick,$18,dSnare,dKick,dSnare,dKick,dSnare
	dc.b		dKick,$02,dHiTimpani,$0A,dLowTimpani,$0C,dSnare,$02,dHiTimpani,$0A,dLowTimpani,$0C
	smpsJump	LSNew_DAC

LSNew_Voices:
	UVBVoice	04_BellSynth1
	UVBVoice	08_BellHorntypeThing
	UVBVoice	09_SynthBass3
	UVBVoice	0C_TubularBell
	even
