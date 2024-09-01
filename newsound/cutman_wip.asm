; =============================================================================================
; Project Name:		Cutman
; Created:		11st January 2014
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

Cutman_Header:
;	Voice Pointer	location
	smpsHeaderVoice	Cutman_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$05,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$01,	$10

	smpsHeaderDAC	Cutman_DAC
	smpsHeaderFM	Cutman_FM1,	smpsPitch01lo,	$00
	smpsHeaderFM	Cutman_FM2,	smpsPitch00,	$00
	smpsHeaderFM	Cutman_FM3,	smpsPitch00,	$00
	smpsHeaderFM	Cutman_FM1,	smpsPitch00,	$00
	smpsHeaderPSG	Cutman_PSG1,	smpsPitch01lo,	$00,	$00
	smpsHeaderPSG	Cutman_PSG2,	smpsPitch01lo,	$00,	$00
	smpsHeaderPSG	Cutman_PSG3,	smpsPitch00,	$00,	$00


Cutman_FM1:
;	Set FM Voice	#
	smpsFMvoice	$01
;	Set Modulation	wait	speed	change	step
	smpsModSet	$09,	$01,	$04,	$04
	dc.b		nE5,	$0C,	$0C,	$0C,	$06,	$06,	nRst,	$06
	dc.b		nE5,	$06,	$06,	$06,	$0C,	$0C,	$0C,	$0C
	dc.b		$06,	$06,	$06,	$06,	$06,	$06,	$06,	$06
	dc.b		nFs5,	$0C,	nAb5,	$0C
Cutman_FM1_Jump:
;	Call At	 	location
	smpsCall	Cutman_FM1_Call
	dc.b		nEb5,	$24,	nB4,	$0C,	nB4,	nB4,	nCs5,	nEb5
	dc.b		nE5,	$60
;	Call At	 	location
	smpsCall	Cutman_FM1_Call
	dc.b		nB4,	$24,	nA4,	$18,	nAb4,	$0C,	nFs4,	nAb4
	dc.b		nA4,	$30,	smpsNoAttack
;	Alter Volume	value
	smpsAlterVol	$0A
	dc.b		nA3,	$03,	nA3,	nB3,	nC4
;	Alter Volume	value
	smpsAlterVol	$FB
	dc.b		nD4,	nE4,	nF4,	nG4
;	Alter Volume	value
	smpsAlterVol	$FB
	dc.b		nA4,	nB4,	nC5,	nD5,	nE5,	nF5,	nG5,	nA5
	dc.b		nA5,	$30,	smpsNoAttack,	$0C,	nB5,	$18,	nA5,	$0C
	dc.b		nG5,	$60,	nF5,	$30,	smpsNoAttack,	$0C,	nG5,	$18
	dc.b		nF5,	$0C,	nE5,	nF5,	nFs5,	nG5,	$0C,	smpsNoAttack
	dc.b		$30,	nA5,	$30,	smpsNoAttack,	$0C,	nB5,	$18,	nA5
	dc.b		$0C,	nG5,	$18,	nD6,	$0C,	nC6,	$30,	smpsNoAttack
	dc.b		$0C,	nA5,	$06,	$0C,	$06,	$0C,	$0C,	$0C
	dc.b		$0C,	nB5,	$0C,	nA5,	nA5,	$30,	nAb5
;	Jump To	 	location
	smpsJump	Cutman_FM1_Jump
Cutman_FM1_Call:
	dc.b		nA4,	$18,	nRst,	$18,	nB4,	$06,	nC5,	nRst
	dc.b		nD5,	nRst,	nC5,	nRst,	nB4,	nRst,	nC5,	nE4
	dc.b		$0C,	smpsNoAttack,	nE4,	$48,	nA4,	$18,	nRst,	$18
	dc.b		nB4,	$06,	nC5,	nRst,	nD5,	$06,	nRst,	nC5
	dc.b		nRst,	nB4,	nRst,	nD5,	nE5,	$0C,	smpsNoAttack,	nE5
	dc.b		$48,	nF5,	$18,	nRst,	$18,	nF5,	$06,	nG5
	dc.b		nRst,	nF5,	nRst,	nE5,	nRst,	nD5,	nE5,	$18
	dc.b		nRst,	$18,	nE5,	$06,	nF5,	nRst,	nE5,	nRst
	dc.b		nD5,	nRst,	nC5
	smpsReturn

