; =============================================================================================
; Project Name:		AVGN Adventures - Future Fuckballs 2010
; Created:		12nd January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

FutureFballz_Header:
;	Voice Pointer	location
	smpsHeaderVoice	FutureFballz_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$05,	$06

;	DAC Pointer	location
	smpsHeaderDAC	FutureFballz_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	FutureFballz_FM1,	smpsPitch00,	$08
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	FutureFballz_FM2,	smpsPitch00,	$09
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	FutureFballz_FM3,	smpsPitch00,	$0A
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	FutureFballz_FM4,	smpsPitch00,	$0D
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	FutureFballz_FM5,	smpsPitch00,	$0D
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	FutureFballz_PSG1,	smpsPitch03lo,	$01,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	FutureFballz_PSG2,	smpsPitch03lo,	$01,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	FutureFballz_PSG3,	smpsPitch00+$0B,	$01,	$00

; FM1 Data
FutureFballz_FM1:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$00
	dc.b		nCs2,	$02,	nCs3,	$01,	$01
;	Jump To	 	location
	smpsJump	FutureFballz_FM1

; FM2 Data
FutureFballz_FM2:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$04
	dc.b		nCs6,	$01,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nRst,	$10,	$10,	$10,	$10,	nCs6,	$01
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6
	dc.b		nRst,	nCs6,	nRst,	nCs6,	nRst,	nCs6,	nRst
FutureFballz_FM2_Loop:
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nE4,	$08,	nFs4,	nAb4,	nFs4
	smpsLoop	$00,	$08,    FutureFballz_FM2_Loop
;	Jump To	 	location
	smpsJump	FutureFballz_FM2

; FM3 Data
FutureFballz_FM3:
	dc.b		nRst,	$10,	$10,	$10,	$10,	$10,	$10,	$10
	dc.b		$10,	$10,	$10,	$10,	$10,	$10,	$10,	$10
	dc.b		$10
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
FutureFballz_FM3_Loop:
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nA4,	$08,	nB4,	nCs5,	nB4
	smpsLoop	$00,	$08,    FutureFballz_FM3_Loop
;	Jump To	 	location
	smpsJump	FutureFballz_FM3

