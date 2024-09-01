; =============================================================================================
; Project Name:		S3KActClear
; Created:		11st January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

S3KActClear_Header:
;	Voice Pointer	location
	smpsHeaderVoice	S3KActClear_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$01,	$05

;	DAC Pointer	location
	smpsHeaderDAC	S3KActClear_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	S3KActClear_FM1,	smpsPitch02hi,	$05
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	S3KActClear_FM2,	smpsPitch02hi,	$05
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	S3KActClear_FM3,	smpsPitch01hi,	$05
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	S3KActClear_FM4,	smpsPitch01hi,	$05
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	S3KActClear_FM5,	smpsPitch01hi,	$05
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	S3KActClear_PSG1,	smpsPitch01lo,	$03,	$02
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	S3KActClear_PSG2,	smpsPitch01lo,	$03,	$02
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	S3KActClear_PSG3,	smpsPitch00,	$05,	$02

; DAC Data
S3KActClear_DAC:
	dc.b		dSnare,	$06,	dKick,	dKick,	dSnare,	dKick,	dKick,	dSnare
	dc.b		dKick,	dSnare,	dKick,	dKick,	dSnare,	dKick,	dKick,	dSnare
	dc.b		dKick,	$01,	nRst,	dKick,	dKick,	nRst,	dKick,	dHiTimpani
	dc.b		$06,	dMidTimpani,	dLowTimpani,	dHiTimpani,	dMidTimpani,	dLowTimpani,	dHiTimpani,	dMidTimpani
	dc.b		dLowTimpani,	dSnare
	smpsStop

; FM1 Data
S3KActClear_FM1:
;	Set FM Voice	#
	smpsFMvoice	$00
	dc.b		nG0,	$05,	nRst,	$01,	nG1,	$05,	nRst,	$01
	dc.b		nG0,	$05,	nRst,	$01,	nD1,	$05,	nRst,	$07
	dc.b		nG1,	$05,	nRst,	$01,	nG0,	$05,	nRst,	$07
	dc.b		nA0,	$05,	nRst,	$01,	nA1,	$05,	nRst,	$01
	dc.b		nA0,	$05,	nRst,	$01,	nE1,	$05,	nRst,	$07
	dc.b		nA1,	$05,	nRst,	$01,	nA0,	$05,	nRst,	$07
	dc.b		nD1,	$05,	nRst,	$01,	nD2,	$05,	nRst,	$01
	dc.b		nD1,	$05,	nRst,	$01,	nE1,	$05,	nRst,	$01
	dc.b		nE2,	$05,	nRst,	$01,	nE1,	$05,	nRst,	$01
	dc.b		nG1,	$05,	nRst,	$01,	nG2,	$05,	nRst,	$01
	dc.b		nG1,	$05,	nRst,	$01,	nA1,	$5F,	nRst,	$01
	smpsStop

; FM2 Data
S3KActClear_FM2:
;	Alter Notes	value
	smpsAlterNote	$03
;	Set FM Voice	#
	smpsFMvoice	$02
S3KActClear_Jump01:
	dc.b		nD3,	$06,	nD3,	nD3,	nD3,	$07,	nRst,	$05
	dc.b		nD3,	$07,	nRst,	$05,	nE3,	$05,	nRst,	$07
	dc.b		nE3,	$05,	nRst,	$07,	nE3,	$07,	nRst,	$05
	dc.b		nE3,	$11,	nRst,	$01,	nG3,	$05,	nRst,	$0D
	dc.b		nA3,	$05,	nRst,	$0D,	nC4,	$11,	nRst,	$01
	dc.b		nD4,	$5F,	nRst,	$01
	smpsStop

; FM3 Data
S3KActClear_FM3:
;	Alter Notes	value
	smpsAlterNote	$FF
;	Set FM Voice	#
	smpsFMvoice	$01
	dc.b		nC3,	$06,	nC3,	nC3,	nB2,	nRst,	nB2,	nRst
	dc.b		nD3,	nRst,	$06,	nD3,	$06,	nRst,	$06,	nCs3
	dc.b		$06,	nRst,	nCs3,	$11,	nRst,	$01,	nE3,	$05
	dc.b		nRst,	$0D,	nFs3,	$05,	nRst,	$0D,	nA3,	$11
	dc.b		nRst,	$01,	nB3,	$5F,	nRst,	$01
	smpsStop

; FM4 Data
S3KActClear_FM4:
;	Alter Notes	value
	smpsAlterNote	$01
;	Set FM Voice	#
	smpsFMvoice	$01
S3KActClear_Jump02:
	dc.b		nG2,	$06,	nG2,	nG2,	nG2,	nRst,	nG2,	nRst
	dc.b		nA2,	nRst,	nA2,	$03,	nRst,	$09,	nA2,	$05
	dc.b		nRst,	$07,	nA2,	$11,	nRst,	$01,	nC3,	$05
	dc.b		nRst,	$0D,	nD3,	$05,	nRst,	$0D,	nF3,	$11
	dc.b		nRst,	$01,	nG3,	$5F,	nRst,	$01
	smpsStop

; FM5 Data
S3KActClear_FM5:
;	Alter Notes	value
	smpsAlterNote	$FD
;	Set FM Voice	#
	smpsFMvoice	$01
;	Jump To	 	location
	smpsJump	S3KActClear_Jump01

; PSG1 Data
S3KActClear_PSG1:
;	Alter Notes	value
	smpsAlterNote	$00
;	Set PSG Voice	#
	smpsPSGvoice	$03
;	Jump To	 	location
	smpsJump	S3KActClear_Jump01

; PSG2 Data
S3KActClear_PSG2:
;	Alter Notes	value
	smpsAlterNote	$FF
;	Set FM Voice	#
	smpsFMvoice	$01
;	Set PSG Voice	#
	smpsPSGvoice	$03
;	Jump To	 	location
	smpsJump	S3KActClear_Jump02

; PSG3 Data
S3KActClear_PSG3:
;	Set PSG Voice	#
	smpsPSGvoice	$03
;	Set PSG WvForm	#
	smpsPSGform	$E7
	dc.b		nB6,	$06,	nB6,	nB6,	nB6,	$05,	nRst,	$07
	dc.b		nB6,	$05,	nRst,	$07,	nB6,	$03,	nRst,	$09
	dc.b		nB6,	$03,	nRst,	$09,	nB6,	$05,	nRst,	$07
	dc.b		nB6,	$11,	nRst,	$01,	nB6,	$05,	nRst,	$0D
	dc.b		nB6,	$05,	nRst,	$0D,	nB6,	$11,	nRst,	$01
	dc.b		nB6,	$5F,	nRst,	$01
	smpsStop

S3KActClear_Voices:

        dc.b	$3C,$01,$00,$00,$00,$1F,$1F,$15,$1F,$11,$0D,$12,$05,$07,$04,$09,$02,$55,$3A,$25
	dc.b	$1A,$1A,$0A,$07,$0A ;$00 MMTWW Bass
        dc.b	$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04,$04,$25,$1A,$1A
	dc.b	$1A,$15,$12,$12,$12 ;$01 MMTWW Trumpet Lead
	dc.b	$1C,$3F,$01,$01,$01,$9F,$DB,$1E,$5E,$1F,$07,$06,$06,$08,$0A,$0B,$00,$88,$8A,$F6
	dc.b	$F7,$28,$25,$2A,$0F ;$02 MMTWW Soft Sine Lead
	even