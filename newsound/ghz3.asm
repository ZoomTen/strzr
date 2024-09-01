; =============================================================================================
; Project Name:		Ninja Gaiden 4-2 [Bazlisk Mine Field]
; Created:		23rd December 2013
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

ninjagaiden42_Header:
	smpsHeaderVoice	ninjagaiden42_Voices
	smpsHeaderChan	$05,	$03
	smpsHeaderTempo	$05,	$06

	smpsHeaderDAC	ninjagaiden42_DAC
	smpsHeaderFM	ninjagaiden42_FM1,	smpsPitch00,	$13
	smpsHeaderFM	ninjagaiden42_FM2,	smpsPitch00,	$0E
	smpsHeaderFM	ninjagaiden42_FM3,	smpsPitch00,	$0D
	smpsHeaderFM	ninjagaiden42_FM1,	smpsPitch01hi,	$13
	smpsHeaderPSG	ninjagaiden42_PSG1,	smpsPitch03lo,	$03,	$00
	smpsHeaderPSG	ninjagaiden42_PSG2,	smpsPitch03lo,	$03,	$00
	smpsHeaderPSG	ninjagaiden42_PSG3,	smpsPitch00+$0B,	$00,	$00

; FM1 Data
ninjagaiden42_FM1:
	dc.b		nRst,	$08,	$08
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
FM1Loop:
;	Set FM Voice	#
	smpsFMvoice	$00
	dc.b		nFs3,	$10,	nD3,	nE3,	nCs3,	$08,	nD3,	$04
	dc.b		nE3,	nFs3,	$10,	nD3,	nE3,	nCs3,	$08,	nD3
	dc.b		$04,	nE3,	nFs3,	nE3,	nD3,	nCs3,	nRst,	$02
	dc.b		nCs3,	nCs3,	nCs3,	nCs3,	nRst,	$06,	nFs3,	$10
	dc.b		nD3,	nE3,	nCs3,	$08,	nD3,	$04,	nE3,	nFs3
	dc.b		$10,	nD3,	nE3,	nCs3,	$08,	nD3,	$04,	nE3
	dc.b		nFs3,	$10,	nD3,	nE3,	nCs3,	$08,	nD3,	$04
	dc.b		nE3,	nFs3,	$10,	nD3,	nE3,	nCs3,	$08,	nD3
	dc.b		$04,	nE3
;	Jump To	 	location
	smpsJump	FM1Loop

