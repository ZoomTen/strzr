; =============================================================================================
; Project Name:		Doomsday
; Created:		24th January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Doomsday_Header:
	smpsHeaderVoice	Doomsday_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$0A

	smpsHeaderDAC	Doomsday_DAC
	smpsHeaderFM	Doomsday_FM1,	smpsPitch00,	$0E
	smpsHeaderFM	Doomsday_FM2,	smpsPitch00,	$0A
	smpsHeaderFM	Doomsday_FM3,	smpsPitch00,	$04
	smpsHeaderFM	Doomsday_FM4,	smpsPitch00,	$04
	smpsHeaderFM	Doomsday_FM5,	smpsPitch00,	$15
	smpsHeaderPSG	Doomsday_PSG1,	smpsPitch02lo,	$04,	$00
	smpsHeaderPSG	Doomsday_PSG2,	smpsPitch02lo,	$04,	$00
	smpsHeaderPSG	Doomsday_PSG3,	smpsPitch02lo,	$02,	$00

; FM1 Data
Doomsday_FM1:
	smpsFMvoice	$02
	smpsModSet	$0D,	$01,	$02,	$06
	dc.b		nRst,	$3C,	nCs5,	$04,	nD5,	nEb5,	nE5,	nF5
	dc.b		nFs5,	nG5,	nAb5,	nA5,	nBb5,	nB5,	nC6,	nCs6
	dc.b		nD6,	nEb6,	nE6,	nEb6,	nD6,	nCs6,	nC6,	nB5
	dc.b		nBb5,	nA5,	nAb5,	nG5,	nFs5,	nF5,	nE5,	nEb5
	dc.b		nD5,	nCs5,	nC5,	nB4,	nRst,	$48,	nCs6,	$04
	dc.b		nC6,	nB5,	nBb5,	nA5,	nAb5,	nG5,	nFs5,	nF5
	dc.b		nE5,	nEb5,	nD5,	nCs5,	nC5,	nB4,	nBb4,	nA4
	dc.b		nAb4,	nG4,	nAb4,	nA4,	nBb4,	nB4,	nC5,	nCs5
	dc.b		nD5,	nEb5,	nE5,	nF5,	nFs5,	nEb5,	$0C,	nFs5
	dc.b		nA5,	nD5,	nF5,	nAb5,	nCs5,	nE5,	nG5,	nC5
	dc.b		nEb5,	nFs5,	nB4,	nD5,	nF5,	$18,	nA5,	$3C
	dc.b		nBb5,	$0C,	nA5,	nG5,	$6C
