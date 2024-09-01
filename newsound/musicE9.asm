; =============================================================================================
; Project Name:		Pulseman1
; Created:		13rd February 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Pulseman1_Header:
	smpsHeaderVoice	Pulseman1_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$04

	smpsHeaderDAC	Pulseman1_DAC
	smpsHeaderFM	Pulseman1_FM1,	smpsPitch00-$02,	$18
	smpsHeaderFM	Pulseman1_FM2,	smpsPitch00-$02,	$18
	smpsHeaderFM	Pulseman1_FM3,	smpsPitch00-$02,	$18
	smpsHeaderFM	Pulseman1_FM4,	smpsPitch00-$02,	$18
	smpsHeaderFM	Pulseman1_FM5,	smpsPitch00-$02,	$18
	smpsHeaderPSG	Pulseman1_PSG1,	smpsPitch02lo-$02,	$02,	$101
	smpsHeaderPSG	Pulseman1_PSG2,	smpsPitch02lo-$02,	$02,	$101
	smpsHeaderPSG	Pulseman1_PSG3,	smpsPitch00-$02,	$01,	$04

; FM1 Data
Pulseman1_FM1:
	smpsFMvoice	$00
	smpsAlterNote	$04
	dc.b		nBb1,	$02,	nC2,	nC2,	nRst,	nC2,	nC2,	nRst
	dc.b		$04,	nC2,	$02,	nRst,	nCs2,	nC2,	nC2,	nRst
	dc.b		nC2,	nRst,	nBb1,	nC2,	nC2,	nRst,	nC2,	nC2
	dc.b		nRst,	$04,	nC2,	$02,	nRst,	nCs2,	nC2,	nC2
	dc.b		nRst,	nC2,	nRst,	nBb1,	nC2,	nC2,	nRst,	nC2
	dc.b		nC2,	nRst,	$04,	nC2,	$02,	nRst,	nCs2,	nC2
	dc.b		nC2,	nRst,	nC2,	nRst,	nBb1,	nC2,	nC2,	nRst
	dc.b		nC2,	nC2,	nRst,	$04,	nC2,	$02,	nRst,	nCs2
	dc.b		nC2,	nC2,	nRst,	nC2,	nRst
