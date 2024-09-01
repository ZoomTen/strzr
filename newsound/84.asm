; =============================================================================================
; Project Name:		Sonic 2 Beta - Casino Night Zone
; Created:		24th January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

CNZBeta_Header:
	smpsHeaderVoice	CNZBeta_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$00

	smpsHeaderDAC	CNZBeta_DAC
	smpsHeaderFM	CNZBeta_FM1,	smpsPitch01hi,	$10
	smpsHeaderFM	CNZBeta_FM2,	smpsPitch01lo,	$12
	smpsHeaderFM	CNZBeta_FM3,	smpsPitch01lo,	$12
	smpsHeaderFM	CNZBeta_FM4,	smpsPitch00,	$12
	smpsHeaderFM	CNZBeta_FM5,	smpsPitch00,	$12
	smpsHeaderPSG	CNZBeta_PSG1,	smpsPitch03lo,	$02,	$09
	smpsHeaderPSG	CNZBeta_PSG2,	smpsPitch03lo,	$02,	$09
	smpsHeaderPSG	CNZBeta_PSG3,	smpsPitch00,	$04,	$01

; FM1 Data
CNZBeta_FM1:
	smpsFMvoice	$00
	dc.b		nRst,	$30,	nE2,	$08,	nF2,	nFs2,	nG2,	nF3
	dc.b		nEb3
CNZBeta_Jump01:
	dc.b		nC3,	$18,	nC2,	nC3,	nC2,	nC3,	nC2,	nC3
	dc.b		nC2,	nRst,	nG1,	nBb1,	$10,	nAb1,	$18,	nG2
	dc.b		$08,	nRst,	$10,	nD2,	$08,	nG1,	$18,	nA1
	dc.b		nB1,	nC2,	nB1,	nA1,	nG1,	nC2,	nC2,	nG1
	dc.b		nC2,	nE2,	nD2,	nC2,	nB1,	nE2,	nFs2,	nAb2
	dc.b		nE2,	nA2,	nA2,	nE2,	nE2,	nA2,	nE2,	nC2
	dc.b		nA1,	nAb1,	nBb1,	nC2,	nCs2,	nEb2,	$10,	$08
	dc.b		nAb1,	$18,	nC2,	nAb1,	nC2,	nB1,	nC2,	nD2
	dc.b		nE2,	nB1,	nE2,	nAb1,	nA1,	nB1,	nC2,	nE2
	dc.b		nF2,	nE2,	nF2,	nB1,	nRst,	nC2,	nRst,	nC2
	dc.b		nRst,	nF2,	nRst,	nF2,	nAb2,	$30,	$18,	nRst
	dc.b		$10,	nG2,	$08,	nRst,	$10,	$08,	nF2,	$18
	dc.b		nE2,	nD2,	nC2,	nE1,	nF1,	nFs1,	nG1,	$10
	dc.b		nG2,	$08,	nC2,	$18,	nB1,	nF2,	nE2,	nD2
	dc.b		nC2,	nB1,	nAb1,	nA1,	nAb1,	nE2,	nA2,	nA2
	dc.b		$08,	nE2,	nA1,	nC2,	$18,	nD2,	nE2,	nA2
	dc.b		nD3,	nA1,	nAb1,	nG1,	nF1,	nEb2,	nC2,	$10
	dc.b		nEb2,	$08,	nAb1,	$18,	nF1,	nBb1,	nC2,	nD2
	dc.b		nE2,	nC2,	nE2,	nF2,	nE2,	nAb2,	nA2,	$10
	dc.b		$08,	nA1,	$18,	nC2,	nE2,	nF2,	nF2,	$08
	dc.b		nG3,	nF3,	nE2,	nF3,	nE3,	nC2,	nD3,	nC3
	dc.b		nRst,	$18,	nC2,	nRst,	nC2,	nRst,	nF2,	nRst
	dc.b		nF2
	smpsAlterVol	$04
	dc.b		nRst,	nC2,	nRst,	nC2,	nRst,	nF2,	nRst,	nF2
	smpsAlterVol	$F8
	dc.b		$06,	$0D,	nRst,	nC2,	nRst,	nF2,	nRst,	nF2
	dc.b		$10,	nC2,	$08,	nRst,	$30,	nRst,	nC2,	$10
	dc.b		$08,	nB1,	$18,	nA1,	nG1
	smpsAlterVol	$04
	smpsJump	CNZBeta_Jump01

; FM2 Data
CNZBeta_FM2:
	smpsFMvoice	$01
	smpsModSet	$02,	$04,	$04,	$02
	smpsPan		panLeft,	$00
	dc.b		nRst,	$30,	nRst
