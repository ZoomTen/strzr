; =============================================================================================
; Project Name:		GHClear
; Created:		6th March 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

GHClear_Header:
	smpsHeaderVoice	GHClear_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$02,	$07

	smpsHeaderDAC	GHClear_DAC
	smpsHeaderFM	GHClear_FM1,	smpsPitch00+$02,	$08
	smpsHeaderFM	GHClear_FM2,	smpsPitch00+$02,	$0C
	smpsHeaderFM	GHClear_FM3,	smpsPitch00+$02,	$13
	smpsHeaderFM	GHClear_FM4,	smpsPitch00+$02,	$12
	smpsHeaderFM	GHClear_FM5,	smpsPitch00+$02,	$12
	smpsHeaderPSG	GHClear_PSG1,	smpsPitch04lo+$02,	$03,	$00
	smpsHeaderPSG	GHClear_PSG2,	smpsPitch04lo+$02,	$04,	$00
	smpsHeaderPSG	GHClear_PSG3,	smpsPitch00,	$00,	$04
	smpsStop
	dc.b		$00

; FM1 Data
GHClear_FM1:
	smpsFMvoice	$03
	smpsPSGvoice	$01
	smpsModSet	$03,	$01,	$14,	$05
	smpsPan		panCentre,	$00
	dc.b		nC2,	$09,	nC3,	nD3,	nBb2,	nF2,	$06,	nF3
	dc.b		nAb2,	$09,	nAb3,	nAb2,	$06,	nBb2,	$03,	nBb3
	dc.b		nBb3,	nBb2,	nBb3,	nF3,	nBb2,	nBb3,	nC3,	nC2
	dc.b		nC2,	nC2,	nRst,	nRst,	nC3,	nC2,	nC2,	nC3
	dc.b		nRst,	nRst
	smpsFMvoice	$00
	dc.b		nC2,	$48,	nRst
	smpsStop

; FM2 Data
GHClear_FM2:
	smpsModSet	$2E,	$01,	$10,	$03
	smpsFMvoice	$01
	smpsPSGvoice	$01
	smpsPan		panCentre,	$00
	dc.b		nC5,	$09,	nG5,	nBb5,	nA5,	nF5,	$06,	nC5
	dc.b		nG5,	$09,	nF5,	nEb5,	nD5,	nRst,	$03,	nD5
	dc.b		nEb5,	nF5
	smpsFMvoice	$09
	dc.b		nC5,	nC5,	nC5,	nC5,	nRst,	nRst,	nC5,	nC5
	dc.b		nC5,	nC5
GHClear_Loop01:
	smpsAlterVol	$08
	dc.b		nC5,	nC5
	smpsLoop	$00,	$0A,	GHClear_Loop01
	dc.b		nRst
	smpsStop

; FM3 Data
GHClear_FM3:
	smpsFMvoice	$08
	smpsJump	GHClear_Jump01
	dc.b		$00,	$03,	$02
GHClear_Jump01:
	smpsAlterPitch	$0C
	dc.b		nC4,	$03,	nF4,	nG4,	nF5,	nG5,	nC6,	nF6
	dc.b		nG6,	nC6,	nG6,	nF6,	nC5,	nG4,	nF4,	nC4
	dc.b		nG3,	nC3,	nEb3,	nAb3,	nC4,	nEb4,	nAb4,	nC5
	dc.b		nAb4,	nF5,	nD5,	nBb4,	nF4,	nD4,	nF4,	nBb3
	dc.b		nF4
	smpsAlterVol	$FD
	dc.b		nG4,	nG4,	nG4,	nG4,	nG4,	nRst,	nG4,	nG4
	dc.b		nG4,	nG4,	nRst,	nRst
	smpsAlterPitch	$F4
	smpsModSet	$03,	$01,	$14,	$05
	smpsFMvoice	$00
	dc.b		nRst,	$02
	smpsAlterNote	$02
	dc.b		nC2,	$48,	nRst
	smpsStop

; FM4 Data
GHClear_FM4:
	smpsModSet	$2E,	$01,	$10,	$03
	smpsFMvoice	$06
	smpsPSGvoice	$01
	dc.b		nRst,	$01
	smpsJump	GHClear_Jump02
	dc.b		$00,	$03,	$02
GHClear_Jump02:
	dc.b		nG4,	$09,	nC5,	nD5,	nBb4,	nA4,	$06,	nF4
	dc.b		nAb4,	$09,	nEb4,	nAb4,	nBb4,	nF4,	$06,	nD5
	dc.b		nE5,	$03,	nE5,	nE5,	nE5,	nRst,	nRst,	nE5
	dc.b		nE5,	nE5,	nE5
GHClear_Loop02:
	smpsAlterVol	$09
	dc.b		nE5,	nE5
	smpsLoop	$00,	$0A,	GHClear_Loop02
	dc.b		nRst
	smpsStop

; FM5 Data
GHClear_FM5:
	smpsModSet	$2E,	$01,	$10,	$03
	smpsFMvoice	$07
	smpsPSGvoice	$01
	dc.b		nRst,	$01
	smpsAlterNote	$01
	smpsAlterVol	$F4
	smpsPan		panCentre,	$00
	dc.b		nC4,	$09,	nG4,	nBb4,	nA4,	nF4,	$06,	nC4
	dc.b		nG4,	$09,	nF4,	nEb4,	nD4,	nRst,	$03,	nD4
	dc.b		nEb4,	nF4
	smpsAlterVol	$0C
	smpsFMvoice	$05
	smpsPan		panRight,	$00
	smpsAlterVol	$08
	dc.b		nC6,	nC6,	nC6,	nC6,	nRst,	nRst,	nC6,	nC6
	dc.b		nC6,	nC6