; FM4 Data
FutureFballz_FM4:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$03
	dc.b		nCs3,	$01,	nRst,	nCs3,	nRst,	nCs3,	nRst,	nD4
	dc.b		$02,	nE3,	nAb3,	nA3,	nE3,	nAb3,	$01,	nRst
	dc.b		nCs3,	nRst,	nCs3,	nRst,	nD3,	$04,	nFs3,	$02
	dc.b		nCs3,	nD3,	nCs3,	$01,	nRst,	nAb3,	nRst,	nCs3
	dc.b		nRst,	nG3,	$02,	nE3,	nCs3,	nA3,	nE3,	nCs3
	dc.b		$01,	nRst,	nCs3,	nRst,	nAb3,	nRst,	nD3,	$04
	dc.b		nFs3,	$02,	nCs3,	nD3,	nCs3,	$01,	nRst,	nCs3
	dc.b		nRst,	nCs3,	nRst,	nD4,	$02,	nE3,	nAb3,	nA3
	dc.b		nE3,	nAb3,	$01,	nRst,	nCs3,	nRst,	nCs3,	nRst
	dc.b		nD3,	$04,	nFs3,	$02,	nCs3,	nD3,	nCs3,	$01
	dc.b		nRst,	nAb3,	nRst,	nCs3,	nRst,	nG3,	$02,	nE3
	dc.b		nCs3,	nA3,	nE3,	nCs3,	$01,	nRst,	nCs3,	nRst
	dc.b		nAb3,	nRst,	nD3,	$04,	nFs3,	$02,	nCs3,	nD3
	dc.b		nCs3,	nRst,	nAb2,	nAb2,	nRst,	nAb2,	nRst,	$04
	dc.b		nAb2,	$02,	nRst,	nCs3,	nD3,	nRst,	nD3,	nRst
	dc.b		$04,	nAb2,	$02,	nRst,	nAb2,	nCs3,	nRst,	nAb2
	dc.b		nRst,	$04,	nAb2,	$02,	nRst,	nAb2,	nD3,	nRst
	dc.b		nA2,	nRst,	$04,	nCs3,	$02,	nRst,	nAb2,	nAb2
	dc.b		nRst,	nAb2,	nRst,	$04,	nAb2,	$02,	nRst,	nCs3
	dc.b		nD3,	nRst,	nD3,	nRst,	$04,	nAb2,	$02,	nRst
	dc.b		nAb2,	nCs3,	nRst,	nAb2,	nRst,	$04,	nAb2,	$02
	dc.b		nRst,	nAb2,	nD3,	nRst,	nA2,	nRst,	$04,	nA2
	dc.b		$02,	nRst,	$01,	nE2,	$02,	nRst,	$01,	nA2
	dc.b		nRst,	nB2,	$02,	nRst,	$01,	nFs2,	$02,	nRst
	dc.b		$01,	nFs2,	nRst,	nAb2,	$02,	nRst,	$01,	nAb2
	dc.b		$02,	nRst,	$01,	nCs3,	nRst,	nB2,	$02,	nRst
	dc.b		$01,	nB2,	$02,	nRst,	$01,	nB2,	nRst,	nE2
	dc.b		$02,	nRst,	$01,	nE2,	$02,	nRst,	$01,	nA2
	dc.b		nRst,	nFs2,	$02,	nRst,	$01,	nFs2,	$02,	nRst
	dc.b		$01,	nFs2,	nRst,	nAb2,	$02,	nRst,	$01,	nAb2
	dc.b		$02,	nRst,	$01,	nAb2,	nRst,	nB2,	$02,	nRst
	dc.b		$01,	nB2,	$02,	nRst,	$01,	nB2,	nRst,	nA2
	dc.b		$02,	nRst,	$01,	nE2,	$02,	nRst,	$01,	nA2
	dc.b		nRst,	nB2,	$02,	nRst,	$01,	nFs2,	$02,	nRst
	dc.b		$01,	nFs2,	nRst,	nAb2,	$02,	nRst,	$01,	nAb2
	dc.b		$02,	nRst,	$01,	nCs3,	nRst,	nB2,	$02,	nRst
	dc.b		$01,	nB2,	$02,	nRst,	$01,	nB2,	nRst,	nE2
	dc.b		$02,	nRst,	$01,	nE2,	$02,	nRst,	$01,	nA2
	dc.b		nRst,	nFs2,	$02,	nRst,	$01,	nFs2,	$02,	nRst
	dc.b		$01,	nFs2,	nRst,	nAb2,	$02,	nRst,	$01,	nAb2
	dc.b		$02,	nRst,	$01,	nAb2,	nRst,	nB2,	$02,	nRst
	dc.b		$01,	nB2,	$02,	nRst,	$01,	nB2,	nRst,	nA2
	dc.b		$02,	nA3,	$01,	$01,	nE2,	$02,	nE3,	$01
	dc.b		$01,	nB2,	$02,	nB3,	$01,	$01,	nB2,	$02
	dc.b		nFs3,	$01,	$01,	nCs3,	$02,	nCs4,	$01,	$01
	dc.b		nCs3,	$02,	nAb3,	$01,	$01,	nCs3,	$02,	nCs4
	dc.b		$01,	$01,	nB2,	$02,	nB3,	$01,	$01,	nA2
	dc.b		$02,	nA3,	$01,	$01,	nE2,	$02,	nE3,	$01
	dc.b		$01,	nB2,	$02,	nB3,	$01,	$01,	nB2,	$02
	dc.b		nFs3,	$01,	$01,	nCs3,	$02,	nCs4,	$01,	$01
	dc.b		nCs3,	$02,	nAb3,	$01,	$01,	nCs3,	$02,	nCs4
	dc.b		$01,	$01,	nB2,	$02,	nB3,	$01,	$01,	nA2
	dc.b		$02,	nA3,	$01,	$01,	nE2,	$02,	nE3,	$01
	dc.b		$01,	nB2,	$02,	nB3,	$01,	$01,	nB2,	$02
	dc.b		nFs3,	$01,	$01,	nCs3,	$02,	nCs4,	$01,	$01
	dc.b		nCs3,	$02,	nAb3,	$01,	$01,	nCs3,	$02,	nCs4
	dc.b		$01,	$01,	nB2,	$02,	nB3,	$01,	$01,	nA2
	dc.b		$02,	nA3,	$01,	$01,	nE2,	$02,	nE3,	$01
	dc.b		$01,	nB2,	$02,	nB3,	$01,	$01,	nB2,	$02
	dc.b		nFs3,	$01,	$01,	nCs3,	$02,	nCs4,	$01,	$01
	dc.b		nCs3,	$02,	nAb3,	$01,	$01,	nCs3,	$02,	nCs4
	dc.b		$01,	$01,	nB2,	$02,	nB3,	$01,	$01