; FM2 Data
ninjagaiden42_FM2:
	dc.b		nRst,	$08,	$08
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
FM2Loop:
	smpsFMvoice	$01
	dc.b		nFs4,	$02,	nA4,	nFs4,	nB4,	nE4,	$01,	nFs4
	dc.b		$02,	nE4,	$01,	nFs4,	$02,	nCs5,	nFs4,	$01
	dc.b		$01,	$01,	$01,	$02,	nAb4,	$02,	nA4,	nAb4
	dc.b		nFs4,	$03,	nRst,	$01,	nAb4,	$02,	nFs4,	nB4
	dc.b		nAb4,	nFs4,	$01,	nAb4,	$02,	nFs4,	$01,	nAb4
	dc.b		$02,	nCs5,	nAb4,	$01,	$01,	$01,	$01,	$02
	dc.b		nA4,	$02,	nB4,	nA4,	nAb4,	$03,	nRst,	$01
	dc.b		nFs4,	$02,	nA4,	nFs4,	nB4,	nE4,	$01,	nFs4
	dc.b		$02,	nE4,	$01,	nFs4,	$02,	nCs5,	nFs4,	$01
	dc.b		$01,	$01,	$01,	$02,	nAb4,	$02,	nA4,	nAb4
	dc.b		nFs4,	$03,	nRst,	$01,	nAb4,	$02,	nFs4,	nB4
	dc.b		nAb4,	nFs4,	$01,	nAb4,	$02,	nFs4,	$01,	nAb4
	dc.b		$02,	nCs5,	nAb4,	$01,	$01,	$01,	$01,	$02
	dc.b		nA4,	$02,	nB4,	nA4,	nAb4,	$03,	nRst,	$01
	dc.b		nFs4,	$04,	nE4,	nD4,	nCs4,	nRst,	$02,	nCs4
	dc.b		nCs4,	nCs4,	nCs4,	nCs4,	nFs4,	nAb4,	nA4,	nAb4
	dc.b		nA4,	nFs4,	$03,	nRst,	$01,	nCs5,	$02,	nB4
	dc.b		nA4,	nB4,	nA4,	nB4,	nFs4,	$03,	nRst,	$01
	dc.b		nA4,	$02,	nAb4,	nFs4,	nE4,	nFs4,	nAb4,	nE5
	dc.b		nRst,	nD5,	nCs5,	nB4,	nCs5,	$04,	nRst,	$02
	dc.b		nCs4,	nRst,	nCs4,	nFs4,	nAb4,	nA4,	nAb4,	nA4
	dc.b		nFs4,	$03,	nRst,	$01,	nCs5,	$02,	nB4,	nA4
	dc.b		nB4,	nA4,	nB4,	nFs4,	$03,	nRst,	$01,	nA4
	dc.b		$02,	nAb4,	nFs4,	nE4,	nFs4,	nAb4,	nE5,	nRst
	dc.b		nD5,	nCs5,	nB4,	nCs5,	$04,	nRst,	$02,	nCs4
	dc.b		nRst,	nCs4,	$01,	nE4,	nFs4,	nAb4,	nA4,	nB4
	dc.b		nA4,	$02,	nAb4,	$01,	nA4,	$02,	nFs4,	$01
	dc.b		nA4,	$02,	nAb4,	$01,	nA4,	$02,	nFs4,	$01
	dc.b		nB4,	nA4,	nAb4,	nA4,	nA4,	$02,	nAb4,	$01
	dc.b		nA4,	$02,	nFs4,	$01,	nA4,	$02,	nAb4,	$01
	dc.b		nA4,	$02,	nFs4,	$01,	nB4,	nA4,	nAb4,	nFs4
	dc.b		nB4,	$02,	nA4,	$01,	nB4,	$02,	nAb4,	$01
	dc.b		nB4,	$02,	nA4,	$01,	nB4,	$02,	nAb4,	$01
	dc.b		nCs5,	nB4,	nA4,	nAb4,	nFs4,	nE4,	nCs4,	nD4
	dc.b		nFs4,	nCs4,	nE4,	nFs4,	nA4,	nAb4,	nFs4,	nE4
	dc.b		nCs5,	$02,	nB4,	nA4,	nAb4,	$01,	nA4,	$02
	dc.b		nFs4,	$01,	nA4,	$02,	nAb4,	$01,	nA4,	$02
	dc.b		nFs4,	$01,	nB4,	nA4,	nAb4,	nA4,	nA4,	$02
	dc.b		nAb4,	$01,	nA4,	$02,	nFs4,	$01,	nA4,	$02
	dc.b		nAb4,	$01,	nA4,	$02,	nFs4,	$01,	nB4,	nA4
	dc.b		nAb4,	nFs4,	nB4,	$02,	nA4,	$01,	nB4,	$02
	dc.b		nAb4,	$01,	nB4,	$02,	nA4,	$01,	nB4,	$02
	dc.b		nAb4,	$01,	nCs5,	nB4,	nA4,	nAb4,	nFs4,	nE4
	dc.b		nCs4,	nD4,	nFs4,	nCs4,	nE4,	nFs4,	nA4,	nAb4
	dc.b		nFs4,	nE4,	nCs5,	$02,	nB4
;	Jump To	 	location
	smpsJump	FM2Loop