CNZBeta_Jump02:
	dc.b		nRst,	$18,	nG5,	nRst,	nG5,	nRst,	nG5,	nRst
	dc.b		nG5,	nRst,	nF5,	$0C,	nRst,	nF5,	$10,	$08
	dc.b		nRst,	$10,	$08,	nRst,	$30,	nRst,	nRst,	$18
	dc.b		nG4,	$08,	nRst,	$20,	nG4,	$08,	nRst,	$18
	dc.b		nG4,	nRst,	$10,	$08,	nRst,	$18,	nG4,	$10
	dc.b		$08,	nRst,	$18,	nAb4,	$08,	nRst,	$20,	nAb4
	dc.b		$08,	nRst,	$18,	nAb4,	nRst,	$10,	$08,	nRst
	dc.b		$18,	nAb4,	$10,	$08,	nRst,	$18,	nA4,	$08
	dc.b		nRst,	$20,	nA4,	$08,	nRst,	$18,	nA4,	nRst
	dc.b		$10,	$08,	nRst,	$18,	nA4,	$10,	$08,	nRst
	dc.b		$18,	nAb4,	$08,	nRst,	$20,	nAb4,	$08,	nRst
	dc.b		$18,	nAb4,	nRst,	$10,	$18,	nRst,	$08,	nAb4
	dc.b		$10,	$08,	nRst,	$18,	nG4,	$08,	nRst,	$20
	dc.b		nG4,	$08,	nRst,	$18,	nAb4,	nRst,	$10,	$20
	dc.b		$18,	nRst,	$18,	nA4,	$08,	nRst,	$20,	nA4
	dc.b		$08,	nRst,	$18,	nC5,	nRst,	$10,	$08,	nRst
	dc.b		$18,	$10,	$08,	nRst,	$18,	nG4,	nRst,	nG4
	dc.b		nRst,	nA4,	nRst,	nA4,	nAb4,	$30,	$18,	nRst
	dc.b		$10,	nB4,	$08,	nRst,	$30,	nRst,	nRst,	$18
	dc.b		nG4,	$08,	nRst
	smpsFMvoice	$02
	dc.b		nE5,	$09,	nRst,	$0F
	smpsFMvoice	$01
	dc.b		nG4,	$08
	smpsFMvoice	$02
	dc.b		nRst,	$10,	nE5,	$08
	smpsFMvoice	$01
	dc.b		nG4,	$10
	smpsFMvoice	$02
	dc.b		nE5,	$08,	nF5,	$10,	nE5,	$08
	smpsFMvoice	$01
	dc.b		nG4,	$18,	$10,	$08,	nRst,	$18,	nAb4,	$08
	dc.b		nRst
	smpsFMvoice	$02
	dc.b		nD5,	nRst,	$10
	smpsFMvoice	$01
	dc.b		nAb4,	$08,	nRst,	$10
	smpsFMvoice	$02
	dc.b		nD5,	$08
	smpsFMvoice	$01
	dc.b		nAb4,	$10
	smpsFMvoice	$02
	dc.b		nD5,	$08,	nE5,	$10,	nD5,	$08
	smpsFMvoice	$01
	dc.b		nAb4,	nRst,	$10,	nAb4,	nAb4,	$08
	smpsFMvoice	$02
	dc.b		nC5,	$10,	$08
	smpsFMvoice	$01
	dc.b		nA4,	nRst
	smpsFMvoice	$02
	dc.b		nC5,	nC5,	$10
	smpsFMvoice	$01
	dc.b		nA4,	$08,	nRst,	$18,	$10
	smpsFMvoice	$02
	dc.b		nC5,	$08,	nD5,	$10,	nC5,	$08
	smpsFMvoice	$01
	dc.b		nA4,	nRst,	$10,	nA4,	nA4,	$08
	smpsFMvoice	$02
	dc.b		nC5,	$10,	$08
	smpsFMvoice	$01
	dc.b		nAb4,	nRst,	$20
	smpsFMvoice	$02
	dc.b		nC5,	$08
	smpsFMvoice	$01
	dc.b		nAb4,	nRst
	smpsFMvoice	$02
	dc.b		nC5
	smpsFMvoice	$01
	dc.b		nAb4,	nRst
	smpsFMvoice	$02
	dc.b		nC5
	smpsFMvoice	$01
	dc.b		nAb4,	nRst
	smpsFMvoice	$02
	dc.b		nA4
	smpsFMvoice	$01
	dc.b		nAb4,	nRst
	smpsFMvoice	$02
	dc.b		nBb4
	smpsFMvoice	$01
	dc.b		nAb4,	nRst
	smpsFMvoice	$02
	dc.b		nC5,	nE5,	$18
	smpsFMvoice	$01
	dc.b		nG4,	$08,	nRst
	smpsFMvoice	$02
	dc.b		nE5
	smpsFMvoice	$01
	dc.b		nG4,	$10
	smpsFMvoice	$02
	dc.b		nE5,	$20
	smpsFMvoice	$01
	dc.b		nAb4,	$18
	smpsFMvoice	$02
	dc.b		nD5,	$10
	smpsFMvoice	$01
	dc.b		nAb4,	$18
	smpsFMvoice	$02
	dc.b		nE5,	$08
	smpsFMvoice	$01
	dc.b		nAb4,	$10
	smpsFMvoice	$02
	dc.b		nD5,	$08,	nRst,	$10,	nC5,	$08
	smpsFMvoice	$01
	dc.b		nA4,	nRst
	smpsFMvoice	$02
	dc.b		nC5
	smpsFMvoice	$01
	dc.b		nA4,	nRst
	smpsFMvoice	$02
	dc.b		nC5,	nRst,	$10,	$08
	smpsFMvoice	$01
	dc.b		nG4,	nRst
	smpsFMvoice	$02
	dc.b		nF4
	smpsFMvoice	$01
	dc.b		nE4,	nRst
	smpsFMvoice	$02
	dc.b		nC5
	smpsFMvoice	$01
	dc.b		nC5,	nRst
	smpsFMvoice	$02
	dc.b		nA4
	smpsFMvoice	$01
	dc.b		nA4,	nRst
	smpsFMvoice	$02
	dc.b		nF5
	smpsFMvoice	$01
	dc.b		nRst,	$18,	nG4,	nRst,	nG4,	nRst,	nA4,	nRst
	dc.b		nA4,	nRst,	nG4,	nRst,	nG4,	nRst,	nA4,	nRst
	dc.b		nA4,	nRst,	nG5,	nRst,	nG5,	nRst,	nA5,	$30
	dc.b		$10,	nG5,	$08,	nRst,	$30,	nRst,	nRst,	nRst
	smpsJump	CNZBeta_Jump02