GHClear_Loop03:
	smpsAlterVol	$09
	dc.b		nG5,	nG5
	smpsLoop	$00,	$0A,	GHClear_Loop03
	dc.b		nRst
	smpsStop

; DAC Data
GHClear_DAC:
	smpsPan		panCentre,	$00
	dc.b		dKick,	$03,	dSnare,	dSnare,	dKick,	dLowTimpani,	dVLowTimpani,	dKick
	dc.b		dSnare,	dLowTimpani,	dVLowTimpani,	dKick,	dMidTimpani,	dLowTimpani,	dVLowTimpani,	dKick
	dc.b		dSnare,	dSnare,	dKick,	dKick,	dSnare,	dKick,	dSnare,	dSnare
	dc.b		dKick,	dKick,	$02,	dMidTimpani,	dLowTimpani,	dLowTimpani,	dVLowTimpani,	dVLowTimpani
	dc.b		dSnare,	$03,	dSnare,	dKick,	dSnare,	dKick,	$03,	dLowTimpani
	dc.b		dClap,	$02,	dVLowTimpani,	dKick,	dKick,	$03,	dKick,	dClap
	dc.b		dClap,	dKick,	dClap,	nRst,	nRst,	dKick,	$0C
	smpsStop

; PSG1 Data
GHClear_PSG1:
	dc.b		nC5,	$09,	nG5,	nBb5,	nA5,	nF5,	$06,	nC5
	dc.b		nG5,	$09,	nF5,	nEb5,	nD5,	nRst,	$03,	nD5
	dc.b		nEb5,	nF5
	smpsAlterVol	$02
	dc.b		nC6,	nC6,	nC6,	nC6,	nRst,	nRst,	nC6,	nC6
	dc.b		nC6,	nC6,	nRst,	$06
	smpsStop

; PSG2 Data
GHClear_PSG2:
	smpsAlterNote	$02
	dc.b		nRst,	$04
	smpsJump	GHClear_PSG1
	smpsStop

; PSG3 Data
GHClear_PSG3:
	smpsPSGform	$E7
	dc.b		nA5,	$0C,	nA5,	nA5,	nA5,	nA5,	$0C,	nA5
	dc.b		nA5,	nA5,	nA5,	$0C,	nA5,	nA5,	$06,	nA5
	dc.b		$02,	nA5,	nA5,	nRst,	$30
	smpsStop

GHClear_Voices:
	dc.b		$4D,$70,$31,$54,$71,$8F,$1F,$1F,$7F,$1F,$15,$16,$16,$07,$07,$08
	dc.b		$08,$1F,$1F,$0F,$1F,$00,$03,$03,$03;			Voice 00
	dc.b		$6C,$71,$33,$35,$7F,$1E,$1F,$1F,$1F,$0C,$0A,$07,$0E,$0C,$01,$07
	dc.b		$01,$FF,$FF,$FF,$FF,$02,$00,$0F,$01;			Voice 01
	dc.b		$58,$71,$37,$70,$30,$48,$D5,$1F,$1F,$0C,$08,$0E,$02,$17,$09,$06
	dc.b		$06,$28,$57,$17,$57,$1F,$15,$22,$06;			Voice 02
	dc.b		$78,$73,$3A,$30,$71,$18,$D5,$1F,$1F,$0C,$0E,$0E,$07,$0F,$09,$04
	dc.b		$0C,$58,$57,$17,$1C,$29,$1D,$18,$04;			Voice 03
	dc.b		$3D,$70,$51,$61,$70,$7F,$1F,$1F,$71,$1F,$06,$06,$06,$06,$06,$01
	dc.b		$01,$18,$18,$08,$18,$13,$74,$73,$73;			Voice 04
	dc.b		$7D,$31,$72,$72,$72,$8F,$14,$17,$7C,$11,$18,$18,$18,$08,$00,$00
	dc.b		$00,$01,$18,$18,$18,$15,$01,$01,$01;			Voice 05
	dc.b		$A5,$70,$76,$73,$73,$1F,$5E,$6E,$6E,$0A,$10,$00,$0F,$00,$16,$00
	dc.b		$00,$AA,$1A,$0A,$1A,$01,$00,$04,$0A;			Voice 06
	dc.b		$36,$71,$32,$30,$71,$1F,$1F,$1F,$1F,$07,$07,$17,$17,$02,$08,$02
	dc.b		$1F,$1F,$0F,$1F,$1F,$0B,$00,$00,$00;			Voice 07
	dc.b		$7D,$30,$7F,$71,$30,$7F,$1F,$1F,$71,$1F,$06,$06,$06,$06,$01,$01
	dc.b		$01,$1F,$18,$18,$18,$0A,$00,$00,$00;			Voice 08
	dc.b		$7D,$31,$72,$72,$72,$8F,$14,$17,$7C,$11,$18,$18,$18,$08,$00,$00
	dc.b		$00,$01,$18,$18,$18,$10,$01,$01,$01;			Voice 09
	even
