; =============================================================================================
; Project Name:		RistarSEGA
; Created:		5th March 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

RistarSEGA_Header:
	smpsHeaderVoice	RistarSEGA_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$7E

	smpsHeaderDAC	RistarSEGA_DAC
	smpsHeaderFM	RistarSEGA_FM1,	smpsPitch01lo,	$0A-4
	smpsHeaderFM	RistarSEGA_FM2,	smpsPitch01lo,	$0A-4
	smpsHeaderFM	RistarSEGA_FM3,	smpsPitch01lo,	$0A-4
	smpsHeaderFM	RistarSEGA_FM4,	smpsPitch01lo,	$0A-4
	smpsHeaderFM	RistarSEGA_FM5,	smpsPitch02hi,	$10-4
	smpsHeaderPSG	RistarSEGA_PSG1,	smpsPitch02lo,	$05,	$00
	smpsHeaderPSG	RistarSEGA_PSG2,	smpsPitch02lo,	$07,	$00
	smpsHeaderPSG	RistarSEGA_PSG3,	smpsPitch02lo,	$09,	$00
	dc.b		nFs3,	$08,	$78

; FM1 Data
RistarSEGA_FM1:
	smpsFMvoice	$00
	smpsModSet	$01,	$01,	$00,	$00
	dc.b		nE3,	$18,	smpsNoAttack,	$18,	smpsNoAttack,	$18,	smpsNoAttack,	$18
	dc.b		smpsNoAttack,	$18
	smpsStop

; FM2 Data
RistarSEGA_FM2:
	smpsFMvoice	$00
	smpsModSet	$01,	$01,	$00,	$00
	smpsPan		panRight,	$00
	dc.b		nRst,	$18,	nB3,	$18,	smpsNoAttack,	$18,	smpsNoAttack,	$18
	dc.b		smpsNoAttack,	$18
RistarSEGA_Loop01:
	smpsAlterVol	$04
	dc.b		smpsNoAttack,	$03
	smpsLoop	$00,	$08,	RistarSEGA_Loop01
	smpsStop

; FM3 Data
RistarSEGA_FM3:
	smpsFMvoice	$00
	smpsModSet	$01,	$01,	$00,	$00
	smpsPan		panLeft,	$00
	dc.b		nRst,	$18,	nRst,	nFs4,	$18,	smpsNoAttack,	$18,	smpsNoAttack
	dc.b		$18
RistarSEGA_Loop02:
	smpsAlterVol	$04
	dc.b		smpsNoAttack,	$03
	smpsLoop	$00,	$08,	RistarSEGA_Loop02
	smpsStop

; FM4 Data
RistarSEGA_FM4:
	smpsFMvoice	$00
	smpsModSet	$01,	$01,	$00,	$00
	smpsPan		panRight,	$00
	dc.b		nRst,	$18,	nRst,	nRst,	nAb4,	$18,	smpsNoAttack,	$18
RistarSEGA_Loop03:
	smpsAlterVol	$04
	dc.b		smpsNoAttack,	$03
	smpsLoop	$00,	$08,	RistarSEGA_Loop03
	smpsStop

; FM5 Data
RistarSEGA_FM5:
	smpsFMvoice	$01
	smpsModSet	$14,	$02,	$09,	$02
	dc.b		nEb4,	$0B,	nRst,	$01,	nE4,	$0B,	nRst,	$01
	dc.b		nB3,	$18,	smpsNoAttack,	$18,	smpsNoAttack,	$18,	smpsNoAttack,	$18
RistarSEGA_Loop04:
	smpsAlterVol	$04
	dc.b		smpsNoAttack,	$03
	smpsLoop	$00,	$08,	RistarSEGA_Loop04
	smpsStop

; PSG1 Data
RistarSEGA_PSG1:
	dc.b		nRst,	$03
	smpsPSGvoice	$07
	smpsModSet	$05,	$02,	$03,	$02
	dc.b		nEb4,	$0B,	nRst,	$01,	nE4,	$0B,	nRst,	$01
	dc.b		nB3,	$18,	smpsNoAttack,	$18,	smpsNoAttack,	$18,	smpsNoAttack,	$15
RistarSEGA_Loop05:
	smpsSetVol	$01
	dc.b		smpsNoAttack,	$03
	smpsLoop	$00,	$08,	RistarSEGA_Loop05
	smpsStop

; PSG2 Data
RistarSEGA_PSG2:
	dc.b		nRst,	$04
	smpsPSGvoice	$07
	smpsModSet	$03,	$02,	$03,	$02
	dc.b		nEb4,	$0B,	nRst,	$01,	nE4,	$0B,	nRst,	$01
	dc.b		nB3,	$18,	smpsNoAttack,	$18,	smpsNoAttack,	$18,	smpsNoAttack,	$14
RistarSEGA_Loop06:
	smpsSetVol	$01
	dc.b		smpsNoAttack,	$03
	smpsLoop	$00,	$08,	RistarSEGA_Loop06
	smpsStop

; PSG3 Data
RistarSEGA_PSG3:
	dc.b		nRst,	$05
	smpsPSGvoice	$07
	smpsModSet	$01,	$02,	$03,	$02
	dc.b		nEb4,	$0B,	nRst,	$01,	nE4,	$0B,	nRst,	$01
	dc.b		nB3,	$18,	smpsNoAttack,	$18,	smpsNoAttack,	$18,	smpsNoAttack,	$13
RistarSEGA_Loop07:
	smpsSetVol	$01
	dc.b		smpsNoAttack,	$03
	smpsLoop	$00,	$08,	RistarSEGA_Loop07
	smpsStop

; DAC Data
RistarSEGA_DAC:
	smpsStop
	smpsStop

RistarSEGA_Voices:
	dc.b		$3B,$72,$31,$71,$32,$1F,$19,$51,$4F,$06,$07,$08,$01,$01,$00,$01
	dc.b		$00,$25,$96,$1A,$17,$26,$1B,$1B,$84;			Voice 00
	dc.b		$19,$51,$12,$42,$00,$5F,$5F,$9B,$53,$01,$02,$01,$01,$01,$02,$04
	dc.b		$06,$57,$57,$37,$37,$2C,$24,$30,$80;			Voice 01
	dc.b		$00;			Voice 02
	even