; FM3 Data
CNZBeta_FM3:
	smpsFMvoice	$01
	smpsModSet	$02,	$04,	$04,	$02
	smpsPan		panRight,	$00
	dc.b		nRst,	$30,	nRst
CNZBeta_Jump03:
	dc.b		nRst,	$18,	nEb5,	nRst,	nEb5,	nRst,	nEb5,	nRst
	dc.b		nEb5,	nRst,	nD5,	$0C,	nRst,	nD5,	$10,	$08
	dc.b		nRst,	$10,	$08,	nRst,	$30,	nRst,	nRst,	$18
	dc.b		nE4,	$08,	nRst,	$20,	nE4,	$08,	nRst,	$18
	dc.b		nE4,	nRst,	$10,	$08,	nRst,	$18,	nE4,	$10
	dc.b		$08,	nRst,	$18,	$08,	nRst,	$20,	nE4,	$08
	dc.b		nRst,	$18,	nE4,	nRst,	$10,	$08,	nRst,	$18
	dc.b		nE4,	$10,	$08,	nRst,	$18,	$08,	nRst,	$20
	dc.b		nE4,	$08,	nRst,	$18,	nE4,	nRst,	$10,	$08
	dc.b		nRst,	$18,	nE4,	$10,	$08,	nRst,	$18,	nEb4
	dc.b		$08,	nRst,	$20,	nEb4,	$08,	nRst,	$18,	nEb4
	dc.b		nRst,	$10,	$18,	nRst,	$08,	nEb4,	$10,	$08
	dc.b		nRst,	$18,	nE4,	$08,	nRst,	$20,	nE4,	$08
	dc.b		nRst,	$18,	nE4,	nRst,	$10,	$20,	$18,	nRst
	dc.b		$18,	$08,	nRst,	$20,	nE4,	$08,	nRst,	$18
	dc.b		nA4,	nRst,	$10,	$08,	nRst,	$18,	nA4,	$10
	dc.b		$08,	nRst,	$18,	nE4,	nRst,	nE4,	nRst,	nF4
	dc.b		nRst,	nF4,	nEb4,	$30,	$18,	nRst,	$10,	nG4
	dc.b		$08,	nRst,	$30,	nRst,	nRst,	$18,	nE4,	$08
	dc.b		nRst
	smpsFMvoice	$02
	dc.b		nC5,	nRst,	$10
	smpsFMvoice	$01
	dc.b		nE4,	$08
	smpsFMvoice	$02
	dc.b		nRst,	$10,	nC5,	$08
	smpsFMvoice	$01
	dc.b		nE4,	nRst
	smpsFMvoice	$02
	dc.b		nC5,	nD5,	$10,	nC5,	$08
	smpsFMvoice	$01
	dc.b		nE4,	nRst,	$10,	nE4,	nE4,	$08,	nRst,	$18
	dc.b		$08,	nRst,	$08
	smpsFMvoice	$02
	dc.b		nB4,	$18
	smpsFMvoice	$01
	dc.b		nE4,	$08,	nRst,	$10
	smpsFMvoice	$02
	dc.b		nB4,	$08
	smpsFMvoice	$01
	dc.b		nE4,	$10
	smpsFMvoice	$02
	dc.b		nB4,	$08,	nC5,	$10,	nB4,	$08
	smpsFMvoice	$01
	dc.b		nE4,	nRst,	$10,	nE4,	nE4,	$08
	smpsFMvoice	$02
	dc.b		nA4,	$10,	$08
	smpsFMvoice	$01
	dc.b		nE4,	nRst
	smpsFMvoice	$02
	dc.b		nA4,	nA4,	$10
	smpsFMvoice	$01
	dc.b		nE4,	$08,	nRst,	$18,	$10
	smpsFMvoice	$02
	dc.b		nA4,	$08,	nB4,	$10,	nA4,	$08
	smpsFMvoice	$01
	dc.b		nE4,	nRst,	$10,	nE4,	nE4,	$08
	smpsFMvoice	$02
	dc.b		nAb4,	$10,	$08
	smpsFMvoice	$01
	dc.b		nEb4,	nRst,	$20
	smpsFMvoice	$02
	dc.b		nAb4,	$08
	smpsFMvoice	$01
	dc.b		nEb4,	nRst
	smpsFMvoice	$02
	dc.b		nAb4
	smpsFMvoice	$01
	dc.b		nEb4,	nRst
	smpsFMvoice	$02
	dc.b		nAb4
	smpsFMvoice	$01
	dc.b		nEb4,	nRst
	smpsFMvoice	$02
	dc.b		nCs5
	smpsFMvoice	$01
	dc.b		nEb4,	nRst
	smpsFMvoice	$02
	dc.b		nD5
	smpsFMvoice	$01
	dc.b		nEb4,	nRst
	smpsFMvoice	$02
	dc.b		nEb5,	nC5,	$18
	smpsFMvoice	$01
	dc.b		nE4,	$08,	nRst
	smpsFMvoice	$02
	dc.b		nC5
	smpsFMvoice	$01
	dc.b		nE4,	nRst
	smpsFMvoice	$02
	dc.b		nC5,	$20,	nE4,	$18
	smpsFMvoice	$02
	dc.b		nB4,	$10
	smpsFMvoice	$01
	dc.b		nE4,	$18
	smpsFMvoice	$02
	dc.b		nC5,	$08
	smpsFMvoice	$01
	dc.b		nE4,	$10
	smpsFMvoice	$02
	dc.b		nB4,	$08,	nRst,	$10,	nA4,	$08
	smpsFMvoice	$01
	dc.b		nE4,	nRst
	smpsFMvoice	$02
	dc.b		nA4
	smpsFMvoice	$01
	dc.b		nE4,	nRst
	smpsFMvoice	$02
	dc.b		nA4,	nRst,	$10,	$08
	smpsFMvoice	$01
	dc.b		nA4,	nRst
	smpsFMvoice	$02
	dc.b		nA4
	smpsFMvoice	$01
	dc.b		nA4,	nRst
	smpsFMvoice	$02
	dc.b		nE5
	smpsFMvoice	$01
	dc.b		nA4,	nRst
	smpsFMvoice	$02
	dc.b		nC5
	smpsFMvoice	$01
	dc.b		nA4,	nRst
	smpsFMvoice	$02
	dc.b		nC5
	smpsFMvoice	$01
	dc.b		nRst,	$18,	nE4,	nRst,	nE4,	nRst,	nF4,	nRst
	dc.b		nF4,	nRst,	nE4,	nRst,	nE4,	nRst,	nF4,	nRst
	dc.b		nF4,	nRst,	nE5,	nRst,	nE5,	nRst,	nF5,	$30
	dc.b		$10,	nE5,	$08,	nRst,	$30,	nRst,	nRst,	nRst
	smpsJump	CNZBeta_Jump03