Doomsday_Jump01:
	smpsFMvoice	$02
	dc.b		nRst,	$60,	nRst,	nRst,	nRst,	$30,	nA4,	$04
	dc.b		nBb4,	nB4,	nC5,	nCs5,	nD5,	nEb5,	nE5,	nF5
	dc.b		nFs5,	nG5,	nAb5,	nA5,	nBb5,	nA5,	nBb5,	nA5
	dc.b		nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5
	dc.b		nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5
	dc.b		nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5
	dc.b		nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5
	dc.b		nAb5,	nG5,	nFs5,	nF5,	nE5,	nEb5,	nD5,	nCs5
	dc.b		nC5,	nB4,	nBb4,	nRst,	$60,	nRst
	smpsFMvoice	$05
	dc.b		nE5,	$0C,	nA4,	nD5,	nG4,	$18,	nC5,	$0C
	dc.b		nF4,	$3C,	nE4,	$0C,	nF4,	nC5,	$24,	nE5
	dc.b		$0C,	nA4,	nD5,	nG4,	$18,	nC5,	$0C,	nF4
	dc.b		$3C,	nE4,	$0C,	nF4,	nE5,	$24,	nD5,	nC5
	dc.b		nEb5,	nD5,	nF5,	nE5,	$06,	nEb5,	nD5,	$27
	dc.b		nRst,	$7F,	smpsNoAttack,	nRst,	$1A,	nE5,	$0C,	nA4
	dc.b		nD5,	nG4,	$18,	nC5,	$0C,	nF4,	$3C,	nE4
	dc.b		$0C,	nF4,	nC5,	$24,	nE5,	$0C,	nA4,	nD5
	dc.b		nG4,	$18,	nC5,	$0C,	nF4,	$3C,	nE4,	$0C
	dc.b		nF4,	nE5,	$24,	nD5,	nC5,	nEb5,	nD5,	nF5
	dc.b		nE5,	$06,	nEb5,	nD5,	$27,	nRst,	$7F,	smpsNoAttack
	dc.b		nRst,	$1A,	nBb4,	$06,	nD5,	nF5,	nA5,	$0C
	dc.b		nG5,	$06,	nFs5,	nF5,	$30,	nC5,	$0C,	nEb5
	dc.b		$06,	nFs5,	nBb5,	$0C,	nA5,	$06,	nAb5,	nG5
	dc.b		$30,	nD5,	$0C,	nF5,	$06,	nAb5,	nC6,	$0C
	dc.b		nB5,	$06,	nBb5,	nA5,	$30,	nE5,	$0C,	nG5
	dc.b		$06,	nBb5,	nD6,	$0C,	nCs6,	$06,	nD6,	nE6
	dc.b		$7F,	smpsNoAttack,	nE6,	$47
	smpsJump	Doomsday_Jump01
	smpsStop

; FM2 Data
Doomsday_FM2:
	smpsFMvoice	$01
	smpsModSet	$0D,	$01,	$02,	$06
	dc.b		nC3,	$18,	nB2,	$24,	nB2,	$0C,	nBb2,	nA2
	dc.b		nAb2,	nG2,	nFs2,	nG2,	nAb2,	nA2,	nBb2,	nB2
	dc.b		nC3,	$18,	nB2,	$24,	nBb2,	nRst,	$0C,	nBb2
	dc.b		nA2,	nAb2,	nG2,	nFs2,	nF2,	nE2,	nEb3,	$24
	dc.b		nD3,	nCs3,	nC3,	nB2,	$30,	nBb2,	$54,	nA2
	dc.b		$6C
Doomsday_Loop01:
	dc.b		nD4,	$06,	nD3,	nD3,	nD3,	nF3,	nD3,	nD3
	dc.b		nD3,	nG3,	nD3,	nD3,	nD3,	nAb3,	nD3,	nD3
	dc.b		nD3,	nA3,	nD3,	nD3,	nD3,	nBb3,	nD3,	nD3
	dc.b		nD3,	nB3,	nD3,	nD3,	nD3,	nC4,	nD3,	nCs4
	dc.b		nD3
	smpsLoop	$00,	$06,	Doomsday_Loop01
	dc.b		nEb4,	$06,	nEb3,	nEb3,	nEb3,	nF3,	nEb3,	nEb3
	dc.b		nEb3,	nG3,	nEb3,	nEb3,	nEb3,	nAb3,	nEb3,	nEb3
	dc.b		nEb3,	nBb3,	nEb3,	nEb3,	nEb3,	nC4,	nEb3,	nEb3
	dc.b		nEb3,	nD4,	nEb3,	nEb3,	nEb3,	nEb4,	nEb3,	nF4
	dc.b		nEb3