Cutman_FM2:
;	Set FM Voice	#
	smpsFMvoice	$00
	dc.b		nE2,	$0C,	nE2,	nB2,	$06,	nB2,	nB2,	nB2
	dc.b		nE2,	nE2,	nE2,	nE2,	nE3,	$0C,	nE2,	nE2
	dc.b		$0C,	nE2,	nB2,	$06,	nB2,	nB2,	nB2,	nE2
	dc.b		nE2,	nE2,	nE2,	nE3,	$0C,	nE2
Cutman_FM2_Jump:
;	Call At	 	location
	smpsCall	Cutman_FM2_Call
	dc.b		nB2,	$0C,	$06,	$06,	nFs3,	nFs3,	$0C,	nFs3
	dc.b		$06,	nB2,	nB2,	nB2,	nB2,	nFs3,	$0C,	nB2
	dc.b		nE2,	$0C,	$06,	$06,	nB2,	nB2,	$0C,	nB2
	dc.b		$06,	nE2,	nE2,	nE2,	nE2,	nE3,	$0C,	nE2
;	Call At	 	location
	smpsCall	Cutman_FM2_Call
	dc.b		nB2,	$0C,	$06,	$06,	nFs3,	nFs3,	$0C,	nE3
	dc.b		$06,	nE2,	nE2,	nE2,	nE2,	nE3,	$0C,	nE2
	dc.b		nA2,	$0C,	$06,	$06,	nE3,	nE3,	$0C,	nE3
	dc.b		$06,	nA2,	nA2,	nA2,	nA2,	nE3,	$0C,	nA2
	dc.b		nF2,	$0C,	$06,	$06,	nF3,	nF3,	$0C,	nF3
	dc.b		$06,	nG2,	$0C,	$06,	$06,	nG3,	$0C,	$0C
	dc.b		nC2,	$0C,	$06,	$06,	nC3,	nC3,	$0C,	nC3
	dc.b		$06,	nC2,	$0C,	$06,	$06,	nC3,	$0C,	$0C
	dc.b		nD2,	$0C,	$06,	$06,	nD3,	nD3,	$0C,	nD3
	dc.b		$06,	nG2,	$0C,	$06,	$06,	nG3,	$0C,	nG3
	dc.b		nC2,	$0C,	$06,	$06,	nC3,	nC3,	$0C,	nC3
	dc.b		$06,	nC2,	$0C,	$06,	$06,	nC3,	$0C,	$0C
	dc.b		nF2,	$0C,	$06,	$06,	nF3,	nF3,	$0C,	nF3
	dc.b		$06,	nG2,	nG2,	nG2,	nG2,	nG3,	$0C,	$0C
	dc.b		nE2,	$0C,	$06,	$06,	nE3,	nE3,	$0C,	nE3
	dc.b		$06,	nA2,	nA2,	nA2,	nA2,	nA3,	$0C,	$0C
	dc.b		nD2,	$0C,	$06,	$06,	nD3,	nD3,	$0C,	nD3
	dc.b		$06,	nEb2,	nEb2,	nEb2,	nEb2,	nEb3,	$0C,	$0C
	dc.b		nE2,	$0C,	$06,	$06,	nE3,	nE3,	$0C,	nE3
	dc.b		$06,	nE2,	nE2,	nE2,	nE2,	nE3,	$0C,	$0C
;	Jump To	 	location
	smpsJump	Cutman_FM2_Jump
Cutman_FM2_Loop:
	dc.b		nA2,	$0C,	$0C,	nE3,	$06,	$0C,	$06,	nA2
	dc.b		nA2,	nA2,	nA2,	nE3,	$0C,	nA2