; FM4 Data
CNZBeta_FM4:
	dc.b		nRst,	$30,	nRst
	smpsModSet	$02,	$01,	$02,	$03
CNZBeta_Jump04:
	smpsFMvoice	$04
	smpsPan		panRight,	$00
	dc.b		nRst,	$18,	nEb5,	$30,	nC5,	$08,	nRst,	$10
	dc.b		nFs5,	nF5,	$08,	nRst,	$10,	nEb5,	$08,	nRst
	dc.b		$10,	nC5,	$20,	nRst,	$18,	nG4,	$08,	nRst
	dc.b		$10,	nBb4,	nAb4,	$08,	nRst,	$10,	nG4,	$08
	dc.b		nRst,	$30
	smpsPan		panCentre,	$00
	smpsModSet	$06,	$03,	$03,	$04
	dc.b		nE4,	$10,	nRst,	$08,	nE4,	$10,	nRst,	$08
	dc.b		nE4,	$30,	smpsNoAttack,	$30,	nRst,	$18,	nE4,	$10
	dc.b		nRst,	$08,	nF4,	$10,	nE4,	$20,	nAb4,	$10
	dc.b		$08,	nRst,	$10,	nE4,	$30,	smpsNoAttack,	$08,	smpsNoAttack
	dc.b		$30,	nRst,	$18,	nE4,	nA4,	$10,	$08,	nRst
	dc.b		$10,	nE4,	$08,	nC4,	$30,	smpsNoAttack,	nC4,	$18
	dc.b		nRst,	nC4,	$10,	nRst,	$08,	nD4,	$10,	nC4
	dc.b		$08,	nEb4,	$18,	nD4,	$10,	nC4,	$30,	smpsNoAttack
	dc.b		$08,	smpsNoAttack,	$30,	smpsNoAttack,	$18,	nRst,	$18,	nRst
	dc.b		$18,	nE4,	$0C,	nRst,	nF4,	nRst,	nE4,	nRst
	dc.b		nAb4,	$10,	$08,	nRst,	$10,	nE4,	$30,	smpsNoAttack
	dc.b		$08,	nRst,	$18,	nA4,	$30,	nB4,	$10,	nA4
	dc.b		$08,	nC5,	$30,	nRst,	$18,	nA4,	nG4,	$30
	dc.b		nE4,	nC4,	nD4,	nEb4,	nF4,	$10,	nEb4,	$08
	dc.b		nF4,	$10,	nG4,	$08
	smpsFMvoice	$03
	smpsAlterPitch	$0C
	smpsModSet	$02,	$04,	$02,	$02
	dc.b		nRst,	$30,	nRst,	$10,	nG3,	$08,	nA3,	$10
	dc.b		nC4,	$08,	nE4,	$30,	smpsNoAttack,	$30,	nRst,	$18
	dc.b		nE4,	$10,	nRst,	$08,	nF4,	$10,	nE4,	$20
	dc.b		nAb4,	$10,	$08,	nRst,	$10,	nE4,	$30,	smpsNoAttack
	dc.b		$08,	smpsNoAttack,	$30,	nRst,	$18,	nE4,	nA4,	$10
	dc.b		$08,	nRst,	$10,	nE4,	$08,	nC4,	$30,	smpsNoAttack
	dc.b		nC4,	$18,	nRst,	nC4,	$10,	nRst,	$08,	nD4
	dc.b		$10,	nC4,	$08,	nEb4,	$18,	nD4,	$10,	nC4
	dc.b		$30,	smpsNoAttack,	$08,	smpsNoAttack,	$30,	smpsNoAttack,	$18,	nRst
	dc.b		$18,	nRst,	$18,	nE4,	$0C,	nRst,	nF4,	nRst
	dc.b		nE4,	nRst,	nAb4,	$10,	$08,	nRst,	$10,	nE4
	dc.b		$30,	smpsNoAttack,	$08,	nRst,	$18,	nA4,	$30,	nB4
	dc.b		$10,	nA4,	$08,	nC5,	$30,	nRst,	$18,	nA4
	dc.b		$08,	nRst,	$10,	nG4,	$30,	nE4,	nC4,	nD4
	dc.b		$18,	nA4,	$08,	nRst,	$10,	nG4,	$30,	nE4
	dc.b		nC4,	nD4,	$18,	nA4,	$08,	nRst,	$10,	nG4
	dc.b		$30,	nE4,	nC4,	nD4,	$28,	nC4,	$08,	nRst
	dc.b		$30,	nRst,	nRst,	nRst
	smpsAlterPitch	$F4
	smpsJump	CNZBeta_Jump04