Doomsday_Loop02:
	dc.b		nD4,	$06,	nD3,	nD3,	nD3,	nF3,	nD3,	nD3
	dc.b		nD3,	nG3,	nD3,	nD3,	nD3,	nAb3,	nD3,	nD3
	dc.b		nD3,	nA3,	nD3,	nD3,	nD3,	nBb3,	nD3,	nD3
	dc.b		nD3,	nB3,	nD3,	nD3,	nD3,	nC4,	nD3,	nCs4
	dc.b		nD3
	smpsLoop	$00,	$03,	Doomsday_Loop02
	dc.b		nEb4,	$06,	nEb3,	nEb3,	nEb3,	nF3,	nEb3,	nEb3
	dc.b		nEb3,	nG3,	nEb3,	nEb3,	nEb3,	nAb3,	nEb3,	nEb3
	dc.b		nEb3,	nBb3,	nEb3,	nEb3,	nEb3,	nC4,	nEb3,	nEb3
	dc.b		nEb3,	nD4,	nEb3,	nEb3,	nEb3,	nEb4,	nEb3,	nF4
	dc.b		nEb3,	nD4,	nD3,	nD3,	nD3,	nF3,	nD3,	nD3
	dc.b		nD3,	nG3,	nD3,	nD3,	nD3,	nAb3,	nD3,	nD3
	dc.b		nD3,	nA3,	nD3,	nD3,	nD3,	nBb3,	nD3,	nD3
	dc.b		nD3,	nB3,	nD3,	nD3,	nD3,	nC4,	nD3,	nCs4
	dc.b		nD3,	nBb3,	nBb3,	nBb3,	nBb3,	nBb3,	nF3,	nBb3
	dc.b		nB3,	$0C,	nB3,	$06,	nB3,	nB3,	nB3,	nF3
	dc.b		nB3,	nC3,	$0C,	nC3,	$06,	nC3,	nC3,	nC3
	dc.b		nFs3,	nC3,	nCs3,	$0C,	nCs3,	$06,	nCs3,	nCs3
	dc.b		nCs3,	nG3,	nCs3,	nD3,	$0C,	nD3,	$06,	nD3
	dc.b		nD3,	nD3,	nAb3,	nD3,	nEb3,	$0C,	nEb3,	$06
	dc.b		nEb3,	nEb3,	nEb3,	nA3,	nEb3,	nE3,	$0C,	nE3
	dc.b		$06,	nE3,	nE3,	nE3,	nBb3,	nE3,	nA3,	$0C
	dc.b		nA3,	$06,	nA3,	nA3,	nA3,	nE3,	nA3,	nA3
	dc.b		$0C,	nA3,	$06,	nA3,	nA3,	nA3,	nE3,	nA3
	dc.b		nA3,	$0C,	nA3,	$06,	nA3,	nA3,	nA3,	nE3
	dc.b		nA3,	nA3,	$0C,	nA3,	$06,	nA3,	nA3,	nA3
	dc.b		nE3,	nA3,	nA3
	smpsJump	Doomsday_Loop01
	smpsStop

; FM3 Data
Doomsday_FM3:
	smpsFMvoice	$00
	smpsModSet	$0D,	$01,	$02,	$06
	smpsPan		panRight,	$00
	dc.b		nRst,	$0C,	nEb5,	$06,	nRst,	nD5,	$7F,	smpsNoAttack
	dc.b		nD5,	$29,	nRst,	$0C,	nEb5,	$06,	nRst,	nD5
	dc.b		$24,	nCs5,	$7F,	smpsNoAttack,	nCs5,	$05,	nC5,	$24
	dc.b		nB4,	nBb4,	nA4,	nA4,	$30,	nA4,	$54,	nG4
	dc.b		$6C