; FM3 Data
ninjagaiden42_FM3:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		nCs2,	$02,	nCs3,	nCs2,	nCs3,	nCs2,	nCs3,	nCs2
	dc.b		nCs3
FM3Loop:
        dc.b            nFs2,	nFs3,	nFs2,	nFs3,	nFs2,	nFs3,	nFs2
	dc.b		nFs3,	nD2,	nD3,	nD2,	nD3,	nD2,	nD3,	nD2
	dc.b		nD3,	nE2,	nE3,	nE2,	nE3,	nE2,	nE3,	nE2
	dc.b		nE3,	nCs2,	nCs3,	nCs2,	nCs3,	nD2,	nD3,	nE2
	dc.b		nE3,	nFs2,	nFs3,	nFs2,	nFs3,	nFs2,	nFs3,	nFs2
	dc.b		nFs3,	nD2,	nD3,	nD2,	nD3,	nD2,	nD3,	nD2
	dc.b		nD3,	nE2,	nE3,	nE2,	nE3,	nE2,	nE3,	nE2
	dc.b		nE3,	nCs2,	nCs3,	nCs2,	nCs3,	nD2,	nD3,	nE2
	dc.b		nE3,	nFs2,	nFs3,	nE2,	nE3,	nD2,	nD3,	nCs2
	dc.b		nCs3,	nCs2,	nCs2,	nCs2,	nCs2,	nCs2,	nRst,	$06
	dc.b		nFs2,	$02,	nFs3,	nFs2,	nFs3,	nFs2,	nFs3,	nFs2
	dc.b		nFs3,	nD2,	nD3,	nD2,	nD3,	nD2,	nD3,	nD2
	dc.b		nD3,	nE2,	nE3,	nE2,	nE3,	nE2,	nE3,	nE2
	dc.b		nE3,	nCs2,	nCs3,	nCs2,	nCs3,	nD2,	nD3,	nE2
	dc.b		nE3,	nFs2,	nFs3,	nFs2,	nFs3,	nFs2,	nFs3,	nFs2
	dc.b		nFs3,	nD2,	nD3,	nD2,	nD3,	nD2,	nD3,	nD2
	dc.b		nD3,	nE2,	nE3,	nE2,	nE3,	nE2,	nE3,	nE2
	dc.b		nE3,	nCs2,	nCs3,	nCs2,	nCs3,	nD2,	nD3,	nE2
	dc.b		nE3,	nFs2,	nFs3,	nFs2,	nFs3,	nFs2,	nFs3,	nFs2
	dc.b		nFs3,	nD2,	nD3,	nD2,	nD3,	nD2,	nD3,	nD2
	dc.b		nD3,	nE2,	nE3,	nE2,	nE3,	nE2,	nE3,	nE2
	dc.b		nE3,	nCs2,	nCs3,	nCs2,	nCs3,	nD2,	nD3,	nE2
	dc.b		nE3,	nFs2,	nFs3,	nFs2,	nFs3,	nFs2,	nFs3,	nFs2
	dc.b		nFs3,	nD2,	nD3,	nD2,	nD3,	nD2,	nD3,	nD2
	dc.b		nD3,	nE2,	nE3,	nE2,	nE3,	nE2,	nE3,	nE2
	dc.b		nE3,	nCs2,	nCs3,	nCs2,	nCs3,	nD2,	nD3,	nE2
	dc.b		nE3
;	Jump To	 	location
	smpsJump	FM3Loop

; PSG1 Data
ninjagaiden42_PSG1:
	dc.b		nRst,	$10