Cutman_FM2_Call:
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$05,	Cutman_FM2_Loop
	dc.b		nD2,	$0C,	$06,	$06,	nA2,	nA2,	$0C,	nA2
	dc.b		$06,	nD2,	nD2,	nD2,	nD2,	nA2,	$0C,	nD2
	dc.b		nA2,	$0C,	$06,	$06,	nE3,	nE3,	$0C,	nE3
	dc.b		$06,	nA2,	nA2,	nA2,	nA2,	nE3,	$0C,	nA2
	smpsReturn

Cutman_FM3:
	smpsFMvoice	$01
;	Set Modulation	wait	speed	change	step
	smpsModSet	$09,	$01,	$04,	$04
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nAb3,	$0C,	$0C,	$0C,	$06,	$06,	nRst,	nAb3
	dc.b		$06,	$06,	$06,	$0C,	$0C,	nAb3,	$0C,	$0C
	dc.b		$06,	$06,	$06,	$06,	$06,	$06,	$06,	$06
	dc.b		nA3,	$0C,	nB3
Cutman_FM3_Jump:
;	Alter Volume	value
	smpsAlterVol	$FD
;	Set FM Voice	#
	smpsFMvoice	$02
	dc.b		smpsModOff
;	Call At	 	location
	smpsCall	Cutman_FM3_Call
	dc.b		nB3,	$06,	nB3,	nFs3,	nA3,	nRst,	nB3,	nFs3
	dc.b		nA3,	nRst,	nB3,	nFs3,	nA3,	nB3,	nB3,	nRst
	dc.b		nB3,	nE4,	$06,	nE4,	nB3,	nD4,	nRst,	nE4
	dc.b		nB3,	nD4,	nRst,	nE4,	nB3,	nD4,	nE4,	nE4
	dc.b		nRst,	nE4
;	Call At	 	location
	smpsCall	Cutman_FM3_Call
	dc.b		nB3,	$06,	nB3,	nFs3,	nA3,	nRst,	nB3,	nFs3
	dc.b		nA3,	nRst,	nE4,	nB3,	nD4,	nE4,	nE4,	nRst
	dc.b		nE4,	nA4,	$06,	nA4,	nE4,	nG4,	nRst,	nA4
	dc.b		nE4,	nG4,	nRst,	nA4,	nE4,	nG4,	nA4,	nA4
	dc.b		nRst,	nA4
;	Set FM Voice	#
	smpsFMvoice	$01
;	Set Modulation	wait	speed	change	step
	smpsModSet	$09,	$01,	$04,	$04
;	Alter Volume	value
	smpsAlterVol	$03
	dc.b		nF4,	$30,	smpsNoAttack,	$0C,	nG4,	$18,	nF4,	$0C
	dc.b		nE4,	$60,	nD4,	$30,	smpsNoAttack,	$0C,	nE4,	$18
	dc.b		nD4,	$0C,	nC4,	nD4,	nEb4,	nE4,	$0C,	smpsNoAttack
	dc.b		$30,	nF4,	$30,	smpsNoAttack,	$0C,	nG4,	$18,	nF4
	dc.b		$0C,	nE4,	$18,	nB4,	$0C,	nA4,	$30,	smpsNoAttack
	dc.b		$0C,	nD4,	$06,	$0C,	$06,	$0C,	$0C,	nEb4
	dc.b		$0C,	$0C,	$0C,	$0C,	nE4,	$30,	nE4
;	Alter Volume	value
	smpsAlterVol	$FD
;	Jump To	 	location
	smpsJump	Cutman_FM3_Jump
Cutman_FM3_Loop:
	dc.b		nA4,	$06,	nA4,	nE4,	nG4,	nRst,	nA4,	nE4
	dc.b		nG4,	nRst,	nA4,	nE4,	nG4,	nA4,	nA4,	nRst
	dc.b		nA4