Doomsday_Jump02:
	smpsFMvoice	$03
	dc.b		nF4,	$18,	nA3,	nBb3,	nB3,	nC4,	nCs4,	nD4
	dc.b		nEb4,	$0C,	nE4,	nF4,	$18,	nA3,	nBb3,	nB3
	dc.b		nC4,	nCs4,	nD4,	nEb4,	$0C,	nE4,	nF4,	$18
	dc.b		nA3,	nBb3,	nB3,	nC4,	nCs4,	nD4,	nEb4,	$0C
	dc.b		nE4,	nF4,	$18,	nA3,	nBb3,	nB3,	nC4,	nCs4
	dc.b		nD4,	nEb4,	$0C,	nE4,	nF4,	$18,	nA3,	nBb3
	dc.b		nB3,	nC4,	nCs4,	nD4,	nEb4,	$0C,	nE4,	nF4
	dc.b		$18,	nA3,	nBb3,	nB3,	nC4,	nCs4,	nD4,	nEb4
	dc.b		$0C,	nE4,	nG4,	$7F,	smpsNoAttack,	nG4,	$41,	nF4
	dc.b		$18,	nA3,	nBb3,	nB3,	nC4,	nCs4,	nD4,	nEb4
	dc.b		$0C,	nE4,	nF4,	$18,	nA3,	nBb3,	nB3,	nC4
	dc.b		nCs4,	nD4,	nEb4,	$0C,	nE4,	nF4,	$18,	nA3
	dc.b		nBb3,	nB3,	nC4,	nCs4,	nD4,	nEb4,	$0C,	nE4
	dc.b		nG4,	$7F,	smpsNoAttack,	nG4,	$41,	nF4,	$18,	nA3
	dc.b		nBb3,	nB3,	nC4,	nCs4,	nD4,	nEb4,	$0C,	nE4
	smpsFMvoice	$00
	dc.b		nF5,	$03,	nRst,	nF5,	nRst,	nF5,	nRst,	nF5
	dc.b		nRst,	nF5,	$06,	nRst,	nF5,	$03,	nRst,	nF5
	dc.b		$06,	nRst,	nF5,	$03,	nRst,	nF5,	nRst,	nF5
	dc.b		nRst,	nF5,	$06,	nRst,	nF5,	$03,	nRst,	nFs5
	dc.b		$0C,	nFs5,	$03,	nRst,	nFs5,	nRst,	nFs5,	nRst
	dc.b		nFs5,	$06,	nRst,	nFs5,	$03,	nRst,	nG5,	$06
	dc.b		nRst,	nG5,	$03,	nRst,	nG5,	nRst,	nG5,	nRst
	dc.b		nG5,	$06,	nRst,	nG5,	$03,	nRst,	nAb5,	$0C
	dc.b		nAb5,	$03,	nRst,	nAb5,	nRst,	nAb5,	nRst,	nAb5
	dc.b		$06,	nRst,	nAb5,	$03,	nRst,	nA5,	$06,	nRst
	dc.b		nA5,	$03,	nRst,	nA5,	nRst,	nA5,	nRst,	nA5
	dc.b		$06,	nRst,	nA5,	$03,	nRst,	nBb5,	$0C,	nBb5
	dc.b		$03,	nRst,	nBb5,	nRst,	nBb5,	nRst,	nBb5,	$06
	dc.b		nRst,	nBb5,	$03,	nRst,	nD6,	$06,	nRst,	nD6
	dc.b		$03,	nRst,	nD6,	nRst,	nD6,	nRst,	nD6,	$06
	dc.b		nRst,	nD6,	$03,	nRst,	nCs6,	$0C,	nCs6,	$03
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	$06,	nRst
	dc.b		nCs6,	$03,	nRst,	nD6,	$06,	nRst,	nD6,	$03
	dc.b		nRst,	nD6,	nRst,	nD6,	nRst,	nD6,	$06,	nRst
	dc.b		nD6,	$03,	nRst,	nCs6,	$0C,	nCs6,	$03,	nRst
	dc.b		nCs6,	nRst,	nCs6,	nRst,	nCs6,	$06,	nRst,	nCs6
	dc.b		$03,	nRst,	nCs6,	nRst
	smpsJump	Doomsday_Jump02
	smpsStop

; FM4 Data
Doomsday_FM4:
	smpsFMvoice	$00
	smpsModSet	$0D,	$01,	$02,	$06
	smpsPan		panLeft,	$00
	dc.b		nRst,	$0C,	nC5,	$06,	nRst,	nAb4,	$7F,	smpsNoAttack
	dc.b		nAb4,	$29,	nRst,	$0C,	nBb4,	$06,	nRst,	nAb4
	dc.b		$24,	nG4,	$7F,	smpsNoAttack,	nG4,	$05,	nA4,	$24
	dc.b		nAb4,	nG4,	nFs4,	nF4,	$30,	nF4,	$54,	nE4
	dc.b		$6C