Pulseman1_Jump01:
	dc.b		nBb1,	$02,	nC2,	nC2,	nRst,	nC2,	nC2,	nRst
	dc.b		$04,	nC2,	$02,	nRst,	nCs2,	nC2,	nC2,	nRst
	dc.b		nC2,	nRst,	nBb1,	nC2,	nC2,	nRst,	nC2,	nC2
	dc.b		nRst,	$04,	nC2,	$02,	nRst,	nCs2,	nC2,	nC2
	dc.b		nRst,	nC2,	nRst,	nBb1,	nC2,	nC2,	nRst,	nC2
	dc.b		nC2,	nRst,	$04,	nC2,	$02,	nRst,	nCs2,	nC2
	dc.b		nC2,	nRst,	nC2,	nRst,	nBb1,	nC2,	nC2,	nRst
	dc.b		nC2,	nC2,	nRst,	$04,	nC2,	$02,	nRst,	nCs2
	dc.b		nC2,	nC2,	nRst,	nC2,	nRst,	nBb1,	nC2,	nC2
	dc.b		nRst,	nC2,	nC2,	nRst,	$04,	nC2,	$02,	nRst
	dc.b		nCs2,	nC2,	nC2,	nRst,	nC2,	nRst,	nBb1,	nC2
	dc.b		nC2,	nRst,	nC2,	nC2,	nRst,	$04,	nC2,	$02
	dc.b		nRst,	nCs2,	nC2,	nC2,	nRst,	nC2,	nRst,	nBb1
	dc.b		nC2,	nC2,	nRst,	nC2,	nC2,	nRst,	$04,	nC2
	dc.b		$02,	nRst,	nCs2,	nC2,	nC2,	nRst,	nC2,	nRst
	dc.b		nBb1,	nC2,	nC2,	nRst,	nC2,	nC2,	nRst,	$04
	dc.b		nC2,	$02,	nRst,	nCs2,	nC2,	nC2,	nRst,	nC2
	dc.b		nRst,	nBb1,	nC2,	nC2,	nRst,	nC2,	nC2,	nRst
	dc.b		$04,	nC2,	$02,	nRst,	nCs2,	nC2,	nC2,	nRst
	dc.b		nC2,	nRst,	nBb1,	nC2,	nC2,	nRst,	nC2,	nC2
	dc.b		nRst,	$04,	nC2,	$02,	nRst,	nCs2,	nC2,	nC2
	dc.b		nRst,	nC2,	nRst,	nBb1,	nC2,	nC2,	nRst,	nC2
	dc.b		nC2,	nRst,	$04,	nC2,	$02,	nRst,	nCs2,	nC2
	dc.b		nC2,	nRst,	nC2,	nRst,	nBb1,	nC2,	nC2,	nRst
	dc.b		nC2,	nC2,	nRst,	$04,	nC2,	$02,	nRst,	nCs2
	dc.b		nC2,	nC2,	nRst,	nC2,	nRst,	nBb1,	nC2,	nC2
	dc.b		nRst,	nC2,	nC2,	nRst,	$04,	nC2,	$02,	nRst
	dc.b		nCs2,	nC2,	nC2,	nRst,	nC2,	nRst,	nBb1,	nC2
	dc.b		nC2,	nRst,	nC2,	nC2,	nRst,	$04,	nC2,	$02
	dc.b		nRst,	nCs2,	nC2,	nC2,	nRst,	nC2,	nRst,	nBb1
	dc.b		nC2,	nC2,	nRst,	nC2,	nC2,	nRst,	$04,	nC2
	dc.b		$02,	nRst,	nCs2,	nC2,	nC2,	nRst,	nC2,	nRst
	dc.b		nBb1,	nC2,	nC2,	nRst,	nC2,	nC2,	nRst,	$04
	dc.b		nC2,	$02,	nRst,	nCs2,	nC2,	nC2,	nRst,	nC2
	dc.b		nRst,	nBb1,	nC2,	nC2,	nRst,	nC2,	nC2,	nRst
	dc.b		$04,	nC2,	$02,	nRst,	nCs2,	nC2,	nC2,	nRst
	dc.b		nC2,	nRst,	nBb1,	nC2,	nC2,	nRst,	nC2,	nC2
	dc.b		nRst,	$04,	nC2,	$02,	nRst,	nCs2,	nC2,	nC2
	dc.b		nRst,	nC2,	nRst,	nBb1,	nC2,	nC2,	nRst,	nC2
	dc.b		nC2,	nRst,	$04,	nC2,	$02,	nRst,	nCs2,	nC2
	dc.b		nC2,	nRst,	nC2,	nRst,	nBb1,	nC2,	nC2,	nRst
	dc.b		nC2,	nC2,	nRst,	$04,	nC2,	$02,	nRst,	nCs2
	dc.b		nC2,	nC2,	nRst,	nC2,	nRst,	nBb1,	nC2,	nC2
	dc.b		nRst,	nBb1,	nC2,	nC2,	nRst,	nC2,	nRst,	nCs2
	dc.b		nC2,	nC2,	nRst,	nC2,	nRst,	nBb1,	nC2,	nC2
	dc.b		nRst,	nBb1,	nC2,	nC2,	nRst,	nC2,	nRst,	nCs2
	dc.b		nC2,	nC2,	nRst,	nD2,	nRst,	nC2,	nE2,	nE2
	dc.b		nRst,	$04,	nE2,	$02,	nE2,	nRst,	nE2,	nRst
	dc.b		nF2,	nE2,	nE2,	nRst,	nE2,	nRst,	nC2,	nE2
	dc.b		nE2,	nRst,	$04,	nE2,	$02,	nE2,	nRst,	nE2
	dc.b		nRst,	nF2,	nE2,	nE2,	nRst,	nE2,	nRst,	nBb1
	dc.b		nC2,	nC2,	nRst,	nBb1,	nC2,	nC2,	nRst,	nC2
	dc.b		nRst,	nCs2,	nC2,	nC2,	nRst,	nC2,	nRst,	nBb1
	dc.b		nC2,	nC2,	nRst,	nBb1,	nC2,	nC2,	nRst,	nC2
	dc.b		nRst,	nCs2,	nC2,	nC2,	nRst,	nD2,	nRst,	nC2
	dc.b		nE2,	nE2,	nRst,	$04,	nE2,	$02,	nE2,	nRst
	dc.b		nE2,	nRst,	nF2,	nE2,	nE2,	nRst,	nE2,	nRst
	dc.b		nC2,	nE2,	nE2,	nRst,	$04,	nE2,	$02,	nE2
	dc.b		nRst,	nE2,	nRst,	nF2,	nE2,	nE2,	nRst,	nE2
	dc.b		nRst,	nC2,	nE2,	nE2,	nRst,	nE2,	nE2,	nRst
	dc.b		$04,	nE2,	$02,	nRst,	nF2,	nE2,	nE2,	nRst
	dc.b		nE2,	nRst,	nC2,	nE2,	nE2,	nRst,	nE2,	nE2
	dc.b		nRst,	$04,	nE2,	$02,	nRst,	nF2,	nE2,	nE2
	dc.b		nRst,	nE2,	nRst,	nBb1,	nC2,	nC2,	nRst,	nC2
	dc.b		nC2,	nRst,	$04,	nC2,	$02,	nRst,	nCs2,	nC2
	dc.b		nC2,	nRst,	nC2,	nRst,	nBb1,	nC2,	nC2,	nRst
	dc.b		nC2,	nC2,	nRst,	$04,	nC2,	$02,	nRst,	nCs2
	dc.b		nC2,	nC2,	nRst,	nC2,	nRst,	nBb1,	nC2,	nC2
	dc.b		nRst,	nC2,	nC2,	nRst,	$04,	nC2,	$02,	nRst
	dc.b		nCs2,	nC2,	nC2,	nRst,	nC2,	nRst,	nBb1,	nC2
	dc.b		nC2,	nRst,	nC2,	nC2,	nRst,	$04,	nC2,	$02
	dc.b		nRst,	nCs2,	nC2,	nC2,	nRst,	nC2,	nRst,	nBb1
	dc.b		nC2,	nC2,	nRst,	nC2,	nC2,	nRst,	$04,	nC2
	dc.b		$02,	nRst,	nCs2,	nC2,	nC2,	nRst,	nC2,	nRst
	dc.b		nBb1,	nC2,	nC2,	nRst,	nC2,	nC2,	nRst,	$04
	dc.b		nC2,	$02,	nRst,	nCs2,	nC2,	nC2,	nRst,	nC2
	dc.b		nRst,	nBb1,	nC2,	nC2,	nRst,	nC2,	nC2,	nRst
	dc.b		$04,	nC2,	$02,	nRst,	nCs2,	nC2,	nC2,	nRst
	dc.b		nC2,	nRst,	nBb1,	nC2,	nC2,	nRst,	nC2,	nC2
	dc.b		nRst,	$04,	nC2,	$02,	nRst,	nCs2,	nC2,	nC2
	dc.b		nRst,	nC2,	nRst,	nBb1,	nC2,	nC2,	nRst,	nC2
	dc.b		nC2,	nRst,	$04,	nC2,	$02,	nRst,	nCs2,	nC2
	dc.b		nC2,	nRst,	nC2,	nRst,	nBb1,	nC2,	nC2,	nRst
	dc.b		nC2,	nC2,	nRst,	$04,	nC2,	$02,	nRst,	nCs2
	dc.b		nC2,	nC2,	nRst,	nC2,	nRst
	smpsJump	Pulseman1_Jump01