;	Jump To	 	location
	smpsJump	FutureFballz_FM4

; FM5 Data
FutureFballz_FM5:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Set FM Voice	#
	smpsFMvoice	$03
	dc.b		nAb3,	$01,	nRst,	nAb3,	nRst,	nAb3,	nRst,	nG3
	dc.b		$02,	nB3,	nCs3,	nD3,	nB3,	nCs3,	$01,	nRst
	dc.b		nAb3,	nRst,	nAb3,	nRst,	nA3,	$04,	nB2,	$02
	dc.b		nAb3,	nA3,	nAb3,	$01,	nRst,	nCs3,	nRst,	nAb3
	dc.b		nRst,	nD4,	$02,	nB3,	nAb3,	nD3,	nB3,	nAb3
	dc.b		$01,	nRst,	nAb3,	nRst,	nCs3,	nRst,	nA3,	$04
	dc.b		nB2,	$02,	nAb3,	nA3,	nAb3,	$01,	nRst,	nAb3
	dc.b		nRst,	nAb3,	nRst,	nG3,	$02,	nB3,	nCs3,	nD3
	dc.b		nB3,	nCs3,	$01,	nRst,	nAb3,	nRst,	nAb3,	nRst
	dc.b		nA3,	$04,	nB2,	$02,	nAb3,	nA3,	nAb3,	$01
	dc.b		nRst,	nCs3,	nRst,	nAb3,	nRst,	nD4,	$02,	nB3
	dc.b		nAb3,	nD3,	nB3,	nAb3,	$01,	nRst,	nAb3,	nRst
	dc.b		nCs3,	nRst,	nA3,	$04,	nB2,	$02,	nAb3,	nA3
	dc.b		nAb2,	nRst,	nCs3,	nCs3,	nRst,	nCs3,	nRst,	$04
	dc.b		nCs3,	$02,	nRst,	nAb2,	nA2,	nRst,	nA2,	nRst
	dc.b		$04,	nCs3,	$02,	nRst,	nCs3,	nAb2,	nRst,	nCs3
	dc.b		nRst,	$04,	nCs3,	$02,	nRst,	nCs3,	nA2,	nRst
	dc.b		nD3,	nRst,	$04,	nAb2,	$02,	nRst,	nCs3,	nCs3
	dc.b		nRst,	nCs3,	nRst,	$04,	nCs3,	$02,	nRst,	nAb2
	dc.b		nA2,	nRst,	nA2,	nRst,	$04,	nCs3,	$02,	nRst
	dc.b		nCs3,	nAb2,	nRst,	nCs3,	nRst,	$04,	nCs3,	$02
	dc.b		nRst,	nCs3,	nA2,	nRst,	nD3,	nRst,	$04,	nE2
	dc.b		$02,	nRst,	$01,	nA2,	$02,	nRst,	$01,	nE2
	dc.b		nRst,	nFs2,	$02,	nRst,	$01,	nB2,	$02,	nRst
	dc.b		$01,	nB2,	nRst,	nCs3,	$02,	nRst,	$01,	nCs3
	dc.b		$02,	nRst,	$01,	nAb2,	nRst,	nFs2,	$02,	nRst
	dc.b		$01,	nFs2,	$02,	nRst,	$01,	nFs2,	nRst,	nA2
	dc.b		$02,	nRst,	$01,	nA2,	$02,	nRst,	$01,	nE2
	dc.b		nRst,	nB2,	$02,	nRst,	$01,	nB2,	$02,	nRst
	dc.b		$01,	nB2,	nRst,	nCs3,	$02,	nRst,	$01,	nCs3
	dc.b		$02,	nRst,	$01,	nCs3,	nRst,	nFs2,	$02,	nRst
	dc.b		$01,	nFs2,	$02,	nRst,	$01,	nFs2,	nRst,	nE2
	dc.b		$02,	nRst,	$01,	nA2,	$02,	nRst,	$01,	nE2
	dc.b		nRst,	nFs2,	$02,	nRst,	$01,	nB2,	$02,	nRst
	dc.b		$01,	nB2,	nRst,	nCs3,	$02,	nRst,	$01,	nCs3
	dc.b		$02,	nRst,	$01,	nAb2,	nRst,	nFs2,	$02,	nRst
	dc.b		$01,	nFs2,	$02,	nRst,	$01,	nFs2,	nRst,	nA2
	dc.b		$02,	nRst,	$01,	nA2,	$02,	nRst,	$01,	nE2
	dc.b		nRst,	nB2,	$02,	nRst,	$01,	nB2,	$02,	nRst
	dc.b		$01,	nB2,	nRst,	nCs3,	$02,	nRst,	$01,	nCs3
	dc.b		$02,	nRst,	$01,	nCs3,	nRst,	nFs2,	$02,	nRst
	dc.b		$01,	nFs2,	$02,	nRst,	$01,	nFs2,	nRst,	nE2
	dc.b		$02,	nE3,	$01,	$01,	nA2,	$02,	nA3,	$01
	dc.b		$01,	nFs2,	$02,	nFs3,	$01,	$01,	nFs2,	$02
	dc.b		nB3,	$01,	$01,	nAb2,	$02,	nAb3,	$01,	$01
	dc.b		nAb2,	$02,	nCs4,	$01,	$01,	nAb2,	$02,	nAb3
	dc.b		$01,	$01,	nFs2,	$02,	nFs3,	$01,	$01,	nE2
	dc.b		$02,	nE3,	$01,	$01,	nA2,	$02,	nA3,	$01
	dc.b		$01,	nFs2,	$02,	nFs3,	$01,	$01,	nFs2,	$02
	dc.b		nB3,	$01,	$01,	nAb2,	$02,	nAb3,	$01,	$01
	dc.b		nAb2,	$02,	nCs4,	$01,	$01,	nAb2,	$02,	nAb3
	dc.b		$01,	$01,	nFs2,	$02,	nFs3,	$01,	$01,	nE2
	dc.b		$02,	nE3,	$01,	$01,	nA2,	$02,	nA3,	$01
	dc.b		$01,	nFs2,	$02,	nFs3,	$01,	$01,	nFs2,	$02
	dc.b		nB3,	$01,	$01,	nAb2,	$02,	nAb3,	$01,	$01
	dc.b		nAb2,	$02,	nCs4,	$01,	$01,	nAb2,	$02,	nAb3
	dc.b		$01,	$01,	nFs2,	$02,	nFs3,	$01,	$01,	nE2
	dc.b		$02,	nE3,	$01,	$01,	nA2,	$02,	nA3,	$01
	dc.b		$01,	nFs2,	$02,	nFs3,	$01,	$01,	nFs2,	$02
	dc.b		nB3,	$01,	$01,	nAb2,	$02,	nAb3,	$01,	$01
	dc.b		nAb2,	$02,	nCs4,	$01,	$01,	nAb2,	$02,	nAb3
	dc.b		$01,	$01,	nFs2,	$02,	nFs3,	$01,	$01