ninjagaiden42_Jump01:
	smpsPSGvoice	$01
	dc.b		nFs4,	$02,	nFs5,	$01,	nCs5,	$02,	$01,	nFs5
	dc.b		$02,	nFs4,	$01,	nFs5,	nCs5,	$02,	nFs5,	nCs5
	dc.b		nD4,	nFs5,	$01,	nD5,	$02,	$01,	nFs5,	$02
	dc.b		nD4,	$01,	nFs5,	nD5,	$02,	nFs5,	nD5,	nE4
	dc.b		nFs5,	$01,	nE5,	$02,	$01,	nFs5,	$02,	nE4
	dc.b		$01,	nFs5,	nE5,	$02,	nFs5,	nE5,	nCs4,	nFs5
	dc.b		$01,	nCs5,	nFs5,	$02,	$01,	$01,	$02,	$02
	dc.b		nF5,	$04,	nFs4,	$02,	nFs5,	$01,	nCs5,	$02
	dc.b		$01,	nFs5,	$02,	nFs4,	$01,	nFs5,	nCs5,	$02
	dc.b		nFs5,	nCs5,	nD4,	nFs5,	$01,	nD5,	$02,	$01
	dc.b		nFs5,	$02,	nD4,	$01,	nFs5,	nD5,	$02,	nFs5
	dc.b		nD5,	nE4,	nFs5,	$01,	nE5,	$02,	$01,	nFs5
	dc.b		$02,	nE4,	$01,	nFs5,	nE5,	$02,	nFs5,	nE5
	dc.b		nCs4,	nFs5,	$01,	nCs5,	nFs5,	$02,	$01,	$01
	dc.b		$02,	$02,	nF5,	$04,	nCs4,	$02,	nFs5,	$01
	dc.b		nCs5,	nE4,	$02,	nE5,	$01,	nB4,	nD4,	$02
	dc.b		nD5,	$01,	nA4,	nCs4,	$02,	$01,	nAb4,	$01
	dc.b		nCs4,	$02,	$02,	$02,	$02,	$08,	nFs4,	$02
	dc.b		nFs5,	$01,	nCs5,	$02,	$01,	nFs5,	$02,	nFs4
	dc.b		$01,	nFs5,	nCs5,	$02,	nFs5,	nCs5,	nD4,	nFs5
	dc.b		$01,	nD5,	$02,	$01,	nFs5,	$02,	nD4,	$01
	dc.b		nFs5,	nD5,	$02,	nFs5,	nD5,	nE4,	nFs5,	$01
	dc.b		nE5,	$02,	$01,	nFs5,	$02,	nE4,	$01,	nFs5
	dc.b		nE5,	$02,	nFs5,	nE5,	nCs4,	nFs5,	$01,	nCs5
	dc.b		nFs5,	$02,	$01,	$01,	nA5,	$02,	nAb5,	nFs5
	dc.b		$04,	nFs4,	$02,	nFs5,	$01,	nCs5,	$02,	$01
	dc.b		nFs5,	$02,	nFs4,	$01,	nFs5,	nCs5,	$02,	nFs5
	dc.b		nCs5,	nD4,	nFs5,	$01,	nD5,	$02,	$01,	nFs5
	dc.b		$02,	nD4,	$01,	nFs5,	nD5,	$02,	nFs5,	nD5
	dc.b		nE4,	nFs5,	$01,	nE5,	$02,	$01,	nFs5,	$02
	dc.b		nE4,	$01,	nFs5,	nE5,	$02,	nFs5,	nE5,	nCs4
	dc.b		nFs5,	$01,	nCs5,	nFs5,	$02,	$01,	$01,	nA5
	dc.b		$02,	nAb5,	nFs5,	$04,	nFs4,	$02,	nFs5,	$01
	dc.b		nCs5,	$02,	$01,	nFs5,	$02,	nFs4,	$01,	nFs5
	dc.b		nCs5,	$02,	nFs5,	nCs5,	nD4,	nFs5,	$01,	nD5
	dc.b		$02,	$01,	nFs5,	$02,	nD4,	$01,	nFs5,	nD5
	dc.b		$02,	nFs5,	nD5,	nE4,	nFs5,	$01,	nE5,	$02
	dc.b		$01,	nFs5,	$02,	nE4,	$01,	nFs5,	nE5,	$02
	dc.b		nFs5,	nE5,	nCs4,	nFs5,	$01,	nCs5,	nFs5,	$02
	dc.b		$01,	$01,	nA5,	$02,	nAb5,	nFs5,	$04,	nFs4
	dc.b		$02,	nFs5,	$01,	nCs5,	$02,	$01,	nFs5,	$02
	dc.b		nFs4,	$01,	nFs5,	nCs5,	$02,	nFs5,	nCs5,	nD4
	dc.b		nFs5,	$01,	nD5,	$02,	$01,	nFs5,	$02,	nD4
	dc.b		$01,	nFs5,	nD5,	$02,	nFs5,	nD5,	nE4,	nFs5
	dc.b		$01,	nE5,	$02,	$01,	nFs5,	$02,	nE4,	$01
	dc.b		nFs5,	nE5,	$02,	nFs5,	nE5,	nCs4,	nFs5,	$01
	dc.b		nCs5,	nFs5,	$02,	$01,	$01,	nA5,	$02,	nAb5
	dc.b		nFs5,	$04
	smpsJump	ninjagaiden42_Jump01

