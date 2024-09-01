; =============================================================================================
; Project Name:		ChaotixClear
; Created:		5th March 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

ChaotixClear_Header:
	smpsHeaderVoice	ChaotixClear_Voices
	smpsHeaderChan	$06,	$00
	smpsHeaderTempo	$01,	$04

	smpsHeaderDAC	ChaotixClear_DAC
	smpsHeaderFM	ChaotixClear_FM1,	smpsPitch00,	$05
	smpsHeaderFM	ChaotixClear_FM2,	smpsPitch00,	$05
	smpsHeaderFM	ChaotixClear_FM3,	smpsPitch00,	$10
	smpsHeaderFM	ChaotixClear_FM4,	smpsPitch00,	$1C
	smpsHeaderFM	ChaotixClear_FM5,	smpsPitch01hi,	$12

; FM3 Data
ChaotixClear_FM3:
	smpsFMvoice	$00
	smpsPan		panCentre,	$00
	dc.b		nF2,	$03,	nRst,	nF2,	$03,	nRst,	nRst,	$18
	dc.b		nF2,	$06,	nG2,	nRst,	$18,	nF3,	$06,	nG2
	dc.b		$0C,	nRst,	$06,	nG2,	nG1,	$06,	nRst,	nA1
	dc.b		$0C,	smpsNoAttack,	$48
	smpsStop

; FM1 Data
ChaotixClear_FM1:
	smpsFMvoice	$01
	smpsPan		panCentre,	$00
	smpsCall	ChaotixClear_Call01

ChaotixClear_Call01:
	dc.b		nE5,	$06,	nF5,	$03,	nRst,	nE5,	$06,	nD5
	dc.b		$03,	nRst
	smpsAlterVol	$07
	dc.b		nD5,	$03,	nRst
	smpsAlterVol	$F9
	dc.b		nC5,	$03,	nRst
	smpsAlterVol	$07
	dc.b		nC5,	$03,	nRst
	smpsAlterVol	$F9
	dc.b		nB4,	$03,	nRst
	smpsAlterVol	$07
	dc.b		nB4,	$03,	nRst
	smpsAlterVol	$F9
	dc.b		nC5,	$03,	nRst
	smpsAlterVol	$07
	dc.b		nC5,	$03,	nRst
	smpsAlterVol	$F9
	dc.b		nD5,	$03,	nRst
	smpsAlterVol	$07
	dc.b		nD5,	$03,	nRst
	smpsAlterVol	$F9
	dc.b		nC5,	$03,	nRst,	nB4,	nRst,	nC5,	nRst,	nG4
	dc.b		$06
	smpsAlterVol	$07
	dc.b		nG4,	$06
	smpsAlterVol	$F9
	dc.b		nA4,	$54
	smpsStop

; FM2 Data
ChaotixClear_FM2:
	smpsFMvoice	$01
	smpsPan		panCentre,	$00
	smpsCall	ChaotixClear_Call02

ChaotixClear_Call02:
	smpsAlterPitch	$FB
	dc.b		nE5,	$06,	nF5,	$03,	nRst,	nE5,	$06,	nD5
	dc.b		$03,	nRst
	smpsAlterVol	$07
	dc.b		nD5,	$03,	nRst
	smpsAlterVol	$F9
	dc.b		nC5,	$03,	nRst
	smpsAlterVol	$07
	dc.b		nC5,	$03,	nRst
	smpsAlterVol	$F9
	dc.b		nB4,	$03,	nRst
	smpsAlterVol	$07
	dc.b		nB4,	$03,	nRst
	smpsAlterVol	$F9
	dc.b		nC5,	$03,	nRst
	smpsAlterVol	$07
	dc.b		nC5,	$03,	nRst
	smpsAlterVol	$F9
	dc.b		nD5,	$03,	nRst
	smpsAlterVol	$07
	dc.b		nD5,	$03,	nRst
	smpsAlterVol	$F9
	dc.b		nC5,	$03,	nRst,	nB4,	nRst,	nC5,	nRst
	smpsAlterPitch	$05
	dc.b		nD4,	$06
	smpsAlterVol	$07
	dc.b		nD4,	$06
	smpsAlterVol	$F9
	dc.b		nCs4,	$54
	smpsStop
	smpsFMvoice	$01
	smpsPan		panLeft,	$00
	smpsModSet	$01,	$01,	$02,	$05
	dc.b		nRst,	$06
	smpsCall	ChaotixClear_Call01
	smpsStop

; FM4 Data
ChaotixClear_FM4:
	smpsFMvoice	$01
	smpsPan		panRight,	$00
	smpsModSet	$01,	$01,	$02,	$05
	dc.b		nRst,	$06
	smpsCall	ChaotixClear_Call02
	smpsStop

; FM5 Data
ChaotixClear_FM5:
	smpsFMvoice	$02
	smpsPan		panCentre,	$00
	dc.b		nE5,	$06,	nF5,	$03,	nRst,	nE5,	$06,	nD5
	dc.b		$03,	nRst
	smpsAlterVol	$0A
	dc.b		nD5,	$03,	nRst
	smpsAlterVol	$F6
	dc.b		nC5,	$03,	nRst
	smpsAlterVol	$0A
	dc.b		nC5,	$03,	nRst
	smpsAlterVol	$F6
	dc.b		nB4,	$03,	nRst
	smpsAlterVol	$0A
	dc.b		nB4,	$03,	nRst
	smpsAlterVol	$F6
	dc.b		nC5,	$03,	nRst
	smpsAlterVol	$0A
	dc.b		nC5,	$03,	nRst
	smpsAlterVol	$F6
	dc.b		nD5,	$03,	nRst
	smpsAlterVol	$0A
	dc.b		nD5,	$03,	nRst
	smpsAlterVol	$F6
	dc.b		nC5,	$03,	nRst,	nB4,	nRst,	nC5,	nRst,	nG4
	dc.b		$06
	smpsAlterVol	$0A
	dc.b		nG4,	$06
	smpsAlterVol	$F6
	dc.b		nA4,	$0C
	smpsStop

ChaotixClear_DAC:
	dc.b		dKick,	$30,	dKick,	$0C,	dKick,	$06,	dHiTom,	$03
	dc.b		$03,	dHiTom,	$06,	dMidTom,dLowTom,dLowTom,dSnare,	$0C
	dc.b		$0C
	smpsStop

ChaotixClear_Voices:
	dc.b		$38,$0A,$70,$30,$00,$1F,$1F,$1F,$1F,$12,$0E,$0A,$0A,$00,$04,$04
	dc.b		$03,$26,$26,$26,$28,$24,$2D,$12,$80;			Voice 00
	dc.b		$3A,$01,$03,$02,$01,$0F,$10,$11,$19,$0A,$05,$0A,$05,$02,$02,$02
	dc.b		$02,$36,$36,$36,$58,$19,$1E,$32,$80;			Voice 01
	dc.b		$06,$05,$04,$10,$1F,$5F,$5F,$5F,$05,$07,$0C,$0C,$17,$17,$12,$18
	dc.b		$9F,$9C,$9C,$9C,$2D,$80,$80,$80,$81;			Voice 02
	dc.b		$06,$81,$80,$0C,$82,$06,$82,$80,$81,$06,$81,$80,$81,$06,$86,$03
	dc.b		$03,$86,$06,$8C,$8D,$8E,$82,$0C,$0C;			Voice 03
	dc.b		$F2;			Voice 04
	even