; FM5 Data
CNZBeta_FM5:
	dc.b		nRst,	$30,	nRst
	smpsFMvoice	$02
	smpsModSet	$02,	$04,	$04,	$04
	smpsPan		panLeft,	$00
CNZBeta_Jump05:
	dc.b		nRst,	$18,	nC5,	$30,	nG4,	$08,	nRst,	$10
	dc.b		nD5,	nD5,	$08,	nRst,	$10,	nC5,	$08,	nRst
	dc.b		$10,	nG4,	$20,	nRst,	$18,	nD4,	$08,	nRst
	dc.b		$10,	nF4,	nEb4,	$08,	nRst,	$10,	nD4,	$08
	dc.b		nRst,	$30
	smpsFMvoice	$04
	smpsModSet	$06,	$04,	$03,	$04
	dc.b		nA3,	$10,	nRst,	$08,	nB3,	$10,	nRst,	$08
	dc.b		nC4,	$30,	smpsNoAttack,	$30,	nRst,	$18,	nC4,	$10
	dc.b		nRst,	$08,	nD4,	$10,	nC4,	$20,	nE4,	$10
	dc.b		nF4,	$08,	nRst,	$10,	nB3,	$30,	smpsNoAttack,	$08
	dc.b		smpsNoAttack,	$30,	nRst,	$18,	nC4,	nE4,	$10,	$08
	dc.b		nRst,	$10,	nC4,	$08,	nG3,	$30,	smpsNoAttack,	nG3
	dc.b		$18,	nRst,	nA3,	$10,	nRst,	$08,	nA3,	$10
	dc.b		$08,	nC4,	$18,	nBb3,	$10,	nAb3,	$30,	smpsNoAttack
	dc.b		$08,	smpsNoAttack,	$30,	smpsNoAttack,	$18,	nRst,	$18,	nRst
	dc.b		$18,	nC4,	$0C,	nRst,	nD4,	nRst,	nC4,	nRst
	dc.b		nF4,	$10,	nE4,	$08,	nRst,	$10,	nB3,	$30
	dc.b		smpsNoAttack,	$08,	nRst,	$18,	nE4,	$30,	nG4,	$10
	dc.b		nE4,	$08,	nF4,	$30,	nRst,	$18,	nF4,	nE4
	dc.b		$30,	nC4,	nG3,	nB3,	nBb3,	nC4,	$10,	nBb3
	dc.b		$08,	nC4,	$10,	nD4,	$08
	smpsFMvoice	$03
	smpsAlterPitch	$0C
	smpsModSet	$02,	$04,	$02,	$04
	dc.b		nRst,	$30,	nRst,	$10,	nD3,	$08,	nE3,	$10
	dc.b		nG3,	$08,	nC4,	$30,	smpsNoAttack,	$30,	nRst,	$18
	dc.b		nC4,	$10,	nRst,	$08,	nD4,	$10,	nC4,	$20
	dc.b		nE4,	$10,	nF4,	$08,	nRst,	$10,	nB3,	$30
	dc.b		smpsNoAttack,	$08,	smpsNoAttack,	$30,	nRst,	$18,	nC4,	nE4
	dc.b		$10,	$08,	nRst,	$10,	nC4,	$08,	nG3,	$30
	dc.b		smpsNoAttack,	nG3,	$18,	nRst,	nA3,	$10,	nRst,	$08
	dc.b		$10,	$08,	nC4,	$18,	nBb3,	$10,	nAb3,	$30
	dc.b		smpsNoAttack,	$08,	smpsNoAttack,	$30,	smpsNoAttack,	$18,	nRst,	$18
	dc.b		nRst,	$18,	nC4,	$0C,	nRst,	nD4,	nRst,	nC4
	dc.b		nRst,	nF4,	$10,	nE4,	$08,	nRst,	$10,	nB3
	dc.b		$30,	smpsNoAttack,	$08,	nRst,	$18,	nE4,	$30,	nG4
	dc.b		$10,	nE4,	$08,	nF4,	$30,	nRst,	$18,	nF4
	dc.b		$08,	nRst,	$10,	nE4,	$30,	nC4,	nG3,	nB3
	dc.b		$18,	nF4,	$08,	nRst,	$10,	nE4,	$30,	nC4
	dc.b		nG3,	nA3,	$18,	nF5,	$08,	nRst,	$10,	nE5
	dc.b		$30,	nC5,	nG4,	nB4,	$28,	nC5,	$08,	nRst
	dc.b		$30,	nRst,	nRst,	nRst
	smpsAlterPitch	$F4
	smpsJump	CNZBeta_Jump05