;	Jump To	 	location
	smpsJump	FutureFballz_FM5

; PSG1 Data
FutureFballz_PSG1:
	dc.b		nRst,	$10,	$10,	$10,	$10,	$10,	$10,	$10
	dc.b		$0C
;	Set PSG Voice	#
	smpsPSGvoice	$00
	dc.b		nCs4,	$02,	nEb4,	nE4,	$01,	nRst,	nE5,	nRst
	dc.b		nE4,	nRst,	nE5,	nRst,	nE5,	$02,	nCs5,	nE4
	dc.b		nFs5,	nE5,	nRst,	$01,	nCs5,	$02,	nRst,	$01
	dc.b		nB4,	$02,	nCs5,	nRst,	$04,	nAb3,	$02,	nA4
	dc.b		nRst,	nCs5,	nRst,	nE4,	nRst,	$04,	nFs5,	$02
	dc.b		nE4,	nEb5,	nE5,	nFs4,	nEb5,	nRst,	$06,	nE4
	dc.b		$01,	nRst,	nE4,	nRst,	nE4,	nRst,	nE4,	nRst
	dc.b		nE5,	$02,	nCs4,	nE4,	nFs5,	nE5,	nRst,	$01
	dc.b		nCs4,	$02,	nRst,	$01,	nE5,	$02,	nAb5,	nFs5
	dc.b		nE4,	nRst,	nA3,	nRst,	$01,	nCs5,	$02,	nRst
	dc.b		$01,	nAb5,	$02,	nFs4,	nRst,	$01,	nEb5,	$02
	dc.b		nRst,	$01,	nB3,	$02,	nE5,	nEb4,	nCs5,	nRst
	dc.b		nCs4,	nRst,	nCs4,	nEb4,	nE5,	$07,	nRst,	$01
	dc.b		nEb5,	$07,	nRst,	$01,	nCs5,	$02,	nB4,	nAb4
	dc.b		$0B,	nRst,	$01,	nE5,	$07,	nRst,	$01,	nEb5
	dc.b		$07,	nRst,	$01,	nCs5,	$02,	nB4,	nCs5,	$0B
	dc.b		nRst,	$01,	nE5,	$07,	nRst,	$01,	nEb5,	$07
	dc.b		nRst,	$01,	nCs5,	$02,	nB4,	nAb4,	$0B,	nRst
	dc.b		$01,	nE5,	$07,	nRst,	$01,	nEb5,	$07,	nRst
	dc.b		$01,	nE5,	$02,	nFs5,	nAb5,	$07,	nRst,	$01
	dc.b		nE5,	$02,	nFs5,	nAb5,	$07,	nRst,	$01,	nB4
	dc.b		$07,	nRst,	$01,	nE5,	$02,	nEb5,	nE4,	$0B
	dc.b		nRst,	$01,	nAb5,	$07,	nRst,	$01,	nB4,	$07
	dc.b		nRst,	$01,	nCs5,	$02,	nEb5,	nE5,	$0B,	nRst
	dc.b		$01,	nCs6,	$07,	nRst,	$01,	nFs5,	$07,	nRst
	dc.b		$01,	nE5,	$02,	nFs5,	nE5,	$0B,	nRst,	$01
	dc.b		nCs6,	$07,	nRst,	$01,	nB5,	$07,	nRst,	$01
	dc.b		nE5,	$02,	nB5,	nCs6,	$0B,	nRst,	$01