Doomsday_Jump03:
	dc.b		nRst,	$60,	nRst,	nRst,	nRst,	nRst,	nRst
	smpsFMvoice	$04
	dc.b		nD6,	$0C,	nF6,	nAb6,	nCs6,	nE6,	nG6,	nC6
	dc.b		nEb6,	nFs6,	nB5,	nD6,	nF6,	nBb5,	nCs6,	nE6
	dc.b		nA5,	nRst,	$60,	nRst,	nRst,	nRst
	smpsFMvoice	$03
	dc.b		nBb3,	nEb5
	smpsFMvoice	$04
	dc.b		nD6,	$0C,	nF6,	nAb6,	nCs6,	nE6,	nG6,	nC6
	dc.b		nEb6,	nFs6,	nB5,	nD6,	nF6,	nBb5,	nCs6,	nE6
	dc.b		nA5,	nRst,	$60,	nRst,	nRst,	nRst
	smpsFMvoice	$03
	dc.b		nBb3,	$7F,	smpsNoAttack,	nBb3,	$41
	smpsFMvoice	$04
	dc.b		nD6,	$0C,	nF6,	nAb6,	nCs6,	nE6,	nG6,	nC6
	dc.b		nEb6,	nFs6,	nB5,	nD6,	nF6,	nBb5,	nCs6,	nE6
	dc.b		nA5
	smpsFMvoice	$00
	dc.b		nD5,	$03,	nRst,	nD5,	nRst,	nD5,	nRst,	nD5
	dc.b		nRst,	nD5,	$06,	nRst,	nD5,	$03,	nRst,	nD5
	dc.b		$06,	nRst,	nD5,	$03,	nRst,	nD5,	nRst,	nD5
	dc.b		nRst,	nD5,	$06,	nRst,	nD5,	$03,	nRst,	nEb5
	dc.b		$0C,	nEb5,	$03,	nRst,	nEb5,	nRst,	nEb5,	nRst
	dc.b		nEb5,	$06,	nRst,	nEb5,	$03,	nRst,	nE5,	$06
	dc.b		nRst,	nE5,	$03,	nRst,	nE5,	nRst,	nE5,	nRst
	dc.b		nE5,	$06,	nRst,	nE5,	$03,	nRst,	nF5,	$0C
	dc.b		nF5,	$03,	nRst,	nF5,	nRst,	nF5,	nRst,	nF5
	dc.b		$06,	nRst,	nF5,	$03,	nRst,	nFs5,	$06,	nRst
	dc.b		nFs5,	$03,	nRst,	nFs5,	nRst,	nFs5,	nRst,	nFs5
	dc.b		$06,	nRst,	nFs5,	$03,	nRst,	nG5,	$0C,	nG5
	dc.b		$03,	nRst,	nG5,	nRst,	nG5,	nRst,	nG5,	$06
	dc.b		nRst,	nG5,	$03,	nRst,	nG5,	$06,	nRst,	nG5
	dc.b		$03,	nRst,	nG5,	nRst,	nG5,	nRst,	nG5,	$06
	dc.b		nRst,	nG5,	$03,	nRst,	nG5,	$0C,	nG5,	$03
	dc.b		nRst,	nG5,	nRst,	nG5,	nRst,	nG5,	$06,	nRst
	dc.b		nG5,	$03,	nRst,	nG5,	$06,	nRst,	nG5,	$03
	dc.b		nRst,	nG5,	nRst,	nG5,	nRst,	nG5,	$06,	nRst
	dc.b		nG5,	$03,	nRst,	nG5,	$0C,	nG5,	$03,	nRst
	dc.b		nG5,	nRst,	nG5,	nRst,	nG5,	$06,	nRst,	nG5
	dc.b		$03,	nRst,	nG5,	nRst
	smpsJump	Doomsday_Jump03
	smpsStop