Cutman_FM3_Call:
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$05,	Cutman_FM3_Loop
	dc.b		nD4,	$06,	nD4,	nA3,	nC4,	nRst,	nD4,	nA3
	dc.b		nC4,	nRst,	nD4,	nA3,	nC4,	nD4,	nD4,	nRst
	dc.b		nD4,	nA4,	$06,	nA4,	nE4,	nG4,	nRst,	nA4
	dc.b		nE4,	nG4,	nRst,	nA4,	nE4,	nG4,	nA4,	nA4
	dc.b		nRst,	nA4
	smpsReturn

Cutman_DAC:
	dc.b		$81,	$0C,	$0C,	$82,	$0C,	$81,	$06,	$0C,	$0C
	dc.b		$81,	$06,	$82,	$0C,	$81,	$06,	$06
	smpsJump	Cutman_DAC

Cutman_PSG1:
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nB1,	$0C,	$0C,	$0C,	$06,	$06,	nRst,	$06
	dc.b		nB1,	$06,	$06,	$06,	$0C,	$0C,	$0C,	$0C
	dc.b		$06,	$06,	$06,	$06,	$06,	$06,	$06,	$06
	dc.b		nD2,	$0C,	nE2,	$0C
Cutman_PSG1_Jump:
;	Call At	 	location
	smpsCall	Cutman_PSG1_Call
	dc.b		nRst,	$0C,	nFs2,	$12,	nFs2,	nFs2,	$30,	nRst
	dc.b		$0C,	nAb2,	$12,	nAb2,	$12,	$06,	$0C,	nA2
	dc.b		nB2,	$12
;	Call At	 	location
	smpsCall	Cutman_PSG1_Call
	dc.b		nRst,	$0C,	nFs2,	$12,	nFs2,	nAb2,	$30,	nRst
	dc.b		$0C,	nA2,	$12,	$12,	$30,	nF2,	$24,	$18
	dc.b		nG2,	$24,	nC2,	$0C,	nE2,	nG2,	nC3,	nE3
	dc.b		nG3,	$24,	nD2,	$24,	$18,	$24,	nE2,	$0C
	dc.b		nF2,	nFs2,	nG2,	nE3,	nF3,	nFs3,	nG3,	nF2
	dc.b		$24,	$18,	nG2,	$24,	nB2,	$24,	nA2,	$30
	dc.b		smpsNoAttack,	$0C,	nF2,	$18,	$18,	nFs2,	$30,	nRst
	dc.b		$0C,	nE2,	nAb2,	nB2,	nE3,	$18,	nD3,	$03
	dc.b		nC3,	nB2,	nA2,	nAb2,	nF2,	nE2,	nD2
;	Jump To	 	location
	smpsJump	Cutman_PSG1_Jump
Cutman_PSG1_Call:
	dc.b		nRst,	$0C,	nA2,	$12,	nA2,	nA2,	$30,	nRst
	dc.b		$0C,	nA2,	$12,	nA2,	nA2,	$0C,	nG2,	$06
	dc.b		nA2,	$18,	smpsNoAttack,	$06,	nRst,	$0C,	nA2,	$12
	dc.b		nA2,	nA2,	$30,	nRst,	$0C,	nA2,	$12,	nA2
	dc.b		nA2,	$0C,	nG2,	$06,	nA2,	$18,	smpsNoAttack,	$06
	dc.b		nRst,	$0C,	nA2,	$12,	nA2,	nA2,	$30,	nRst
	dc.b		$0C,	nA2,	$12,	nA2,	nA2,	$30
	smpsReturn

Cutman_PSG2:
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		nE1,	$0C,	$0C,	$0C,	$06,	$06,	nRst,	$06
	dc.b		nE1,	$06,	$06,	$06,	$0C,	$0C,	$0C,	$0C
	dc.b		$06,	$06,	$06,	$06,	$06,	$06,	$06,	$06
	dc.b		nFs1,	$0C,	nAb1,	$0C
Cutman_PSG2_Jump:
;	Call At	 	location
	smpsCall	Cutman_PSG2_Call
	dc.b		nRst,	$0C,	nEb2,	$12,	nEb2,	nEb2,	$30,	nRst
	dc.b		$0C,	nE2,	$12,	nE2,	$12,	$06,	$0C,	nFs2
	dc.b		nAb2,	$12