;	Jump To	 	location
	smpsJump	FutureFballz_PSG1

; PSG2 Data
FutureFballz_PSG2:
	dc.b		nRst,	$10,	$10,	$10,	$10,	$10,	$10,	$10
	dc.b		$0C
;	Set PSG Voice	#
	smpsPSGvoice	$00
	dc.b		nCs5,	$02,	nEb5,	nE5,	$01,	nRst,	nE4,	nRst
	dc.b		nE5,	nRst,	nE4,	nRst,	nE4,	$02,	nCs4,	nE5
	dc.b		nFs4,	nE4,	nRst,	$01,	nCs4,	$02,	nRst,	$01
	dc.b		nB3,	$02,	nCs4,	nRst,	$04,	nAb4,	$02,	nA3
	dc.b		nRst,	nCs4,	nRst,	nE5,	nRst,	$04,	nFs4,	$02
	dc.b		nE5,	nEb4,	nE4,	nFs5,	nEb4,	nRst,	$06,	nE5
	dc.b		$01,	nRst,	nE5,	nRst,	nE5,	nRst,	nE5,	nRst
	dc.b		nE4,	$02,	nCs5,	nE5,	nFs4,	nE4,	nRst,	$01
	dc.b		nCs5,	$02,	nRst,	$01,	nE4,	$02,	nAb4,	nFs4
	dc.b		nE5,	nRst,	nA4,	nRst,	$01,	nCs4,	$02,	nRst
	dc.b		$01,	nAb4,	$02,	nFs5,	nRst,	$01,	nEb4,	$02
	dc.b		nRst,	$01,	nB4,	$02,	nE4,	nEb5,	nCs4,	nRst
	dc.b		nCs5,	nRst,	nCs5,	nEb5,	nE4,	$07,	nRst,	$01
	dc.b		nEb4,	$07,	nRst,	$01,	nCs4,	$02,	nB3,	nAb3
	dc.b		$0B,	nRst,	$01,	nE4,	$07,	nRst,	$01,	nEb4
	dc.b		$07,	nRst,	$01,	nCs4,	$02,	nB3,	nCs4,	$0B
	dc.b		nRst,	$01,	nE4,	$07,	nRst,	$01,	nEb4,	$07
	dc.b		nRst,	$01,	nCs4,	$02,	nB3,	nAb3,	$0B,	nRst
	dc.b		$01,	nE4,	$07,	nRst,	$01,	nEb4,	$07,	nRst
	dc.b		$01,	nE4,	$02,	nFs4,	nAb4,	$07,	nRst,	$01
	dc.b		nE4,	$02,	nFs4,	nCs5,	$07,	nRst,	$01,	nFs5
	dc.b		$07,	nRst,	$01,	nAb4,	$02,	nFs4,	nCs5,	$0B
	dc.b		nRst,	$01,	nCs5,	$07,	nRst,	$01,	nFs5,	$07
	dc.b		nRst,	$01,	nE5,	$02,	nB4,	nCs5,	$0B,	nRst
	dc.b		$01,	nAb5,	$07,	nRst,	$01,	nB5,	$07,	nRst
	dc.b		$01,	nAb5,	$02,	nEb5,	nCs5,	$0B,	nRst,	$01
	dc.b		nAb5,	$07,	nRst,	$01,	nFs5,	$07,	nRst,	$01
	dc.b		nCs6,	$02,	nEb5,	nE5,	$0B,	nRst,	$01
