; =============================================================================================
; Song name:		Eternal Shrine Maiden
; Game name:		Touhou 01 (Highly Responsive to Prayers)
; Composer:		ZUN
; SMPS cover by:	Zy BG9K
; Date: March 31 2014
; =============================================================================================

TH01_Header:
	smpsHeaderVoice	TH01_Voices
	smpsHeaderChan	$06,	$02
	smpsHeaderTempo	$05,	$04

	smpsHeaderDAC	TH01_DAC
	smpsHeaderFM	TH01_FM1,	smpsPitch00,	$0A ;Bass/Flute
	smpsHeaderFM	TH01_FM4,	smpsPitch00,	$13 ;Chords 3 / Support
	smpsHeaderFM	TH01_FM5,	smpsPitch00,	$11 ;Chords 1 / Lead
	smpsHeaderFM	TH01_FM2,	smpsPitch03lo,	$14 ;Chords 1
	smpsHeaderFM	TH01_FM3,	smpsPitch03lo,	$14 ;Chords 2
	smpsHeaderPSG	TH01_PSG1,	smpsPitch01lo,	$02,	$03
	smpsHeaderPSG	TH01_PSG2,	smpsPitch02lo,	$01,	$06
	;smpsHeaderPSG	TH01_PSG3,	smpsPitch00,	$00,	$00

TH01_DAC:
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern2
	smpsCall	@pattern2
	smpsCall	@pattern3
	smpsCall	@pattern3
	smpsCall	@pattern3
	smpsCall	@pattern3
	smpsCall	@pattern3
	smpsCall	@pattern3
	smpsJump	TH01_DAC
@pattern0:	dc.b	dKick,$10,$10,$10,$10
		smpsReturn
@pattern1:	dc.b	dKick,$04,dSnare
		smpsLoop $00,$07,@pattern1
		dc.b	dKick,$04,dSnare,$02,$01,$01
		smpsReturn
@pattern2:	dc.b	dSnare,$10,nRst,$10,$10,$10
		smpsReturn
@pattern3:	dc.b	dKick,$02,dSnare
		dc.b	dKick,$01,$01,dSnare,$02
		dc.b	dKick,$02,dSnare,$01,dKick,$02
		dc.b	dKick,$01,dSnare,dSnare
		smpsLoop $00,$04,@pattern3
		smpsReturn



TH01_PSG1:
	smpsPSGvoice	$00
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsJump	TH01_PSG1
@pattern0:	dc.b	nC2,$10,nAb1,nBb1,nG1
		smpsReturn
@pattern1:	dc.b	nRst,$10,$10,$10,$10
		smpsReturn
		
		
		
TH01_PSG2:
	smpsPSGvoice	$04
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsJump	TH01_PSG2
@pattern0:	dc.b	nRst,$06
		dc.b	nEb5,$01,nF5,nG5,$02
		smpsAlterVol	$02
		dc.b	nEb5,$01,nF5,nG5,$02
		smpsAlterVol	$02
		dc.b	nEb5,$01,nF5
		smpsAlterVol	-$04
		dc.b	nRst,$10
		dc.b	nRst,$06
		dc.b	nEb5,$01,nF5,nG5,$02
		smpsAlterVol	$02
		dc.b	nEb5,$01,nF5,nG5,$02
		smpsAlterVol	$02
		dc.b	nEb5,$01,nF5
		smpsAlterVol	-$04
		dc.b	nRst,$10
		smpsReturn
@pattern1:	dc.b	nC5,  $01, nG4
		dc.b	nC5,  $01, nG4
		dc.b	nD5,  $01, nG4
		dc.b	nEb5, $01, nG4
		dc.b	nF5,  $01, nG4
		dc.b	nEb5, $01, nG4
		dc.b	nD5,  $01, nG4
		dc.b	nEb5, $01, nG4
		dc.b	nC5,  $01, nG4
		dc.b	nC5,  $01, nG4
		dc.b	nD5,  $01, nG4
		dc.b	nEb5, $01, nG4
		dc.b	nD5,  $01, nG4
		dc.b	nEb5, $01, nG4
		dc.b	nF5,  $01, nG4
		dc.b	nD5,  $01, nG4
		smpsLoop $00,$02,@pattern1
		smpsReturn
		
		
		
TH01_FM1:
	smpsFMvoice	$00		; Flute
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsFMvoice	$01		; Slap Bass
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern2
	smpsCall	@pattern2
	smpsCall	@pattern2
	smpsCall	@pattern2
	smpsJump	TH01_FM1