;	Call At	 	location
	smpsCall	Cutman_PSG2_Call
	dc.b		nRst,	$0C,	nEb2,	$12,	nEb2,	nE2,	$30,	nRst
	dc.b		$0C,	nE2,	$12,	$12,	$30
;	Alter Notes	value
	smpsAlterNote	$FF
	dc.b		nC2,	$24,	$18,	nD2,	$24
;	Set Volume	value
	smpsSetVol	$03
	dc.b		nRst,	$0C,	nC2,	nE2,	nG2,	nC3,	nE3,	nG3
	dc.b		$18
;	Set Volume	value
	smpsSetVol	$FD
	dc.b		nA1,	$24,	$18,	nB1,	$24
;	Set Volume	value
	smpsSetVol	$03
	dc.b		nRst,	$0C,	nE2,	nF2,	nFs2,	nG2,	nE3,	nF3
	dc.b		nFs3
;	Set Volume	value
	smpsSetVol	$FD
	dc.b		nC2,	$24,	$18,	nD2,	$24,	nG2,	$24,	nE2
	dc.b		$30,	smpsNoAttack,	$0C,	nD2,	$18,	$18,	nEb2,	$30
;	Set Volume	value
	smpsSetVol	$03
	dc.b		nRst,	$18,	nE2,	$0C,	nAb2,	nB2,	nE3,	$0C
	dc.b		nRst,	$03,	nD3,	$03,	nC3,	nB2,	nA2,	nAb2
	dc.b		nF2,	nE2
;	Set Volume	value
	smpsSetVol	$FD
;	Alter Notes	value
	smpsAlterNote	$01
;	Jump To	 	location
	smpsJump	Cutman_PSG2_Jump
Cutman_PSG2_Call:
	dc.b		nRst,	$0C,	nE2,	$12,	nE2,	nE2,	$30,	nRst
	dc.b		$0C,	nE2,	$12,	nE2,	nE2,	$0C,	nE2,	$06
	dc.b		nE2,	$18,	smpsNoAttack,	$06,	nRst,	$0C,	nE2,	$12
	dc.b		nE2,	nE2,	$30,	nRst,	$0C,	nE2,	$12,	nE2
	dc.b		nE2,	$0C,	nE2,	$06,	nE2,	$18,	smpsNoAttack,	$06
	dc.b		nRst,	$0C,	nF2,	$12,	nF2,	nF2,	$30,	nRst
	dc.b		$0C,	nE2,	$12,	nE2,	nE2,	$30
	smpsReturn

Cutman_PSG3:
;	Set PSG WvForm	#
	smpsPSGform	$E7
	smpsAlterNote	$00
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		nA5,	$06,	$06,	$06,	$06
;	Set PSG Voice	#
	smpsPSGvoice	$01
	dc.b		$06
;	Set PSG Voice	#
	smpsPSGvoice	$02
	dc.b		$06,	$06,	$06
;	Jump To	 	location
	smpsJump	Cutman_PSG3

Cutman_Voices:
; HOORAY FOR RIPPED INSTRUMENTS! :D
        dc.b	$3C,$01,$00,$00,$00,$1F,$1F,$15,$1F,$11,$0D,$12,$05,$07,$04,$09,$02,$55,$3A,$25
	dc.b	$1A,$1A,$0A,$07,$0A ;$00 MMTWW Bass
        dc.b	$3D,$01,$01,$01,$01,$94,$19,$19,$19,$0F,$0D,$0D,$0D,$07,$04,$04,$04,$25,$1A,$1A
	dc.b	$1A,$15,$12,$12,$12 ;$01 MMTWW Trumpet Lead
	dc.b	$1C,$3F,$01,$01,$01,$9F,$DB,$1E,$5E,$1F,$07,$06,$06,$08,$0A,$0B,$00,$88,$8A,$F6
	dc.b	$F7,$28,$25,$2A,$0F ;$02 MMTWW Soft Sine Lead