; =============================================================================================
; Ninja Gaiden - The Masked Devil
;
; Made by hand ^_^
; =============================================================================================

MaskedDevil_Header:
	smpsHeaderVoice	MaskedDevil_Voices
	smpsHeaderChan	$05,	$03
	smpsHeaderTempo	$06,	$07

	smpsHeaderDAC	MaskedDevil_DAC
	smpsHeaderFM	MaskedDevil_FM1,	smpsPitch01hi,	$06
	smpsHeaderFM	MaskedDevil_FM2,	smpsPitch01hi,	$06
	smpsHeaderFM	MaskedDevil_FM3,	smpsPitch00,	$05
	smpsHeaderFM	MaskedDevil_FM4,	smpsPitch01hi,	$05
	smpsHeaderPSG	MaskedDevil_PSG1,	smpsPitch01lo,	$02,	$00
	smpsHeaderPSG	MaskedDevil_PSG2,	smpsPitch01lo,	$04,	$00
	smpsHeaderPSG	MaskedDevil_PSG3,	smpsPitch00,	$00,	$00

MaskedDevil_FM1:	;Here's the lead
	smpsFMVoice $00
	smpsPan	panLeft,$00
MaskedDevil_J1:
	dc.b	nEb4,$01,nRst,nEb4,nRst
	dc.b	nC4,nC4,nD4,$02,nD4,nG3,$01
	dc.b	nG3,nBb3,nBb3,nG3,nG3
	dc.b	nEb4,$01,nG2,nEb4,nBb2,nC4
	dc.b	nC3,nD4,$03,nC3,$01,nG3,nG2
	dc.b	nBb3,nBb2,nG3,nC3
@loop1:	dc.b	nEb4,$01,nG2,nEb4,nBb2,nC4
	dc.b	nC3,nD4,$03,nC3,$01,nG3,nG2
	dc.b	nBb3,nBb2,nG3,nC3
	smpsLoop $01,$04,@loop1
	dc.b	nF4,$01,nF2,nF4,nG2,nEb4
	dc.b	nBb2,nD4,$03,nBb2,$01
	dc.b	nBb3,nF2,nC4,nG2,nBb3,nBb2
	dc.b	nF4,$01,nD2,nF4,nF2,nEb4
	dc.b	nG2,nD4,$03,nG2,$01
	dc.b	nG3,nD2,nG4,nF2,nD4,nG2
        smpsJump @loop1

MaskedDevil_FM2:	;Echo. :P
	smpsFMVoice $00
	smpsPan	panRight,$00
	dc.b	nRst,$03
	smpsModSet	$01,$06,$08,$02
	dc.b	smpsModOn
	smpsJump	MaskedDevil_J1

MaskedDevil_FM3:	;Triangle.
	smpsFMVoice $01
MaskedDevil_J2:
	dc.b	nRst,$20
	dc.b	nC3,nAb2,nBb2,$10,nG2
@jump:

@l_nC:	dc.b	nC3,$01,nRst
	smpsLoop $02,$0F,@l_nC
	dc.b	nB2,$01,nRst
@l_nAb:	dc.b	nAb2,$01,nRst
	smpsLoop $03,$0F,@l_nAb
	dc.b	nA2,$01,nRst
@l_nBb:	dc.b	nBb2,$01,nRst
	smpsLoop $04,$07,@l_nBb
	dc.b	nAb2,$01,nRst
@l_nG:	dc.b	nG2,$01,nRst
	smpsLoop $05,$07,@l_nG
	dc.b	nAb2,$01,nRst
	smpsJump @jump

MaskedDevil_FM4:
	smpsFMVoice $02
	smpsJump MaskedDevil_J2

MaskedDevil_DAC:
	dc.b	nRst,$20
@loop:	dc.b	dKick,$04
	smpsLoop $07,$17,@loop
	dc.b	dSnare,$02,dSnare,$01,$01
@jump:
@loop1:	dc.b	dKick,$04,dSnare,$04
	smpsLoop $08,$03,@loop1
	dc.b	dKick,$04,dSnare,$02,$01,$01
	smpsLoop $09,$02,@loop1
@loop2:	dc.b	dKick,$04,dSnare,$04
	smpsLoop $08,$03,@loop2
	dc.b	dSnare,$01,$02,$01,dHiTom,dMidTom,dLowTom,dVLowTom
	smpsJump @jump

MaskedDevil_PSG1:
	smpsPSGvoice $01
	smpsJump MaskedDevil_J1
MaskedDevil_PSG2:
	smpsPSGvoice $01
	dc.b	nRst,$03
	smpsJump MaskedDevil_J1
MaskedDevil_PSG3:
	smpsPSGform	$E7
	dc.b	nRst,$20
@jump:	smpsPSGvoice $02
	dc.b	nA5,$01,nA5,$01
	smpsLoop $06,$07,@jump
	smpsPSGvoice $01
	dc.b	nA5,$02
	smpsJump @jump


MaskedDevil_Voices:
	UVBVoice	0A_SynthTrumpet
	UVBVoice	22_StrikelikeSlapBass
	IncludeVoice	ClassicBrass
	even