@pattern0:	smpsPan		panLeft,0
		dc.b	nC3,$02
		smpsPan		panCenter,0
		dc.b	nC4,$02
		smpsPan		panRight,0
		dc.b	nEb3,$02
		smpsPan		panCenter,0
		dc.b	nC4,$02
		smpsPan		panLeft,0
		dc.b	nG3,$02
		smpsPan		panCenter,0
		dc.b	nC4,$02
		smpsPan		panRight,0
		dc.b	nEb3,$02
		smpsPan		panCenter,0
		dc.b	nC4,$02
		smpsLoop $00,$03,@pattern0
		smpsPan		panLeft,0
		dc.b	nB2,$02
		smpsPan		panCenter,0
		dc.b	nB3,$02
		smpsPan		panRight,0
		dc.b	nEb3,$02
		smpsPan		panCenter,0
		dc.b	nB3,$02
		smpsPan		panLeft,0
		dc.b	nG3,$02
		smpsPan		panCenter,0
		dc.b	nB3,$02
		smpsPan		panRight,0
		dc.b	nEb3,$02
		smpsPan		panCenter,0
		dc.b	nB3,$02
		smpsReturn
@pattern1:	dc.b	nC3,$10,nBb2,nAb2,nBb2
		smpsReturn
@pattern2:	dc.b	nAb2,$10,nBb2,nC3,$10
		dc.b	smpsNoAttack
		dc.b	nC3,$10
		smpsReturn
		
		

TH01_FM2:
	smpsFMvoice	$02		; GHZ Brass
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern2
	smpsCall	@pattern2
	smpsCall	@pattern2
	smpsCall	@pattern2
	smpsJump	TH01_FM2
@pattern0:	dc.b	nC5,$10,nAb4,nBb4,nG4
		smpsReturn
@pattern1:	dc.b	nEb4,$10,nD4,nC4,nD4
		smpsReturn
@pattern2:	dc.b	nC4,$10,nD4,nEb4,nRst
		smpsReturn
		

TH01_FM3:
	smpsFMvoice	$02		; GHZ Brass
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsCall	@pattern2
	smpsCall	@pattern2
	smpsCall	@pattern2
	smpsCall	@pattern2
	smpsJump	TH01_FM3
@pattern0:	dc.b	nG4,$10,nEb4,nF4,nD4
		smpsReturn
@pattern1:	dc.b	nG4,$10,nF4,nEb4,nF4
		smpsReturn
@pattern2:	dc.b	nEb4,$10,nF4,nG4,nRst
		smpsReturn
		
		
		
TH01_FM4:
        smpsAlterPitch	-24
	smpsFMvoice	$02		; GHZ Brass
	smpsCall	@pattern0
	smpsAlterPitch	24
@asdf:	smpsAlterPitch	-24
	smpsAlterVol	$02
	smpsFMvoice	$02		; GHZ Brass
	smpsCall	@pattern0
	smpsCall	@pattern0
	smpsAlterPitch	24
	smpsAlterVol	-$02
	smpsFMvoice	$03		;  Other Brass 1
	smpsCall	@pattern1
	smpsCall	@pattern1
	smpsAlterVol	-$07
	smpsFMvoice	$04		;  Other Brass 2
	smpsCall	@pattern3
	smpsCall	@pattern4
	smpsCall	@pattern3
	smpsCall	@pattern4
	smpsCall	@pattern5
	smpsCall	@pattern5
	smpsCall	@pattern6
	smpsCall	@pattern7
	smpsAlterVol	$07
	smpsFMvoice	$03		;  Other Brass 1
	smpsCall	@pattern8
	smpsJump	@asdf
@pattern0:	dc.b	nEb4,$10,nC4,nD4,nB3
		smpsReturn
@pattern1:	dc.b	nC4,$06,nEb4,nC4,$04
		dc.b	nC4,$06,nEb4,nC4,$04
		dc.b	nC4,$06,nEb4,nBb3,$04
		dc.b	nB3,$06,nB3,nB3,$02,$02
		smpsReturn
@pattern3:	dc.b	nD4,$06,nEb4,nF4,$04
		dc.b	nD4,$04,nEb4,$02,nD4,$04,nC4,$02,nBb4,$04
		dc.b	nC4,$06,nG4,nC4,$04
		dc.b	nC4,$06,nG4,$0A
		smpsReturn
@pattern4:	dc.b	nD4,$06,nEb4,nF4,$04
		dc.b	nD4,$04,nEb4,$02,nF4,$04,nBb4,$02,nF4,$04
		dc.b	nEb4,$06,nD4,nC4,$04
		dc.b	nD4,$04,nEb4,$02,nF4,$A
		smpsReturn
@pattern5:	dc.b	nEb4,$08,nD4,$04,nC4,$02,nD4,$0A
		dc.b	nC4,$04,nBb3,$02,nC4,$12,nRst,$08
		dc.b	nC4,$02,nRst,nD4,nRst
                smpsReturn
@pattern6:	dc.b	nG4,$08,nF4,$04,nEb4,$02,nF4,$0A
		dc.b	nEb4,$04,nD4,$02,nEb4,$04,nC4,$0E,nRst,$08
		dc.b	nC4,$02,nRst,nD4,nRst
                smpsReturn
@pattern7:	dc.b	nG4,$08,nF4,$04,nEb4,$02,nF4,$0A
		dc.b	nEb4,$04,nD4,$02,nEb4,$04,nC4,$0E,nRst,$10
                smpsReturn