; PSG2 Data
ninjagaiden42_PSG2:
	dc.b		nRst,	$10
	smpsAlterNote	$01
	smpsJump	ninjagaiden42_Jump01

; PSG3 Data
ninjagaiden42_PSG3:
;	Set PSG WvForm	#
	smpsPSGform	$E7
ninjagaiden42_Jump03:
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nAb6,	$02,	$01,	$01,	$01,	$01,	$01,	$01
	dc.b		$02,	$01,	$01,	$01,	$01,	$01,	$01
NoiseJump:
	smpsPSGvoice	$02
        dc.b            nAb6,	$02
	dc.b		$01,	$01,	$01,	$01,	$01,	$01,	$02,	$01
	dc.b		$01,	$01,	$01,	$01,	$01,	$01,	$01,	$01
	dc.b		$01,	$02,	$01,	$01,	$02,	$01,	$01,	$01
	dc.b		$01,	$01,	$01,	$02,	$01,	$01,	$01,	$01
	dc.b		$01,	$01,	$02,	$01,	$01,	$01,	$01,	$01
	dc.b		$01,	$01,	$01,	$01,	$01,	$02,	$01,	$01
	dc.b		$02,	$01,	$01,	$01,	$01,	$01,	$01,	$02
	dc.b		$01,	$01,	$01,	$01,	$01,	$01,	$02,	$01
	dc.b		$01,	$01,	$01,	$01,	$01,	$01,	$01,	$01
	dc.b		$01,	$02,	$01,	$01,	$02,	$01,	$01,	$01
	dc.b		$01,	$01,	$01,	$02,	$01,	$01,	$01,	$01
	dc.b		$01,	$01,	$02,	$01,	$01,	$01,	$01,	$01
	dc.b		$01,	$01,	$01,	$01,	$01,	$02,	$01,	$01
	dc.b		$02,	$01,	$01,	$01,	$01,	$01,	$01,	$02
	dc.b		$01,	$01,	$02,	$01,	$01,	$02,	$01,	$01
	dc.b		$02,	$01,	$11,	$02,	$01,	$01,	$01,	$01
	dc.b		$01,	$01,	$02,	$01,	$01,	$01,	$01,	$01
	dc.b		$01,	$02,	$01,	$01,	$01,	$01,	$01,	$01
	dc.b		$02,	$01,	$01,	$01,	$01,	$01,	$01,	$02
	dc.b		$01,	$01,	$01,	$01,	$01,	$01,	$02,	$01
	dc.b		$01,	$01,	$01,	$01,	$01,	$02,	$01,	$01
	dc.b		$01,	$01,	$01,	$01,	$02,	$01,	$01,	$01
	dc.b		$01,	$01,	$01,	$02,	$01,	$01,	$01,	$01
	dc.b		$01,	$01,	$02,	$01,	$01,	$01,	$01,	$01
	dc.b		$01,	$02,	$01,	$01,	$01,	$01,	$01,	$01
	dc.b		$02,	$01,	$01,	$01,	$01,	$01,	$01,	$02
	dc.b		$01,	$01,	$01,	$01,	$01,	$01,	$02,	$01
	dc.b		$01,	$01,	$01,	$01,	$01,	$02,	$01,	$01
	dc.b		$01,	$01,	$01,	$01,	$02,	$01,	$01,	$01
	dc.b		$01,	$01,	$01,	$02,	$01,	$01,	$01,	$01
	dc.b		$01,	$01,	$02,	$01,	$01,	$01,	$01,	$01
	dc.b		$01,	$02,	$01,	$01,	$01,	$01,	$01,	$01
	dc.b		$02,	$01,	$01,	$01,	$01,	$01,	$01,	$02
	dc.b		$01,	$01,	$01,	$01,	$01,	$01,	$02,	$01
	dc.b		$01,	$01,	$01,	$01,	$01,	$02,	$01,	$01
	dc.b		$01,	$01,	$01,	$01,	$02,	$01,	$01,	$01
	dc.b		$01,	$01,	$01,	$02,	$01,	$01,	$01,	$01
	dc.b		$01,	$01,	$02,	$01,	$01,	$01,	$01,	$01
	dc.b		$01,	$02,	$01,	$01,	$01,	$01,	$01,	$01
	dc.b		$02,	$01,	$01,	$01,	$01,	$01,	$01,	$02
	dc.b		$01,	$01,	$01,	$01,	$01,	$01,	$02,	$01
	dc.b		$01,	$01,	$01,	$01,	$01,	$02,	$01,	$01
	dc.b		$01,	$01,	$01,	$01,	$02,	$01,	$01,	$01
	dc.b		$01,	$01,	$01