; FM2 Data
Pulseman1_FM2:
	smpsFMvoice	$01
	smpsAlterNote	$00
	dc.b		nF4,	$10,	nRst,	nF4,	nRst,	nG4,	nRst,	nG4
	dc.b		nRst
Pulseman1_Jump02:
	smpsFMvoice	$04
	smpsAlterNote	$FC
	smpsCall	Pulseman1_Call01
	smpsCall	Pulseman1_Call02
	smpsFMvoice	$01
	smpsAlterNote	$00
	dc.b		nF4,	$10,	nRst,	nF4,	nRst,	nG4,	nRst,	nG4
	dc.b		nRst,	nF4,	nRst,	nF4,	nRst,	nG4,	nRst,	nG4
	dc.b		nRst,	nF4,	nRst,	nF4,	nRst,	nG4,	nRst,	nG4
	dc.b		nRst,	nF4,	nRst,	nF4,	nRst,	nG4,	nRst
	smpsFMvoice	$06
	dc.b		nE5,	$20,	nD5,	$02,	nRst,	nD5,	nRst,	nBb4
	dc.b		$10,	nRst,	$08,	nBb4,	$02,	nRst,	nBb4,	nRst
	dc.b		nF4,	$10,	nBb4,	$08,	nG4,	$20,	smpsNoAttack,	nG4
	dc.b		nD5,	$02,	nRst,	nD5,	nRst,	nBb4,	$10,	nRst
	dc.b		$08,	nBb4,	$02,	nRst,	nBb4,	nRst,	nF4,	$10
	dc.b		nBb4,	$08,	nG4,	$20,	smpsNoAttack,	nG4,	nF4,	$18
	dc.b		nE4,	$08,	nF4,	nE4,	nF4,	$04,	nE4,	nF4
	dc.b		nFs4,	nG4,	$10,	nRst,	nG4,	nRst
	smpsFMvoice	$04
	smpsAlterNote	$FC
	smpsCall	Pulseman1_Call01
	smpsCall	Pulseman1_Call02
	smpsCall	Pulseman1_Call01
	smpsCall	Pulseman1_Call02
	smpsFMvoice	$01
	smpsAlterNote	$00
	smpsJump	Pulseman1_Jump02