;	Jump To	 	location
	smpsJump	FutureFballz_PSG2

; PSG3 Data
FutureFballz_PSG3:
;	Set PSG WvForm	#
	smpsPSGform	$E7
FutureFballz_Jump01:
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nAb6,	$04
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$04
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$04
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$04
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$04
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$04
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$04
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$04
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$02,	$02
	dc.b		$02,	$02,	$02,	$02,	$02,	$02,	$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02,	$01
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$01
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$02
;	Jump To	 	location
	smpsJump	FutureFballz_Jump01

; DAC Data
FutureFballz_DAC:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	dc.b		dKick,	$04,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick,	dSnare,	dKick
	dc.b		dKick,	dKick,	dSnare,	$02,	dKick,	$04,	$02,	dSnare
	dc.b		$04,	dKick,	dSnare,	$02,	dKick,	$04,	$02,	dSnare
	dc.b		$04,	dKick,	dSnare,	$02,	dKick,	$04,	$02,	dSnare
	dc.b		$04,	dKick,	dSnare,	$02,	dKick,	$04,	$02,	dSnare
	dc.b		$04,	dKick,	dSnare,	$02,	dKick,	$04,	$02,	dSnare
	dc.b		$04,	dKick,	dSnare,	$02,	dKick,	$04,	$02,	dSnare
	dc.b		$04,	dKick,	dSnare,	$02,	dKick,	$04,	$02,	dSnare
	dc.b		$04,	dKick,	dSnare,	$02,	dKick,	$04,	dSnare,	$02
	dc.b		dHiTimpani,	$01,	$01,	dLowTimpani,	$01,	dVLowTimpani,	dKick,	$04
	dc.b		dSnare,	$02,	dKick,	$04,	$02,	dSnare,	$04,	dKick
	dc.b		dSnare,	$02,	dKick,	$04,	$02,	dSnare,	$04,	dKick
	dc.b		dSnare,	$02,	dKick,	$04,	$02,	dSnare,	$04,	dKick
	dc.b		dSnare,	$02,	dKick,	$04,	$02,	dSnare,	$04,	dKick
	dc.b		dSnare,	$02,	dKick,	$04,	$02,	dSnare,	$04,	dKick
	dc.b		dSnare,	$02,	dKick,	$04,	$02,	dSnare,	$04,	dKick
	dc.b		dSnare,	$02,	dKick,	$04,	$02,	dSnare,	$04,	dKick
	dc.b		dSnare,	$02,	dKick,	$04,	$02,	dLowTimpani,	$01,	$01
	dc.b		$01,	$01,	dKick,	$04,	dSnare,	$02,	dKick,	$01
	dc.b		dSnare,	$02,	$01,	dKick,	$02,	dSnare,	dKick,	dKick
	dc.b		$04,	dSnare,	$02,	dKick,	$01,	dSnare,	$02,	$01
	dc.b		dKick,	$02,	dSnare,	dKick,	dKick,	$04,	dSnare,	$02
	dc.b		dKick,	$01,	dSnare,	$02,	$01,	dKick,	$02,	dSnare
	dc.b		dKick,	dKick,	$04,	dSnare,	$02,	dKick,	$01,	dSnare
	dc.b		$02,	$01,	dKick,	$02,	dSnare,	$01,	dVLowTimpani,	dLowTimpani
	dc.b		dHiTimpani,	dKick,	$04,	dSnare,	$02,	dKick,	$01,	dSnare
	dc.b		$02,	$01,	dKick,	$02,	dSnare,	dKick,	dKick,	$04
	dc.b		dSnare,	$02,	dKick,	$01,	dSnare,	$02,	$01,	dKick
	dc.b		$02,	dSnare,	dKick,	dKick,	$04,	dSnare,	$02,	dKick
	dc.b		$01,	dSnare,	$02,	$01,	dKick,	$02,	dSnare,	dKick
	dc.b		dKick,	$04,	dSnare,	$02,	dKick,	$01,	dSnare,	$02
	dc.b		$01,	dKick,	$02,	dSnare,	$01,	dVLowTimpani,	dLowTimpani,	dHiTimpani