;	Jump To	 	location
	smpsJump	NoiseJump

; DAC Data
ninjagaiden42_DAC:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		dKick,	$04,	dSnare,	dKick,	$01,	dSnare,	$02,	$01
	dc.b		$01,	$01,	$01,	$01
DACLoop:
        dc.b            dCrash,	$04
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$02
	dc.b		$01,	$01,	dKick,	$04,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dSnare,	$01,	$02,	$01,	$01,	$01,	$01
	dc.b		$01,	dCrash,	$04,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	$02,	$01,	$01,	dKick,	$04,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dSnare,	$01,	$02,	$01
	dc.b		$01,	$01,	$01,	$01,	dCrash,	$04,	dSnare,	dKick
	dc.b		dSnare,	dSnare,	$02,	dCrash,$02,	$02,	$02,	$04,	dSnare,$02
	dc.b		$01,	$01,	dCrash,	$04,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	$02,	$01,	$01,	dKick,	$04
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dSnare,	$01,	$02
	dc.b		$01,	$01,	$01,	$01,	$01,	dCrash,	$04,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	$02,	$01
	dc.b		$01,	dKick,	$04,	dSnare,	dKick,	dSnare,	dKick,	dSnare
	dc.b		dSnare,	$01,	$02,	$01,	$01,	$01,	$01,	$01
	dc.b		dCrash,	$04,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	$02,	$01,	$01,	dKick,	$04,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dSnare,	$01,	$02,	$01,	$01
	dc.b		$01,	$01,	$01,	dCrash,	$04,	dSnare,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dSnare,	$02,	$01,	$01,	dKick
	dc.b		$04,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dSnare,	$01
	dc.b		$02,	$01,	$01,	$01,	$01,	$01
;	Jump To	 	location
	smpsJump	DACLoop

ninjagaiden42_Voices:
	UVBVoice	01_Trumpet1
	IncludeVoice	MetalRhythmGuitar2
	IncludeVoice	MetalBass
	even