; PSG3 Data
CNZBeta_PSG3:
	smpsPSGform	$E7
	dc.b		nRst,	$30,	nRst
CNZBeta_Loop01:
	smpsPSGvoice	$02
	dc.b		nA5,	$10,	$08
	smpsPSGvoice	$01
	dc.b		nA5,	$18
	smpsLoop	$00,	$06,	CNZBeta_Loop01
	smpsPSGvoice	$01
	dc.b		nA5,	$30,	$18,	$18
CNZBeta_Loop02:
	smpsPSGvoice	$01
	dc.b		nA5,	$18
	smpsPSGvoice	$02
	dc.b		nA5,	$10,	$08
	smpsLoop	$00,	$44,	CNZBeta_Loop02
	dc.b		nRst,	$30,	nRst,	nRst,	$30,	nRst
	smpsJump	CNZBeta_Loop01

; DAC Data
CNZBeta_DAC:
	dc.b		dSnare,	$10,	dKick,	$18,	$08,	dSnare,	$10,	dKick
	dc.b		$08,	dSnare,	dSnare,	dSnare
CNZBeta_Jump06:
	dc.b		dKick,	$18,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dMidTom,	$08,	dMidTom,	dMidTom,	dLowTom,	dLowTom
	dc.b		dVLowTom,	dSnare,	$10,	dKick,	$08,	$10,	dSnare,	$08
	dc.b		$10,	dKick,	$18,	dKick,	dKick,	$08
CNZBeta_Loop03:
	dc.b		dKick,	$18,	dSnare,	$10,	dKick,	$08,	$10,	dSnare
	dc.b		$18,	dKick,	$08,	$18,	dSnare,	$10,	dKick,	$08
	dc.b		$10,	dMidTom,	$08,	dLowTom,	$18
	smpsLoop	$00,	$05,	CNZBeta_Loop03
	dc.b		dKick,	$18,	dSnare,	$10,	dKick,	$08,	$10,	dSnare
	dc.b		$18,	dKick,	$08,	$10,	dSnare,	$18,	$08,	$10
	dc.b		$08,	dSnare,	dSnare,	dSnare,	dKick,	$18,	dSnare,	dKick
	dc.b		dSnare,	$08,	dSnare,	dSnare,	dKick,	$10,	dSnare,	$08
	dc.b		$18,	dKick,	dSnare,	$08,	dLowTom,	dVLowTom,	dKick,	dKick
	dc.b		dSnare,	dKick,	$10,	dSnare,	$08,	dKick,	$10,	dSnare
	dc.b		$08,	dMidTom,	dLowTom,	dVLowTom,	dKick,	$10,	$08,	dSnare
	dc.b		$18,	dMidTom,	$08,	dLowTom,	dVLowTom,	dMidTom,	dLowTom,	dVLowTom
CNZBeta_Loop04:
	dc.b		dKick,	$18,	dSnare,	$10,	dKick,	$08,	$10,	dSnare
	dc.b		$18,	dKick,	$08,	$18,	dSnare,	$10,	dKick,	$08
	dc.b		$10,	dMidTom,	$08,	dLowTom,	$18
	smpsLoop	$00,	$03,	CNZBeta_Loop04
	dc.b		dKick,	$18,	dSnare,	$10,	dKick,	$08,	$10,	dSnare
	dc.b		$18,	dKick,	$08,	$10,	dSnare,	$08,	dSnare,	dSnare
	dc.b		dSnare,	dKick,	dSnare,	dSnare,	dSnare,	$10,	$08,	dKick
	dc.b		$18,	dSnare,	$10,	dKick,	$08,	$10,	dSnare,	$18
	dc.b		dKick,	$08,	$18,	dSnare,	$10,	dKick,	$08,	$10
	dc.b		dMidTom,	$08,	dLowTom,	$18,	dKick,	dSnare,	$10,	dKick
	dc.b		$08,	$10,	dSnare,	$18,	dKick,	$08,	$10,	dSnare
	dc.b		$08,	$10,	$08,	dKick,	dSnare,	dSnare,	dSnare,	dSnare
	dc.b		dSnare
CNZBeta_Loop05:
	dc.b		dKick,	$18,	dSnare,	dKick,	dSnare,	$10,	$08,	dKick
	dc.b		$18,	dSnare,	dKick,	$10,	dSnare,	$18,	$08
	smpsLoop	$00,	$02,	CNZBeta_Loop05
	dc.b		dKick,	$18,	dSnare,	dKick,	dSnare,	$10,	$08,	dKick
	dc.b		$10,	$08,	dMidTom,	dLowTom,	dVLowTom,	dSnare,	dSnare,	dSnare
	dc.b		dSnare,	dSnare,	dSnare,	dKick,	dSnare,	dSnare,	dSnare,	dKick
	dc.b		dSnare,	dSnare,	dSnare,	dKick,	dSnare,	dSnare,	dSnare,	nRst
	dc.b		$30,	nRst
	smpsJump	CNZBeta_Jump06