; FM3 Data
Pulseman1_FM3:
	smpsFMvoice	$02
	smpsAlterNote	$FE
	smpsPan		panRight,	$00
	dc.b		nG3,	$10,	nRst,	nG3,	nRst,	nG3,	nRst,	nG3
	dc.b		nRst
Pulseman1_Jump03:
	dc.b		nG3,	nRst,	nG3,	nRst,	nG3,	nRst,	nG3,	nRst
	smpsPan		panCentre,	$00
	smpsFMvoice	$05
	smpsAlterVol	$FC
	dc.b		nC5,	nBb4,	nD5,	nBb4,	nC5,	$18,	nD5,	$04
	dc.b		nC5,	nBb4,	$10,	nF4,	nC5,	nBb4,	nD5,	nBb4
	dc.b		$08,	nG4,	$04,	nBb4,	nC5,	$18,	nG4,	$04
	dc.b		nA4,	nBb4,	$08,	nF4,	$04,	nG4,	nC4,	$10
	dc.b		nC5,	nBb4,	nD5,	nBb4,	nC5,	$18,	nD5,	$04
	dc.b		nC5,	nBb4,	$10,	nF4,	nC5,	nBb4,	nD5,	nBb4
	dc.b		$08,	nG4,	$04,	nBb4,	nC5,	$20,	nC5
	smpsAlterVol	$04
	smpsFMvoice	$01
	dc.b		nRst,	$08,	nD4,	$10,	nRst,	nBb3,	nRst,	$18
	dc.b		nC4,	$10,	nE4,	nC4,	nRst,	$08,	nD4,	$10
	dc.b		nRst,	nBb3,	nRst,	$18,	nC4,	$10,	nE4,	nC4
	dc.b		nD4,	$18,	nC4,	$08,	nD4,	nC4,	nD4,	$04
	dc.b		nC4,	nD4,	nEb4,	nE4,	$10,	nRst,	nE4
	smpsFMvoice	$08
	dc.b		nC3
	smpsPan		panRight,	$00
	smpsFMvoice	$02
	dc.b		nRst,	$20,	nRst,	nRst,	nRst,	nG3,	$10,	nRst
	dc.b		nG3,	nRst,	nG3,	nRst,	nG3,	nRst
	smpsJump	Pulseman1_Jump03