; FM5 Data
Doomsday_FM5:
	dc.b		nRst,	$0D
	smpsFMvoice	$02
	smpsModSet	$0D,	$01,	$02,	$06
	dc.b		nRst,	$3C,	nCs5,	$04,	nD5,	nEb5,	nE5,	nF5
	dc.b		nFs5,	nG5,	nAb5,	nA5,	nBb5,	nB5,	nC6,	nCs6
	dc.b		nD6,	nEb6,	nE6,	nEb6,	nD6,	nCs6,	nC6,	nB5
	dc.b		nBb5,	nA5,	nAb5,	nG5,	nFs5,	nF5,	nE5,	nEb5
	dc.b		nD5,	nCs5,	nC5,	nB4,	nRst,	$48,	nCs6,	$04
	dc.b		nC6,	nB5,	nBb5,	nA5,	nAb5,	nG5,	nFs5,	nF5
	dc.b		nE5,	nEb5,	nD5,	nCs5,	nC5,	nB4,	nBb4,	nA4
	dc.b		nAb4,	nG4,	nAb4,	nA4,	nBb4,	nB4,	nC5,	nCs5
	dc.b		nD5,	nEb5,	nE5,	nF5,	nFs5,	nEb5,	$0C,	nFs5
	dc.b		nA5,	nD5,	nF5,	nAb5,	nCs5,	nE5,	nG5,	nC5
	dc.b		nEb5,	nFs5,	nB4,	nD5,	nF5,	$18,	nA5,	$3C
	dc.b		nBb5,	$0C,	nA5,	nG5,	$6C
Doomsday_Jump04:
	smpsFMvoice	$02
	dc.b		nRst,	$60,	nRst,	nRst,	nRst,	$30,	nA4,	$04
	dc.b		nBb4,	nB4,	nC5,	nCs5,	nD5,	nEb5,	nE5,	nF5
	dc.b		nFs5,	nG5,	nAb5,	nA5,	nBb5,	nA5,	nBb5,	nA5
	dc.b		nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5
	dc.b		nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5
	dc.b		nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5
	dc.b		nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5,	nBb5,	nA5
	dc.b		nAb5,	nG5,	nFs5,	nF5,	nE5,	nEb5,	nD5,	nCs5
	dc.b		nC5,	nB4,	nBb4,	nRst,	$60,	nRst
	smpsFMvoice	$05
	dc.b		nE5,	$0C,	nA4,	nD5,	nG4,	$18,	nC5,	$0C
	dc.b		nF4,	$3C,	nE4,	$0C,	nF4,	nC5,	$24,	nE5
	dc.b		$0C,	nA4,	nD5,	nG4,	$18,	nC5,	$0C,	nF4
	dc.b		$3C,	nE4,	$0C,	nF4,	nE5,	$24,	nD5,	nC5
	dc.b		nEb5,	nD5,	nF5,	nE5,	$06,	nEb5,	nD5,	$27
	dc.b		nRst,	$7F,	smpsNoAttack,	nRst,	$1A,	nE5,	$0C,	nA4
	dc.b		nD5,	nG4,	$18,	nC5,	$0C,	nF4,	$3C,	nE4
	dc.b		$0C,	nF4,	nC5,	$24,	nE5,	$0C,	nA4,	nD5
	dc.b		nG4,	$18,	nC5,	$0C,	nF4,	$3C,	nE4,	$0C
	dc.b		nF4,	nE5,	$24,	nD5,	nC5,	nEb5,	nD5,	nF5
	dc.b		nE5,	$06,	nEb5,	nD5,	$27,	nRst,	$7F,	smpsNoAttack
	dc.b		nRst,	$1A,	nBb4,	$06,	nD5,	nF5,	nA5,	$0C
	dc.b		nG5,	$06,	nFs5,	nF5,	$30,	nC5,	$0C,	nEb5
	dc.b		$06,	nFs5,	nBb5,	$0C,	nA5,	$06,	nAb5,	nG5
	dc.b		$30,	nD5,	$0C,	nF5,	$06,	nAb5,	nC6,	$0C
	dc.b		nB5,	$06,	nBb5,	nA5,	$30,	nE5,	$0C,	nG5
	dc.b		$06,	nBb5,	nD6,	$0C,	nCs6,	$06,	nD6,	nE6
	dc.b		$7F,	smpsNoAttack,	nE6,	$47
	smpsJump	Doomsday_Jump04
	smpsStop

