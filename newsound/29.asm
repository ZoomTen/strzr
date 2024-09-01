; =============================================================================================
; Project Name:		ActClear
; Created:		24th January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

ActClear_Header:
	smpsHeaderVoice	ActClear_Voices
	smpsHeaderChan	$06,	$03
	smpsHeaderTempo	$01,	$06

	smpsHeaderDAC	ActClear_DAC
	smpsHeaderFM	ActClear_FM1,	smpsPitch01hi,	$10
	smpsHeaderFM	ActClear_FM2,	smpsPitch01hi,	$16
	smpsHeaderFM	ActClear_FM3,	smpsPitch01hi,	$16
	smpsHeaderFM	ActClear_FM4,	smpsPitch01hi,	$16
	smpsHeaderFM	ActClear_FM5,	smpsPitch01hi,	$1A
	smpsHeaderPSG	ActClear_PSG1,	smpsPitch01lo,	$06,	$01
	smpsHeaderPSG	ActClear_PSG2,	smpsPitch01lo,	$06,	$01
	smpsHeaderPSG	ActClear_PSG3,	smpsPitch00,	$00,	$01
	smpsStop
	smpsStop

; DAC Data
ActClear_DAC:
	dc.b		dSnare,	$06,	dKick,	dKick,	dSnare,	dKick,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dKick,	dSnare,	dKick,	dKick,	dSnare
	dc.b		dKick,	$01,	nRst,	dKick,	dKick,	nRst,	dKick,	dHiTom
	dc.b		$06,	dMidTom,	dLowTom,	dHiTom,	dMidTom,	dLowTom,	dHiTom,	dMidTom
	dc.b		dLowTom,	dSnare
	smpsStop

; FM1 Data
ActClear_FM1:
	smpsFMvoice	$02
	dc.b		nG0,	$04,	nRst,	$02,	nG1,	$04,	nRst,	$02
	dc.b		nG0,	$04,	nRst,	$02,	nD1,	$04,	nRst,	$08
	dc.b		nG1,	$04,	nRst,	$02,	nG0,	$04,	nRst,	$08
	dc.b		nA0,	$04,	nRst,	$02,	nA1,	$04,	nRst,	$02
	dc.b		nA0,	$04,	nRst,	$02,	nE1,	$04,	nRst,	$08
	dc.b		nA1,	$04,	nRst,	$02,	nA0,	$04,	nRst,	$08
	dc.b		nD1,	$04,	nRst,	$02,	nD2,	$04,	nRst,	$02
	dc.b		nD1,	$04,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nE2,	$04,	nRst,	$02,	nE1,	$04,	nRst,	$02
	dc.b		nG1,	$04,	nRst,	$02,	nG2,	$04,	nRst,	$02
	dc.b		nG1,	$04,	nRst,	$02,	nA1,	$5F,	nRst,	$02
	smpsStop

; FM2 Data
ActClear_FM2:
	smpsAlterNote	$03
	smpsFMvoice	$01
ActClear_Jump01:
	dc.b		nD3,	$06,	nD3,	nD3,	nD3,	$07,	nRst,	$05
	dc.b		nD3,	$07,	nRst,	$05,	nE3,	$05,	nRst,	$07
	dc.b		nE3,	$05,	nRst,	$07,	nE3,	$07,	nRst,	$05
	dc.b		nE3,	$11,	nRst,	$01,	nG3,	$05,	nRst,	$0D
	dc.b		nA3,	$05,	nRst,	$0D,	nC4,	$11,	nRst,	$01
	dc.b		nD4,	$5F,	nRst,	$01
	smpsStop

; FM3 Data
ActClear_FM3:
	smpsAlterNote	$FF
	smpsFMvoice	$00
	dc.b		nC3,	$06,	nC3,	nC3,	nB2,	nRst,	nB2,	nRst
	dc.b		nD3,	nRst,	$06,	nD3,	$06,	nRst,	$06,	nCs3
	dc.b		$06,	nRst,	nCs3,	$11,	nRst,	$01,	nE3,	$05
	dc.b		nRst,	$0D,	nFs3,	$05,	nRst,	$0D,	nA3,	$11
	dc.b		nRst,	$01,	nB3,	$5F,	nRst,	$01
	smpsStop

; FM4 Data
ActClear_FM4:
	smpsAlterNote	$01
	smpsFMvoice	$00
ActClear_Jump02:
	dc.b		nG2,	$06,	nG2,	nG2,	nG2,	nRst,	nG2,	nRst
	dc.b		nA2,	nRst,	nA2,	$03,	nRst,	$09,	nA2,	$05
	dc.b		nRst,	$07,	nA2,	$11,	nRst,	$01,	nC3,	$05
	dc.b		nRst,	$0D,	nD3,	$05,	nRst,	$0D,	nF3,	$11
	dc.b		nRst,	$01,	nG3,	$5F,	nRst,	$01
	smpsStop

; FM5 Data
ActClear_FM5:
	smpsAlterNote	$FD
	smpsPSGvoice	$03
	dc.b		nRst,	$01
	smpsFMvoice	$00
	smpsJump	ActClear_Jump01
	smpsStop

; PSG1 Data
ActClear_PSG1:
	smpsAlterNote	$01
	smpsPSGvoice	$03
	smpsJump	ActClear_Jump01
	smpsFMvoice	$00
	dc.b		nD3,	$06,	nD3,	nD3,	nD3,	$05,	nRst,	$07
	dc.b		nD3,	$05,	nRst,	$07,	nE3,	$03,	nRst,	$09
	dc.b		nE3,	$03,	nRst,	$09,	nE3,	$05,	nRst,	$07
	dc.b		nE3,	$11,	nRst,	$01,	nG3,	$05,	nRst,	$0D
	dc.b		nA3,	$05,	nRst,	$0D,	nC4,	$11,	nRst,	$01
	dc.b		nD4,	$5F,	nRst,	$01
	smpsStop

; PSG2 Data
ActClear_PSG2:
	smpsAlterNote	$FF
	smpsFMvoice	$00
	smpsPSGvoice	$03
	smpsJump	ActClear_Jump02
	smpsStop

; PSG3 Data
ActClear_PSG3:
	smpsPSGvoice	$02
	smpsPSGform	$E7
	dc.b		nB6,	$06,	nB6,	nB6,	nB6,	$05,	nRst,	$07
	dc.b		nB6,	$05,	nRst,	$07,	nB6,	$03,	nRst,	$09
	dc.b		nB6,	$03,	nRst,	$09,	nB6,	$05,	nRst,	$07
	dc.b		nB6,	$11,	nRst,	$01,	nB6,	$05,	nRst,	$0D
	dc.b		nB6,	$05,	nRst,	$0D,	nB6,	$11,	nRst,	$01
	dc.b		nB6,	$5F,	nRst,	$01
	smpsStop

ActClear_Voices:
	UVBVoice	01_Trumpet1		;00
	UVBVoice	08_BellHorntypeThing	;01
	UVBVoice	22_StrikelikeSlapBass	;02
	even