; FM4 Data
Pulseman1_FM4:
	smpsFMvoice	$03
	smpsAlterNote	$02
	smpsPan		panLeft,	$00
	dc.b		nC4,	$10,	nRst,	nC4,	nRst,	nC4,	nRst,	nC4
	dc.b		nRst
Pulseman1_Jump04:
	dc.b		nC4,	nRst,	nC4,	nRst,	nC4,	nRst,	nC4,	nRst
	smpsPan		panCentre,	$00
	smpsFMvoice	$04
	smpsAlterNote	$FC
	smpsCall	Pulseman1_Call01
	smpsCall	Pulseman1_Call03
	smpsCall	Pulseman1_Call01
	smpsCall	Pulseman1_Call03
	smpsCall	Pulseman1_Call01
	smpsCall	Pulseman1_Call03
	smpsCall	Pulseman1_Call01
	smpsCall	Pulseman1_Call02
	smpsFMvoice	$07
	smpsAlterNote	$02
	dc.b		nD4,	$02,	nRst,	nD4,	nRst,	nBb3,	$10,	nRst
	dc.b		$08,	nBb3,	$02,	nRst,	nBb3,	nRst,	nF3,	$10
	dc.b		nD3,	$08,	nG3,	$20,	nG3,	nD4,	$02,	nRst
	dc.b		nD4,	nRst,	nBb3,	$10,	nRst,	$08,	nBb3,	$02
	dc.b		nRst,	nBb3,	nRst,	nF3,	$10,	nD3,	$08,	nG3
	dc.b		$20,	nG3,	nBb3,	$18,	nA3,	$08,	nBb3,	nA3
	dc.b		nBb3,	$04,	nA3,	nBb3,	nB3,	nC4,	$10,	nRst
	dc.b		nC4,	nRst,	nRst,	$20,	nRst,	nRst,	nRst
	smpsPan		panLeft,	$00
	smpsFMvoice	$03
	dc.b		nC4,	$10,	nRst,	nC4,	nRst,	nC4,	nRst,	nC4
	dc.b		nRst
	smpsJump	Pulseman1_Jump04

; FM5 Data
Pulseman1_FM5:
	smpsFMvoice	$04
	smpsAlterNote	$FC
	dc.b		nRst,	$20,	nRst,	nRst,	nRst
Pulseman1_Jump05:
	smpsFMvoice	$01
	smpsAlterNote	$00
	dc.b		nF4,	$10,	nRst,	nF4,	nRst,	nG4,	nRst,	nG4
	dc.b		nRst
	smpsPan		panCentre,	$00
	dc.b		nRst,	$04
	smpsAlterVol	$FC
	smpsAlterVol	$04
	smpsFMvoice	$05
	dc.b		nC5,	$10,	nBb4,	nD5,	nBb4,	nC5,	$18,	nD5
	dc.b		$04,	nC5,	nBb4,	$10,	nF4,	nC5,	nBb4,	nD5
	dc.b		nBb4,	$08,	nG4,	$04,	nBb4,	nC5,	$18,	nG4
	dc.b		$04,	nA4,	nBb4,	$08,	nF4,	$04,	nG4,	nC4
	dc.b		$10,	nC5,	nBb4,	nD5,	nBb4,	nC5,	$18,	nD5
	dc.b		$04,	nC5,	nBb4,	$10,	nF4,	nC5,	nBb4,	nD5
	dc.b		nBb4,	$08,	nG4,	$04,	nBb4,	nC5,	$1C
	smpsAlterVol	$04
	smpsAlterVol	$FC
	smpsFMvoice	$01
	dc.b		nG4,	$20
	smpsFMvoice	$04
	smpsAlterNote	$FC
	smpsCall	Pulseman1_Call04
	dc.b		nRst,	$20,	nRst
	smpsCall	Pulseman1_Call04
	dc.b		nRst,	$20,	nRst,	nRst,	nRst,	nRst,	nRst,	nRst
	dc.b		$20,	nRst,	nRst,	nRst
	smpsFMvoice	$01
	smpsAlterNote	$00
	dc.b		nF4,	$10,	nRst,	nF4,	nRst,	nG4,	nRst,	nG4
	dc.b		nRst
	smpsFMvoice	$04
	smpsAlterNote	$FC
	smpsJump	Pulseman1_Jump05