; DAC Data
Doomsday_DAC:
	dc.b		dKick,	$18,	dSnare,	$24,	dKick,	$0C,	dSnare,	$18
	dc.b		nRst,	$0C,	dKick,	dSnare,	$18,	dKick,	$0C,	dKick
	dc.b		dSnare,	$18,	dKick,	dSnare,	$24,	dKick,	$0C,	dSnare
	dc.b		$18,	nRst,	$0C,	dKick,	dSnare,	$18,	dKick,	$0C
	dc.b		dKick,	dSnare,	$06,	dKick,	$12,	dKick,	$18,	dSnare
	dc.b		$0C,	dKick,	$18,	dKick,	$0C,	dSnare,	$06,	dKick
	dc.b		$12,	nRst,	$0C,	dKick,	dSnare,	dKick,	$06,	dKick
	dc.b		dSnare,	$0C,	dKick,	dSnare,	$06,	dKick,	$0C,	dKick
	dc.b		$06,	dKick,	$0C,	dKick,	dSnare,	dKick,	dKick,	dKick
	dc.b		dSnare,	dKick,	nRst,	dKick,	dSnare,	dKick,	dKick,	$06
	dc.b		dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare

Doomsday_Loop03:
	dc.b		dCrash,	$0C,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C
@X:
	dc.b		dKick,	$0C,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	smpsLoop	$00,	$06,	@X
	dc.b		dKick,	$0C,	dSnare,	dKick,	dSnare,	dKick,	$06,	dSnare
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dSnare
Doomsday_Loop04:
	dc.b		dCrash,	$0C,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C
@X:
	dc.b		dKick,	$0C,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	smpsLoop	$00,	$06,	@X
	dc.b		dKick,	$0C,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	dSnare
Doomsday_Loop05:
	dc.b		dCrash,	$0C,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C
@X:
	dc.b		dKick,	$0C,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$06
	dc.b		dKick,	$0C,	dKick,	$06,	dSnare,	$0C
	smpsLoop	$00,	$06,	@X
	dc.b		dKick,	$0C,	dSnare,	dKick,	dSnare,	$06,	dKick,	dSnare
	dc.b		dSnare,	dKick,	dKick,	dSnare,	dKick,	dSnare,	dSnare
	dc.b		dCrash
	dc.b		$0C,	dSnare,	dKick,	dSnare,	$06,	dKick,	$0C,	dKick
	dc.b		$06,	dSnare,	$0C,	dKick,	dSnare,	$06,	dKick,	$12
	dc.b		dSnare,	$0C,	dKick,	dSnare,	$06,	dKick,	$0C,	dKick
	dc.b		$06,	dSnare,	$0C,	dKick,	dSnare,	$06,	dKick,	$12
	dc.b		dSnare,	$0C,	dKick,	dSnare,	$06,	dKick,	$0C,	dKick
	dc.b		$06,	dSnare,	$0C,	dKick,	dSnare,	$06,	dKick,	$12
	dc.b		dSnare,	$0C,	dKick,	dSnare,	$06,	dKick,	$0C,	dKick
	dc.b		$06,	dSnare,	$0C,	dKick,	dSnare,	$06,	dKick,	$12
	dc.b		dSnare,	$0C,	dKick,	$06,	dSnare,	dSnare,	dKick,	$0C
	dc.b		dKick,	$06,	dSnare,	$0C,	dKick,	dSnare,	$06,	dKick
	dc.b		$0C,	dSnare,	$06,	dSnare,	dSnare,	dSnare,	dSnare,	dSnare
	dc.b		dSnare
	smpsJump	Doomsday_Loop03
	smpsStop