; PSG1 Data
CNZBeta_PSG1:
	dc.b		nRst,	$30,	nRst
	smpsModSet	$02,	$04,	$01,	$02
CNZBeta_Jump07:
	smpsPSGvoice	$01
	dc.b		nRst,	$18,	nEb5,	$30,	nC5,	$08,	nRst,	$10
	dc.b		nFs5,	nF5,	$08,	nRst,	$10,	nEb5,	$08,	nRst
	dc.b		$10,	nC5,	$20,	nRst,	$18,	nG4,	$08,	nRst
	dc.b		$10,	nBb4,	nAb4,	$08,	nRst,	$10,	nG4,	$08
	smpsAlterVol	$02
	smpsPSGvoice	$0A
	dc.b		nRst,	$03,	nRst,	$30
	smpsModSet	$02,	$02,	$01,	$02
	dc.b		nE4,	$10,	nRst,	$08,	nE4,	$10,	nRst,	$08
	dc.b		nE4,	$30,	smpsNoAttack,	$30,	nRst,	$18,	nE4,	$10
	dc.b		nRst,	$08,	nF4,	$10,	nE4,	$20,	nAb4,	$10
	dc.b		$08,	nRst,	$10,	nE4,	$30,	smpsNoAttack,	$08,	smpsNoAttack
	dc.b		$30,	nRst,	$18,	nE4,	nA4,	$10,	$08,	nRst
	dc.b		$10,	nE4,	$08,	nC4,	$30,	smpsNoAttack,	nC4,	$18
	dc.b		nRst,	nC4,	$10,	nRst,	$08,	nD4,	$10,	nC4
	dc.b		$08,	nEb4,	$18,	nD4,	$10,	nC4,	$30,	smpsNoAttack
	dc.b		$08,	smpsNoAttack,	$30,	smpsNoAttack,	$18,	nRst,	$18,	nRst
	dc.b		$18,	nE4,	$0C,	nRst,	nF4,	nRst,	nE4,	nRst
	dc.b		nAb4,	$10,	$08,	nRst,	$10,	nE4,	$30,	smpsNoAttack
	dc.b		$08,	nRst,	$18,	nA4,	$30,	nB4,	$10,	nA4
	dc.b		$08,	nC5,	$30,	nRst,	$18,	nA4,	nG4,	$30
	dc.b		nE4,	nC4,	nD4,	nEb4,	nF4,	$10,	nEb4,	$08
	dc.b		nF4,	$10,	nG4,	$08
	smpsAlterPitch	$0C
	dc.b		nRst,	$30,	nRst,	$10,	nG3,	$08,	nA3,	$10
	dc.b		nC4,	$08,	nE4,	$30,	smpsNoAttack,	$30,	nRst,	$18
	dc.b		nE4,	$10,	nRst,	$08,	nF4,	$10,	nE4,	$20
	dc.b		nAb4,	$10,	$08,	nRst,	$10,	nE4,	$30,	smpsNoAttack
	dc.b		$08,	smpsNoAttack,	$30,	nRst,	$18,	nE4,	nA4,	$10
	dc.b		$08,	nRst,	$10,	nE4,	$08,	nC4,	$30,	smpsNoAttack
	dc.b		nC4,	$18,	nRst,	nC4,	$10,	nRst,	$08,	nD4
	dc.b		$10,	nC4,	$08,	nEb4,	$18,	nD4,	$10,	nC4
	dc.b		$30,	smpsNoAttack,	$08,	smpsNoAttack,	$30,	smpsNoAttack,	$18,	nRst
	dc.b		$18,	nRst,	$18,	nE4,	$0C,	nRst,	nF4,	nRst
	dc.b		nE4,	nRst,	nAb4,	$10,	$08,	nRst,	$10,	nE4
	dc.b		$30,	smpsNoAttack,	$08,	nRst,	$18,	nA4,	$30,	nB4
	dc.b		$10,	nA4,	$08,	nC5,	$30,	nRst,	$18,	nA4
	dc.b		$08,	nRst,	$10,	nG4,	$30,	nE4,	nC4,	nD4
	dc.b		$18
	smpsAlterVol	$04
	dc.b		nA4,	$08,	nRst,	$10,	nG4,	$30,	nE4,	nC4
	dc.b		nD4,	$18
	smpsAlterVol	$FC
	dc.b		nA4,	$08,	nRst,	$10,	nG4,	$30,	nE4,	nC4
	dc.b		nD4,	$28,	nC4,	$08,	nRst,	$30,	nRst,	nRst
	dc.b		nRst,	$2D
	smpsAlterPitch	$F4
	smpsAlterVol	$FE
	smpsJump	CNZBeta_Jump07

; PSG2 Data
CNZBeta_PSG2:
	dc.b		nRst,	$30,	nRst
	smpsModSet	$02,	$05,	$01,	$02
	smpsPSGvoice	$01