Pulseman1_Call01:
	dc.b		nG3,	$02,	nC3,	nG3,	nC4,	nG3,	nF3,	nC3
	dc.b		nG3,	nC4,	nF4,	nC4,	nG3,	nC3,	nF3,	nG3
	dc.b		nC4
	smpsLoop	$00,	$02,	Pulseman1_Call01
	dc.b		smpsF9

Pulseman1_Call02:
	dc.b		nG3,	$02,	nC3,	nG3,	nC4,	nG3,	nF3,	nC3
	dc.b		nG3,	nC4,	nG4,	nC4,	nG3,	nC3,	nF3,	nG3
	dc.b		nC4
	smpsLoop	$00,	$02,	Pulseman1_Call02
	dc.b		smpsF9

Pulseman1_Call03:
	dc.b		nG3,	$02,	nC3,	nG3,	nC4,	nG3,	nF3,	nC3
	dc.b		nG3,	nC4,	nG4,	nC4,	nG3,	nC3,	nF3,	nG3
	dc.b		nC4,	nG3,	nC3,	nG3,	nC4,	nG3,	nF3,	nC3
	dc.b		nG3,	nC4,	nF4,	nC4,	nG3,	nC3,	nF3,	nG3
	dc.b		nC4,	smpsF9

Pulseman1_Call04:
	dc.b		nBb3,	$02,	nD3,	nBb3,	nD4,	nBb3,	nG3,	nD3
	dc.b		nBb3,	nD4,	nBb4,	nD4,	nBb3,	nD3,	nG3,	nBb3
	dc.b		nD4
	smpsLoop	$00,	$02,	Pulseman1_Call04
	dc.b		smpsF9

; PSG1 Data
Pulseman1_PSG1:
	smpsPSGvoice	$00
	smpsSetVol	$01
	dc.b		nC4,	$10,	nRst,	nC4,	nRst,	nC4,	nRst,	nC4
	dc.b		nRst
Pulseman1_Loop01:
	dc.b		nC4,	$10,	nRst,	nC4,	nRst,	nC4,	nRst,	nC4
	dc.b		nRst
	smpsLoop	$00,	$05,	Pulseman1_Loop01
Pulseman1_Loop02:
	dc.b		nRst,	$20
	smpsLoop	$00,	$0A,	Pulseman1_Loop02
	dc.b		nC4,	$10,	nRst,	nC4,	$10,	nRst
Pulseman1_Loop03:
	dc.b		nRst,	$20
	smpsLoop	$00,	$04,	Pulseman1_Loop03
	dc.b		nC4,	$10,	nRst,	nC4,	$10,	nRst,	nC4,	$10
	dc.b		nRst,	nC4,	$10,	nRst
	smpsJump	Pulseman1_Loop01

; PSG2 Data
Pulseman1_PSG2:
	smpsPSGvoice	$00
	smpsSetVol	$01
	dc.b		nF4,	$10,	nRst,	nF4,	nRst,	nG4,	nRst,	nG4
	dc.b		nRst
Pulseman1_Loop04:
	dc.b		nF4,	$10,	nRst,	nF4,	nRst,	nG4,	nRst,	nG4
	dc.b		nRst
	smpsLoop	$00,	$05,	Pulseman1_Loop04