; PSG1 Data
Doomsday_PSG1:
	dc.b		nCs0,	$0D,	$01,	$02,	$06
Doomsday_Loop06:
	dc.b		nRst,	$60
	smpsLoop	$00,	$04,	Doomsday_Loop06
Doomsday_Loop07:
	dc.b		nCs0,	$06,	nCs0,	nCs0
	smpsLoop	$00,	$0F,	Doomsday_Loop07
	dc.b		nCs0,	$06
Doomsday_Loop08:
	dc.b		nCs0,	$06,	nCs0,	nCs0
	smpsLoop	$00,	$06,	Doomsday_Loop08
Doomsday_Loop09:
	dc.b		nRst,	$60
	smpsLoop	$00,	$18,	Doomsday_Loop09
	dc.b		nCs0,	$06,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nRst,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	nRst,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0,	nCs0
	dc.b		nCs0
	smpsJump	Doomsday_Loop09
	smpsStop

; PSG2 Data
Doomsday_PSG2:
	dc.b		nCs0,	$0D,	$01,	$02,	$06,	nRst,	$0C,	nCs0
	dc.b		$06,	nRst,	nCs0,	$7F,	nCs0,	nCs0,	$29,	nRst
	dc.b		$0C,	nCs0,	$06,	nRst,	nCs0,	$24,	nCs0,	$7F
	dc.b		nCs0,	nCs0,	$05,	nCs0,	$24,	nCs0,	nCs0,	nCs0
	dc.b		nCs0,	$30,	nCs0,	$54,	nCs0,	$6C
Doomsday_Loop0A:
	dc.b		nRst,	$60
	smpsLoop	$00,	$1C,	Doomsday_Loop0A
	dc.b		nRst,	$60,	nRst,	$30
	smpsJump	Doomsday_Loop0A
	smpsStop
	smpsStop

; PSG3 Data
Doomsday_PSG3:
	smpsStop

Doomsday_Voices:
	dc.b		$3D,$41,$10,$72,$61,$12,$17,$56,$17,$04,$06,$06,$03,$00,$0F,$00
	dc.b		$00,$1F,$3F,$5F,$1F,$1A,$88,$8B,$8B;			Voice 00
	dc.b		$2D,$01,$54,$30,$01,$1F,$1F,$1F,$1F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$2F,$2F,$2F,$2F,$0E,$8B,$86,$86;			Voice 01
	dc.b		$04,$23,$00,$52,$00,$18,$12,$1A,$12,$08,$05,$0C,$09,$00,$00,$00
	dc.b		$00,$FF,$FF,$FF,$FF,$16,$86,$28,$89;			Voice 02
	dc.b		$12,$22,$30,$50,$71,$0E,$12,$11,$1A,$00,$00,$00,$00,$00,$00,$00
	dc.b		$00,$FF,$FF,$FF,$FF,$1A,$17,$17,$86;			Voice 03
	dc.b		$04,$17,$03,$06,$74,$5F,$5F,$5F,$5F,$00,$08,$00,$00,$00,$00,$00
	dc.b		$0A,$0F,$FF,$0F,$0F,$1C,$89,$23,$88;			Voice 04
	dc.b		$05,$71,$41,$40,$72,$12,$17,$16,$1A,$00,$00,$00,$00,$0C,$13,$0C
	dc.b		$0B,$FF,$FF,$FF,$FF,$10,$8A,$87,$85;			Voice 05
	dc.b		$BF;			Voice 06
	even