;	Jump To	 	location
	smpsJump	FutureFballz_DAC

FutureFballz_Voices:
;	Voice 00
;	$01,$2C,$00,$01,$71,$1F,$1F,$1F,$1F,$08,$08,$11,$06,$00,$02,$00,$00,$33,$36,$46,$16,$2A,$1F,$10,$00
;				#
	smpsVcAlgorithm		$01
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$07,	$00,	$00,	$02
	smpsVcCoarseFreq	$01,	$01,	$00,	$0C
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$06,	$11,	$08,	$08
	smpsVcDecayRate2	$00,	$00,	$02,	$00
	smpsVcDecayLevel	$01,	$04,	$03,	$03
	smpsVcReleaseRate	$06,	$06,	$06,	$03
	smpsVcTotalLevel	$00,	$10,	$1F,	$2A

;	Voice 01
;	$3B,$77,$33,$70,$30,$1F,$90,$1F,$1F,$00,$10,$00,$00,$00,$00,$00,$00,$08,$15,$08,$08,$22,$1A,$19,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$07,	$03,	$07
	smpsVcCoarseFreq	$00,	$00,	$03,	$07
	smpsVcRateScale		$00,	$00,	$02,	$00
	smpsVcAttackRate	$1F,	$1F,	$10,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$00,	$10,	$00
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$00,	$00,	$01,	$00
	smpsVcReleaseRate	$08,	$08,	$05,	$08
	smpsVcTotalLevel	$00,	$19,	$1A,	$22

;	Voice 02
;	$3B,$77,$33,$70,$30,$1F,$90,$1F,$1F,$00,$10,$00,$00,$00,$00,$00,$00,$08,$15,$08,$08,$22,$1A,$19,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$07,	$03,	$07
	smpsVcCoarseFreq	$00,	$00,	$03,	$07
	smpsVcRateScale		$00,	$00,	$02,	$00
	smpsVcAttackRate	$1F,	$1F,	$10,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$00,	$10,	$00
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$00,	$00,	$01,	$00
	smpsVcReleaseRate	$08,	$08,	$05,	$08
	smpsVcTotalLevel	$00,	$19,	$1A,	$22

;	Voice 03
;	$28,$33,$53,$70,$30,$DF,$DC,$1F,$1F,$14,$05,$01,$01,$00,$01,$00,$1D,$11,$21,$10,$F8,$0E,$1B,$12,$00
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$05
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$07,	$05,	$03
	smpsVcCoarseFreq	$00,	$00,	$03,	$03
	smpsVcRateScale		$00,	$00,	$03,	$03
	smpsVcAttackRate	$1F,	$1F,	$1C,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$01,	$01,	$05,	$14
	smpsVcDecayRate2	$1D,	$00,	$01,	$00
	smpsVcDecayLevel	$0F,	$01,	$02,	$01
	smpsVcReleaseRate	$08,	$00,	$01,	$01
	smpsVcTotalLevel	$00,	$12,	$1B,	$0E

;	Voice 04
;	$38,$53,$51,$51,$51,$DF,$DF,$1F,$1F,$07,$0E,$07,$04,$04,$03,$03,$08,$F7,$31,$71,$68,$1B,$11,$10,$00
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$05,	$05,	$05,	$05
	smpsVcCoarseFreq	$01,	$01,	$01,	$03
	smpsVcRateScale		$00,	$00,	$03,	$03
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$04,	$07,	$0E,	$07
	smpsVcDecayRate2	$08,	$03,	$03,	$04
	smpsVcDecayLevel	$06,	$07,	$03,	$0F
	smpsVcReleaseRate	$08,	$01,	$01,	$07
	smpsVcTotalLevel	$00,	$10,	$11,	$1B
	even