Pulseman1_Loop05:
	dc.b		nRst,	$20
	smpsLoop	$00,	$0A,	Pulseman1_Loop05
	dc.b		nG4,	$10,	nRst,	nG4,	nRst
Pulseman1_Loop06:
	dc.b		nRst,	$20
	smpsLoop	$00,	$04,	Pulseman1_Loop06
	dc.b		nF4,	$10,	nRst,	nF4,	nRst,	nG4,	nRst,	nG4
	dc.b		nRst
	smpsJump	Pulseman1_Loop04

; PSG3 Data
Pulseman1_PSG3:
	smpsPSGform	$E7
	smpsSetVol	$04
Pulseman1_Jump06:
	smpsPSGvoice	$02
	dc.b		nG6,	$04,	nG6,	nG6,	nG6,	nG6,	nG6,	nG6
	smpsPSGvoice	$01
	dc.b		nG6
	smpsJump	Pulseman1_Jump06

; DAC Data
Pulseman1_DAC:
	dc.b		dKick,	$08,	dSnare,	dKick,	$04,	dKick
	dc.b		dSnare,	$08,	dKick,	dSnare,	$04,	dKick,	dKick,	dKick
	dc.b		dSnare,	$08,	dKick,	dSnare,	dKick,	$04,	dKick,	dSnare
	dc.b		$08,	dKick,	dSnare,	dKick,	$04,	dKick,	dSnare,	dSnare
Pulseman1_Jump07:
	dc.b		dKick,	$08,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08
	dc.b		dKick,	dSnare,	$04,	dClap,	dKick,	dKick,	dSnare,	$08
	dc.b		dKick,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08,	dKick
	dc.b		dSnare,	$04,	dClap,	dKick,	dKick,	dSnare,	$08,	dKick
	dc.b		dSnare,	dKick,	$04,	dKick,	dSnare,	$08,	dKick,	dSnare
	dc.b		$04,	dClap,	dKick,	dKick,	dSnare,	$08,	dKick,	dSnare
	dc.b		dKick,	$04,	dKick,	dSnare,	$08,	dKick,	dSnare,	$04
	dc.b		dClap,	dKick,	dKick,	dSnare,	dSnare,	dKick,	$08,	dSnare
	dc.b		dKick,	$04,	dKick,	dSnare,	$08,	dKick,	dSnare,	$04
	dc.b		dClap,	dKick,	dKick,	dSnare,	$08,	dKick,	dSnare,	dKick
	dc.b		$04,	dKick,	dSnare,	$08,	dKick,	dSnare,	$04,	dClap
	dc.b		dKick,	dKick,	dSnare,	$08,	dKick,	dSnare,	dKick,	$04
	dc.b		dKick,	dSnare,	$08,	dKick,	dSnare,	$04,	dClap,	dKick
	dc.b		dKick,	dSnare,	$08,	dKick,	dSnare,	dKick,	$04,	dKick
	dc.b		dSnare,	$08,	dKick,	dSnare,	$04,	dClap,	dKick,	dKick
	dc.b		dSnare,	$08,	dKick,	dSnare,	dKick,	$04,	dKick,	dSnare
	dc.b		$08,	dKick,	dSnare,	$04,	dClap,	dKick,	dKick,	dSnare
	dc.b		$08,	dKick,	dSnare,	dKick,	$04,	dKick,	dSnare,	$08
	dc.b		dKick,	dSnare,	$04,	dClap,	dKick,	dKick,	dSnare,	dSnare
	dc.b		dKick,	dSnare,	dClap,	$08,	dKick,	$04,	dKick,	dSnare
	dc.b		dSnare,	dKick,	dSnare,	dClap,	dKick,	dKick,	dKick,	dSnare
	dc.b		$08,	dKick,	dSnare,	$04,	dKick,	dScratch,	dKick,	dSnare
	dc.b		dKick,	dKick,	$08,	dSnare,	dScratch,	$04,	dKick,	dSnare
	dc.b		dKick,	dKick,	dSnare,	dClap,	$08,	dKick,	$04,	dKick
	dc.b		dSnare,	dSnare,	dKick,	dSnare,	dClap,	dKick,	dKick,	dKick
	dc.b		dSnare,	$08,	dKick,	dSnare,	$04,	dKick,	dScratch,	dKick
	dc.b		dSnare,	dKick,	dKick,	$08,	dSnare,	dScratch,	$04,	dKick
	dc.b		dSnare,	dKick,	dKick,	$08,	dSnare,	dKick,	$04,	dKick
	dc.b		dSnare,	$08,	dKick,	dSnare,	$04,	dKick,	dKick,	dKick
	dc.b		dSnare,	dSnare,	dKick,	$08,	dSnare,	$04,	dClap,	dKick
	dc.b		dKick,	dSnare,	dSnare,	dKick,	$08,	dSnare,	$04,	dClap
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	$08,	dSnare,	dKick
	dc.b		$04,	dKick,	dSnare,	dSnare,	dKick,	$08,	dSnare,	dKick
	dc.b		$04,	dSnare,	$08,	dSnare,	$04,	dKick,	$08,	dSnare
	dc.b		dKick,	$04,	dKick,	dSnare,	dSnare,	dKick,	$08,	dSnare
	dc.b		dKick,	$04,	dKick,	dSnare,	$08,	dKick,	dSnare,	dKick
	dc.b		$04,	dKick,	dSnare,	$08,	dKick,	dSnare,	$04,	dClap
	dc.b		dKick,	dKick,	dSnare,	$08,	dKick,	dSnare,	dKick,	$04
	dc.b		dKick,	dSnare,	$08,	dKick,	dSnare,	$04,	dClap,	dKick
	dc.b		dKick,	dSnare,	$08
	smpsJump	Pulseman1_Jump07