@pattern8:	dc.b	nC5,$10,nAb4,nC5,nB4
		smpsReturn
		


TH01_FM5:
	smpsAlterVol	-$02
	smpsFMvoice	$03		;  Other Brass 1
	smpsCall	@pattern0
@asdf:	smpsCall	@patternX
	smpsCall	@patternY
	smpsCall	@pattern1
	smpsCall	@pattern2
	smpsAlterVol	-$07
	smpsFMvoice	$04		;  Other Brass 2
	smpsCall	@pattern3
	smpsCall	@pattern4
	smpsCall	@pattern3
	smpsCall	@pattern4
	smpsCall	@pattern5
	smpsCall	@pattern5
	smpsCall	@pattern6
	smpsCall	@pattern7
	smpsAlterVol	$07
	smpsFMvoice	$03		;  Other Brass 1
	smpsCall	@pattern8
	smpsJump	@asdf
@pattern0:	dc.b	nRst,$10,$10,$10,$06
		dc.b	nEb4,$02,$02,nF4,nG4,$04
		smpsReturn
@patternX:	dc.b	nC4,$06,nEb4,$04,nF4,$02,nG4,$04
		dc.b	nC4,$06,nEb4,$04,nF4,$02,nG4,$04
		dc.b	nC4,$06,nEb4,$04,nF4,$02,nD4,$04
		dc.b	nD4,$06,nEb4,nF4,$02,nG4
		smpsReturn
@patternY:	dc.b	nC4,$06,nEb4,$04,nF4,$02,nG4,$04
		dc.b	nC4,$06,nEb4,$04,nF4,$02,nG4,$04
		dc.b	nC4,$06,nEb4,$04,nF4,$02,nD4,$04
		dc.b	nD4,$06,nEb4,nAb4,$04
		smpsReturn
@pattern1:	dc.b	nEb4,$06,nG4,nEb4,$04
		dc.b	nEb4,$06,nG4,nEb4,$04
		dc.b	nEb4,$06,nG4,nD4,$04
		dc.b	nD4,$06,nEb4,nF4,$02,nG4,$02
		smpsReturn
@pattern2:	dc.b	nEb4,$06,nG4,nEb4,$04
		dc.b	nEb4,$06,nG4,nEb4,$04
		dc.b	nEb4,$06,nG4,nD4,$04
		dc.b	nD4,$06,nAb4,nG4,$02,nF4,$02
		smpsReturn
@pattern3:	dc.b	nD6,$06,nEb6,nF6,$04
		dc.b	nD6,$04,nEb6,$02,nD6,$04,nC6,$02,nBb5,$04
		dc.b	nC6,$06,nG6,nC6,$04
		dc.b	nC6,$06,nG6,$0A
		smpsReturn
@pattern4:	dc.b	nD6,$06,nEb6,nF6,$04
		dc.b	nD6,$04,nEb6,$02,nF6,$04,nBb6,$02,nF6,$04
		dc.b	nEb6,$06,nD6,nC6,$04
		dc.b	nD6,$04,nEb6,$02,nF6,$A
		smpsReturn
@pattern5:	dc.b	nEb6,$08,nD6,$04,nC6,$02,nD6,$0A
		dc.b	nC6,$04,nBb5,$02,nC6,$12,nRst,$08
		dc.b	nC6,$02,nRst,nD6,nRst
                smpsReturn
@pattern6:	dc.b	nG6,$08,nF6,$04,nEb6,$02,nF6,$0A
		dc.b	nEb6,$04,nD6,$02,nEb6,$04,nC6,$0E,nRst,$08
		dc.b	nC6,$02,nRst,nD6,nRst
                smpsReturn
@pattern7:	dc.b	nG6,$08,nF6,$04,nEb6,$02,nF6,$0A
		dc.b	nEb6,$04,nD6,$02,nEb6,$04,nC6,$0E,nRst,$10
                smpsReturn
@pattern8:	dc.b	nEb5,$10,nF5,nD5,nG4,$06
		dc.b	nEb4,$02,$02,nF4,nG4,$04
		smpsReturn
		
TH01_Voices:
;00 FLUTE
	dc.b	$04,$72,$42,$32,$32,$12,$12,$12,$12,$00,$08,$00,$08,$00,$08,$00,$08,$0F,$1F,$0F
	dc.b	$1F,$23,$80,$23,$80
;01 SLAP BASS
	dc.b	$20,$36,$35,$30,$31,$DF,$DF,$9F,$9F,$07,$06,$09,$06,$07,$06,$06,$08,$20,$10,$10
	dc.b	$F8,$19,$37,$13,$80
;02 GHZ BRASS
	dc.b	$2C,$74,$74,$34,$34,$1F,$12,$1F,$1F,$00,$07,$00,$07,$00,$07,$00,$07,$00,$38,$00
	dc.b	$38,$16,$80,$17,$80
;03 OTHER BRASS 1
	UVBVoice	01_Trumpet1
;04 OTHER BRASS 2
	UVBVoice	06_SynthBrass1