CNZBeta_Jump08:
	smpsPSGvoice	$01
	dc.b		nRst,	$18,	nC5,	$30,	nG4,	$08,	nRst,	$10
	dc.b		nD5,	nD5,	$08,	nRst,	$10,	nC5,	$08,	nRst
	dc.b		$10,	nG4,	$20,	nRst,	$18,	nD4,	$08,	nRst
	dc.b		$10,	nF4,	nEb4,	$08,	nRst,	$10,	nD4,	$08
	smpsPSGvoice	$0A
	smpsAlterVol	$02
	dc.b		nRst,	$03,	nRst,	$30
	smpsModSet	$02,	$02,	$01,	$02
	dc.b		nA3,	$10,	nRst,	$08,	nB3,	$10,	nRst,	$08
	dc.b		nC4,	$30,	smpsNoAttack,	$30,	nRst,	$18,	nC4,	$10
	dc.b		nRst,	$08,	nD4,	$10,	nC4,	$20,	nE4,	$10
	dc.b		nF4,	$08,	nRst,	$10,	nB3,	$30,	smpsNoAttack,	$08
	dc.b		smpsNoAttack,	$30,	nRst,	$18,	nC4,	nE4,	$10,	$08
	dc.b		nRst,	$10,	nC4,	$08,	nG3,	$30,	smpsNoAttack,	nG3
	dc.b		$18,	nRst,	nA3,	$10,	nRst,	$08,	nA3,	$10
	dc.b		$08,	nC4,	$18,	nBb3,	$10,	nAb3,	$30,	smpsNoAttack
	dc.b		$08,	smpsNoAttack,	$30,	smpsNoAttack,	$18,	nRst,	$18,	nRst
	dc.b		$18,	nC4,	$0C,	nRst,	nD4,	nRst,	nC4,	nRst
	dc.b		nF4,	$10,	nE4,	$08,	nRst,	$10,	nB3,	$30
	dc.b		smpsNoAttack,	$08,	nRst,	$18,	nE4,	$30,	nG4,	$10
	dc.b		nE4,	$08,	nF4,	$30,	nRst,	$18,	nF4,	nE4
	dc.b		$30,	nC4,	nG3,	nB3,	nBb3,	nC4,	$10,	nBb3
	dc.b		$08,	nC4,	$10,	nD4,	$08
	smpsAlterPitch	$0C
	dc.b		nRst,	$30,	nRst,	$10,	nD3,	$08,	nE3,	$10
	dc.b		nG3,	$08,	nC4,	$30,	smpsNoAttack,	$30,	nRst,	$18
	dc.b		nC4,	$10,	nRst,	$08,	nD4,	$10,	nC4,	$20
	dc.b		nE4,	$10,	nF4,	$08,	nRst,	$10,	nB3,	$30
	dc.b		smpsNoAttack,	$08,	smpsNoAttack,	$30,	nRst,	$18,	nC4,	nE4
	dc.b		$10,	$08,	nRst,	$10,	nC4,	$08,	nG3,	$30
	dc.b		smpsNoAttack,	nG3,	$18,	nRst,	nA3,	$10,	nRst,	$08
	dc.b		$10,	$08,	nC4,	$18,	nBb3,	$10,	nAb3,	$30
	dc.b		smpsNoAttack,	$08,	smpsNoAttack,	$30,	smpsNoAttack,	$18,	nRst,	$18
	dc.b		nRst,	$18,	nC4,	$0C,	nRst,	nD4,	nRst,	nC4
	dc.b		nRst,	nF4,	$10,	nE4,	$08,	nRst,	$10,	nB3
	dc.b		$30,	smpsNoAttack,	$08,	nRst,	$18,	nE4,	$30,	nG4
	dc.b		$10,	nE4,	$08,	nF4,	$30,	nRst,	$18,	nF4
	dc.b		$08,	nRst,	$10,	nE4,	$30,	nC4,	nG3,	nB3
	dc.b		$18
	smpsAlterVol	$04
	dc.b		nF4,	$08,	nRst,	$10,	nE4,	$30,	nC4,	nG3
	dc.b		nA3,	$18
	smpsAlterVol	$FC
	dc.b		nF5,	$08,	nRst,	$10,	nE5,	$30,	nC5,	nG4
	dc.b		nB4,	$28,	nC5,	$08,	nRst,	$30,	nRst,	nRst
	dc.b		nRst,	$2D
	smpsAlterPitch	$F4
	smpsAlterVol	$FE
	smpsJump	CNZBeta_Jump08

CNZBeta_Voices:
	dc.b		$35,$10,$51,$00,$11,$5F,$5F,$5F,$5F,$0E,$1F,$1F,$1F,$00,$00,$00
	dc.b		$00,$46,$07,$07,$07,$1A,$80,$8A,$80;			Voice 00
	dc.b		$34,$33,$41,$7E,$74,$9B,$5F,$1F,$1F,$04,$0A,$07,$08,$00,$00,$00
	dc.b		$00,$F9,$F7,$EC,$FD,$21,$80,$33,$8F;			Voice 01
	dc.b		$3C,$01,$02,$0F,$04,$8D,$52,$9F,$1F,$09,$00,$00,$0D,$00,$00,$00
	dc.b		$00,$23,$08,$02,$F7,$15,$80,$1D,$87;			Voice 02
	dc.b		$04,$30,$01,$30,$01,$07,$1E,$1A,$1F,$00,$0F,$00,$0F,$00,$00,$00
	dc.b		$00,$1F,$1B,$1F,$18,$2C,$80,$1A,$80;			Voice 03
	dc.b		$3D,$01,$02,$02,$02,$10,$50,$50,$50,$07,$08,$08,$08,$01,$00,$00
	dc.b		$00,$24,$18,$18,$18,$1C,$89,$89,$89;			Voice 04
	even