Pulseman1_Voices:
	dc.b		$75,$02,$02,$01,$02,$FF,$FF,$FF,$FF,$0C,$00,$08,$08,$00,$00,$00
	dc.b		$00,$FF,$FF,$FF,$FF,$92,$80,$80,$7C;			Voice 00
	dc.b		$75,$52,$16,$13,$31,$1F,$1F,$1F,$1F,$06,$06,$06,$00,$08,$00,$00
	dc.b		$00,$20,$1B,$18,$1A,$92,$80,$80,$80;			Voice 01
	dc.b		$15,$02,$21,$02,$22,$1F,$1F,$1F,$1E,$29,$09,$00,$01,$00,$1F,$0A
	dc.b		$05,$08,$00,$08,$08,$80,$80,$80,$80;			Voice 02
	dc.b		$74,$02,$04,$00,$02,$1F,$05,$1F,$1F,$14,$1F,$09,$07,$05,$00,$00
	dc.b		$08,$1A,$0A,$1A,$0A,$80,$80,$80,$78;			Voice 03
	dc.b		$75,$02,$12,$12,$12,$28,$1A,$1D,$1E,$F6,$08,$0C,$00,$24,$06,$0A
	dc.b		$08,$1F,$1F,$1F,$1F,$90,$80,$80,$90;			Voice 04
	dc.b		$75,$31,$20,$61,$22,$1F,$1F,$1F,$1F,$02,$0B,$04,$01,$06,$00,$02
	dc.b		$06,$08,$08,$08,$08,$90,$80,$80,$80;			Voice 05
	dc.b		$75,$22,$31,$63,$82,$1C,$1F,$1F,$1E,$01,$07,$00,$00,$03,$04,$02
	dc.b		$00,$02,$08,$08,$08,$91,$80,$80,$79;			Voice 06
	dc.b		$74,$32,$20,$60,$20,$1F,$1F,$1F,$1F,$14,$1F,$06,$50,$02,$E1,$58
	dc.b		$05,$51,$A9,$2C,$08,$80,$80,$80,$80;			Voice 07
	dc.b		$71,$51,$18,$10,$32,$1F,$1F,$1F,$1F,$FF,$09,$00,$11,$01,$1F,$00
	dc.b		$00,$78,$08,$08,$0A,$80,$80,$80,$80;			Voice 08
	even
